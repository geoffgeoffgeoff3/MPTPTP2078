%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n014.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:38:26 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   26 (  65 expanded)
%              Number of clauses        :   13 (  25 expanded)
%              Number of leaves         :    6 (  19 expanded)
%              Depth                    :    6
%              Number of atoms          :   38 (  80 expanded)
%              Number of equality atoms :   29 (  71 expanded)
%              Maximal formula depth    :    6 (   3 average)
%              Maximal clause size      :    2 (   1 average)
%              Maximal term depth       :    3 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t41_enumset1,axiom,(
    ! [X1,X2] : k2_tarski(X1,X2) = k2_xboole_0(k1_tarski(X1),k1_tarski(X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t41_enumset1)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_enumset1)).

fof(t77_enumset1,axiom,(
    ! [X1,X2] : k2_enumset1(X1,X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t77_enumset1)).

fof(t23_zfmisc_1,conjecture,(
    ! [X1,X2] :
      ( X1 != X2
     => k4_xboole_0(k2_tarski(X1,X2),k1_tarski(X2)) = k1_tarski(X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t23_zfmisc_1)).

fof(t88_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_xboole_0(X1,X2)
     => k4_xboole_0(k2_xboole_0(X1,X2),X2) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t88_xboole_1)).

fof(t17_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( X1 != X2
     => r1_xboole_0(k1_tarski(X1),k1_tarski(X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t17_zfmisc_1)).

fof(c_0_6,plain,(
    ! [X5,X6] : k2_tarski(X5,X6) = k2_xboole_0(k1_tarski(X5),k1_tarski(X6)) ),
    inference(variable_rename,[status(thm)],[t41_enumset1])).

fof(c_0_7,plain,(
    ! [X7] : k2_tarski(X7,X7) = k1_tarski(X7) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_8,plain,(
    ! [X8,X9] : k2_enumset1(X8,X8,X8,X9) = k2_tarski(X8,X9) ),
    inference(variable_rename,[status(thm)],[t77_enumset1])).

fof(c_0_9,negated_conjecture,(
    ~ ! [X1,X2] :
        ( X1 != X2
       => k4_xboole_0(k2_tarski(X1,X2),k1_tarski(X2)) = k1_tarski(X1) ) ),
    inference(assume_negation,[status(cth)],[t23_zfmisc_1])).

fof(c_0_10,plain,(
    ! [X3,X4] :
      ( ~ r1_xboole_0(X3,X4)
      | k4_xboole_0(k2_xboole_0(X3,X4),X4) = X3 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t88_xboole_1])])).

cnf(c_0_11,plain,
    ( k2_tarski(X1,X2) = k2_xboole_0(k1_tarski(X1),k1_tarski(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_12,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_13,plain,
    ( k2_enumset1(X1,X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

fof(c_0_14,plain,(
    ! [X10,X11] :
      ( X10 = X11
      | r1_xboole_0(k1_tarski(X10),k1_tarski(X11)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t17_zfmisc_1])])).

fof(c_0_15,negated_conjecture,
    ( esk1_0 != esk2_0
    & k4_xboole_0(k2_tarski(esk1_0,esk2_0),k1_tarski(esk2_0)) != k1_tarski(esk1_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_9])])])).

cnf(c_0_16,plain,
    ( k4_xboole_0(k2_xboole_0(X1,X2),X2) = X1
    | ~ r1_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_17,plain,
    ( k2_enumset1(X1,X1,X1,X2) = k2_xboole_0(k2_enumset1(X1,X1,X1,X1),k2_enumset1(X2,X2,X2,X2)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_11,c_0_12]),c_0_12]),c_0_13]),c_0_13]),c_0_13])).

