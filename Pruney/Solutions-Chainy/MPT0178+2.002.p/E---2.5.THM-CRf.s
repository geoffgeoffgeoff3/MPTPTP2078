%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n005.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:36:03 EST 2020

% Result     : Theorem 0.12s
% Output     : CNFRefutation 0.12s
% Verified   : 
% Statistics : Number of formulae       :   14 (  14 expanded)
%              Number of clauses        :    5 (   5 expanded)
%              Number of leaves         :    4 (   4 expanded)
%              Depth                    :    4
%              Number of atoms          :   14 (  14 expanded)
%              Number of equality atoms :   13 (  13 expanded)
%              Maximal formula depth    :    6 (   3 average)
%              Maximal clause size      :    1 (   1 average)
%              Maximal term depth       :    2 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t94_enumset1,conjecture,(
    ! [X1] : k5_enumset1(X1,X1,X1,X1,X1,X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t94_enumset1)).

fof(t82_enumset1,axiom,(
    ! [X1] : k2_enumset1(X1,X1,X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t82_enumset1)).

fof(t72_enumset1,axiom,(
    ! [X1,X2,X3,X4] : k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t72_enumset1)).

fof(t80_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5] : k5_enumset1(X1,X1,X1,X2,X3,X4,X5) = k3_enumset1(X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t80_enumset1)).

fof(c_0_4,negated_conjecture,(
    ~ ! [X1] : k5_enumset1(X1,X1,X1,X1,X1,X1,X1) = k1_tarski(X1) ),
    inference(assume_negation,[status(cth)],[t94_enumset1])).

fof(c_0_5,negated_conjecture,(
    k5_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0) != k1_tarski(esk1_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_4])])])).

fof(c_0_6,plain,(
    ! [X24] : k2_enumset1(X24,X24,X24,X24) = k1_tarski(X24) ),
    inference(variable_rename,[status(thm)],[t82_enumset1])).

fof(c_0_7,plain,(
    ! [X15,X16,X17,X18] : k3_enumset1(X15,X15,X16,X17,X18) = k2_enumset1(X15,X16,X17,X18) ),
    inference(variable_rename,[status(thm)],[t72_enumset1])).

fof(c_0_8,plain,(
    ! [X19,X20,X21,X22,X23] : k5_enumset1(X19,X19,X19,X20,X21,X22,X23) = k3_enumset1(X19,X20,X21,X22,X23) ),
    inference(variable_rename,[status(thm)],[t80_enumset1])).

cnf(c_0_9,negated_conjecture,
    ( k5_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0) != k1_tarski(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_10,plain,
    ( k2_enumset1(X1,X1,X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_11,plain,
    ( k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_12,plain,
    ( k5_enumset1(X1,X1,X1,X2,X3,X4,X5) = k3_enumset1(X1,X2,X3,X4,X5) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_13,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_9,c_0_10]),c_0_11]),c_0_12])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.33  % Computer   : n005.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 12:05:02 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.12/0.39  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S5PRR_RG_S04BN
