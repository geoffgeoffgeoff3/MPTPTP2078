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
% DateTime   : Thu Dec  3 10:32:49 EST 2020

% Result     : Theorem 0.14s
% Output     : CNFRefutation 0.14s
% Verified   : 
% Statistics : Number of formulae       :   24 (  33 expanded)
%              Number of clauses        :   13 (  13 expanded)
%              Number of leaves         :    5 (   8 expanded)
%              Depth                    :    6
%              Number of atoms          :   56 (  92 expanded)
%              Number of equality atoms :    4 (   4 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal clause size      :    4 (   2 average)
%              Maximal term depth       :    2 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t68_xboole_1,conjecture,(
    ! [X1,X2,X3] :
      ( ~ v1_xboole_0(X3)
     => ~ ( r1_tarski(X3,X1)
          & r1_tarski(X3,X2)
          & r1_xboole_0(X1,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t68_xboole_1)).

fof(t63_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( ( r1_tarski(X1,X2)
        & r1_xboole_0(X2,X3) )
     => r1_xboole_0(X1,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t63_xboole_1)).

fof(t4_xboole_0,axiom,(
    ! [X1,X2] :
      ( ~ ( ~ r1_xboole_0(X1,X2)
          & ! [X3] : ~ r2_hidden(X3,k3_xboole_0(X1,X2)) )
      & ~ ( ? [X3] : r2_hidden(X3,k3_xboole_0(X1,X2))
          & r1_xboole_0(X1,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t4_xboole_0)).

fof(d1_xboole_0,axiom,(
    ! [X1] :
      ( v1_xboole_0(X1)
    <=> ! [X2] : ~ r2_hidden(X2,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_xboole_0)).

fof(t28_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
     => k3_xboole_0(X1,X2) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t28_xboole_1)).

fof(c_0_5,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( ~ v1_xboole_0(X3)
       => ~ ( r1_tarski(X3,X1)
            & r1_tarski(X3,X2)
            & r1_xboole_0(X1,X2) ) ) ),
    inference(assume_negation,[status(cth)],[t68_xboole_1])).

fof(c_0_6,plain,(
    ! [X16,X17,X18] :
      ( ~ r1_tarski(X16,X17)
      | ~ r1_xboole_0(X17,X18)
      | r1_xboole_0(X16,X18) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t63_xboole_1])])).

fof(c_0_7,negated_conjecture,
    ( ~ v1_xboole_0(esk5_0)
    & r1_tarski(esk5_0,esk3_0)
    & r1_tarski(esk5_0,esk4_0)
    & r1_xboole_0(esk3_0,esk4_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_5])])])])).

fof(c_0_8,plain,(
    ! [X8,X9,X11,X12,X13] :
      ( ( r1_xboole_0(X8,X9)
        | r2_hidden(esk2_2(X8,X9),k3_xboole_0(X8,X9)) )
      & ( ~ r2_hidden(X13,k3_xboole_0(X11,X12))
        | ~ r1_xboole_0(X11,X12) ) ) ),
    inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t4_xboole_0])])])])])])).

fof(c_0_9,plain,(
    ! [X4,X5,X6] :
      ( ( ~ v1_xboole_0(X4)
        | ~ r2_hidden(X5,X4) )
      & ( r2_hidden(esk1_1(X6),X6)
        | v1_xboole_0(X6) ) ) ),
    inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d1_xboole_0])])])])])])).

