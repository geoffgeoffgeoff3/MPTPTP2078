%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n012.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:32:31 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   16 (  30 expanded)
%              Number of clauses        :    9 (  11 expanded)
%              Number of leaves         :    3 (   7 expanded)
%              Depth                    :    7
%              Number of atoms          :   40 (  78 expanded)
%              Number of equality atoms :    5 (   5 expanded)
%              Maximal formula depth    :    7 (   4 average)
%              Maximal clause size      :    7 (   2 average)
%              Maximal term depth       :    1 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t58_xboole_1,conjecture,(
    ! [X1,X2,X3] :
      ( ( r2_xboole_0(X1,X2)
        & r1_tarski(X2,X3) )
     => r2_xboole_0(X1,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t58_xboole_1)).

fof(d8_xboole_0,axiom,(
    ! [X1,X2] :
      ( r2_xboole_0(X1,X2)
    <=> ( r1_tarski(X1,X2)
        & X1 != X2 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d8_xboole_0)).

fof(t56_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( ( r2_xboole_0(X1,X2)
        & r2_xboole_0(X2,X3) )
     => r2_xboole_0(X1,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t56_xboole_1)).

fof(c_0_3,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( ( r2_xboole_0(X1,X2)
          & r1_tarski(X2,X3) )
       => r2_xboole_0(X1,X3) ) ),
    inference(assume_negation,[status(cth)],[t58_xboole_1])).

fof(c_0_4,plain,(
    ! [X4,X5] :
      ( ( r1_tarski(X4,X5)
        | ~ r2_xboole_0(X4,X5) )
      & ( X4 != X5
        | ~ r2_xboole_0(X4,X5) )
      & ( ~ r1_tarski(X4,X5)
        | X4 = X5
        | r2_xboole_0(X4,X5) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d8_xboole_0])])])).

fof(c_0_5,negated_conjecture,
    ( r2_xboole_0(esk1_0,esk2_0)
    & r1_tarski(esk2_0,esk3_0)
    & ~ r2_xboole_0(esk1_0,esk3_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_3])])])).

cnf(c_0_6,plain,
    ( X1 = X2
    | r2_xboole_0(X1,X2)
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_4])).

