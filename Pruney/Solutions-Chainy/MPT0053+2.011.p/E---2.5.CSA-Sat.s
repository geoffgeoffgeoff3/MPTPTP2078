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
% DateTime   : Thu Dec  3 10:32:10 EST 2020

% Result     : CounterSatisfiable 0.12s
% Output     : Saturation 0.12s
% Verified   : 
% Statistics : Number of formulae       :   15 (  17 expanded)
%              Number of clauses        :    6 (   6 expanded)
%              Number of leaves         :    4 (   5 expanded)
%              Depth                    :    3
%              Number of atoms          :   21 (  27 expanded)
%              Number of equality atoms :   16 (  19 expanded)
%              Maximal formula depth    :    6 (   3 average)
%              Maximal clause size      :    4 (   1 average)
%              Maximal term depth       :    3 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t46_xboole_1,conjecture,(
    ! [X1,X2] : k4_xboole_0(X1,k2_xboole_0(X1,X2)) = k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t46_xboole_1)).

fof(t40_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(k2_xboole_0(X1,X2),X2) = k4_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t40_xboole_1)).

fof(t6_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,k2_xboole_0(X1,X2)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t6_xboole_1)).

fof(l32_xboole_1,axiom,(
    ! [X1,X2] :
      ( k4_xboole_0(X1,X2) = k1_xboole_0
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l32_xboole_1)).

fof(c_0_4,negated_conjecture,(
    ~ ! [X1,X2] : k4_xboole_0(X1,k2_xboole_0(X1,X2)) = k1_xboole_0 ),
    inference(assume_negation,[status(cth)],[t46_xboole_1])).

fof(c_0_5,plain,(
    ! [X5,X6] : k4_xboole_0(k2_xboole_0(X5,X6),X6) = k4_xboole_0(X5,X6) ),
    inference(variable_rename,[status(thm)],[t40_xboole_1])).

fof(c_0_6,plain,(
    ! [X7,X8] : k2_xboole_0(X7,k2_xboole_0(X7,X8)) = k2_xboole_0(X7,X8) ),
    inference(variable_rename,[status(thm)],[t6_xboole_1])).

fof(c_0_7,plain,(
    ! [X3,X4] :
      ( ( k4_xboole_0(X3,X4) != k1_xboole_0
        | r1_tarski(X3,X4) )
      & ( ~ r1_tarski(X3,X4)
        | k4_xboole_0(X3,X4) = k1_xboole_0 ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l32_xboole_1])])).

fof(c_0_8,negated_conjecture,(
    k4_xboole_0(esk1_0,k2_xboole_0(esk1_0,esk2_0)) != k1_xboole_0 ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_4])])])).

cnf(c_0_9,plain,
    ( k4_xboole_0(k2_xboole_0(X1,X2),X2) = k4_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_5]),
    [final]).

cnf(c_0_10,plain,
    ( k2_xboole_0(X1,k2_xboole_0(X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_6]),
    [final]).

cnf(c_0_11,plain,
    ( r1_tarski(X1,X2)
    | k4_xboole_0(X1,X2) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_7]),
    [final]).

cnf(c_0_12,plain,
    ( k4_xboole_0(X1,X2) = k1_xboole_0
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_7]),
    [final]).

cnf(c_0_13,negated_conjecture,
    ( k4_xboole_0(esk1_0,k2_xboole_0(esk1_0,esk2_0)) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_8]),
    [final]).

