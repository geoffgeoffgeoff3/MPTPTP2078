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
% DateTime   : Thu Dec  3 10:32:07 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   32 (  56 expanded)
%              Number of clauses        :   17 (  24 expanded)
%              Number of leaves         :    7 (  15 expanded)
%              Depth                    :    8
%              Number of atoms          :   41 (  71 expanded)
%              Number of equality atoms :   18 (  36 expanded)
%              Maximal formula depth    :    6 (   3 average)
%              Maximal clause size      :    2 (   1 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t44_xboole_1,conjecture,(
    ! [X1,X2,X3] :
      ( r1_tarski(k4_xboole_0(X1,X2),X3)
     => r1_tarski(X1,k2_xboole_0(X2,X3)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t44_xboole_1)).

fof(t10_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( r1_tarski(X1,X2)
     => r1_tarski(X1,k2_xboole_0(X3,X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t10_xboole_1)).

fof(t12_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
     => k2_xboole_0(X1,X2) = X2 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t12_xboole_1)).

fof(t39_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,k4_xboole_0(X2,X1)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t39_xboole_1)).

fof(t41_xboole_1,axiom,(
    ! [X1,X2,X3] : k4_xboole_0(k4_xboole_0(X1,X2),X3) = k4_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t41_xboole_1)).

fof(t7_xboole_1,axiom,(
    ! [X1,X2] : r1_tarski(X1,k2_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_xboole_1)).

fof(commutativity_k2_xboole_0,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k2_xboole_0)).

fof(c_0_7,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( r1_tarski(k4_xboole_0(X1,X2),X3)
       => r1_tarski(X1,k2_xboole_0(X2,X3)) ) ),
    inference(assume_negation,[status(cth)],[t44_xboole_1])).

fof(c_0_8,plain,(
    ! [X6,X7,X8] :
      ( ~ r1_tarski(X6,X7)
      | r1_tarski(X6,k2_xboole_0(X8,X7)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t10_xboole_1])])).

fof(c_0_9,negated_conjecture,
    ( r1_tarski(k4_xboole_0(esk1_0,esk2_0),esk3_0)
    & ~ r1_tarski(esk1_0,k2_xboole_0(esk2_0,esk3_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_7])])])).

fof(c_0_10,plain,(
    ! [X9,X10] :
      ( ~ r1_tarski(X9,X10)
      | k2_xboole_0(X9,X10) = X10 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t12_xboole_1])])).

