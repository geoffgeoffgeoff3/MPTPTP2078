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
% DateTime   : Thu Dec  3 10:33:49 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   54 ( 195 expanded)
%              Number of clauses        :   37 (  88 expanded)
%              Number of leaves         :    8 (  49 expanded)
%              Depth                    :   14
%              Number of atoms          :   88 ( 369 expanded)
%              Number of equality atoms :   24 ( 102 expanded)
%              Maximal formula depth    :    7 (   3 average)
%              Maximal clause size      :    4 (   1 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t86_xboole_1,conjecture,(
    ! [X1,X2,X3] :
      ( ( r1_tarski(X1,X2)
        & r1_xboole_0(X1,X3) )
     => r1_tarski(X1,k4_xboole_0(X2,X3)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t86_xboole_1)).

fof(symmetry_r1_xboole_0,axiom,(
    ! [X1,X2] :
      ( r1_xboole_0(X1,X2)
     => r1_xboole_0(X2,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',symmetry_r1_xboole_0)).

fof(t63_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( ( r1_tarski(X1,X2)
        & r1_xboole_0(X2,X3) )
     => r1_xboole_0(X1,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t63_xboole_1)).

fof(t36_xboole_1,axiom,(
    ! [X1,X2] : r1_tarski(k4_xboole_0(X1,X2),X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t36_xboole_1)).

fof(commutativity_k3_xboole_0,axiom,(
    ! [X1,X2] : k3_xboole_0(X1,X2) = k3_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).

fof(t48_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t48_xboole_1)).

fof(t83_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_xboole_0(X1,X2)
    <=> k4_xboole_0(X1,X2) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t83_xboole_1)).

fof(t81_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( r1_xboole_0(X1,k4_xboole_0(X2,X3))
     => r1_xboole_0(X2,k4_xboole_0(X1,X3)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t81_xboole_1)).

fof(c_0_8,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( ( r1_tarski(X1,X2)
          & r1_xboole_0(X1,X3) )
       => r1_tarski(X1,k4_xboole_0(X2,X3)) ) ),
    inference(assume_negation,[status(cth)],[t86_xboole_1])).

fof(c_0_9,plain,(
    ! [X6,X7] :
      ( ~ r1_xboole_0(X6,X7)
      | r1_xboole_0(X7,X6) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[symmetry_r1_xboole_0])])).

fof(c_0_10,negated_conjecture,
    ( r1_tarski(esk1_0,esk2_0)
    & r1_xboole_0(esk1_0,esk3_0)
    & ~ r1_tarski(esk1_0,k4_xboole_0(esk2_0,esk3_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_8])])])).

fof(c_0_11,plain,(
    ! [X12,X13,X14] :
      ( ~ r1_tarski(X12,X13)
      | ~ r1_xboole_0(X13,X14)
      | r1_xboole_0(X12,X14) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t63_xboole_1])])).

fof(c_0_12,plain,(
    ! [X8,X9] : r1_tarski(k4_xboole_0(X8,X9),X8) ),
    inference(variable_rename,[status(thm)],[t36_xboole_1])).

fof(c_0_13,plain,(
    ! [X4,X5] : k3_xboole_0(X4,X5) = k3_xboole_0(X5,X4) ),
    inference(variable_rename,[status(thm)],[commutativity_k3_xboole_0])).

fof(c_0_14,plain,(
    ! [X10,X11] : k4_xboole_0(X10,k4_xboole_0(X10,X11)) = k3_xboole_0(X10,X11) ),
    inference(variable_rename,[status(thm)],[t48_xboole_1])).

fof(c_0_15,plain,(
    ! [X18,X19] :
      ( ( ~ r1_xboole_0(X18,X19)
        | k4_xboole_0(X18,X19) = X18 )
      & ( k4_xboole_0(X18,X19) != X18
        | r1_xboole_0(X18,X19) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t83_xboole_1])])).

