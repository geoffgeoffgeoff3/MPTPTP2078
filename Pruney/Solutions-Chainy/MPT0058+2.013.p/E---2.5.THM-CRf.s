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
% DateTime   : Thu Dec  3 10:32:22 EST 2020

% Result     : Theorem 0.09s
% Output     : CNFRefutation 0.09s
% Verified   : 
% Statistics : Number of formulae       :   20 (  20 expanded)
%              Number of clauses        :    9 (   9 expanded)
%              Number of leaves         :    5 (   5 expanded)
%              Depth                    :    6
%              Number of atoms          :   23 (  23 expanded)
%              Number of equality atoms :   16 (  16 expanded)
%              Maximal formula depth    :    5 (   2 average)
%              Maximal clause size      :    2 (   1 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t51_xboole_1,conjecture,(
    ! [X1,X2] : k2_xboole_0(k3_xboole_0(X1,X2),k4_xboole_0(X1,X2)) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t51_xboole_1)).

fof(t48_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t48_xboole_1)).

fof(commutativity_k2_xboole_0,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k2_xboole_0)).

fof(t45_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
     => X2 = k2_xboole_0(X1,k4_xboole_0(X2,X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t45_xboole_1)).

fof(t36_xboole_1,axiom,(
    ! [X1,X2] : r1_tarski(k4_xboole_0(X1,X2),X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t36_xboole_1)).

fof(c_0_5,negated_conjecture,(
    ~ ! [X1,X2] : k2_xboole_0(k3_xboole_0(X1,X2),k4_xboole_0(X1,X2)) = X1 ),
    inference(assume_negation,[status(cth)],[t51_xboole_1])).

fof(c_0_6,negated_conjecture,(
    k2_xboole_0(k3_xboole_0(esk1_0,esk2_0),k4_xboole_0(esk1_0,esk2_0)) != esk1_0 ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_5])])])).

fof(c_0_7,plain,(
    ! [X9,X10] : k4_xboole_0(X9,k4_xboole_0(X9,X10)) = k3_xboole_0(X9,X10) ),
    inference(variable_rename,[status(thm)],[t48_xboole_1])).