cnf(c_0_7,negated_conjecture,
    ( r1_tarski(esk2_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

fof(c_0_8,plain,(
    ! [X6,X7,X8] :
      ( ~ r2_xboole_0(X6,X7)
      | ~ r2_xboole_0(X7,X8)
      | r2_xboole_0(X6,X8) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t56_xboole_1])])).

cnf(c_0_9,negated_conjecture,
    ( ~ r2_xboole_0(esk1_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_10,negated_conjecture,
    ( esk3_0 = esk2_0
    | r2_xboole_0(esk2_0,esk3_0) ),
    inference(spm,[status(thm)],[c_0_6,c_0_7])).

cnf(c_0_11,negated_conjecture,
    ( r2_xboole_0(esk1_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_12,plain,
    ( r2_xboole_0(X1,X3)
    | ~ r2_xboole_0(X1,X2)
    | ~ r2_xboole_0(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_13,negated_conjecture,
    ( r2_xboole_0(esk2_0,esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_9,c_0_10]),c_0_11])])).

cnf(c_0_14,negated_conjecture,
    ( r2_xboole_0(X1,esk3_0)
    | ~ r2_xboole_0(X1,esk2_0) ),
    inference(spm,[status(thm)],[c_0_12,c_0_13])).

cnf(c_0_15,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_14,c_0_11]),c_0_9]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n012.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.19/0.34  % DateTime   : Tue Dec  1 19:44:07 EST 2020
% 0.19/0.34  % CPUTime    : 
% 0.19/0.34  # Version: 2.5pre002
% 0.19/0.34  # No SInE strategy applied
% 0.19/0.34  # Trying AutoSched0 for 299 seconds
% 0.19/0.37  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S057A
% 0.19/0.37  # and selection function SelectMin2Infpos.
% 0.19/0.37  #
% 0.19/0.37  # Preprocessing time       : 0.026 s
% 0.19/0.37  # Presaturation interreduction done
% 0.19/0.37  
% 0.19/0.37  # Proof found!
% 0.19/0.37  # SZS status Theorem
% 0.19/0.37  # SZS output start CNFRefutation
% 0.19/0.37  fof(t58_xboole_1, conjecture, ![X1, X2, X3]:((r2_xboole_0(X1,X2)&r1_tarski(X2,X3))=>r2_xboole_0(X1,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t58_xboole_1)).
% 0.19/0.37  fof(d8_xboole_0, axiom, ![X1, X2]:(r2_xboole_0(X1,X2)<=>(r1_tarski(X1,X2)&X1!=X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d8_xboole_0)).
% 0.19/0.37  fof(t56_xboole_1, axiom, ![X1, X2, X3]:((r2_xboole_0(X1,X2)&r2_xboole_0(X2,X3))=>r2_xboole_0(X1,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t56_xboole_1)).
% 0.19/0.37  fof(c_0_3, negated_conjecture, ~(![X1, X2, X3]:((r2_xboole_0(X1,X2)&r1_tarski(X2,X3))=>r2_xboole_0(X1,X3))), inference(assume_negation,[status(cth)],[t58_xboole_1])).
% 0.19/0.37  fof(c_0_4, plain, ![X4, X5]:(((r1_tarski(X4,X5)|~r2_xboole_0(X4,X5))&(X4!=X5|~r2_xboole_0(X4,X5)))&(~r1_tarski(X4,X5)|X4=X5|r2_xboole_0(X4,X5))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d8_xboole_0])])])).
% 0.19/0.37  fof(c_0_5, negated_conjecture, ((r2_xboole_0(esk1_0,esk2_0)&r1_tarski(esk2_0,esk3_0))&~r2_xboole_0(esk1_0,esk3_0)), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_3])])])).
% 0.19/0.37  cnf(c_0_6, plain, (X1=X2|r2_xboole_0(X1,X2)|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_4])).
% 0.19/0.37  cnf(c_0_7, negated_conjecture, (r1_tarski(esk2_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_5])).
% 0.19/0.37  fof(c_0_8, plain, ![X6, X7, X8]:(~r2_xboole_0(X6,X7)|~r2_xboole_0(X7,X8)|r2_xboole_0(X6,X8)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t56_xboole_1])])).
% 0.19/0.37  cnf(c_0_9, negated_conjecture, (~r2_xboole_0(esk1_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_5])).
% 0.19/0.37  cnf(c_0_10, negated_conjecture, (esk3_0=esk2_0|r2_xboole_0(esk2_0,esk3_0)), inference(spm,[status(thm)],[c_0_6, c_0_7])).
% 0.19/0.37  cnf(c_0_11, negated_conjecture, (r2_xboole_0(esk1_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_5])).
% 0.19/0.37  cnf(c_0_12, plain, (r2_xboole_0(X1,X3)|~r2_xboole_0(X1,X2)|~r2_xboole_0(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.19/0.37  cnf(c_0_13, negated_conjecture, (r2_xboole_0(esk2_0,esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_9, c_0_10]), c_0_11])])).
% 0.19/0.37  cnf(c_0_14, negated_conjecture, (r2_xboole_0(X1,esk3_0)|~r2_xboole_0(X1,esk2_0)), inference(spm,[status(thm)],[c_0_12, c_0_13])).
% 0.19/0.37  cnf(c_0_15, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_14, c_0_11]), c_0_9]), ['proof']).
% 0.19/0.37  # SZS output end CNFRefutation
% 0.19/0.37  # Proof object total steps             : 16
% 0.19/0.37  # Proof object clause steps            : 9
% 0.19/0.37  # Proof object formula steps           : 7
% 0.19/0.37  # Proof object conjectures             : 10
% 0.19/0.37  # Proof object clause conjectures      : 7
% 0.19/0.37  # Proof object formula conjectures     : 3
% 0.19/0.37  # Proof object initial clauses used    : 5
% 0.19/0.37  # Proof object initial formulas used   : 3
% 0.19/0.37  # Proof object generating inferences   : 4
% 0.19/0.37  # Proof object simplifying inferences  : 3
% 0.19/0.37  # Training examples: 0 positive, 0 negative
% 0.19/0.37  # Parsed axioms                        : 3
% 0.19/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.37  # Initial clauses                      : 7
% 0.19/0.37  # Removed in clause preprocessing      : 0
% 0.19/0.37  # Initial clauses in saturation        : 7
% 0.19/0.37  # Processed clauses                    : 19
% 0.19/0.37  # ...of these trivial                  : 0
% 0.19/0.37  # ...subsumed                          : 0
% 0.19/0.37  # ...remaining for further processing  : 19
% 0.19/0.37  # Other redundant clauses eliminated   : 1
% 0.19/0.37  # Clauses deleted for lack of memory   : 0
% 0.19/0.37  # Backward-subsumed                    : 0
% 0.19/0.37  # Backward-rewritten                   : 1
% 0.19/0.37  # Generated clauses                    : 10
% 0.19/0.37  # ...of the previous two non-trivial   : 7
% 0.19/0.37  # Contextual simplify-reflections      : 0
% 0.19/0.37  # Paramodulations                      : 9
% 0.19/0.37  # Factorizations                       : 0
% 0.19/0.37  # Equation resolutions                 : 1
% 0.19/0.37  # Propositional unsat checks           : 0
% 0.19/0.37  #    Propositional check models        : 0
% 0.19/0.37  #    Propositional check unsatisfiable : 0
% 0.19/0.37  #    Propositional clauses             : 0
% 0.19/0.37  #    Propositional clauses after purity: 0
% 0.19/0.37  #    Propositional unsat core size     : 0
% 0.19/0.37  #    Propositional preprocessing time  : 0.000
% 0.19/0.37  #    Propositional encoding time       : 0.000
% 0.19/0.37  #    Propositional solver time         : 0.000
% 0.19/0.37  #    Success case prop preproc time    : 0.000
% 0.19/0.37  #    Success case prop encoding time   : 0.000
% 0.19/0.37  #    Success case prop solver time     : 0.000
% 0.19/0.37  # Current number of processed clauses  : 10
% 0.19/0.37  #    Positive orientable unit clauses  : 4
% 0.19/0.37  #    Positive unorientable unit clauses: 0
% 0.19/0.37  #    Negative unit clauses             : 2
% 0.19/0.37  #    Non-unit-clauses                  : 4
% 0.19/0.37  # Current number of unprocessed clauses: 2
% 0.19/0.37  # ...number of literals in the above   : 4
% 0.19/0.37  # Current number of archived formulas  : 0
% 0.19/0.37  # Current number of archived clauses   : 8
% 0.19/0.37  # Clause-clause subsumption calls (NU) : 4
% 0.19/0.37  # Rec. Clause-clause subsumption calls : 4
% 0.19/0.37  # Non-unit clause-clause subsumptions  : 0
% 0.19/0.37  # Unit Clause-clause subsumption calls : 1
% 0.19/0.37  # Rewrite failures with RHS unbound    : 0
% 0.19/0.37  # BW rewrite match attempts            : 1
% 0.19/0.37  # BW rewrite match successes           : 1
% 0.19/0.37  # Condensation attempts                : 0
% 0.19/0.37  # Condensation successes               : 0
% 0.19/0.37  # Termbank termtop insertions          : 434
% 0.19/0.37  
% 0.19/0.37  # -------------------------------------------------
% 0.19/0.37  # User time                : 0.026 s
% 0.19/0.37  # System time              : 0.004 s
% 0.19/0.37  # Total time               : 0.030 s
% 0.19/0.37  # Maximum resident set size: 1556 pages
%------------------------------------------------------------------------------