% 0.12/0.39  # and selection function PSelectComplexExceptUniqMaxHorn.
% 0.12/0.39  #
% 0.12/0.39  # Preprocessing time       : 0.049 s
% 0.12/0.39  # Presaturation interreduction done
% 0.12/0.39  
% 0.12/0.39  # Proof found!
% 0.12/0.39  # SZS status Theorem
% 0.12/0.39  # SZS output start CNFRefutation
% 0.12/0.39  fof(t94_enumset1, conjecture, ![X1]:k5_enumset1(X1,X1,X1,X1,X1,X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t94_enumset1)).
% 0.12/0.39  fof(t82_enumset1, axiom, ![X1]:k2_enumset1(X1,X1,X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t82_enumset1)).
% 0.12/0.39  fof(t72_enumset1, axiom, ![X1, X2, X3, X4]:k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t72_enumset1)).
% 0.12/0.39  fof(t80_enumset1, axiom, ![X1, X2, X3, X4, X5]:k5_enumset1(X1,X1,X1,X2,X3,X4,X5)=k3_enumset1(X1,X2,X3,X4,X5), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t80_enumset1)).
% 0.12/0.39  fof(c_0_4, negated_conjecture, ~(![X1]:k5_enumset1(X1,X1,X1,X1,X1,X1,X1)=k1_tarski(X1)), inference(assume_negation,[status(cth)],[t94_enumset1])).
% 0.12/0.39  fof(c_0_5, negated_conjecture, k5_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0)!=k1_tarski(esk1_0), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_4])])])).
% 0.12/0.39  fof(c_0_6, plain, ![X24]:k2_enumset1(X24,X24,X24,X24)=k1_tarski(X24), inference(variable_rename,[status(thm)],[t82_enumset1])).
% 0.12/0.39  fof(c_0_7, plain, ![X15, X16, X17, X18]:k3_enumset1(X15,X15,X16,X17,X18)=k2_enumset1(X15,X16,X17,X18), inference(variable_rename,[status(thm)],[t72_enumset1])).
% 0.12/0.39  fof(c_0_8, plain, ![X19, X20, X21, X22, X23]:k5_enumset1(X19,X19,X19,X20,X21,X22,X23)=k3_enumset1(X19,X20,X21,X22,X23), inference(variable_rename,[status(thm)],[t80_enumset1])).
% 0.12/0.39  cnf(c_0_9, negated_conjecture, (k5_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0)!=k1_tarski(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_5])).
% 0.12/0.39  cnf(c_0_10, plain, (k2_enumset1(X1,X1,X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.12/0.39  cnf(c_0_11, plain, (k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.12/0.39  cnf(c_0_12, plain, (k5_enumset1(X1,X1,X1,X2,X3,X4,X5)=k3_enumset1(X1,X2,X3,X4,X5)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.12/0.39  cnf(c_0_13, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_9, c_0_10]), c_0_11]), c_0_12])]), ['proof']).
% 0.12/0.39  # SZS output end CNFRefutation
% 0.12/0.39  # Proof object total steps             : 14
% 0.12/0.39  # Proof object clause steps            : 5
% 0.12/0.39  # Proof object formula steps           : 9
% 0.12/0.39  # Proof object conjectures             : 5
% 0.12/0.39  # Proof object clause conjectures      : 2
% 0.12/0.39  # Proof object formula conjectures     : 3
% 0.12/0.39  # Proof object initial clauses used    : 4
% 0.12/0.39  # Proof object initial formulas used   : 4
% 0.12/0.39  # Proof object generating inferences   : 0
% 0.12/0.39  # Proof object simplifying inferences  : 4
% 0.12/0.39  # Training examples: 0 positive, 0 negative
% 0.12/0.39  # Parsed axioms                        : 5
% 0.12/0.39  # Removed by relevancy pruning/SinE    : 0
% 0.12/0.39  # Initial clauses                      : 5
% 0.12/0.39  # Removed in clause preprocessing      : 3
% 0.12/0.39  # Initial clauses in saturation        : 2
% 0.12/0.39  # Processed clauses                    : 1
% 0.12/0.39  # ...of these trivial                  : 0
% 0.12/0.39  # ...subsumed                          : 0
% 0.12/0.39  # ...remaining for further processing  : 0
% 0.12/0.39  # Other redundant clauses eliminated   : 0
% 0.12/0.39  # Clauses deleted for lack of memory   : 0
% 0.12/0.39  # Backward-subsumed                    : 0
% 0.12/0.39  # Backward-rewritten                   : 0
% 0.12/0.39  # Generated clauses                    : 0
% 0.12/0.39  # ...of the previous two non-trivial   : 0
% 0.12/0.39  # Contextual simplify-reflections      : 0
% 0.12/0.39  # Paramodulations                      : 0
% 0.12/0.39  # Factorizations                       : 0
% 0.12/0.39  # Equation resolutions                 : 0
% 0.12/0.39  # Propositional unsat checks           : 0
% 0.12/0.39  #    Propositional check models        : 0
% 0.12/0.39  #    Propositional check unsatisfiable : 0
% 0.12/0.39  #    Propositional clauses             : 0
% 0.12/0.39  #    Propositional clauses after purity: 0
% 0.12/0.39  #    Propositional unsat core size     : 0
% 0.12/0.39  #    Propositional preprocessing time  : 0.000
% 0.12/0.39  #    Propositional encoding time       : 0.000
% 0.12/0.39  #    Propositional solver time         : 0.000
% 0.12/0.39  #    Success case prop preproc time    : 0.000
% 0.12/0.39  #    Success case prop encoding time   : 0.000
% 0.12/0.39  #    Success case prop solver time     : 0.000
% 0.12/0.39  # Current number of processed clauses  : 0
% 0.12/0.39  #    Positive orientable unit clauses  : 0
% 0.12/0.39  #    Positive unorientable unit clauses: 0
% 0.12/0.39  #    Negative unit clauses             : 0
% 0.12/0.39  #    Non-unit-clauses                  : 0
% 0.12/0.39  # Current number of unprocessed clauses: 1
% 0.12/0.39  # ...number of literals in the above   : 1
% 0.12/0.39  # Current number of archived formulas  : 0
% 0.12/0.39  # Current number of archived clauses   : 3
% 0.12/0.39  # Clause-clause subsumption calls (NU) : 0
% 0.12/0.39  # Rec. Clause-clause subsumption calls : 0
% 0.12/0.39  # Non-unit clause-clause subsumptions  : 0
% 0.12/0.39  # Unit Clause-clause subsumption calls : 0
% 0.12/0.39  # Rewrite failures with RHS unbound    : 0
% 0.12/0.39  # BW rewrite match attempts            : 0
% 0.12/0.39  # BW rewrite match successes           : 0
% 0.12/0.39  # Condensation attempts                : 0
% 0.12/0.39  # Condensation successes               : 0
% 0.12/0.39  # Termbank termtop insertions          : 225
% 0.12/0.39  
% 0.12/0.39  # -------------------------------------------------
% 0.12/0.39  # User time                : 0.047 s
% 0.12/0.39  # System time              : 0.006 s
% 0.12/0.39  # Total time               : 0.053 s
% 0.12/0.39  # Maximum resident set size: 1564 pages
%------------------------------------------------------------------------------
