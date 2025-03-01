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
% DateTime   : Thu Dec  3 10:36:32 EST 2020

% Result     : Theorem 0.18s
% Output     : CNFRefutation 0.18s
% Verified   : 
% Statistics : Number of formulae       :   27 (  85 expanded)
%              Number of clauses        :   14 (  34 expanded)
%              Number of leaves         :    6 (  25 expanded)
%              Depth                    :    7
%              Number of atoms          :   27 (  85 expanded)
%              Number of equality atoms :   26 (  84 expanded)
%              Maximal formula depth    :    6 (   3 average)
%              Maximal clause size      :    1 (   1 average)
%              Maximal term depth       :    2 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t119_enumset1,conjecture,(
    ! [X1,X2,X3,X4] : k2_enumset1(X1,X2,X3,X4) = k2_enumset1(X3,X4,X2,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t119_enumset1)).

fof(t72_enumset1,axiom,(
    ! [X1,X2,X3,X4] : k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t72_enumset1)).

fof(t73_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5] : k4_enumset1(X1,X1,X2,X3,X4,X5) = k3_enumset1(X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t73_enumset1)).

fof(l129_enumset1,axiom,(
    ! [X1,X2,X3,X4] : k2_enumset1(X1,X2,X3,X4) = k2_enumset1(X3,X2,X1,X4) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l129_enumset1)).

fof(t107_enumset1,axiom,(
    ! [X1,X2,X3,X4] : k2_enumset1(X1,X2,X3,X4) = k2_enumset1(X1,X4,X3,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t107_enumset1)).

fof(t105_enumset1,axiom,(
    ! [X1,X2,X3,X4] : k2_enumset1(X1,X2,X3,X4) = k2_enumset1(X1,X3,X4,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t105_enumset1)).

fof(c_0_6,negated_conjecture,(
    ~ ! [X1,X2,X3,X4] : k2_enumset1(X1,X2,X3,X4) = k2_enumset1(X3,X4,X2,X1) ),
    inference(assume_negation,[status(cth)],[t119_enumset1])).

fof(c_0_7,negated_conjecture,(
    k2_enumset1(esk1_0,esk2_0,esk3_0,esk4_0) != k2_enumset1(esk3_0,esk4_0,esk2_0,esk1_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_6])])])).

fof(c_0_8,plain,(
    ! [X18,X19,X20,X21] : k3_enumset1(X18,X18,X19,X20,X21) = k2_enumset1(X18,X19,X20,X21) ),
    inference(variable_rename,[status(thm)],[t72_enumset1])).

fof(c_0_9,plain,(
    ! [X22,X23,X24,X25,X26] : k4_enumset1(X22,X22,X23,X24,X25,X26) = k3_enumset1(X22,X23,X24,X25,X26) ),
    inference(variable_rename,[status(thm)],[t73_enumset1])).

fof(c_0_10,plain,(
    ! [X6,X7,X8,X9] : k2_enumset1(X6,X7,X8,X9) = k2_enumset1(X8,X7,X6,X9) ),
    inference(variable_rename,[status(thm)],[l129_enumset1])).

cnf(c_0_11,negated_conjecture,
    ( k2_enumset1(esk1_0,esk2_0,esk3_0,esk4_0) != k2_enumset1(esk3_0,esk4_0,esk2_0,esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_12,plain,
    ( k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_13,plain,
    ( k4_enumset1(X1,X1,X2,X3,X4,X5) = k3_enumset1(X1,X2,X3,X4,X5) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_14,plain,
    ( k2_enumset1(X1,X2,X3,X4) = k2_enumset1(X3,X2,X1,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

fof(c_0_15,plain,(
    ! [X14,X15,X16,X17] : k2_enumset1(X14,X15,X16,X17) = k2_enumset1(X14,X17,X16,X15) ),
    inference(variable_rename,[status(thm)],[t107_enumset1])).

fof(c_0_16,plain,(
    ! [X10,X11,X12,X13] : k2_enumset1(X10,X11,X12,X13) = k2_enumset1(X10,X12,X13,X11) ),
    inference(variable_rename,[status(thm)],[t105_enumset1])).

cnf(c_0_17,negated_conjecture,
    ( k4_enumset1(esk3_0,esk3_0,esk3_0,esk4_0,esk2_0,esk1_0) != k4_enumset1(esk1_0,esk1_0,esk1_0,esk2_0,esk3_0,esk4_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_11,c_0_12]),c_0_12]),c_0_13]),c_0_13])).

cnf(c_0_18,plain,
    ( k4_enumset1(X1,X1,X1,X2,X3,X4) = k4_enumset1(X3,X3,X3,X2,X1,X4) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_14,c_0_12]),c_0_12]),c_0_13]),c_0_13])).

