%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n024.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:43:24 EST 2020

% Result     : Theorem 0.21s
% Output     : CNFRefutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   13 (  24 expanded)
%              Number of clauses        :    8 (   9 expanded)
%              Number of leaves         :    2 (   6 expanded)
%              Depth                    :    5
%              Number of atoms          :   28 (  61 expanded)
%              Number of equality atoms :    0 (   0 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal clause size      :    7 (   2 average)
%              Maximal term depth       :    2 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t107_zfmisc_1,conjecture,(
    ! [X1,X2,X3,X4] :
      ( r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,X4))
     => r2_hidden(k4_tarski(X2,X1),k2_zfmisc_1(X4,X3)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t107_zfmisc_1)).

fof(t106_zfmisc_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,X4))
    <=> ( r2_hidden(X1,X3)
        & r2_hidden(X2,X4) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t106_zfmisc_1)).

fof(c_0_2,negated_conjecture,(
    ~ ! [X1,X2,X3,X4] :
        ( r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,X4))
       => r2_hidden(k4_tarski(X2,X1),k2_zfmisc_1(X4,X3)) ) ),
    inference(assume_negation,[status(cth)],[t107_zfmisc_1])).

fof(c_0_3,plain,(
    ! [X5,X6,X7,X8] :
      ( ( r2_hidden(X5,X7)
        | ~ r2_hidden(k4_tarski(X5,X6),k2_zfmisc_1(X7,X8)) )
      & ( r2_hidden(X6,X8)
        | ~ r2_hidden(k4_tarski(X5,X6),k2_zfmisc_1(X7,X8)) )
      & ( ~ r2_hidden(X5,X7)
        | ~ r2_hidden(X6,X8)
        | r2_hidden(k4_tarski(X5,X6),k2_zfmisc_1(X7,X8)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t106_zfmisc_1])])])).

fof(c_0_4,negated_conjecture,
    ( r2_hidden(k4_tarski(esk1_0,esk2_0),k2_zfmisc_1(esk3_0,esk4_0))
    & ~ r2_hidden(k4_tarski(esk2_0,esk1_0),k2_zfmisc_1(esk4_0,esk3_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_2])])])).

cnf(c_0_5,plain,
    ( r2_hidden(X1,X2)
    | ~ r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(X2,X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_3])).

