%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n017.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:56:08 EST 2020

% Result     : Theorem 0.14s
% Output     : CNFRefutation 0.14s
% Verified   : 
% Statistics : Number of formulae       :   23 (  28 expanded)
%              Number of clauses        :   12 (  13 expanded)
%              Number of leaves         :    5 (   7 expanded)
%              Depth                    :    6
%              Number of atoms          :   36 (  49 expanded)
%              Number of equality atoms :    8 (  11 expanded)
%              Maximal formula depth    :   10 (   3 average)
%              Maximal clause size      :    7 (   1 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t10_ordinal1,axiom,(
    ! [X1] : r2_hidden(X1,k1_ordinal1(X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t10_ordinal1)).

fof(d1_ordinal1,axiom,(
    ! [X1] : k1_ordinal1(X1) = k2_xboole_0(X1,k1_tarski(X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_ordinal1)).

fof(t14_ordinal1,conjecture,(
    ! [X1] : X1 != k1_ordinal1(X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t14_ordinal1)).

fof(t7_ordinal1,axiom,(
    ! [X1,X2] :
      ~ ( r2_hidden(X1,X2)
        & r1_tarski(X2,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_ordinal1)).

fof(d3_tarski,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
    <=> ! [X3] :
          ( r2_hidden(X3,X1)
         => r2_hidden(X3,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_tarski)).

fof(c_0_5,plain,(
    ! [X11] : r2_hidden(X11,k1_ordinal1(X11)) ),
    inference(variable_rename,[status(thm)],[t10_ordinal1])).

fof(c_0_6,plain,(
    ! [X10] : k1_ordinal1(X10) = k2_xboole_0(X10,k1_tarski(X10)) ),
    inference(variable_rename,[status(thm)],[d1_ordinal1])).

fof(c_0_7,negated_conjecture,(
    ~ ! [X1] : X1 != k1_ordinal1(X1) ),
    inference(assume_negation,[status(cth)],[t14_ordinal1])).

fof(c_0_8,plain,(
    ! [X12,X13] :
      ( ~ r2_hidden(X12,X13)
      | ~ r1_tarski(X13,X12) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t7_ordinal1])])).

cnf(c_0_9,plain,
    ( r2_hidden(X1,k1_ordinal1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_10,plain,
    ( k1_ordinal1(X1) = k2_xboole_0(X1,k1_tarski(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

fof(c_0_11,negated_conjecture,(
    esk2_0 = k1_ordinal1(esk2_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_7])])])).

cnf(c_0_12,plain,
    ( ~ r2_hidden(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_13,plain,
    ( r2_hidden(X1,k2_xboole_0(X1,k1_tarski(X1))) ),
    inference(rw,[status(thm)],[c_0_9,c_0_10])).

cnf(c_0_14,negated_conjecture,
    ( esk2_0 = k1_ordinal1(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

fof(c_0_15,plain,(
    ! [X4,X5,X6,X7,X8] :
      ( ( ~ r1_tarski(X4,X5)
        | ~ r2_hidden(X6,X4)
        | r2_hidden(X6,X5) )
      & ( r2_hidden(esk1_2(X7,X8),X7)
        | r1_tarski(X7,X8) )
      & ( ~ r2_hidden(esk1_2(X7,X8),X8)
        | r1_tarski(X7,X8) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).

cnf(c_0_16,plain,
    ( ~ r1_tarski(k2_xboole_0(X1,k1_tarski(X1)),X1) ),
    inference(spm,[status(thm)],[c_0_12,c_0_13])).

cnf(c_0_17,negated_conjecture,
    ( esk2_0 = k2_xboole_0(esk2_0,k1_tarski(esk2_0)) ),
    inference(rw,[status(thm)],[c_0_14,c_0_10])).

cnf(c_0_18,plain,
    ( r1_tarski(X1,X2)
    | ~ r2_hidden(esk1_2(X1,X2),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_19,plain,
    ( r2_hidden(esk1_2(X1,X2),X1)
    | r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_20,negated_conjecture,
    ( ~ r1_tarski(esk2_0,esk2_0) ),
    inference(spm,[status(thm)],[c_0_16,c_0_17])).

cnf(c_0_21,plain,
    ( r1_tarski(X1,X1) ),
    inference(spm,[status(thm)],[c_0_18,c_0_19])).

cnf(c_0_22,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_20,c_0_21])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.14  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.35  % Computer   : n017.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % WCLimit    : 600
% 0.14/0.35  % DateTime   : Tue Dec  1 10:49:16 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  # Version: 2.5pre002
% 0.14/0.35  # No SInE strategy applied
% 0.14/0.35  # Trying AutoSched0 for 299 seconds
% 0.14/0.38  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S053N
% 0.14/0.38  # and selection function HSelectMinInfpos.
% 0.14/0.38  #
% 0.14/0.38  # Preprocessing time       : 0.026 s
% 0.14/0.38  # Presaturation interreduction done
% 0.14/0.38  
% 0.14/0.38  # Proof found!
% 0.14/0.38  # SZS status Theorem
% 0.14/0.38  # SZS output start CNFRefutation
% 0.14/0.38  fof(t10_ordinal1, axiom, ![X1]:r2_hidden(X1,k1_ordinal1(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t10_ordinal1)).
% 0.14/0.38  fof(d1_ordinal1, axiom, ![X1]:k1_ordinal1(X1)=k2_xboole_0(X1,k1_tarski(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_ordinal1)).
% 0.14/0.38  fof(t14_ordinal1, conjecture, ![X1]:X1!=k1_ordinal1(X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t14_ordinal1)).
% 0.14/0.38  fof(t7_ordinal1, axiom, ![X1, X2]:~((r2_hidden(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t7_ordinal1)).
% 0.14/0.38  fof(d3_tarski, axiom, ![X1, X2]:(r1_tarski(X1,X2)<=>![X3]:(r2_hidden(X3,X1)=>r2_hidden(X3,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d3_tarski)).
% 0.14/0.38  fof(c_0_5, plain, ![X11]:r2_hidden(X11,k1_ordinal1(X11)), inference(variable_rename,[status(thm)],[t10_ordinal1])).
% 0.14/0.38  fof(c_0_6, plain, ![X10]:k1_ordinal1(X10)=k2_xboole_0(X10,k1_tarski(X10)), inference(variable_rename,[status(thm)],[d1_ordinal1])).
% 0.14/0.38  fof(c_0_7, negated_conjecture, ~(![X1]:X1!=k1_ordinal1(X1)), inference(assume_negation,[status(cth)],[t14_ordinal1])).
% 0.14/0.38  fof(c_0_8, plain, ![X12, X13]:(~r2_hidden(X12,X13)|~r1_tarski(X13,X12)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t7_ordinal1])])).
% 0.14/0.38  cnf(c_0_9, plain, (r2_hidden(X1,k1_ordinal1(X1))), inference(split_conjunct,[status(thm)],[c_0_5])).
% 0.14/0.38  cnf(c_0_10, plain, (k1_ordinal1(X1)=k2_xboole_0(X1,k1_tarski(X1))), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.14/0.38  fof(c_0_11, negated_conjecture, esk2_0=k1_ordinal1(esk2_0), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_7])])])).
% 0.14/0.38  cnf(c_0_12, plain, (~r2_hidden(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.14/0.38  cnf(c_0_13, plain, (r2_hidden(X1,k2_xboole_0(X1,k1_tarski(X1)))), inference(rw,[status(thm)],[c_0_9, c_0_10])).
% 0.14/0.38  cnf(c_0_14, negated_conjecture, (esk2_0=k1_ordinal1(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.14/0.38  fof(c_0_15, plain, ![X4, X5, X6, X7, X8]:((~r1_tarski(X4,X5)|(~r2_hidden(X6,X4)|r2_hidden(X6,X5)))&((r2_hidden(esk1_2(X7,X8),X7)|r1_tarski(X7,X8))&(~r2_hidden(esk1_2(X7,X8),X8)|r1_tarski(X7,X8)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).
% 0.14/0.38  cnf(c_0_16, plain, (~r1_tarski(k2_xboole_0(X1,k1_tarski(X1)),X1)), inference(spm,[status(thm)],[c_0_12, c_0_13])).
% 0.14/0.38  cnf(c_0_17, negated_conjecture, (esk2_0=k2_xboole_0(esk2_0,k1_tarski(esk2_0))), inference(rw,[status(thm)],[c_0_14, c_0_10])).
% 0.14/0.38  cnf(c_0_18, plain, (r1_tarski(X1,X2)|~r2_hidden(esk1_2(X1,X2),X2)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.38  cnf(c_0_19, plain, (r2_hidden(esk1_2(X1,X2),X1)|r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.38  cnf(c_0_20, negated_conjecture, (~r1_tarski(esk2_0,esk2_0)), inference(spm,[status(thm)],[c_0_16, c_0_17])).
% 0.14/0.38  cnf(c_0_21, plain, (r1_tarski(X1,X1)), inference(spm,[status(thm)],[c_0_18, c_0_19])).
% 0.14/0.38  cnf(c_0_22, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_20, c_0_21])]), ['proof']).
% 0.14/0.38  # SZS output end CNFRefutation
% 0.14/0.38  # Proof object total steps             : 23
% 0.14/0.38  # Proof object clause steps            : 12
% 0.14/0.38  # Proof object formula steps           : 11
% 0.14/0.38  # Proof object conjectures             : 7
% 0.14/0.38  # Proof object clause conjectures      : 4
% 0.14/0.38  # Proof object formula conjectures     : 3
% 0.14/0.38  # Proof object initial clauses used    : 6
% 0.14/0.38  # Proof object initial formulas used   : 5
% 0.14/0.38  # Proof object generating inferences   : 3
% 0.14/0.38  # Proof object simplifying inferences  : 4
% 0.14/0.38  # Training examples: 0 positive, 0 negative
% 0.14/0.38  # Parsed axioms                        : 5
% 0.14/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.14/0.38  # Initial clauses                      : 7
% 0.14/0.38  # Removed in clause preprocessing      : 1
% 0.14/0.38  # Initial clauses in saturation        : 6
% 0.14/0.38  # Processed clauses                    : 18
% 0.14/0.38  # ...of these trivial                  : 0
% 0.14/0.38  # ...subsumed                          : 1
% 0.14/0.38  # ...remaining for further processing  : 17
% 0.14/0.38  # Other redundant clauses eliminated   : 0
% 0.14/0.38  # Clauses deleted for lack of memory   : 0
% 0.14/0.38  # Backward-subsumed                    : 0
% 0.14/0.38  # Backward-rewritten                   : 1
% 0.14/0.38  # Generated clauses                    : 10
% 0.14/0.38  # ...of the previous two non-trivial   : 9
% 0.14/0.38  # Contextual simplify-reflections      : 0
% 0.14/0.38  # Paramodulations                      : 10
% 0.14/0.38  # Factorizations                       : 0
% 0.14/0.38  # Equation resolutions                 : 0
% 0.14/0.38  # Propositional unsat checks           : 0
% 0.14/0.38  #    Propositional check models        : 0
% 0.14/0.38  #    Propositional check unsatisfiable : 0
% 0.14/0.38  #    Propositional clauses             : 0
% 0.14/0.38  #    Propositional clauses after purity: 0
% 0.14/0.38  #    Propositional unsat core size     : 0
% 0.14/0.38  #    Propositional preprocessing time  : 0.000
% 0.14/0.38  #    Propositional encoding time       : 0.000
% 0.14/0.38  #    Propositional solver time         : 0.000
% 0.14/0.38  #    Success case prop preproc time    : 0.000
% 0.14/0.38  #    Success case prop encoding time   : 0.000
% 0.14/0.38  #    Success case prop solver time     : 0.000
% 0.14/0.38  # Current number of processed clauses  : 10
% 0.14/0.38  #    Positive orientable unit clauses  : 4
% 0.14/0.38  #    Positive unorientable unit clauses: 0
% 0.14/0.38  #    Negative unit clauses             : 1
% 0.14/0.38  #    Non-unit-clauses                  : 5
% 0.14/0.38  # Current number of unprocessed clauses: 3
% 0.14/0.38  # ...number of literals in the above   : 7
% 0.14/0.38  # Current number of archived formulas  : 0
% 0.14/0.38  # Current number of archived clauses   : 8
% 0.14/0.38  # Clause-clause subsumption calls (NU) : 9
% 0.14/0.38  # Rec. Clause-clause subsumption calls : 9
% 0.14/0.38  # Non-unit clause-clause subsumptions  : 0
% 0.14/0.38  # Unit Clause-clause subsumption calls : 7
% 0.14/0.38  # Rewrite failures with RHS unbound    : 0
% 0.14/0.38  # BW rewrite match attempts            : 6
% 0.14/0.38  # BW rewrite match successes           : 1
% 0.14/0.38  # Condensation attempts                : 0
% 0.14/0.38  # Condensation successes               : 0
% 0.14/0.38  # Termbank termtop insertions          : 479
% 0.14/0.38  
% 0.14/0.38  # -------------------------------------------------
% 0.14/0.38  # User time                : 0.025 s
% 0.14/0.38  # System time              : 0.004 s
% 0.14/0.38  # Total time               : 0.030 s
% 0.14/0.38  # Maximum resident set size: 1564 pages
%------------------------------------------------------------------------------