cnf(c_0_19,plain,
    ( k2_enumset1(X1,X2,X3,X4) = k2_enumset1(X1,X4,X3,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_20,plain,
    ( k2_enumset1(X1,X2,X3,X4) = k2_enumset1(X1,X3,X4,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_21,negated_conjecture,
    ( k4_enumset1(esk3_0,esk3_0,esk3_0,esk2_0,esk1_0,esk4_0) != k4_enumset1(esk3_0,esk3_0,esk3_0,esk4_0,esk2_0,esk1_0) ),
    inference(rw,[status(thm)],[c_0_17,c_0_18])).

cnf(c_0_22,plain,
    ( k4_enumset1(X1,X1,X1,X2,X3,X4) = k4_enumset1(X1,X1,X1,X4,X3,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_19,c_0_12]),c_0_12]),c_0_13]),c_0_13])).

cnf(c_0_23,plain,
    ( k4_enumset1(X1,X1,X1,X2,X3,X4) = k4_enumset1(X1,X1,X1,X3,X4,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_20,c_0_12]),c_0_12]),c_0_13]),c_0_13])).

cnf(c_0_24,negated_conjecture,
    ( k4_enumset1(esk3_0,esk3_0,esk3_0,esk4_0,esk1_0,esk2_0) != k4_enumset1(esk3_0,esk3_0,esk3_0,esk4_0,esk2_0,esk1_0) ),
    inference(rw,[status(thm)],[c_0_21,c_0_22])).

cnf(c_0_25,plain,
    ( k4_enumset1(X1,X1,X1,X2,X3,X4) = k4_enumset1(X1,X1,X1,X2,X4,X3) ),
    inference(spm,[status(thm)],[c_0_22,c_0_23])).