cnf(c_0_8,negated_conjecture,
    ( k2_xboole_0(k3_xboole_0(esk1_0,esk2_0),k4_xboole_0(esk1_0,esk2_0)) != esk1_0 ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_9,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

fof(c_0_10,plain,(
    ! [X3,X4] : k2_xboole_0(X3,X4) = k2_xboole_0(X4,X3) ),
    inference(variable_rename,[status(thm)],[commutativity_k2_xboole_0])).

fof(c_0_11,plain,(
    ! [X7,X8] :
      ( ~ r1_tarski(X7,X8)
      | X8 = k2_xboole_0(X7,k4_xboole_0(X8,X7)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t45_xboole_1])])).

fof(c_0_12,plain,(
    ! [X5,X6] : r1_tarski(k4_xboole_0(X5,X6),X5) ),
    inference(variable_rename,[status(thm)],[t36_xboole_1])).

cnf(c_0_13,negated_conjecture,
    ( k2_xboole_0(k4_xboole_0(esk1_0,k4_xboole_0(esk1_0,esk2_0)),k4_xboole_0(esk1_0,esk2_0)) != esk1_0 ),
    inference(rw,[status(thm)],[c_0_8,c_0_9])).

cnf(c_0_14,plain,
    ( k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_15,plain,
    ( X2 = k2_xboole_0(X1,k4_xboole_0(X2,X1))
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_16,plain,
    ( r1_tarski(k4_xboole_0(X1,X2),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_17,negated_conjecture,
    ( k2_xboole_0(k4_xboole_0(esk1_0,esk2_0),k4_xboole_0(esk1_0,k4_xboole_0(esk1_0,esk2_0))) != esk1_0 ),
    inference(rw,[status(thm)],[c_0_13,c_0_14])).

cnf(c_0_18,plain,
    ( k2_xboole_0(k4_xboole_0(X1,X2),k4_xboole_0(X1,k4_xboole_0(X1,X2))) = X1 ),
    inference(spm,[status(thm)],[c_0_15,c_0_16])).

cnf(c_0_19,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_17,c_0_18])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.08  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.09  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.09/0.27  % Computer   : n022.cluster.edu
% 0.09/0.27  % Model      : x86_64 x86_64
% 0.09/0.27  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.09/0.27  % Memory     : 8042.1875MB
% 0.09/0.27  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.09/0.27  % CPULimit   : 60
% 0.09/0.27  % WCLimit    : 600
% 0.09/0.27  % DateTime   : Tue Dec  1 17:16:40 EST 2020
% 0.09/0.28  % CPUTime    : 
% 0.09/0.28  # Version: 2.5pre002
% 0.09/0.28  # No SInE strategy applied
% 0.09/0.28  # Trying AutoSched0 for 299 seconds
% 0.09/0.30  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S061I
% 0.09/0.30  # and selection function SelectMaxLComplexAPPNTNp.
% 0.09/0.30  #
% 0.09/0.30  # Preprocessing time       : 0.026 s
% 0.09/0.30  # Presaturation interreduction done
% 0.09/0.30  
% 0.09/0.30  # Proof found!
% 0.09/0.30  # SZS status Theorem
% 0.09/0.30  # SZS output start CNFRefutation
% 0.09/0.30  fof(t51_xboole_1, conjecture, ![X1, X2]:k2_xboole_0(k3_xboole_0(X1,X2),k4_xboole_0(X1,X2))=X1, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t51_xboole_1)).
% 0.09/0.30  fof(t48_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,k4_xboole_0(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t48_xboole_1)).
% 0.09/0.30  fof(commutativity_k2_xboole_0, axiom, ![X1, X2]:k2_xboole_0(X1,X2)=k2_xboole_0(X2,X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', commutativity_k2_xboole_0)).
% 0.09/0.30  fof(t45_xboole_1, axiom, ![X1, X2]:(r1_tarski(X1,X2)=>X2=k2_xboole_0(X1,k4_xboole_0(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t45_xboole_1)).
% 0.09/0.30  fof(t36_xboole_1, axiom, ![X1, X2]:r1_tarski(k4_xboole_0(X1,X2),X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t36_xboole_1)).
% 0.09/0.30  fof(c_0_5, negated_conjecture, ~(![X1, X2]:k2_xboole_0(k3_xboole_0(X1,X2),k4_xboole_0(X1,X2))=X1), inference(assume_negation,[status(cth)],[t51_xboole_1])).
% 0.09/0.30  fof(c_0_6, negated_conjecture, k2_xboole_0(k3_xboole_0(esk1_0,esk2_0),k4_xboole_0(esk1_0,esk2_0))!=esk1_0, inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_5])])])).
% 0.09/0.30  fof(c_0_7, plain, ![X9, X10]:k4_xboole_0(X9,k4_xboole_0(X9,X10))=k3_xboole_0(X9,X10), inference(variable_rename,[status(thm)],[t48_xboole_1])).
% 0.09/0.30  cnf(c_0_8, negated_conjecture, (k2_xboole_0(k3_xboole_0(esk1_0,esk2_0),k4_xboole_0(esk1_0,esk2_0))!=esk1_0), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.09/0.30  cnf(c_0_9, plain, (k4_xboole_0(X1,k4_xboole_0(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.09/0.30  fof(c_0_10, plain, ![X3, X4]:k2_xboole_0(X3,X4)=k2_xboole_0(X4,X3), inference(variable_rename,[status(thm)],[commutativity_k2_xboole_0])).
% 0.09/0.30  fof(c_0_11, plain, ![X7, X8]:(~r1_tarski(X7,X8)|X8=k2_xboole_0(X7,k4_xboole_0(X8,X7))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t45_xboole_1])])).
% 0.09/0.30  fof(c_0_12, plain, ![X5, X6]:r1_tarski(k4_xboole_0(X5,X6),X5), inference(variable_rename,[status(thm)],[t36_xboole_1])).
% 0.09/0.30  cnf(c_0_13, negated_conjecture, (k2_xboole_0(k4_xboole_0(esk1_0,k4_xboole_0(esk1_0,esk2_0)),k4_xboole_0(esk1_0,esk2_0))!=esk1_0), inference(rw,[status(thm)],[c_0_8, c_0_9])).
% 0.09/0.30  cnf(c_0_14, plain, (k2_xboole_0(X1,X2)=k2_xboole_0(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.09/0.30  cnf(c_0_15, plain, (X2=k2_xboole_0(X1,k4_xboole_0(X2,X1))|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.09/0.30  cnf(c_0_16, plain, (r1_tarski(k4_xboole_0(X1,X2),X1)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.09/0.30  cnf(c_0_17, negated_conjecture, (k2_xboole_0(k4_xboole_0(esk1_0,esk2_0),k4_xboole_0(esk1_0,k4_xboole_0(esk1_0,esk2_0)))!=esk1_0), inference(rw,[status(thm)],[c_0_13, c_0_14])).
% 0.09/0.30  cnf(c_0_18, plain, (k2_xboole_0(k4_xboole_0(X1,X2),k4_xboole_0(X1,k4_xboole_0(X1,X2)))=X1), inference(spm,[status(thm)],[c_0_15, c_0_16])).
% 0.09/0.30  cnf(c_0_19, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_17, c_0_18])]), ['proof']).
% 0.09/0.30  # SZS output end CNFRefutation
% 0.09/0.30  # Proof object total steps             : 20
% 0.09/0.30  # Proof object clause steps            : 9
% 0.09/0.30  # Proof object formula steps           : 11
% 0.09/0.30  # Proof object conjectures             : 7
% 0.09/0.30  # Proof object clause conjectures      : 4
% 0.09/0.30  # Proof object formula conjectures     : 3
% 0.09/0.30  # Proof object initial clauses used    : 5
% 0.09/0.30  # Proof object initial formulas used   : 5
% 0.09/0.30  # Proof object generating inferences   : 1
% 0.09/0.30  # Proof object simplifying inferences  : 4
% 0.09/0.30  # Training examples: 0 positive, 0 negative
% 0.09/0.30  # Parsed axioms                        : 5
% 0.09/0.30  # Removed by relevancy pruning/SinE    : 0
% 0.09/0.30  # Initial clauses                      : 5
% 0.09/0.30  # Removed in clause preprocessing      : 1
% 0.09/0.30  # Initial clauses in saturation        : 4
% 0.09/0.30  # Processed clauses                    : 10
% 0.09/0.30  # ...of these trivial                  : 0
% 0.09/0.30  # ...subsumed                          : 0
% 0.09/0.30  # ...remaining for further processing  : 10
% 0.09/0.30  # Other redundant clauses eliminated   : 0
% 0.09/0.30  # Clauses deleted for lack of memory   : 0
% 0.09/0.30  # Backward-subsumed                    : 0
% 0.09/0.30  # Backward-rewritten                   : 2
% 0.09/0.30  # Generated clauses                    : 1
% 0.09/0.30  # ...of the previous two non-trivial   : 2
% 0.09/0.30  # Contextual simplify-reflections      : 0
% 0.09/0.30  # Paramodulations                      : 1
% 0.09/0.30  # Factorizations                       : 0
% 0.09/0.30  # Equation resolutions                 : 0
% 0.09/0.30  # Propositional unsat checks           : 0
% 0.09/0.30  #    Propositional check models        : 0
% 0.09/0.30  #    Propositional check unsatisfiable : 0
% 0.09/0.30  #    Propositional clauses             : 0
% 0.09/0.30  #    Propositional clauses after purity: 0
% 0.09/0.30  #    Propositional unsat core size     : 0
% 0.09/0.30  #    Propositional preprocessing time  : 0.000
% 0.09/0.30  #    Propositional encoding time       : 0.000
% 0.09/0.30  #    Propositional solver time         : 0.000
% 0.09/0.30  #    Success case prop preproc time    : 0.000
% 0.09/0.30  #    Success case prop encoding time   : 0.000
% 0.09/0.30  #    Success case prop solver time     : 0.000
% 0.09/0.30  # Current number of processed clauses  : 4
% 0.09/0.30  #    Positive orientable unit clauses  : 2
% 0.09/0.30  #    Positive unorientable unit clauses: 1
% 0.09/0.30  #    Negative unit clauses             : 0
% 0.09/0.30  #    Non-unit-clauses                  : 1
% 0.09/0.30  # Current number of unprocessed clauses: 0
% 0.09/0.30  # ...number of literals in the above   : 0
% 0.09/0.30  # Current number of archived formulas  : 0
% 0.09/0.30  # Current number of archived clauses   : 7
% 0.09/0.30  # Clause-clause subsumption calls (NU) : 0
% 0.09/0.30  # Rec. Clause-clause subsumption calls : 0
% 0.09/0.30  # Non-unit clause-clause subsumptions  : 0
% 0.09/0.30  # Unit Clause-clause subsumption calls : 0
% 0.09/0.30  # Rewrite failures with RHS unbound    : 0
% 0.09/0.30  # BW rewrite match attempts            : 3
% 0.09/0.30  # BW rewrite match successes           : 3
% 0.09/0.30  # Condensation attempts                : 0
% 0.09/0.30  # Condensation successes               : 0
% 0.09/0.30  # Termbank termtop insertions          : 265
% 0.09/0.30  
% 0.09/0.30  # -------------------------------------------------
% 0.09/0.30  # User time                : 0.023 s
% 0.09/0.30  # System time              : 0.006 s
% 0.09/0.30  # Total time               : 0.029 s
% 0.09/0.30  # Maximum resident set size: 1564 pages
%------------------------------------------------------------------------------