cnf(c_0_16,plain,
    ( r1_xboole_0(X2,X1)
    | ~ r1_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_17,negated_conjecture,
    ( r1_xboole_0(esk1_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_18,plain,
    ( r1_xboole_0(X1,X3)
    | ~ r1_tarski(X1,X2)
    | ~ r1_xboole_0(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_19,plain,
    ( r1_tarski(k4_xboole_0(X1,X2),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_20,plain,
    ( k3_xboole_0(X1,X2) = k3_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_21,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_22,plain,
    ( k4_xboole_0(X1,X2) = X1
    | ~ r1_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_23,negated_conjecture,
    ( r1_xboole_0(esk3_0,esk1_0) ),
    inference(spm,[status(thm)],[c_0_16,c_0_17])).

cnf(c_0_24,plain,
    ( r1_xboole_0(k4_xboole_0(X1,X2),X3)
    | ~ r1_xboole_0(X1,X3) ),
    inference(spm,[status(thm)],[c_0_18,c_0_19])).

fof(c_0_25,plain,(
    ! [X15,X16,X17] :
      ( ~ r1_xboole_0(X15,k4_xboole_0(X16,X17))
      | r1_xboole_0(X16,k4_xboole_0(X15,X17)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t81_xboole_1])])).

cnf(c_0_26,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k4_xboole_0(X2,k4_xboole_0(X2,X1)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_20,c_0_21]),c_0_21])).

cnf(c_0_27,negated_conjecture,
    ( k4_xboole_0(esk3_0,esk1_0) = esk3_0 ),
    inference(spm,[status(thm)],[c_0_22,c_0_23])).

cnf(c_0_28,negated_conjecture,
    ( k4_xboole_0(esk1_0,esk3_0) = esk1_0 ),
    inference(spm,[status(thm)],[c_0_22,c_0_17])).

cnf(c_0_29,plain,
    ( r1_xboole_0(X1,X2)
    | k4_xboole_0(X1,X2) != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_30,plain,
    ( r1_xboole_0(X1,k4_xboole_0(X2,X3))
    | ~ r1_xboole_0(X2,X1) ),
    inference(spm,[status(thm)],[c_0_16,c_0_24])).

cnf(c_0_31,plain,
    ( r1_xboole_0(X2,k4_xboole_0(X1,X3))
    | ~ r1_xboole_0(X1,k4_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_32,negated_conjecture,
    ( k4_xboole_0(esk3_0,esk3_0) = k4_xboole_0(esk1_0,esk1_0) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26,c_0_27]),c_0_28])).

cnf(c_0_33,plain,
    ( r1_xboole_0(X1,X2)
    | k4_xboole_0(X2,X1) != X2 ),
    inference(spm,[status(thm)],[c_0_16,c_0_29])).

cnf(c_0_34,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X2,X3)) = X1
    | ~ r1_xboole_0(X2,X1) ),
    inference(spm,[status(thm)],[c_0_22,c_0_30])).

cnf(c_0_35,negated_conjecture,
    ( r1_xboole_0(esk1_0,k4_xboole_0(X1,esk3_0))
    | ~ r1_xboole_0(X1,esk1_0) ),
    inference(spm,[status(thm)],[c_0_31,c_0_28])).

cnf(c_0_36,negated_conjecture,
    ( r1_xboole_0(esk3_0,k4_xboole_0(X1,esk3_0))
    | ~ r1_xboole_0(X1,k4_xboole_0(esk1_0,esk1_0)) ),
    inference(spm,[status(thm)],[c_0_31,c_0_32])).

cnf(c_0_37,plain,
    ( k4_xboole_0(X1,X2) = X1
    | k4_xboole_0(X2,X1) != X2 ),
    inference(spm,[status(thm)],[c_0_22,c_0_33])).

cnf(c_0_38,negated_conjecture,
    ( k4_xboole_0(esk3_0,k4_xboole_0(esk1_0,X1)) = esk3_0 ),
    inference(spm,[status(thm)],[c_0_34,c_0_17])).

cnf(c_0_39,negated_conjecture,
    ( r1_xboole_0(esk1_0,k4_xboole_0(esk1_0,esk1_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35,c_0_32]),c_0_23])])).