cnf(c_0_6,negated_conjecture,
    ( r2_hidden(k4_tarski(esk1_0,esk2_0),k2_zfmisc_1(esk3_0,esk4_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_4])).

cnf(c_0_7,plain,
    ( r2_hidden(X1,X2)
    | ~ r2_hidden(k4_tarski(X3,X1),k2_zfmisc_1(X4,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_3])).

cnf(c_0_8,negated_conjecture,
    ( ~ r2_hidden(k4_tarski(esk2_0,esk1_0),k2_zfmisc_1(esk4_0,esk3_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_4])).

cnf(c_0_9,plain,
    ( r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(X2,X4))
    | ~ r2_hidden(X1,X2)
    | ~ r2_hidden(X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_3])).

cnf(c_0_10,negated_conjecture,
    ( r2_hidden(esk1_0,esk3_0) ),
    inference(spm,[status(thm)],[c_0_5,c_0_6])).

cnf(c_0_11,negated_conjecture,
    ( r2_hidden(esk2_0,esk4_0) ),
    inference(spm,[status(thm)],[c_0_7,c_0_6])).

cnf(c_0_12,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_8,c_0_9]),c_0_10]),c_0_11])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.35  % Computer   : n024.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % WCLimit    : 600
% 0.14/0.35  % DateTime   : Tue Dec  1 15:40:06 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  # Version: 2.5pre002
% 0.14/0.35  # No SInE strategy applied
% 0.14/0.35  # Trying AutoSched0 for 299 seconds
% 0.21/0.38  # AutoSched0-Mode selected heuristic G_E___103_C18_F1_PI_AE_Q4_CS_SP_S0Y
% 0.21/0.38  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.21/0.38  #
% 0.21/0.38  # Preprocessing time       : 0.026 s
% 0.21/0.38  
% 0.21/0.38  # Proof found!
% 0.21/0.38  # SZS status Theorem
% 0.21/0.38  # SZS output start CNFRefutation
% 0.21/0.38  fof(t107_zfmisc_1, conjecture, ![X1, X2, X3, X4]:(r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,X4))=>r2_hidden(k4_tarski(X2,X1),k2_zfmisc_1(X4,X3))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t107_zfmisc_1)).
% 0.21/0.38  fof(t106_zfmisc_1, axiom, ![X1, X2, X3, X4]:(r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,X4))<=>(r2_hidden(X1,X3)&r2_hidden(X2,X4))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t106_zfmisc_1)).
% 0.21/0.38  fof(c_0_2, negated_conjecture, ~(![X1, X2, X3, X4]:(r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,X4))=>r2_hidden(k4_tarski(X2,X1),k2_zfmisc_1(X4,X3)))), inference(assume_negation,[status(cth)],[t107_zfmisc_1])).
% 0.21/0.38  fof(c_0_3, plain, ![X5, X6, X7, X8]:(((r2_hidden(X5,X7)|~r2_hidden(k4_tarski(X5,X6),k2_zfmisc_1(X7,X8)))&(r2_hidden(X6,X8)|~r2_hidden(k4_tarski(X5,X6),k2_zfmisc_1(X7,X8))))&(~r2_hidden(X5,X7)|~r2_hidden(X6,X8)|r2_hidden(k4_tarski(X5,X6),k2_zfmisc_1(X7,X8)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t106_zfmisc_1])])])).
% 0.21/0.38  fof(c_0_4, negated_conjecture, (r2_hidden(k4_tarski(esk1_0,esk2_0),k2_zfmisc_1(esk3_0,esk4_0))&~r2_hidden(k4_tarski(esk2_0,esk1_0),k2_zfmisc_1(esk4_0,esk3_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_2])])])).
% 0.21/0.38  cnf(c_0_5, plain, (r2_hidden(X1,X2)|~r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(X2,X4))), inference(split_conjunct,[status(thm)],[c_0_3])).
% 0.21/0.38  cnf(c_0_6, negated_conjecture, (r2_hidden(k4_tarski(esk1_0,esk2_0),k2_zfmisc_1(esk3_0,esk4_0))), inference(split_conjunct,[status(thm)],[c_0_4])).
% 0.21/0.38  cnf(c_0_7, plain, (r2_hidden(X1,X2)|~r2_hidden(k4_tarski(X3,X1),k2_zfmisc_1(X4,X2))), inference(split_conjunct,[status(thm)],[c_0_3])).
% 0.21/0.38  cnf(c_0_8, negated_conjecture, (~r2_hidden(k4_tarski(esk2_0,esk1_0),k2_zfmisc_1(esk4_0,esk3_0))), inference(split_conjunct,[status(thm)],[c_0_4])).
% 0.21/0.38  cnf(c_0_9, plain, (r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(X2,X4))|~r2_hidden(X1,X2)|~r2_hidden(X3,X4)), inference(split_conjunct,[status(thm)],[c_0_3])).
% 0.21/0.38  cnf(c_0_10, negated_conjecture, (r2_hidden(esk1_0,esk3_0)), inference(spm,[status(thm)],[c_0_5, c_0_6])).
% 0.21/0.38  cnf(c_0_11, negated_conjecture, (r2_hidden(esk2_0,esk4_0)), inference(spm,[status(thm)],[c_0_7, c_0_6])).
% 0.21/0.38  cnf(c_0_12, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_8, c_0_9]), c_0_10]), c_0_11])]), ['proof']).
% 0.21/0.38  # SZS output end CNFRefutation
% 0.21/0.38  # Proof object total steps             : 13
% 0.21/0.38  # Proof object clause steps            : 8
% 0.21/0.38  # Proof object formula steps           : 5
% 0.21/0.38  # Proof object conjectures             : 8
% 0.21/0.38  # Proof object clause conjectures      : 5
% 0.21/0.38  # Proof object formula conjectures     : 3
% 0.21/0.38  # Proof object initial clauses used    : 5
% 0.21/0.38  # Proof object initial formulas used   : 2
% 0.21/0.38  # Proof object generating inferences   : 3
% 0.21/0.38  # Proof object simplifying inferences  : 3
% 0.21/0.38  # Training examples: 0 positive, 0 negative
% 0.21/0.38  # Parsed axioms                        : 2
% 0.21/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.21/0.38  # Initial clauses                      : 5
% 0.21/0.38  # Removed in clause preprocessing      : 0
% 0.21/0.38  # Initial clauses in saturation        : 5
% 0.21/0.38  # Processed clauses                    : 8
% 0.21/0.38  # ...of these trivial                  : 0
% 0.21/0.38  # ...subsumed                          : 0
% 0.21/0.38  # ...remaining for further processing  : 7
% 0.21/0.38  # Other redundant clauses eliminated   : 0
% 0.21/0.38  # Clauses deleted for lack of memory   : 0
% 0.21/0.38  # Backward-subsumed                    : 0
% 0.21/0.38  # Backward-rewritten                   : 0
% 0.21/0.38  # Generated clauses                    : 5
% 0.21/0.38  # ...of the previous two non-trivial   : 3
% 0.21/0.38  # Contextual simplify-reflections      : 0
% 0.21/0.38  # Paramodulations                      : 5
% 0.21/0.38  # Factorizations                       : 0
% 0.21/0.38  # Equation resolutions                 : 0
% 0.21/0.38  # Propositional unsat checks           : 0
% 0.21/0.38  #    Propositional check models        : 0
% 0.21/0.38  #    Propositional check unsatisfiable : 0
% 0.21/0.38  #    Propositional clauses             : 0
% 0.21/0.38  #    Propositional clauses after purity: 0
% 0.21/0.38  #    Propositional unsat core size     : 0
% 0.21/0.38  #    Propositional preprocessing time  : 0.000
% 0.21/0.38  #    Propositional encoding time       : 0.000
% 0.21/0.38  #    Propositional solver time         : 0.000
% 0.21/0.38  #    Success case prop preproc time    : 0.000
% 0.21/0.38  #    Success case prop encoding time   : 0.000
% 0.21/0.38  #    Success case prop solver time     : 0.000
% 0.21/0.38  # Current number of processed clauses  : 7
% 0.21/0.38  #    Positive orientable unit clauses  : 3
% 0.21/0.38  #    Positive unorientable unit clauses: 0
% 0.21/0.38  #    Negative unit clauses             : 1
% 0.21/0.38  #    Non-unit-clauses                  : 3
% 0.21/0.38  # Current number of unprocessed clauses: 0
% 0.21/0.38  # ...number of literals in the above   : 0
% 0.21/0.38  # Current number of archived formulas  : 0
% 0.21/0.38  # Current number of archived clauses   : 0
% 0.21/0.38  # Clause-clause subsumption calls (NU) : 2
% 0.21/0.38  # Rec. Clause-clause subsumption calls : 2
% 0.21/0.38  # Non-unit clause-clause subsumptions  : 0
% 0.21/0.38  # Unit Clause-clause subsumption calls : 0
% 0.21/0.38  # Rewrite failures with RHS unbound    : 0
% 0.21/0.38  # BW rewrite match attempts            : 0
% 0.21/0.38  # BW rewrite match successes           : 0
% 0.21/0.38  # Condensation attempts                : 0
% 0.21/0.38  # Condensation successes               : 0
% 0.21/0.38  # Termbank termtop insertions          : 359
% 0.21/0.38  
% 0.21/0.38  # -------------------------------------------------
% 0.21/0.38  # User time                : 0.026 s
% 0.21/0.38  # System time              : 0.003 s
% 0.21/0.38  # Total time               : 0.029 s
% 0.21/0.38  # Maximum resident set size: 1556 pages
%------------------------------------------------------------------------------