cnf(c_0_11,plain,
    ( r1_tarski(X1,k2_xboole_0(X3,X2))
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_12,negated_conjecture,
    ( r1_tarski(k4_xboole_0(esk1_0,esk2_0),esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

fof(c_0_13,plain,(
    ! [X11,X12] : k2_xboole_0(X11,k4_xboole_0(X12,X11)) = k2_xboole_0(X11,X12) ),
    inference(variable_rename,[status(thm)],[t39_xboole_1])).

fof(c_0_14,plain,(
    ! [X13,X14,X15] : k4_xboole_0(k4_xboole_0(X13,X14),X15) = k4_xboole_0(X13,k2_xboole_0(X14,X15)) ),
    inference(variable_rename,[status(thm)],[t41_xboole_1])).

fof(c_0_15,plain,(
    ! [X16,X17] : r1_tarski(X16,k2_xboole_0(X16,X17)) ),
    inference(variable_rename,[status(thm)],[t7_xboole_1])).

fof(c_0_16,plain,(
    ! [X4,X5] : k2_xboole_0(X4,X5) = k2_xboole_0(X5,X4) ),
    inference(variable_rename,[status(thm)],[commutativity_k2_xboole_0])).

cnf(c_0_17,plain,
    ( k2_xboole_0(X1,X2) = X2
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_18,negated_conjecture,
    ( r1_tarski(k4_xboole_0(esk1_0,esk2_0),k2_xboole_0(X1,esk3_0)) ),
    inference(spm,[status(thm)],[c_0_11,c_0_12])).

cnf(c_0_19,plain,
    ( k2_xboole_0(X1,k4_xboole_0(X2,X1)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_20,plain,
    ( k4_xboole_0(k4_xboole_0(X1,X2),X3) = k4_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_21,plain,
    ( r1_tarski(X1,k2_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_22,plain,
    ( k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_23,negated_conjecture,
    ( k2_xboole_0(k4_xboole_0(esk1_0,esk2_0),k2_xboole_0(X1,esk3_0)) = k2_xboole_0(X1,esk3_0) ),
    inference(spm,[status(thm)],[c_0_17,c_0_18])).

cnf(c_0_24,plain,
    ( k2_xboole_0(X1,k4_xboole_0(X2,k2_xboole_0(X3,X1))) = k2_xboole_0(X1,k4_xboole_0(X2,X3)) ),
    inference(spm,[status(thm)],[c_0_19,c_0_20])).

cnf(c_0_25,plain,
    ( k2_xboole_0(X1,k2_xboole_0(X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(spm,[status(thm)],[c_0_17,c_0_21])).

cnf(c_0_26,negated_conjecture,
    ( k2_xboole_0(k2_xboole_0(X1,esk3_0),k4_xboole_0(esk1_0,esk2_0)) = k2_xboole_0(X1,esk3_0) ),
    inference(spm,[status(thm)],[c_0_22,c_0_23])).

cnf(c_0_27,plain,
    ( k2_xboole_0(k2_xboole_0(X1,X2),k4_xboole_0(X3,X1)) = k2_xboole_0(k2_xboole_0(X1,X2),X3) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24,c_0_25]),c_0_19])).

cnf(c_0_28,negated_conjecture,
    ( ~ r1_tarski(esk1_0,k2_xboole_0(esk2_0,esk3_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_29,negated_conjecture,
    ( k2_xboole_0(esk1_0,k2_xboole_0(esk3_0,esk2_0)) = k2_xboole_0(esk3_0,esk2_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26,c_0_27]),c_0_22]),c_0_22]),c_0_22])).

cnf(c_0_30,negated_conjecture,
    ( ~ r1_tarski(esk1_0,k2_xboole_0(esk3_0,esk2_0)) ),
    inference(rw,[status(thm)],[c_0_28,c_0_22])).

cnf(c_0_31,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_21,c_0_29]),c_0_30]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n011.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 13:58:42 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.13/0.37  # AutoSched0-Mode selected heuristic G_____Y1346__C12_02_nc_F1_AE_CS_SP_S2S
% 0.13/0.37  # and selection function SelectNewComplexAHP.
% 0.13/0.37  #
% 0.13/0.37  # Preprocessing time       : 0.026 s
% 0.13/0.37  # Presaturation interreduction done
% 0.13/0.37  
% 0.13/0.37  # Proof found!
% 0.13/0.37  # SZS status Theorem
% 0.13/0.37  # SZS output start CNFRefutation
% 0.13/0.37  fof(t44_xboole_1, conjecture, ![X1, X2, X3]:(r1_tarski(k4_xboole_0(X1,X2),X3)=>r1_tarski(X1,k2_xboole_0(X2,X3))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t44_xboole_1)).
% 0.13/0.37  fof(t10_xboole_1, axiom, ![X1, X2, X3]:(r1_tarski(X1,X2)=>r1_tarski(X1,k2_xboole_0(X3,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t10_xboole_1)).
% 0.13/0.37  fof(t12_xboole_1, axiom, ![X1, X2]:(r1_tarski(X1,X2)=>k2_xboole_0(X1,X2)=X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t12_xboole_1)).
% 0.13/0.37  fof(t39_xboole_1, axiom, ![X1, X2]:k2_xboole_0(X1,k4_xboole_0(X2,X1))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t39_xboole_1)).
% 0.13/0.37  fof(t41_xboole_1, axiom, ![X1, X2, X3]:k4_xboole_0(k4_xboole_0(X1,X2),X3)=k4_xboole_0(X1,k2_xboole_0(X2,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t41_xboole_1)).
% 0.13/0.37  fof(t7_xboole_1, axiom, ![X1, X2]:r1_tarski(X1,k2_xboole_0(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t7_xboole_1)).
% 0.13/0.37  fof(commutativity_k2_xboole_0, axiom, ![X1, X2]:k2_xboole_0(X1,X2)=k2_xboole_0(X2,X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', commutativity_k2_xboole_0)).
% 0.13/0.37  fof(c_0_7, negated_conjecture, ~(![X1, X2, X3]:(r1_tarski(k4_xboole_0(X1,X2),X3)=>r1_tarski(X1,k2_xboole_0(X2,X3)))), inference(assume_negation,[status(cth)],[t44_xboole_1])).
% 0.13/0.37  fof(c_0_8, plain, ![X6, X7, X8]:(~r1_tarski(X6,X7)|r1_tarski(X6,k2_xboole_0(X8,X7))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t10_xboole_1])])).
% 0.13/0.37  fof(c_0_9, negated_conjecture, (r1_tarski(k4_xboole_0(esk1_0,esk2_0),esk3_0)&~r1_tarski(esk1_0,k2_xboole_0(esk2_0,esk3_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_7])])])).
% 0.13/0.37  fof(c_0_10, plain, ![X9, X10]:(~r1_tarski(X9,X10)|k2_xboole_0(X9,X10)=X10), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t12_xboole_1])])).
% 0.13/0.37  cnf(c_0_11, plain, (r1_tarski(X1,k2_xboole_0(X3,X2))|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.13/0.37  cnf(c_0_12, negated_conjecture, (r1_tarski(k4_xboole_0(esk1_0,esk2_0),esk3_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.37  fof(c_0_13, plain, ![X11, X12]:k2_xboole_0(X11,k4_xboole_0(X12,X11))=k2_xboole_0(X11,X12), inference(variable_rename,[status(thm)],[t39_xboole_1])).
% 0.13/0.37  fof(c_0_14, plain, ![X13, X14, X15]:k4_xboole_0(k4_xboole_0(X13,X14),X15)=k4_xboole_0(X13,k2_xboole_0(X14,X15)), inference(variable_rename,[status(thm)],[t41_xboole_1])).
% 0.13/0.37  fof(c_0_15, plain, ![X16, X17]:r1_tarski(X16,k2_xboole_0(X16,X17)), inference(variable_rename,[status(thm)],[t7_xboole_1])).
% 0.13/0.37  fof(c_0_16, plain, ![X4, X5]:k2_xboole_0(X4,X5)=k2_xboole_0(X5,X4), inference(variable_rename,[status(thm)],[commutativity_k2_xboole_0])).
% 0.13/0.37  cnf(c_0_17, plain, (k2_xboole_0(X1,X2)=X2|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.37  cnf(c_0_18, negated_conjecture, (r1_tarski(k4_xboole_0(esk1_0,esk2_0),k2_xboole_0(X1,esk3_0))), inference(spm,[status(thm)],[c_0_11, c_0_12])).
% 0.13/0.37  cnf(c_0_19, plain, (k2_xboole_0(X1,k4_xboole_0(X2,X1))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.13/0.37  cnf(c_0_20, plain, (k4_xboole_0(k4_xboole_0(X1,X2),X3)=k4_xboole_0(X1,k2_xboole_0(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.13/0.37  cnf(c_0_21, plain, (r1_tarski(X1,k2_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.13/0.37  cnf(c_0_22, plain, (k2_xboole_0(X1,X2)=k2_xboole_0(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.13/0.37  cnf(c_0_23, negated_conjecture, (k2_xboole_0(k4_xboole_0(esk1_0,esk2_0),k2_xboole_0(X1,esk3_0))=k2_xboole_0(X1,esk3_0)), inference(spm,[status(thm)],[c_0_17, c_0_18])).
% 0.13/0.37  cnf(c_0_24, plain, (k2_xboole_0(X1,k4_xboole_0(X2,k2_xboole_0(X3,X1)))=k2_xboole_0(X1,k4_xboole_0(X2,X3))), inference(spm,[status(thm)],[c_0_19, c_0_20])).
% 0.13/0.37  cnf(c_0_25, plain, (k2_xboole_0(X1,k2_xboole_0(X1,X2))=k2_xboole_0(X1,X2)), inference(spm,[status(thm)],[c_0_17, c_0_21])).
% 0.13/0.37  cnf(c_0_26, negated_conjecture, (k2_xboole_0(k2_xboole_0(X1,esk3_0),k4_xboole_0(esk1_0,esk2_0))=k2_xboole_0(X1,esk3_0)), inference(spm,[status(thm)],[c_0_22, c_0_23])).
% 0.13/0.37  cnf(c_0_27, plain, (k2_xboole_0(k2_xboole_0(X1,X2),k4_xboole_0(X3,X1))=k2_xboole_0(k2_xboole_0(X1,X2),X3)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24, c_0_25]), c_0_19])).
% 0.13/0.37  cnf(c_0_28, negated_conjecture, (~r1_tarski(esk1_0,k2_xboole_0(esk2_0,esk3_0))), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.37  cnf(c_0_29, negated_conjecture, (k2_xboole_0(esk1_0,k2_xboole_0(esk3_0,esk2_0))=k2_xboole_0(esk3_0,esk2_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26, c_0_27]), c_0_22]), c_0_22]), c_0_22])).
% 0.13/0.37  cnf(c_0_30, negated_conjecture, (~r1_tarski(esk1_0,k2_xboole_0(esk3_0,esk2_0))), inference(rw,[status(thm)],[c_0_28, c_0_22])).
% 0.13/0.37  cnf(c_0_31, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_21, c_0_29]), c_0_30]), ['proof']).
% 0.13/0.37  # SZS output end CNFRefutation
% 0.13/0.37  # Proof object total steps             : 32
% 0.13/0.37  # Proof object clause steps            : 17
% 0.13/0.37  # Proof object formula steps           : 15
% 0.13/0.37  # Proof object conjectures             : 11
% 0.13/0.37  # Proof object clause conjectures      : 8
% 0.13/0.37  # Proof object formula conjectures     : 3
% 0.13/0.37  # Proof object initial clauses used    : 8
% 0.13/0.37  # Proof object initial formulas used   : 7
% 0.13/0.37  # Proof object generating inferences   : 8
% 0.13/0.37  # Proof object simplifying inferences  : 6
% 0.13/0.37  # Training examples: 0 positive, 0 negative
% 0.13/0.37  # Parsed axioms                        : 7
% 0.13/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.37  # Initial clauses                      : 8
% 0.13/0.37  # Removed in clause preprocessing      : 0
% 0.13/0.37  # Initial clauses in saturation        : 8
% 0.13/0.37  # Processed clauses                    : 105
% 0.13/0.37  # ...of these trivial                  : 36
% 0.13/0.37  # ...subsumed                          : 0
% 0.13/0.37  # ...remaining for further processing  : 69
% 0.13/0.37  # Other redundant clauses eliminated   : 0
% 0.13/0.37  # Clauses deleted for lack of memory   : 0
% 0.13/0.37  # Backward-subsumed                    : 0
% 0.13/0.37  # Backward-rewritten                   : 5
% 0.13/0.37  # Generated clauses                    : 829
% 0.13/0.37  # ...of the previous two non-trivial   : 327
% 0.13/0.37  # Contextual simplify-reflections      : 0
% 0.13/0.37  # Paramodulations                      : 829
% 0.13/0.37  # Factorizations                       : 0
% 0.13/0.37  # Equation resolutions                 : 0
% 0.13/0.37  # Propositional unsat checks           : 0
% 0.13/0.37  #    Propositional check models        : 0
% 0.13/0.37  #    Propositional check unsatisfiable : 0
% 0.13/0.37  #    Propositional clauses             : 0
% 0.13/0.37  #    Propositional clauses after purity: 0
% 0.13/0.37  #    Propositional unsat core size     : 0
% 0.13/0.37  #    Propositional preprocessing time  : 0.000
% 0.13/0.37  #    Propositional encoding time       : 0.000
% 0.13/0.37  #    Propositional solver time         : 0.000
% 0.13/0.37  #    Success case prop preproc time    : 0.000
% 0.13/0.37  #    Success case prop encoding time   : 0.000
% 0.13/0.37  #    Success case prop solver time     : 0.000
% 0.13/0.37  # Current number of processed clauses  : 56
% 0.13/0.37  #    Positive orientable unit clauses  : 52
% 0.13/0.37  #    Positive unorientable unit clauses: 1
% 0.13/0.37  #    Negative unit clauses             : 1
% 0.13/0.37  #    Non-unit-clauses                  : 2
% 0.13/0.37  # Current number of unprocessed clauses: 238
% 0.13/0.37  # ...number of literals in the above   : 238
% 0.13/0.37  # Current number of archived formulas  : 0
% 0.13/0.37  # Current number of archived clauses   : 13
% 0.13/0.37  # Clause-clause subsumption calls (NU) : 2
% 0.13/0.37  # Rec. Clause-clause subsumption calls : 2
% 0.13/0.37  # Non-unit clause-clause subsumptions  : 0
% 0.13/0.37  # Unit Clause-clause subsumption calls : 0
% 0.13/0.37  # Rewrite failures with RHS unbound    : 0
% 0.13/0.37  # BW rewrite match attempts            : 51
% 0.13/0.37  # BW rewrite match successes           : 12
% 0.13/0.37  # Condensation attempts                : 0
% 0.13/0.37  # Condensation successes               : 0
% 0.13/0.37  # Termbank termtop insertions          : 6853
% 0.13/0.37  
% 0.13/0.37  # -------------------------------------------------
% 0.13/0.37  # User time                : 0.034 s
% 0.13/0.37  # System time              : 0.002 s
% 0.13/0.37  # Total time               : 0.036 s
% 0.13/0.37  # Maximum resident set size: 1560 pages
%------------------------------------------------------------------------------