cnf(c_0_40,negated_conjecture,
    ( r1_xboole_0(esk3_0,k4_xboole_0(X1,esk3_0))
    | k4_xboole_0(k4_xboole_0(esk1_0,esk1_0),X1) != k4_xboole_0(esk1_0,esk1_0) ),
    inference(spm,[status(thm)],[c_0_36,c_0_33])).

cnf(c_0_41,negated_conjecture,
    ( k4_xboole_0(k4_xboole_0(esk1_0,X1),esk3_0) = k4_xboole_0(esk1_0,X1) ),
    inference(spm,[status(thm)],[c_0_37,c_0_38])).

cnf(c_0_42,negated_conjecture,
    ( k4_xboole_0(k4_xboole_0(esk1_0,esk1_0),k4_xboole_0(esk1_0,X1)) = k4_xboole_0(esk1_0,esk1_0) ),
    inference(spm,[status(thm)],[c_0_34,c_0_39])).

cnf(c_0_43,negated_conjecture,
    ( r1_xboole_0(esk3_0,k4_xboole_0(esk1_0,X1)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_41]),c_0_42])])).

cnf(c_0_44,negated_conjecture,
    ( r1_tarski(esk1_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_45,plain,
    ( r1_xboole_0(X1,k4_xboole_0(X2,k4_xboole_0(X1,X3)))
    | ~ r1_xboole_0(X2,k4_xboole_0(X3,k4_xboole_0(X3,X1))) ),
    inference(spm,[status(thm)],[c_0_31,c_0_26])).

cnf(c_0_46,negated_conjecture,
    ( r1_xboole_0(esk1_0,k4_xboole_0(esk3_0,X1)) ),
    inference(spm,[status(thm)],[c_0_31,c_0_43])).

cnf(c_0_47,negated_conjecture,
    ( r1_xboole_0(esk1_0,X1)
    | ~ r1_xboole_0(esk2_0,X1) ),
    inference(spm,[status(thm)],[c_0_18,c_0_44])).

cnf(c_0_48,negated_conjecture,
    ( r1_xboole_0(X1,k4_xboole_0(esk1_0,k4_xboole_0(X1,esk3_0))) ),
    inference(spm,[status(thm)],[c_0_45,c_0_46])).

cnf(c_0_49,negated_conjecture,
    ( r1_xboole_0(esk1_0,k4_xboole_0(esk1_0,k4_xboole_0(esk2_0,esk3_0))) ),
    inference(spm,[status(thm)],[c_0_47,c_0_48])).

cnf(c_0_50,plain,
    ( r1_tarski(k4_xboole_0(X1,k4_xboole_0(X1,X2)),X2) ),
    inference(spm,[status(thm)],[c_0_19,c_0_26])).

cnf(c_0_51,negated_conjecture,
    ( k4_xboole_0(esk1_0,k4_xboole_0(esk1_0,k4_xboole_0(esk2_0,esk3_0))) = esk1_0 ),
    inference(spm,[status(thm)],[c_0_22,c_0_49])).

cnf(c_0_52,negated_conjecture,
    ( ~ r1_tarski(esk1_0,k4_xboole_0(esk2_0,esk3_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_53,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_50,c_0_51]),c_0_52]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.33  % Computer   : n013.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 15:02:54 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.19/0.57  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S061I
% 0.19/0.57  # and selection function SelectMaxLComplexAPPNTNp.
% 0.19/0.57  #
% 0.19/0.57  # Preprocessing time       : 0.027 s
% 0.19/0.57  # Presaturation interreduction done
% 0.19/0.57  
% 0.19/0.57  # Proof found!
% 0.19/0.57  # SZS status Theorem
% 0.19/0.57  # SZS output start CNFRefutation
% 0.19/0.57  fof(t86_xboole_1, conjecture, ![X1, X2, X3]:((r1_tarski(X1,X2)&r1_xboole_0(X1,X3))=>r1_tarski(X1,k4_xboole_0(X2,X3))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t86_xboole_1)).
% 0.19/0.57  fof(symmetry_r1_xboole_0, axiom, ![X1, X2]:(r1_xboole_0(X1,X2)=>r1_xboole_0(X2,X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', symmetry_r1_xboole_0)).
% 0.19/0.57  fof(t63_xboole_1, axiom, ![X1, X2, X3]:((r1_tarski(X1,X2)&r1_xboole_0(X2,X3))=>r1_xboole_0(X1,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t63_xboole_1)).
% 0.19/0.57  fof(t36_xboole_1, axiom, ![X1, X2]:r1_tarski(k4_xboole_0(X1,X2),X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t36_xboole_1)).
% 0.19/0.57  fof(commutativity_k3_xboole_0, axiom, ![X1, X2]:k3_xboole_0(X1,X2)=k3_xboole_0(X2,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', commutativity_k3_xboole_0)).
% 0.19/0.57  fof(t48_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,k4_xboole_0(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t48_xboole_1)).
% 0.19/0.57  fof(t83_xboole_1, axiom, ![X1, X2]:(r1_xboole_0(X1,X2)<=>k4_xboole_0(X1,X2)=X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t83_xboole_1)).
% 0.19/0.57  fof(t81_xboole_1, axiom, ![X1, X2, X3]:(r1_xboole_0(X1,k4_xboole_0(X2,X3))=>r1_xboole_0(X2,k4_xboole_0(X1,X3))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t81_xboole_1)).
% 0.19/0.57  fof(c_0_8, negated_conjecture, ~(![X1, X2, X3]:((r1_tarski(X1,X2)&r1_xboole_0(X1,X3))=>r1_tarski(X1,k4_xboole_0(X2,X3)))), inference(assume_negation,[status(cth)],[t86_xboole_1])).
% 0.19/0.57  fof(c_0_9, plain, ![X6, X7]:(~r1_xboole_0(X6,X7)|r1_xboole_0(X7,X6)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[symmetry_r1_xboole_0])])).
% 0.19/0.57  fof(c_0_10, negated_conjecture, ((r1_tarski(esk1_0,esk2_0)&r1_xboole_0(esk1_0,esk3_0))&~r1_tarski(esk1_0,k4_xboole_0(esk2_0,esk3_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_8])])])).
% 0.19/0.57  fof(c_0_11, plain, ![X12, X13, X14]:(~r1_tarski(X12,X13)|~r1_xboole_0(X13,X14)|r1_xboole_0(X12,X14)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t63_xboole_1])])).
% 0.19/0.57  fof(c_0_12, plain, ![X8, X9]:r1_tarski(k4_xboole_0(X8,X9),X8), inference(variable_rename,[status(thm)],[t36_xboole_1])).
% 0.19/0.57  fof(c_0_13, plain, ![X4, X5]:k3_xboole_0(X4,X5)=k3_xboole_0(X5,X4), inference(variable_rename,[status(thm)],[commutativity_k3_xboole_0])).
% 0.19/0.57  fof(c_0_14, plain, ![X10, X11]:k4_xboole_0(X10,k4_xboole_0(X10,X11))=k3_xboole_0(X10,X11), inference(variable_rename,[status(thm)],[t48_xboole_1])).
% 0.19/0.57  fof(c_0_15, plain, ![X18, X19]:((~r1_xboole_0(X18,X19)|k4_xboole_0(X18,X19)=X18)&(k4_xboole_0(X18,X19)!=X18|r1_xboole_0(X18,X19))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t83_xboole_1])])).
% 0.19/0.57  cnf(c_0_16, plain, (r1_xboole_0(X2,X1)|~r1_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.19/0.57  cnf(c_0_17, negated_conjecture, (r1_xboole_0(esk1_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.19/0.57  cnf(c_0_18, plain, (r1_xboole_0(X1,X3)|~r1_tarski(X1,X2)|~r1_xboole_0(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.19/0.57  cnf(c_0_19, plain, (r1_tarski(k4_xboole_0(X1,X2),X1)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.19/0.57  cnf(c_0_20, plain, (k3_xboole_0(X1,X2)=k3_xboole_0(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.19/0.57  cnf(c_0_21, plain, (k4_xboole_0(X1,k4_xboole_0(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.19/0.57  cnf(c_0_22, plain, (k4_xboole_0(X1,X2)=X1|~r1_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.57  cnf(c_0_23, negated_conjecture, (r1_xboole_0(esk3_0,esk1_0)), inference(spm,[status(thm)],[c_0_16, c_0_17])).
% 0.19/0.57  cnf(c_0_24, plain, (r1_xboole_0(k4_xboole_0(X1,X2),X3)|~r1_xboole_0(X1,X3)), inference(spm,[status(thm)],[c_0_18, c_0_19])).
% 0.19/0.57  fof(c_0_25, plain, ![X15, X16, X17]:(~r1_xboole_0(X15,k4_xboole_0(X16,X17))|r1_xboole_0(X16,k4_xboole_0(X15,X17))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t81_xboole_1])])).
% 0.19/0.57  cnf(c_0_26, plain, (k4_xboole_0(X1,k4_xboole_0(X1,X2))=k4_xboole_0(X2,k4_xboole_0(X2,X1))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_20, c_0_21]), c_0_21])).
% 0.19/0.57  cnf(c_0_27, negated_conjecture, (k4_xboole_0(esk3_0,esk1_0)=esk3_0), inference(spm,[status(thm)],[c_0_22, c_0_23])).
% 0.19/0.57  cnf(c_0_28, negated_conjecture, (k4_xboole_0(esk1_0,esk3_0)=esk1_0), inference(spm,[status(thm)],[c_0_22, c_0_17])).
% 0.19/0.57  cnf(c_0_29, plain, (r1_xboole_0(X1,X2)|k4_xboole_0(X1,X2)!=X1), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.57  cnf(c_0_30, plain, (r1_xboole_0(X1,k4_xboole_0(X2,X3))|~r1_xboole_0(X2,X1)), inference(spm,[status(thm)],[c_0_16, c_0_24])).
% 0.19/0.57  cnf(c_0_31, plain, (r1_xboole_0(X2,k4_xboole_0(X1,X3))|~r1_xboole_0(X1,k4_xboole_0(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.19/0.57  cnf(c_0_32, negated_conjecture, (k4_xboole_0(esk3_0,esk3_0)=k4_xboole_0(esk1_0,esk1_0)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26, c_0_27]), c_0_28])).
% 0.19/0.57  cnf(c_0_33, plain, (r1_xboole_0(X1,X2)|k4_xboole_0(X2,X1)!=X2), inference(spm,[status(thm)],[c_0_16, c_0_29])).
% 0.19/0.57  cnf(c_0_34, plain, (k4_xboole_0(X1,k4_xboole_0(X2,X3))=X1|~r1_xboole_0(X2,X1)), inference(spm,[status(thm)],[c_0_22, c_0_30])).
% 0.19/0.57  cnf(c_0_35, negated_conjecture, (r1_xboole_0(esk1_0,k4_xboole_0(X1,esk3_0))|~r1_xboole_0(X1,esk1_0)), inference(spm,[status(thm)],[c_0_31, c_0_28])).
% 0.19/0.57  cnf(c_0_36, negated_conjecture, (r1_xboole_0(esk3_0,k4_xboole_0(X1,esk3_0))|~r1_xboole_0(X1,k4_xboole_0(esk1_0,esk1_0))), inference(spm,[status(thm)],[c_0_31, c_0_32])).
% 0.19/0.57  cnf(c_0_37, plain, (k4_xboole_0(X1,X2)=X1|k4_xboole_0(X2,X1)!=X2), inference(spm,[status(thm)],[c_0_22, c_0_33])).
% 0.19/0.57  cnf(c_0_38, negated_conjecture, (k4_xboole_0(esk3_0,k4_xboole_0(esk1_0,X1))=esk3_0), inference(spm,[status(thm)],[c_0_34, c_0_17])).
% 0.19/0.57  cnf(c_0_39, negated_conjecture, (r1_xboole_0(esk1_0,k4_xboole_0(esk1_0,esk1_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35, c_0_32]), c_0_23])])).
% 0.19/0.57  cnf(c_0_40, negated_conjecture, (r1_xboole_0(esk3_0,k4_xboole_0(X1,esk3_0))|k4_xboole_0(k4_xboole_0(esk1_0,esk1_0),X1)!=k4_xboole_0(esk1_0,esk1_0)), inference(spm,[status(thm)],[c_0_36, c_0_33])).
% 0.19/0.57  cnf(c_0_41, negated_conjecture, (k4_xboole_0(k4_xboole_0(esk1_0,X1),esk3_0)=k4_xboole_0(esk1_0,X1)), inference(spm,[status(thm)],[c_0_37, c_0_38])).
% 0.19/0.57  cnf(c_0_42, negated_conjecture, (k4_xboole_0(k4_xboole_0(esk1_0,esk1_0),k4_xboole_0(esk1_0,X1))=k4_xboole_0(esk1_0,esk1_0)), inference(spm,[status(thm)],[c_0_34, c_0_39])).
% 0.19/0.57  cnf(c_0_43, negated_conjecture, (r1_xboole_0(esk3_0,k4_xboole_0(esk1_0,X1))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_41]), c_0_42])])).
% 0.19/0.57  cnf(c_0_44, negated_conjecture, (r1_tarski(esk1_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.19/0.57  cnf(c_0_45, plain, (r1_xboole_0(X1,k4_xboole_0(X2,k4_xboole_0(X1,X3)))|~r1_xboole_0(X2,k4_xboole_0(X3,k4_xboole_0(X3,X1)))), inference(spm,[status(thm)],[c_0_31, c_0_26])).
% 0.19/0.57  cnf(c_0_46, negated_conjecture, (r1_xboole_0(esk1_0,k4_xboole_0(esk3_0,X1))), inference(spm,[status(thm)],[c_0_31, c_0_43])).
% 0.19/0.57  cnf(c_0_47, negated_conjecture, (r1_xboole_0(esk1_0,X1)|~r1_xboole_0(esk2_0,X1)), inference(spm,[status(thm)],[c_0_18, c_0_44])).
% 0.19/0.57  cnf(c_0_48, negated_conjecture, (r1_xboole_0(X1,k4_xboole_0(esk1_0,k4_xboole_0(X1,esk3_0)))), inference(spm,[status(thm)],[c_0_45, c_0_46])).
% 0.19/0.57  cnf(c_0_49, negated_conjecture, (r1_xboole_0(esk1_0,k4_xboole_0(esk1_0,k4_xboole_0(esk2_0,esk3_0)))), inference(spm,[status(thm)],[c_0_47, c_0_48])).
% 0.19/0.57  cnf(c_0_50, plain, (r1_tarski(k4_xboole_0(X1,k4_xboole_0(X1,X2)),X2)), inference(spm,[status(thm)],[c_0_19, c_0_26])).
% 0.19/0.57  cnf(c_0_51, negated_conjecture, (k4_xboole_0(esk1_0,k4_xboole_0(esk1_0,k4_xboole_0(esk2_0,esk3_0)))=esk1_0), inference(spm,[status(thm)],[c_0_22, c_0_49])).
% 0.19/0.57  cnf(c_0_52, negated_conjecture, (~r1_tarski(esk1_0,k4_xboole_0(esk2_0,esk3_0))), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.19/0.57  cnf(c_0_53, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_50, c_0_51]), c_0_52]), ['proof']).
% 0.19/0.57  # SZS output end CNFRefutation
% 0.19/0.57  # Proof object total steps             : 54
% 0.19/0.57  # Proof object clause steps            : 37
% 0.19/0.57  # Proof object formula steps           : 17
% 0.19/0.57  # Proof object conjectures             : 24
% 0.19/0.57  # Proof object clause conjectures      : 21
% 0.19/0.57  # Proof object formula conjectures     : 3
% 0.19/0.57  # Proof object initial clauses used    : 11
% 0.19/0.57  # Proof object initial formulas used   : 8
% 0.19/0.57  # Proof object generating inferences   : 25
% 0.19/0.57  # Proof object simplifying inferences  : 8
% 0.19/0.57  # Training examples: 0 positive, 0 negative
% 0.19/0.57  # Parsed axioms                        : 8
% 0.19/0.57  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.57  # Initial clauses                      : 11
% 0.19/0.57  # Removed in clause preprocessing      : 1
% 0.19/0.57  # Initial clauses in saturation        : 10
% 0.19/0.57  # Processed clauses                    : 4239
% 0.19/0.57  # ...of these trivial                  : 102
% 0.19/0.57  # ...subsumed                          : 3590
% 0.19/0.57  # ...remaining for further processing  : 547
% 0.19/0.57  # Other redundant clauses eliminated   : 338
% 0.19/0.57  # Clauses deleted for lack of memory   : 0
% 0.19/0.57  # Backward-subsumed                    : 38
% 0.19/0.57  # Backward-rewritten                   : 71
% 0.19/0.57  # Generated clauses                    : 25163
% 0.19/0.57  # ...of the previous two non-trivial   : 18490
% 0.19/0.57  # Contextual simplify-reflections      : 0
% 0.19/0.57  # Paramodulations                      : 24821
% 0.19/0.57  # Factorizations                       : 0
% 0.19/0.57  # Equation resolutions                 : 342
% 0.19/0.57  # Propositional unsat checks           : 0
% 0.19/0.57  #    Propositional check models        : 0
% 0.19/0.57  #    Propositional check unsatisfiable : 0
% 0.19/0.57  #    Propositional clauses             : 0
% 0.19/0.57  #    Propositional clauses after purity: 0
% 0.19/0.57  #    Propositional unsat core size     : 0
% 0.19/0.57  #    Propositional preprocessing time  : 0.000
% 0.19/0.57  #    Propositional encoding time       : 0.000
% 0.19/0.57  #    Propositional solver time         : 0.000
% 0.19/0.57  #    Success case prop preproc time    : 0.000
% 0.19/0.57  #    Success case prop encoding time   : 0.000
% 0.19/0.57  #    Success case prop solver time     : 0.000
% 0.19/0.57  # Current number of processed clauses  : 428
% 0.19/0.57  #    Positive orientable unit clauses  : 55
% 0.19/0.57  #    Positive unorientable unit clauses: 2
% 0.19/0.57  #    Negative unit clauses             : 31
% 0.19/0.57  #    Non-unit-clauses                  : 340
% 0.19/0.57  # Current number of unprocessed clauses: 14011
% 0.19/0.57  # ...number of literals in the above   : 32514
% 0.19/0.57  # Current number of archived formulas  : 0
% 0.19/0.57  # Current number of archived clauses   : 120
% 0.19/0.57  # Clause-clause subsumption calls (NU) : 14651
% 0.19/0.57  # Rec. Clause-clause subsumption calls : 13893
% 0.19/0.57  # Non-unit clause-clause subsumptions  : 1596
% 0.19/0.57  # Unit Clause-clause subsumption calls : 1091
% 0.19/0.57  # Rewrite failures with RHS unbound    : 5
% 0.19/0.57  # BW rewrite match attempts            : 285
% 0.19/0.57  # BW rewrite match successes           : 49
% 0.19/0.57  # Condensation attempts                : 0
% 0.19/0.57  # Condensation successes               : 0
% 0.19/0.57  # Termbank termtop insertions          : 282208
% 0.19/0.57  
% 0.19/0.57  # -------------------------------------------------
% 0.19/0.57  # User time                : 0.224 s
% 0.19/0.57  # System time              : 0.009 s
% 0.19/0.57  # Total time               : 0.233 s
% 0.19/0.57  # Maximum resident set size: 1568 pages
%------------------------------------------------------------------------------