cnf(c_0_18,plain,
    ( X1 = X2
    | r1_xboole_0(k1_tarski(X1),k1_tarski(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_19,negated_conjecture,
    ( k4_xboole_0(k2_tarski(esk1_0,esk2_0),k1_tarski(esk2_0)) != k1_tarski(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_20,plain,
    ( k4_xboole_0(k2_enumset1(X1,X1,X1,X2),k2_enumset1(X2,X2,X2,X2)) = k2_enumset1(X1,X1,X1,X1)
    | ~ r1_xboole_0(k2_enumset1(X1,X1,X1,X1),k2_enumset1(X2,X2,X2,X2)) ),
    inference(spm,[status(thm)],[c_0_16,c_0_17])).

cnf(c_0_21,plain,
    ( X1 = X2
    | r1_xboole_0(k2_enumset1(X1,X1,X1,X1),k2_enumset1(X2,X2,X2,X2)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_18,c_0_12]),c_0_12]),c_0_13]),c_0_13])).

cnf(c_0_22,negated_conjecture,
    ( k4_xboole_0(k2_enumset1(esk1_0,esk1_0,esk1_0,esk2_0),k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0)) != k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_19,c_0_12]),c_0_12]),c_0_13]),c_0_13]),c_0_13])).

cnf(c_0_23,plain,
    ( k4_xboole_0(k2_enumset1(X1,X1,X1,X2),k2_enumset1(X2,X2,X2,X2)) = k2_enumset1(X1,X1,X1,X1)
    | X1 = X2 ),
    inference(spm,[status(thm)],[c_0_20,c_0_21])).

cnf(c_0_24,negated_conjecture,
    ( esk1_0 != esk2_0 ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_25,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_22,c_0_23]),c_0_24]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n014.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 14:07:52 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.13/0.38  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S5PRR_RG_S04BN
