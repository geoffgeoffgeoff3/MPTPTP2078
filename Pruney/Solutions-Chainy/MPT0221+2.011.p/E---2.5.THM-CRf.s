%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n003.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:37:43 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   15 (  18 expanded)
%              Number of clauses        :    8 (   8 expanded)
%              Number of leaves         :    3 (   4 expanded)
%              Depth                    :    6
%              Number of atoms          :   36 (  42 expanded)
%              Number of equality atoms :   16 (  19 expanded)
%              Maximal formula depth    :   13 (   4 average)
%              Maximal clause size      :   12 (   1 average)
%              Maximal term depth       :    2 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t16_zfmisc_1,conjecture,(
    ! [X1,X2] :
      ~ ( r1_xboole_0(k1_tarski(X1),k1_tarski(X2))
        & X1 = X2 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t16_zfmisc_1)).

fof(l24_zfmisc_1,axiom,(
    ! [X1,X2] :
      ~ ( r1_xboole_0(k1_tarski(X1),X2)
        & r2_hidden(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l24_zfmisc_1)).

fof(d1_tarski,axiom,(
    ! [X1,X2] :
      ( X2 = k1_tarski(X1)
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> X3 = X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_tarski)).

fof(c_0_3,negated_conjecture,(
    ~ ! [X1,X2] :
        ~ ( r1_xboole_0(k1_tarski(X1),k1_tarski(X2))
          & X1 = X2 ) ),
    inference(assume_negation,[status(cth)],[t16_zfmisc_1])).

fof(c_0_4,negated_conjecture,
    ( r1_xboole_0(k1_tarski(esk2_0),k1_tarski(esk3_0))
    & esk2_0 = esk3_0 ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_3])])])).

fof(c_0_5,plain,(
    ! [X11,X12] :
      ( ~ r1_xboole_0(k1_tarski(X11),X12)
      | ~ r2_hidden(X11,X12) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l24_zfmisc_1])])).

cnf(c_0_6,negated_conjecture,
    ( r1_xboole_0(k1_tarski(esk2_0),k1_tarski(esk3_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_4])).

cnf(c_0_7,negated_conjecture,
    ( esk2_0 = esk3_0 ),
    inference(split_conjunct,[status(thm)],[c_0_4])).

fof(c_0_8,plain,(
    ! [X4,X5,X6,X7,X8,X9] :
      ( ( ~ r2_hidden(X6,X5)
        | X6 = X4
        | X5 != k1_tarski(X4) )
      & ( X7 != X4
        | r2_hidden(X7,X5)
        | X5 != k1_tarski(X4) )
      & ( ~ r2_hidden(esk1_2(X8,X9),X9)
        | esk1_2(X8,X9) != X8
        | X9 = k1_tarski(X8) )
      & ( r2_hidden(esk1_2(X8,X9),X9)
        | esk1_2(X8,X9) = X8
        | X9 = k1_tarski(X8) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_tarski])])])])])])).

cnf(c_0_9,plain,
    ( ~ r1_xboole_0(k1_tarski(X1),X2)
    | ~ r2_hidden(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_10,negated_conjecture,
    ( r1_xboole_0(k1_tarski(esk2_0),k1_tarski(esk2_0)) ),
    inference(rw,[status(thm)],[c_0_6,c_0_7])).

cnf(c_0_11,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k1_tarski(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_12,negated_conjecture,
    ( ~ r2_hidden(esk2_0,k1_tarski(esk2_0)) ),
    inference(spm,[status(thm)],[c_0_9,c_0_10])).

cnf(c_0_13,plain,
    ( r2_hidden(X1,k1_tarski(X1)) ),
    inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_11])])).