cnf(c_0_26,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_24,c_0_25])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.33  % Computer   : n013.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 09:47:54 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.33  # Version: 2.5pre002
% 0.12/0.33  # No SInE strategy applied
% 0.12/0.33  # Trying AutoSched0 for 299 seconds
% 0.18/0.36  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S5PRR_RG_S04BN
% 0.18/0.36  # and selection function PSelectComplexExceptUniqMaxHorn.
% 0.18/0.36  #
% 0.18/0.36  # Preprocessing time       : 0.025 s
% 0.18/0.36  # Presaturation interreduction done
% 0.18/0.36  
% 0.18/0.36  # Proof found!
% 0.18/0.36  # SZS status Theorem
% 0.18/0.36  # SZS output start CNFRefutation
% 0.18/0.36  fof(t119_enumset1, conjecture, ![X1, X2, X3, X4]:k2_enumset1(X1,X2,X3,X4)=k2_enumset1(X3,X4,X2,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t119_enumset1)).
% 0.18/0.36  fof(t72_enumset1, axiom, ![X1, X2, X3, X4]:k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t72_enumset1)).
% 0.18/0.36  fof(t73_enumset1, axiom, ![X1, X2, X3, X4, X5]:k4_enumset1(X1,X1,X2,X3,X4,X5)=k3_enumset1(X1,X2,X3,X4,X5), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t73_enumset1)).
% 0.18/0.36  fof(l129_enumset1, axiom, ![X1, X2, X3, X4]:k2_enumset1(X1,X2,X3,X4)=k2_enumset1(X3,X2,X1,X4), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l129_enumset1)).
% 0.18/0.36  fof(t107_enumset1, axiom, ![X1, X2, X3, X4]:k2_enumset1(X1,X2,X3,X4)=k2_enumset1(X1,X4,X3,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t107_enumset1)).
% 0.18/0.36  fof(t105_enumset1, axiom, ![X1, X2, X3, X4]:k2_enumset1(X1,X2,X3,X4)=k2_enumset1(X1,X3,X4,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t105_enumset1)).
% 0.18/0.36  fof(c_0_6, negated_conjecture, ~(![X1, X2, X3, X4]:k2_enumset1(X1,X2,X3,X4)=k2_enumset1(X3,X4,X2,X1)), inference(assume_negation,[status(cth)],[t119_enumset1])).
% 0.18/0.36  fof(c_0_7, negated_conjecture, k2_enumset1(esk1_0,esk2_0,esk3_0,esk4_0)!=k2_enumset1(esk3_0,esk4_0,esk2_0,esk1_0), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_6])])])).
% 0.18/0.36  fof(c_0_8, plain, ![X18, X19, X20, X21]:k3_enumset1(X18,X18,X19,X20,X21)=k2_enumset1(X18,X19,X20,X21), inference(variable_rename,[status(thm)],[t72_enumset1])).
% 0.18/0.36  fof(c_0_9, plain, ![X22, X23, X24, X25, X26]:k4_enumset1(X22,X22,X23,X24,X25,X26)=k3_enumset1(X22,X23,X24,X25,X26), inference(variable_rename,[status(thm)],[t73_enumset1])).
% 0.18/0.36  fof(c_0_10, plain, ![X6, X7, X8, X9]:k2_enumset1(X6,X7,X8,X9)=k2_enumset1(X8,X7,X6,X9), inference(variable_rename,[status(thm)],[l129_enumset1])).
% 0.18/0.36  cnf(c_0_11, negated_conjecture, (k2_enumset1(esk1_0,esk2_0,esk3_0,esk4_0)!=k2_enumset1(esk3_0,esk4_0,esk2_0,esk1_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.18/0.36  cnf(c_0_12, plain, (k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.18/0.36  cnf(c_0_13, plain, (k4_enumset1(X1,X1,X2,X3,X4,X5)=k3_enumset1(X1,X2,X3,X4,X5)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.18/0.36  cnf(c_0_14, plain, (k2_enumset1(X1,X2,X3,X4)=k2_enumset1(X3,X2,X1,X4)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.18/0.36  fof(c_0_15, plain, ![X14, X15, X16, X17]:k2_enumset1(X14,X15,X16,X17)=k2_enumset1(X14,X17,X16,X15), inference(variable_rename,[status(thm)],[t107_enumset1])).
% 0.18/0.36  fof(c_0_16, plain, ![X10, X11, X12, X13]:k2_enumset1(X10,X11,X12,X13)=k2_enumset1(X10,X12,X13,X11), inference(variable_rename,[status(thm)],[t105_enumset1])).
% 0.18/0.36  cnf(c_0_17, negated_conjecture, (k4_enumset1(esk3_0,esk3_0,esk3_0,esk4_0,esk2_0,esk1_0)!=k4_enumset1(esk1_0,esk1_0,esk1_0,esk2_0,esk3_0,esk4_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_11, c_0_12]), c_0_12]), c_0_13]), c_0_13])).
% 0.18/0.36  cnf(c_0_18, plain, (k4_enumset1(X1,X1,X1,X2,X3,X4)=k4_enumset1(X3,X3,X3,X2,X1,X4)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_14, c_0_12]), c_0_12]), c_0_13]), c_0_13])).
% 0.18/0.36  cnf(c_0_19, plain, (k2_enumset1(X1,X2,X3,X4)=k2_enumset1(X1,X4,X3,X2)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.18/0.36  cnf(c_0_20, plain, (k2_enumset1(X1,X2,X3,X4)=k2_enumset1(X1,X3,X4,X2)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.18/0.36  cnf(c_0_21, negated_conjecture, (k4_enumset1(esk3_0,esk3_0,esk3_0,esk2_0,esk1_0,esk4_0)!=k4_enumset1(esk3_0,esk3_0,esk3_0,esk4_0,esk2_0,esk1_0)), inference(rw,[status(thm)],[c_0_17, c_0_18])).
% 0.18/0.36  cnf(c_0_22, plain, (k4_enumset1(X1,X1,X1,X2,X3,X4)=k4_enumset1(X1,X1,X1,X4,X3,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_19, c_0_12]), c_0_12]), c_0_13]), c_0_13])).
% 0.18/0.36  cnf(c_0_23, plain, (k4_enumset1(X1,X1,X1,X2,X3,X4)=k4_enumset1(X1,X1,X1,X3,X4,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_20, c_0_12]), c_0_12]), c_0_13]), c_0_13])).
% 0.18/0.36  cnf(c_0_24, negated_conjecture, (k4_enumset1(esk3_0,esk3_0,esk3_0,esk4_0,esk1_0,esk2_0)!=k4_enumset1(esk3_0,esk3_0,esk3_0,esk4_0,esk2_0,esk1_0)), inference(rw,[status(thm)],[c_0_21, c_0_22])).
% 0.18/0.36  cnf(c_0_25, plain, (k4_enumset1(X1,X1,X1,X2,X3,X4)=k4_enumset1(X1,X1,X1,X2,X4,X3)), inference(spm,[status(thm)],[c_0_22, c_0_23])).
% 0.18/0.36  cnf(c_0_26, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_24, c_0_25])]), ['proof']).
% 0.18/0.36  # SZS output end CNFRefutation
% 0.18/0.36  # Proof object total steps             : 27
% 0.18/0.36  # Proof object clause steps            : 14
% 0.18/0.36  # Proof object formula steps           : 13
% 0.18/0.36  # Proof object conjectures             : 8
% 0.18/0.36  # Proof object clause conjectures      : 5
% 0.18/0.36  # Proof object formula conjectures     : 3
% 0.18/0.36  # Proof object initial clauses used    : 6
% 0.18/0.36  # Proof object initial formulas used   : 6
% 0.18/0.36  # Proof object generating inferences   : 1
% 0.18/0.36  # Proof object simplifying inferences  : 20
% 0.18/0.36  # Training examples: 0 positive, 0 negative
% 0.18/0.36  # Parsed axioms                        : 6
% 0.18/0.36  # Removed by relevancy pruning/SinE    : 0
% 0.18/0.36  # Initial clauses                      : 6
% 0.18/0.36  # Removed in clause preprocessing      : 2
% 0.18/0.36  # Initial clauses in saturation        : 4
% 0.18/0.36  # Processed clauses                    : 17
% 0.18/0.36  # ...of these trivial                  : 0
% 0.18/0.36  # ...subsumed                          : 4
% 0.18/0.36  # ...remaining for further processing  : 13
% 0.18/0.36  # Other redundant clauses eliminated   : 0
% 0.18/0.36  # Clauses deleted for lack of memory   : 0
% 0.18/0.36  # Backward-subsumed                    : 0
% 0.18/0.36  # Backward-rewritten                   : 3
% 0.18/0.36  # Generated clauses                    : 64
% 0.18/0.36  # ...of the previous two non-trivial   : 46
% 0.18/0.36  # Contextual simplify-reflections      : 0
% 0.18/0.36  # Paramodulations                      : 64
% 0.18/0.36  # Factorizations                       : 0
% 0.18/0.36  # Equation resolutions                 : 0
% 0.18/0.36  # Propositional unsat checks           : 0
% 0.18/0.36  #    Propositional check models        : 0
% 0.18/0.36  #    Propositional check unsatisfiable : 0
% 0.18/0.36  #    Propositional clauses             : 0
% 0.18/0.36  #    Propositional clauses after purity: 0
% 0.18/0.36  #    Propositional unsat core size     : 0
% 0.18/0.36  #    Propositional preprocessing time  : 0.000
% 0.18/0.36  #    Propositional encoding time       : 0.000
% 0.18/0.36  #    Propositional solver time         : 0.000
% 0.18/0.36  #    Success case prop preproc time    : 0.000
% 0.18/0.36  #    Success case prop encoding time   : 0.000
% 0.18/0.36  #    Success case prop solver time     : 0.000
% 0.18/0.36  # Current number of processed clauses  : 6
% 0.18/0.36  #    Positive orientable unit clauses  : 0
% 0.18/0.36  #    Positive unorientable unit clauses: 6
% 0.18/0.36  #    Negative unit clauses             : 0
% 0.18/0.36  #    Non-unit-clauses                  : 0
% 0.18/0.36  # Current number of unprocessed clauses: 37
% 0.18/0.36  # ...number of literals in the above   : 37
% 0.18/0.36  # Current number of archived formulas  : 0
% 0.18/0.36  # Current number of archived clauses   : 9
% 0.18/0.36  # Clause-clause subsumption calls (NU) : 0
% 0.18/0.36  # Rec. Clause-clause subsumption calls : 0
% 0.18/0.36  # Non-unit clause-clause subsumptions  : 0
% 0.18/0.36  # Unit Clause-clause subsumption calls : 18
% 0.18/0.36  # Rewrite failures with RHS unbound    : 0
% 0.18/0.36  # BW rewrite match attempts            : 82
% 0.18/0.36  # BW rewrite match successes           : 82
% 0.18/0.36  # Condensation attempts                : 0
% 0.18/0.36  # Condensation successes               : 0
% 0.18/0.36  # Termbank termtop insertions          : 510
% 0.18/0.36  
% 0.18/0.36  # -------------------------------------------------
% 0.18/0.36  # User time                : 0.025 s
% 0.18/0.36  # System time              : 0.004 s
% 0.18/0.36  # Total time               : 0.029 s
% 0.18/0.36  # Maximum resident set size: 1560 pages
%------------------------------------------------------------------------------