% 0.13/0.38  # and selection function PSelectComplexExceptUniqMaxHorn.
% 0.13/0.38  #
% 0.13/0.38  # Preprocessing time       : 0.042 s
% 0.13/0.38  # Presaturation interreduction done
% 0.13/0.38  
% 0.13/0.38  # Proof found!
% 0.13/0.38  # SZS status Theorem
% 0.13/0.38  # SZS output start CNFRefutation
% 0.13/0.38  fof(t41_enumset1, axiom, ![X1, X2]:k2_tarski(X1,X2)=k2_xboole_0(k1_tarski(X1),k1_tarski(X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t41_enumset1)).
% 0.13/0.38  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t69_enumset1)).
% 0.13/0.38  fof(t77_enumset1, axiom, ![X1, X2]:k2_enumset1(X1,X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t77_enumset1)).
% 0.13/0.38  fof(t23_zfmisc_1, conjecture, ![X1, X2]:(X1!=X2=>k4_xboole_0(k2_tarski(X1,X2),k1_tarski(X2))=k1_tarski(X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t23_zfmisc_1)).
% 0.13/0.38  fof(t88_xboole_1, axiom, ![X1, X2]:(r1_xboole_0(X1,X2)=>k4_xboole_0(k2_xboole_0(X1,X2),X2)=X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t88_xboole_1)).
% 0.13/0.38  fof(t17_zfmisc_1, axiom, ![X1, X2]:(X1!=X2=>r1_xboole_0(k1_tarski(X1),k1_tarski(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t17_zfmisc_1)).
% 0.13/0.38  fof(c_0_6, plain, ![X5, X6]:k2_tarski(X5,X6)=k2_xboole_0(k1_tarski(X5),k1_tarski(X6)), inference(variable_rename,[status(thm)],[t41_enumset1])).
% 0.13/0.38  fof(c_0_7, plain, ![X7]:k2_tarski(X7,X7)=k1_tarski(X7), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.13/0.38  fof(c_0_8, plain, ![X8, X9]:k2_enumset1(X8,X8,X8,X9)=k2_tarski(X8,X9), inference(variable_rename,[status(thm)],[t77_enumset1])).
% 0.13/0.38  fof(c_0_9, negated_conjecture, ~(![X1, X2]:(X1!=X2=>k4_xboole_0(k2_tarski(X1,X2),k1_tarski(X2))=k1_tarski(X1))), inference(assume_negation,[status(cth)],[t23_zfmisc_1])).
% 0.13/0.38  fof(c_0_10, plain, ![X3, X4]:(~r1_xboole_0(X3,X4)|k4_xboole_0(k2_xboole_0(X3,X4),X4)=X3), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t88_xboole_1])])).
% 0.13/0.38  cnf(c_0_11, plain, (k2_tarski(X1,X2)=k2_xboole_0(k1_tarski(X1),k1_tarski(X2))), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.13/0.38  cnf(c_0_12, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.13/0.38  cnf(c_0_13, plain, (k2_enumset1(X1,X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.13/0.38  fof(c_0_14, plain, ![X10, X11]:(X10=X11|r1_xboole_0(k1_tarski(X10),k1_tarski(X11))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t17_zfmisc_1])])).
% 0.13/0.38  fof(c_0_15, negated_conjecture, (esk1_0!=esk2_0&k4_xboole_0(k2_tarski(esk1_0,esk2_0),k1_tarski(esk2_0))!=k1_tarski(esk1_0)), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_9])])])).
% 0.13/0.38  cnf(c_0_16, plain, (k4_xboole_0(k2_xboole_0(X1,X2),X2)=X1|~r1_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_17, plain, (k2_enumset1(X1,X1,X1,X2)=k2_xboole_0(k2_enumset1(X1,X1,X1,X1),k2_enumset1(X2,X2,X2,X2))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_11, c_0_12]), c_0_12]), c_0_13]), c_0_13]), c_0_13])).
% 0.13/0.38  cnf(c_0_18, plain, (X1=X2|r1_xboole_0(k1_tarski(X1),k1_tarski(X2))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.13/0.38  cnf(c_0_19, negated_conjecture, (k4_xboole_0(k2_tarski(esk1_0,esk2_0),k1_tarski(esk2_0))!=k1_tarski(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.13/0.38  cnf(c_0_20, plain, (k4_xboole_0(k2_enumset1(X1,X1,X1,X2),k2_enumset1(X2,X2,X2,X2))=k2_enumset1(X1,X1,X1,X1)|~r1_xboole_0(k2_enumset1(X1,X1,X1,X1),k2_enumset1(X2,X2,X2,X2))), inference(spm,[status(thm)],[c_0_16, c_0_17])).
% 0.13/0.38  cnf(c_0_21, plain, (X1=X2|r1_xboole_0(k2_enumset1(X1,X1,X1,X1),k2_enumset1(X2,X2,X2,X2))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_18, c_0_12]), c_0_12]), c_0_13]), c_0_13])).
% 0.13/0.38  cnf(c_0_22, negated_conjecture, (k4_xboole_0(k2_enumset1(esk1_0,esk1_0,esk1_0,esk2_0),k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0))!=k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_19, c_0_12]), c_0_12]), c_0_13]), c_0_13]), c_0_13])).
% 0.13/0.38  cnf(c_0_23, plain, (k4_xboole_0(k2_enumset1(X1,X1,X1,X2),k2_enumset1(X2,X2,X2,X2))=k2_enumset1(X1,X1,X1,X1)|X1=X2), inference(spm,[status(thm)],[c_0_20, c_0_21])).
% 0.13/0.38  cnf(c_0_24, negated_conjecture, (esk1_0!=esk2_0), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.13/0.38  cnf(c_0_25, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_22, c_0_23]), c_0_24]), ['proof']).
% 0.13/0.38  # SZS output end CNFRefutation
% 0.13/0.38  # Proof object total steps             : 26
% 0.13/0.38  # Proof object clause steps            : 13
% 0.13/0.38  # Proof object formula steps           : 13
% 0.13/0.38  # Proof object conjectures             : 7
% 0.13/0.38  # Proof object clause conjectures      : 4
% 0.13/0.38  # Proof object formula conjectures     : 3
% 0.13/0.38  # Proof object initial clauses used    : 7
% 0.13/0.38  # Proof object initial formulas used   : 6
% 0.13/0.38  # Proof object generating inferences   : 3
% 0.13/0.38  # Proof object simplifying inferences  : 15
% 0.13/0.38  # Training examples: 0 positive, 0 negative
% 0.13/0.38  # Parsed axioms                        : 6
% 0.13/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.38  # Initial clauses                      : 7
% 0.13/0.38  # Removed in clause preprocessing      : 2
% 0.13/0.38  # Initial clauses in saturation        : 5
% 0.13/0.38  # Processed clauses                    : 12
% 0.13/0.38  # ...of these trivial                  : 0
% 0.13/0.38  # ...subsumed                          : 0
% 0.13/0.38  # ...remaining for further processing  : 12
% 0.13/0.38  # Other redundant clauses eliminated   : 0
% 0.13/0.38  # Clauses deleted for lack of memory   : 0
% 0.13/0.38  # Backward-subsumed                    : 0
% 0.13/0.38  # Backward-rewritten                   : 0
% 0.13/0.38  # Generated clauses                    : 12
% 0.13/0.38  # ...of the previous two non-trivial   : 11
% 0.13/0.38  # Contextual simplify-reflections      : 0
% 0.13/0.38  # Paramodulations                      : 12
% 0.13/0.38  # Factorizations                       : 0
% 0.13/0.38  # Equation resolutions                 : 0
% 0.13/0.38  # Propositional unsat checks           : 0
% 0.13/0.38  #    Propositional check models        : 0
% 0.13/0.38  #    Propositional check unsatisfiable : 0
% 0.13/0.38  #    Propositional clauses             : 0
% 0.13/0.38  #    Propositional clauses after purity: 0
% 0.13/0.38  #    Propositional unsat core size     : 0
% 0.13/0.38  #    Propositional preprocessing time  : 0.000
% 0.13/0.38  #    Propositional encoding time       : 0.000
% 0.13/0.38  #    Propositional solver time         : 0.000
% 0.13/0.38  #    Success case prop preproc time    : 0.000
% 0.13/0.38  #    Success case prop encoding time   : 0.000
% 0.13/0.38  #    Success case prop solver time     : 0.000
% 0.13/0.38  # Current number of processed clauses  : 7
% 0.13/0.38  #    Positive orientable unit clauses  : 1
% 0.13/0.38  #    Positive unorientable unit clauses: 0
% 0.13/0.38  #    Negative unit clauses             : 2
% 0.13/0.38  #    Non-unit-clauses                  : 4
% 0.13/0.38  # Current number of unprocessed clauses: 0
% 0.13/0.38  # ...number of literals in the above   : 0
% 0.13/0.38  # Current number of archived formulas  : 0
% 0.13/0.38  # Current number of archived clauses   : 7
% 0.13/0.38  # Clause-clause subsumption calls (NU) : 1
% 0.13/0.38  # Rec. Clause-clause subsumption calls : 1
% 0.13/0.38  # Non-unit clause-clause subsumptions  : 0
% 0.13/0.38  # Unit Clause-clause subsumption calls : 0
% 0.13/0.39  # Rewrite failures with RHS unbound    : 0
% 0.13/0.39  # BW rewrite match attempts            : 0
% 0.13/0.39  # BW rewrite match successes           : 0
% 0.13/0.39  # Condensation attempts                : 0
% 0.13/0.39  # Condensation successes               : 0
% 0.13/0.39  # Termbank termtop insertions          : 480
% 0.13/0.39  
% 0.13/0.39  # -------------------------------------------------
% 0.13/0.39  # User time                : 0.039 s
% 0.13/0.39  # System time              : 0.007 s
% 0.13/0.39  # Total time               : 0.046 s
% 0.13/0.39  # Maximum resident set size: 1564 pages
%------------------------------------------------------------------------------