cnf(c_0_10,plain,
    ( r1_xboole_0(X1,X3)
    | ~ r1_tarski(X1,X2)
    | ~ r1_xboole_0(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_11,negated_conjecture,
    ( r1_tarski(esk5_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

fof(c_0_12,plain,(
    ! [X14,X15] :
      ( ~ r1_tarski(X14,X15)
      | k3_xboole_0(X14,X15) = X14 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t28_xboole_1])])).

cnf(c_0_13,plain,
    ( ~ r2_hidden(X1,k3_xboole_0(X2,X3))
    | ~ r1_xboole_0(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_14,plain,
    ( r2_hidden(esk1_1(X1),X1)
    | v1_xboole_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_15,negated_conjecture,
    ( r1_xboole_0(esk5_0,X1)
    | ~ r1_xboole_0(esk3_0,X1) ),
    inference(spm,[status(thm)],[c_0_10,c_0_11])).

cnf(c_0_16,negated_conjecture,
    ( r1_xboole_0(esk3_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_17,plain,
    ( k3_xboole_0(X1,X2) = X1
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_18,negated_conjecture,
    ( r1_tarski(esk5_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_19,plain,
    ( v1_xboole_0(k3_xboole_0(X1,X2))
    | ~ r1_xboole_0(X1,X2) ),
    inference(spm,[status(thm)],[c_0_13,c_0_14])).

cnf(c_0_20,negated_conjecture,
    ( r1_xboole_0(esk5_0,esk4_0) ),
    inference(spm,[status(thm)],[c_0_15,c_0_16])).

cnf(c_0_21,negated_conjecture,
    ( k3_xboole_0(esk5_0,esk4_0) = esk5_0 ),
    inference(spm,[status(thm)],[c_0_17,c_0_18])).

cnf(c_0_22,negated_conjecture,
    ( ~ v1_xboole_0(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_23,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19,c_0_20]),c_0_21]),c_0_22]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.34  % Computer   : n022.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 16:55:25 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  # Version: 2.5pre002
% 0.14/0.34  # No SInE strategy applied
% 0.14/0.34  # Trying AutoSched0 for 299 seconds
% 0.14/0.35  # AutoSched0-Mode selected heuristic H_____047_C18_F1_PI_AE_R8_CS_SP_S2S
% 0.14/0.35  # and selection function SelectNewComplexAHP.
% 0.14/0.35  #
% 0.14/0.35  # Preprocessing time       : 0.012 s
% 0.14/0.35  
% 0.14/0.35  # Proof found!
% 0.14/0.35  # SZS status Theorem
% 0.14/0.35  # SZS output start CNFRefutation
% 0.14/0.35  fof(t68_xboole_1, conjecture, ![X1, X2, X3]:(~(v1_xboole_0(X3))=>~(((r1_tarski(X3,X1)&r1_tarski(X3,X2))&r1_xboole_0(X1,X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t68_xboole_1)).
% 0.14/0.35  fof(t63_xboole_1, axiom, ![X1, X2, X3]:((r1_tarski(X1,X2)&r1_xboole_0(X2,X3))=>r1_xboole_0(X1,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t63_xboole_1)).
% 0.14/0.35  fof(t4_xboole_0, axiom, ![X1, X2]:(~((~(r1_xboole_0(X1,X2))&![X3]:~(r2_hidden(X3,k3_xboole_0(X1,X2)))))&~((?[X3]:r2_hidden(X3,k3_xboole_0(X1,X2))&r1_xboole_0(X1,X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t4_xboole_0)).
% 0.14/0.35  fof(d1_xboole_0, axiom, ![X1]:(v1_xboole_0(X1)<=>![X2]:~(r2_hidden(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_xboole_0)).
% 0.14/0.35  fof(t28_xboole_1, axiom, ![X1, X2]:(r1_tarski(X1,X2)=>k3_xboole_0(X1,X2)=X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t28_xboole_1)).
% 0.14/0.35  fof(c_0_5, negated_conjecture, ~(![X1, X2, X3]:(~(v1_xboole_0(X3))=>~(((r1_tarski(X3,X1)&r1_tarski(X3,X2))&r1_xboole_0(X1,X2))))), inference(assume_negation,[status(cth)],[t68_xboole_1])).
% 0.14/0.35  fof(c_0_6, plain, ![X16, X17, X18]:(~r1_tarski(X16,X17)|~r1_xboole_0(X17,X18)|r1_xboole_0(X16,X18)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t63_xboole_1])])).
% 0.14/0.35  fof(c_0_7, negated_conjecture, (~v1_xboole_0(esk5_0)&((r1_tarski(esk5_0,esk3_0)&r1_tarski(esk5_0,esk4_0))&r1_xboole_0(esk3_0,esk4_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_5])])])])).
% 0.14/0.35  fof(c_0_8, plain, ![X8, X9, X11, X12, X13]:((r1_xboole_0(X8,X9)|r2_hidden(esk2_2(X8,X9),k3_xboole_0(X8,X9)))&(~r2_hidden(X13,k3_xboole_0(X11,X12))|~r1_xboole_0(X11,X12))), inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t4_xboole_0])])])])])])).
% 0.14/0.35  fof(c_0_9, plain, ![X4, X5, X6]:((~v1_xboole_0(X4)|~r2_hidden(X5,X4))&(r2_hidden(esk1_1(X6),X6)|v1_xboole_0(X6))), inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d1_xboole_0])])])])])])).
% 0.14/0.35  cnf(c_0_10, plain, (r1_xboole_0(X1,X3)|~r1_tarski(X1,X2)|~r1_xboole_0(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.14/0.35  cnf(c_0_11, negated_conjecture, (r1_tarski(esk5_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.14/0.35  fof(c_0_12, plain, ![X14, X15]:(~r1_tarski(X14,X15)|k3_xboole_0(X14,X15)=X14), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t28_xboole_1])])).
% 0.14/0.35  cnf(c_0_13, plain, (~r2_hidden(X1,k3_xboole_0(X2,X3))|~r1_xboole_0(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.14/0.35  cnf(c_0_14, plain, (r2_hidden(esk1_1(X1),X1)|v1_xboole_0(X1)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.14/0.35  cnf(c_0_15, negated_conjecture, (r1_xboole_0(esk5_0,X1)|~r1_xboole_0(esk3_0,X1)), inference(spm,[status(thm)],[c_0_10, c_0_11])).
% 0.14/0.35  cnf(c_0_16, negated_conjecture, (r1_xboole_0(esk3_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.14/0.35  cnf(c_0_17, plain, (k3_xboole_0(X1,X2)=X1|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.14/0.35  cnf(c_0_18, negated_conjecture, (r1_tarski(esk5_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.14/0.35  cnf(c_0_19, plain, (v1_xboole_0(k3_xboole_0(X1,X2))|~r1_xboole_0(X1,X2)), inference(spm,[status(thm)],[c_0_13, c_0_14])).
% 0.14/0.35  cnf(c_0_20, negated_conjecture, (r1_xboole_0(esk5_0,esk4_0)), inference(spm,[status(thm)],[c_0_15, c_0_16])).
% 0.14/0.35  cnf(c_0_21, negated_conjecture, (k3_xboole_0(esk5_0,esk4_0)=esk5_0), inference(spm,[status(thm)],[c_0_17, c_0_18])).
% 0.14/0.35  cnf(c_0_22, negated_conjecture, (~v1_xboole_0(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.14/0.35  cnf(c_0_23, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19, c_0_20]), c_0_21]), c_0_22]), ['proof']).
% 0.14/0.35  # SZS output end CNFRefutation
% 0.14/0.35  # Proof object total steps             : 24
% 0.14/0.35  # Proof object clause steps            : 13
% 0.14/0.35  # Proof object formula steps           : 11
% 0.14/0.35  # Proof object conjectures             : 11
% 0.14/0.35  # Proof object clause conjectures      : 8
% 0.14/0.35  # Proof object formula conjectures     : 3
% 0.14/0.35  # Proof object initial clauses used    : 8
% 0.14/0.35  # Proof object initial formulas used   : 5
% 0.14/0.35  # Proof object generating inferences   : 5
% 0.14/0.35  # Proof object simplifying inferences  : 2
% 0.14/0.35  # Training examples: 0 positive, 0 negative
% 0.14/0.35  # Parsed axioms                        : 5
% 0.14/0.35  # Removed by relevancy pruning/SinE    : 0
% 0.14/0.35  # Initial clauses                      : 10
% 0.14/0.35  # Removed in clause preprocessing      : 0
% 0.14/0.35  # Initial clauses in saturation        : 10
% 0.14/0.35  # Processed clauses                    : 20
% 0.14/0.35  # ...of these trivial                  : 0
% 0.14/0.35  # ...subsumed                          : 1
% 0.14/0.35  # ...remaining for further processing  : 18
% 0.14/0.35  # Other redundant clauses eliminated   : 0
% 0.14/0.35  # Clauses deleted for lack of memory   : 0
% 0.14/0.35  # Backward-subsumed                    : 0
% 0.14/0.35  # Backward-rewritten                   : 0
% 0.14/0.35  # Generated clauses                    : 18
% 0.14/0.35  # ...of the previous two non-trivial   : 13
% 0.14/0.35  # Contextual simplify-reflections      : 0
% 0.14/0.35  # Paramodulations                      : 18
% 0.14/0.35  # Factorizations                       : 0
% 0.14/0.35  # Equation resolutions                 : 0
% 0.14/0.35  # Propositional unsat checks           : 0
% 0.14/0.35  #    Propositional check models        : 0
% 0.14/0.35  #    Propositional check unsatisfiable : 0
% 0.14/0.35  #    Propositional clauses             : 0
% 0.14/0.35  #    Propositional clauses after purity: 0
% 0.14/0.35  #    Propositional unsat core size     : 0
% 0.14/0.35  #    Propositional preprocessing time  : 0.000
% 0.14/0.35  #    Propositional encoding time       : 0.000
% 0.14/0.35  #    Propositional solver time         : 0.000
% 0.14/0.35  #    Success case prop preproc time    : 0.000
% 0.14/0.35  #    Success case prop encoding time   : 0.000
% 0.14/0.35  #    Success case prop solver time     : 0.000
% 0.14/0.35  # Current number of processed clauses  : 18
% 0.14/0.35  #    Positive orientable unit clauses  : 7
% 0.14/0.35  #    Positive unorientable unit clauses: 0
% 0.14/0.35  #    Negative unit clauses             : 1
% 0.14/0.35  #    Non-unit-clauses                  : 10
% 0.14/0.35  # Current number of unprocessed clauses: 3
% 0.14/0.35  # ...number of literals in the above   : 5
% 0.14/0.35  # Current number of archived formulas  : 0
% 0.14/0.35  # Current number of archived clauses   : 0
% 0.14/0.35  # Clause-clause subsumption calls (NU) : 2
% 0.14/0.35  # Rec. Clause-clause subsumption calls : 2
% 0.14/0.35  # Non-unit clause-clause subsumptions  : 0
% 0.14/0.35  # Unit Clause-clause subsumption calls : 0
% 0.14/0.35  # Rewrite failures with RHS unbound    : 0
% 0.14/0.35  # BW rewrite match attempts            : 0
% 0.14/0.35  # BW rewrite match successes           : 0
% 0.14/0.35  # Condensation attempts                : 0
% 0.14/0.35  # Condensation successes               : 0
% 0.14/0.35  # Termbank termtop insertions          : 780
% 0.14/0.35  
% 0.14/0.35  # -------------------------------------------------
% 0.14/0.35  # User time                : 0.012 s
% 0.14/0.35  # System time              : 0.003 s
% 0.14/0.35  # Total time               : 0.015 s
% 0.14/0.35  # Maximum resident set size: 1568 pages
%------------------------------------------------------------------------------