cnf(c_0_14,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_12,c_0_13])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.34  % Computer   : n003.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 16:20:57 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.19/0.34  # Version: 2.5pre002
% 0.19/0.34  # No SInE strategy applied
% 0.19/0.34  # Trying AutoSched0 for 299 seconds
% 0.19/0.37  # AutoSched0-Mode selected heuristic G_E___300_C18_F1_SE_CS_SP_S0Y
% 0.19/0.37  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.19/0.37  #
% 0.19/0.37  # Preprocessing time       : 0.027 s
% 0.19/0.37  
% 0.19/0.37  # Proof found!
% 0.19/0.37  # SZS status Theorem
% 0.19/0.37  # SZS output start CNFRefutation
% 0.19/0.37  fof(t16_zfmisc_1, conjecture, ![X1, X2]:~((r1_xboole_0(k1_tarski(X1),k1_tarski(X2))&X1=X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t16_zfmisc_1)).
% 0.19/0.37  fof(l24_zfmisc_1, axiom, ![X1, X2]:~((r1_xboole_0(k1_tarski(X1),X2)&r2_hidden(X1,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l24_zfmisc_1)).
% 0.19/0.37  fof(d1_tarski, axiom, ![X1, X2]:(X2=k1_tarski(X1)<=>![X3]:(r2_hidden(X3,X2)<=>X3=X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_tarski)).
% 0.19/0.37  fof(c_0_3, negated_conjecture, ~(![X1, X2]:~((r1_xboole_0(k1_tarski(X1),k1_tarski(X2))&X1=X2))), inference(assume_negation,[status(cth)],[t16_zfmisc_1])).
% 0.19/0.37  fof(c_0_4, negated_conjecture, (r1_xboole_0(k1_tarski(esk2_0),k1_tarski(esk3_0))&esk2_0=esk3_0), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_3])])])).
% 0.19/0.37  fof(c_0_5, plain, ![X11, X12]:(~r1_xboole_0(k1_tarski(X11),X12)|~r2_hidden(X11,X12)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l24_zfmisc_1])])).
% 0.19/0.37  cnf(c_0_6, negated_conjecture, (r1_xboole_0(k1_tarski(esk2_0),k1_tarski(esk3_0))), inference(split_conjunct,[status(thm)],[c_0_4])).
% 0.19/0.37  cnf(c_0_7, negated_conjecture, (esk2_0=esk3_0), inference(split_conjunct,[status(thm)],[c_0_4])).
% 0.19/0.37  fof(c_0_8, plain, ![X4, X5, X6, X7, X8, X9]:(((~r2_hidden(X6,X5)|X6=X4|X5!=k1_tarski(X4))&(X7!=X4|r2_hidden(X7,X5)|X5!=k1_tarski(X4)))&((~r2_hidden(esk1_2(X8,X9),X9)|esk1_2(X8,X9)!=X8|X9=k1_tarski(X8))&(r2_hidden(esk1_2(X8,X9),X9)|esk1_2(X8,X9)=X8|X9=k1_tarski(X8)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_tarski])])])])])])).
% 0.19/0.37  cnf(c_0_9, plain, (~r1_xboole_0(k1_tarski(X1),X2)|~r2_hidden(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_5])).
% 0.19/0.37  cnf(c_0_10, negated_conjecture, (r1_xboole_0(k1_tarski(esk2_0),k1_tarski(esk2_0))), inference(rw,[status(thm)],[c_0_6, c_0_7])).
% 0.19/0.37  cnf(c_0_11, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k1_tarski(X2)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.19/0.37  cnf(c_0_12, negated_conjecture, (~r2_hidden(esk2_0,k1_tarski(esk2_0))), inference(spm,[status(thm)],[c_0_9, c_0_10])).
% 0.19/0.37  cnf(c_0_13, plain, (r2_hidden(X1,k1_tarski(X1))), inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_11])])).
% 0.19/0.37  cnf(c_0_14, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_12, c_0_13])]), ['proof']).
% 0.19/0.37  # SZS output end CNFRefutation
% 0.19/0.37  # Proof object total steps             : 15
% 0.19/0.37  # Proof object clause steps            : 8
% 0.19/0.37  # Proof object formula steps           : 7
% 0.19/0.37  # Proof object conjectures             : 8
% 0.19/0.37  # Proof object clause conjectures      : 5
% 0.19/0.37  # Proof object formula conjectures     : 3
% 0.19/0.37  # Proof object initial clauses used    : 4
% 0.19/0.37  # Proof object initial formulas used   : 3
% 0.19/0.37  # Proof object generating inferences   : 1
% 0.19/0.37  # Proof object simplifying inferences  : 5
% 0.19/0.37  # Training examples: 0 positive, 0 negative
% 0.19/0.37  # Parsed axioms                        : 3
% 0.19/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.37  # Initial clauses                      : 7
% 0.19/0.37  # Removed in clause preprocessing      : 0
% 0.19/0.37  # Initial clauses in saturation        : 7
% 0.19/0.37  # Processed clauses                    : 7
% 0.19/0.37  # ...of these trivial                  : 0
% 0.19/0.37  # ...subsumed                          : 0
% 0.19/0.37  # ...remaining for further processing  : 7
% 0.19/0.37  # Other redundant clauses eliminated   : 2
% 0.19/0.37  # Clauses deleted for lack of memory   : 0
% 0.19/0.37  # Backward-subsumed                    : 0
% 0.19/0.37  # Backward-rewritten                   : 1
% 0.19/0.37  # Generated clauses                    : 2
% 0.19/0.37  # ...of the previous two non-trivial   : 2
% 0.19/0.37  # Contextual simplify-reflections      : 0
% 0.19/0.37  # Paramodulations                      : 1
% 0.19/0.37  # Factorizations                       : 0
% 0.19/0.37  # Equation resolutions                 : 2
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
% 0.19/0.37  # Current number of processed clauses  : 5
% 0.19/0.37  #    Positive orientable unit clauses  : 3
% 0.19/0.37  #    Positive unorientable unit clauses: 0
% 0.19/0.37  #    Negative unit clauses             : 0
% 0.19/0.37  #    Non-unit-clauses                  : 2
% 0.19/0.37  # Current number of unprocessed clauses: 2
% 0.19/0.37  # ...number of literals in the above   : 6
% 0.19/0.37  # Current number of archived formulas  : 0
% 0.19/0.37  # Current number of archived clauses   : 1
% 0.19/0.37  # Clause-clause subsumption calls (NU) : 0
% 0.19/0.37  # Rec. Clause-clause subsumption calls : 0
% 0.19/0.37  # Non-unit clause-clause subsumptions  : 0
% 0.19/0.37  # Unit Clause-clause subsumption calls : 2
% 0.19/0.37  # Rewrite failures with RHS unbound    : 0
% 0.19/0.37  # BW rewrite match attempts            : 1
% 0.19/0.37  # BW rewrite match successes           : 1
% 0.19/0.37  # Condensation attempts                : 0
% 0.19/0.37  # Condensation successes               : 0
% 0.19/0.37  # Termbank termtop insertions          : 392
% 0.19/0.37  
% 0.19/0.37  # -------------------------------------------------
% 0.19/0.37  # User time                : 0.027 s
% 0.19/0.37  # System time              : 0.002 s
% 0.19/0.37  # Total time               : 0.030 s
% 0.19/0.37  # Maximum resident set size: 1556 pages
%------------------------------------------------------------------------------