cnf(c_0_14,plain,
    ( k4_xboole_0(k2_xboole_0(X1,X2),k2_xboole_0(X1,X2)) = k4_xboole_0(X1,k2_xboole_0(X1,X2)) ),
    inference(spm,[status(thm)],[c_0_9,c_0_10]),
    [final]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.34  % Computer   : n021.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 09:31:34 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.12/0.37  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S061I
% 0.12/0.37  # and selection function SelectMaxLComplexAPPNTNp.
% 0.12/0.37  #
% 0.12/0.37  # Preprocessing time       : 0.026 s
% 0.12/0.37  # Presaturation interreduction done
% 0.12/0.37  
% 0.12/0.37  # No proof found!
% 0.12/0.37  # SZS status CounterSatisfiable
% 0.12/0.37  # SZS output start Saturation
% 0.12/0.37  fof(t46_xboole_1, conjecture, ![X1, X2]:k4_xboole_0(X1,k2_xboole_0(X1,X2))=k1_xboole_0, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t46_xboole_1)).
% 0.12/0.37  fof(t40_xboole_1, axiom, ![X1, X2]:k4_xboole_0(k2_xboole_0(X1,X2),X2)=k4_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t40_xboole_1)).
% 0.12/0.37  fof(t6_xboole_1, axiom, ![X1, X2]:k2_xboole_0(X1,k2_xboole_0(X1,X2))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t6_xboole_1)).
% 0.12/0.37  fof(l32_xboole_1, axiom, ![X1, X2]:(k4_xboole_0(X1,X2)=k1_xboole_0<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l32_xboole_1)).
% 0.12/0.37  fof(c_0_4, negated_conjecture, ~(![X1, X2]:k4_xboole_0(X1,k2_xboole_0(X1,X2))=k1_xboole_0), inference(assume_negation,[status(cth)],[t46_xboole_1])).
% 0.12/0.37  fof(c_0_5, plain, ![X5, X6]:k4_xboole_0(k2_xboole_0(X5,X6),X6)=k4_xboole_0(X5,X6), inference(variable_rename,[status(thm)],[t40_xboole_1])).
% 0.12/0.37  fof(c_0_6, plain, ![X7, X8]:k2_xboole_0(X7,k2_xboole_0(X7,X8))=k2_xboole_0(X7,X8), inference(variable_rename,[status(thm)],[t6_xboole_1])).
% 0.12/0.37  fof(c_0_7, plain, ![X3, X4]:((k4_xboole_0(X3,X4)!=k1_xboole_0|r1_tarski(X3,X4))&(~r1_tarski(X3,X4)|k4_xboole_0(X3,X4)=k1_xboole_0)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l32_xboole_1])])).
% 0.12/0.37  fof(c_0_8, negated_conjecture, k4_xboole_0(esk1_0,k2_xboole_0(esk1_0,esk2_0))!=k1_xboole_0, inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_4])])])).
% 0.12/0.37  cnf(c_0_9, plain, (k4_xboole_0(k2_xboole_0(X1,X2),X2)=k4_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_5]), ['final']).
% 0.12/0.37  cnf(c_0_10, plain, (k2_xboole_0(X1,k2_xboole_0(X1,X2))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_6]), ['final']).
% 0.12/0.37  cnf(c_0_11, plain, (r1_tarski(X1,X2)|k4_xboole_0(X1,X2)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_7]), ['final']).
% 0.12/0.37  cnf(c_0_12, plain, (k4_xboole_0(X1,X2)=k1_xboole_0|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_7]), ['final']).
% 0.12/0.37  cnf(c_0_13, negated_conjecture, (k4_xboole_0(esk1_0,k2_xboole_0(esk1_0,esk2_0))!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_8]), ['final']).
% 0.12/0.37  cnf(c_0_14, plain, (k4_xboole_0(k2_xboole_0(X1,X2),k2_xboole_0(X1,X2))=k4_xboole_0(X1,k2_xboole_0(X1,X2))), inference(spm,[status(thm)],[c_0_9, c_0_10]), ['final']).
% 0.12/0.37  # SZS output end Saturation
% 0.12/0.37  # Proof object total steps             : 15
% 0.12/0.37  # Proof object clause steps            : 6
% 0.12/0.37  # Proof object formula steps           : 9
% 0.12/0.37  # Proof object conjectures             : 4
% 0.12/0.37  # Proof object clause conjectures      : 1
% 0.12/0.37  # Proof object formula conjectures     : 3
% 0.12/0.37  # Proof object initial clauses used    : 5
% 0.12/0.37  # Proof object initial formulas used   : 4
% 0.12/0.37  # Proof object generating inferences   : 1
% 0.12/0.37  # Proof object simplifying inferences  : 0
% 0.12/0.37  # Parsed axioms                        : 4
% 0.12/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.12/0.37  # Initial clauses                      : 5
% 0.12/0.37  # Removed in clause preprocessing      : 0
% 0.12/0.37  # Initial clauses in saturation        : 5
% 0.12/0.37  # Processed clauses                    : 11
% 0.12/0.37  # ...of these trivial                  : 0
% 0.12/0.37  # ...subsumed                          : 0
% 0.12/0.37  # ...remaining for further processing  : 11
% 0.12/0.37  # Other redundant clauses eliminated   : 0
% 0.12/0.37  # Clauses deleted for lack of memory   : 0
% 0.12/0.37  # Backward-subsumed                    : 0
% 0.12/0.37  # Backward-rewritten                   : 0
% 0.12/0.37  # Generated clauses                    : 5
% 0.12/0.37  # ...of the previous two non-trivial   : 1
% 0.12/0.37  # Contextual simplify-reflections      : 0
% 0.12/0.37  # Paramodulations                      : 5
% 0.12/0.37  # Factorizations                       : 0
% 0.12/0.37  # Equation resolutions                 : 0
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
% 0.12/0.37  # Current number of processed clauses  : 6
% 0.12/0.37  #    Positive orientable unit clauses  : 3
% 0.12/0.37  #    Positive unorientable unit clauses: 0
% 0.12/0.37  #    Negative unit clauses             : 1
% 0.12/0.37  #    Non-unit-clauses                  : 2
% 0.12/0.37  # Current number of unprocessed clauses: 0
% 0.12/0.37  # ...number of literals in the above   : 0
% 0.12/0.37  # Current number of archived formulas  : 0
% 0.12/0.37  # Current number of archived clauses   : 5
% 0.12/0.37  # Clause-clause subsumption calls (NU) : 0
% 0.12/0.37  # Rec. Clause-clause subsumption calls : 0
% 0.12/0.37  # Non-unit clause-clause subsumptions  : 0
% 0.12/0.37  # Unit Clause-clause subsumption calls : 0
% 0.12/0.37  # Rewrite failures with RHS unbound    : 0
% 0.12/0.37  # BW rewrite match attempts            : 0
% 0.12/0.37  # BW rewrite match successes           : 0
% 0.12/0.37  # Condensation attempts                : 0
% 0.12/0.37  # Condensation successes               : 0
% 0.12/0.37  # Termbank termtop insertions          : 291
% 0.12/0.37  
% 0.12/0.37  # -------------------------------------------------
% 0.12/0.37  # User time                : 0.024 s
% 0.12/0.37  # System time              : 0.005 s
% 0.12/0.37  # Total time               : 0.029 s
% 0.12/0.37  # Maximum resident set size: 1560 pages
%------------------------------------------------------------------------------
