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
% DateTime   : Thu Dec  3 10:56:31 EST 2020

% Result     : Theorem 0.21s
% Output     : CNFRefutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   26 (  31 expanded)
%              Number of clauses        :   13 (  13 expanded)
%              Number of leaves         :    6 (   8 expanded)
%              Depth                    :    6
%              Number of atoms          :   53 (  68 expanded)
%              Number of equality atoms :    0 (   0 expanded)
%              Maximal formula depth    :    6 (   3 average)
%              Maximal clause size      :    4 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t7_ordinal1,axiom,(
    ! [X1,X2] :
      ~ ( r2_hidden(X1,X2)
        & r1_tarski(X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_ordinal1)).

fof(l49_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( r2_hidden(X1,X2)
     => r1_tarski(X1,k3_tarski(X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l49_zfmisc_1)).

fof(t10_ordinal1,axiom,(
    ! [X1] : r2_hidden(X1,k1_ordinal1(X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t10_ordinal1)).

fof(t37_ordinal1,conjecture,(
    ! [X1] :
      ~ ! [X2] :
          ( r2_hidden(X2,X1)
        <=> v3_ordinal1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t37_ordinal1)).

fof(t35_ordinal1,axiom,(
    ! [X1] :
      ( ! [X2] :
          ( r2_hidden(X2,X1)
         => v3_ordinal1(X2) )
     => v3_ordinal1(k3_tarski(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t35_ordinal1)).

fof(fc2_ordinal1,axiom,(
    ! [X1] :
      ( v3_ordinal1(X1)
     => ( ~ v1_xboole_0(k1_ordinal1(X1))
        & v3_ordinal1(k1_ordinal1(X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc2_ordinal1)).

fof(c_0_6,plain,(
    ! [X9,X10] :
      ( ~ r2_hidden(X9,X10)
      | ~ r1_tarski(X10,X9) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t7_ordinal1])])).

fof(c_0_7,plain,(
    ! [X3,X4] :
      ( ~ r2_hidden(X3,X4)
      | r1_tarski(X3,k3_tarski(X4)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l49_zfmisc_1])])).

cnf(c_0_8,plain,
    ( ~ r2_hidden(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_9,plain,
    ( r1_tarski(X1,k3_tarski(X2))
    | ~ r2_hidden(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

fof(c_0_10,plain,(
    ! [X6] : r2_hidden(X6,k1_ordinal1(X6)) ),
    inference(variable_rename,[status(thm)],[t10_ordinal1])).

fof(c_0_11,negated_conjecture,(
    ~ ! [X1] :
        ~ ! [X2] :
            ( r2_hidden(X2,X1)
          <=> v3_ordinal1(X2) ) ),
    inference(assume_negation,[status(cth)],[t37_ordinal1])).

cnf(c_0_12,plain,
    ( ~ r2_hidden(k3_tarski(X1),X2)
    | ~ r2_hidden(X2,X1) ),
    inference(spm,[status(thm)],[c_0_8,c_0_9])).

cnf(c_0_13,plain,
    ( r2_hidden(X1,k1_ordinal1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

fof(c_0_14,negated_conjecture,(
    ! [X12] :
      ( ( ~ r2_hidden(X12,esk2_0)
        | v3_ordinal1(X12) )
      & ( ~ v3_ordinal1(X12)
        | r2_hidden(X12,esk2_0) ) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_11])])])).

fof(c_0_15,plain,(
    ! [X7] :
      ( ( r2_hidden(esk1_1(X7),X7)
        | v3_ordinal1(k3_tarski(X7)) )
      & ( ~ v3_ordinal1(esk1_1(X7))
        | v3_ordinal1(k3_tarski(X7)) ) ) ),
    inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t35_ordinal1])])])])).

cnf(c_0_16,plain,
    ( ~ r2_hidden(k1_ordinal1(k3_tarski(X1)),X1) ),
    inference(spm,[status(thm)],[c_0_12,c_0_13])).

cnf(c_0_17,negated_conjecture,
    ( r2_hidden(X1,esk2_0)
    | ~ v3_ordinal1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

fof(c_0_18,plain,(
    ! [X5] :
      ( ( ~ v1_xboole_0(k1_ordinal1(X5))
        | ~ v3_ordinal1(X5) )
      & ( v3_ordinal1(k1_ordinal1(X5))
        | ~ v3_ordinal1(X5) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc2_ordinal1])])])])).

cnf(c_0_19,negated_conjecture,
    ( v3_ordinal1(X1)
    | ~ r2_hidden(X1,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_20,plain,
    ( r2_hidden(esk1_1(X1),X1)
    | v3_ordinal1(k3_tarski(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_21,plain,
    ( v3_ordinal1(k3_tarski(X1))
    | ~ v3_ordinal1(esk1_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_22,negated_conjecture,
    ( ~ v3_ordinal1(k1_ordinal1(k3_tarski(esk2_0))) ),
    inference(spm,[status(thm)],[c_0_16,c_0_17])).

cnf(c_0_23,plain,
    ( v3_ordinal1(k1_ordinal1(X1))
    | ~ v3_ordinal1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_24,negated_conjecture,
    ( v3_ordinal1(k3_tarski(esk2_0)) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_19,c_0_20]),c_0_21])).

cnf(c_0_25,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22,c_0_23]),c_0_24])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.34  % Computer   : n017.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 14:22:46 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.35  # Version: 2.5pre002
% 0.14/0.35  # No SInE strategy applied
% 0.14/0.35  # Trying AutoSched0 for 299 seconds
% 0.21/0.37  # AutoSched0-Mode selected heuristic G_N___023_B07_F1_SP_PI_Q7_CS_SE_S0Y
% 0.21/0.37  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.21/0.37  #
% 0.21/0.37  # Preprocessing time       : 0.026 s
% 0.21/0.37  
% 0.21/0.37  # Proof found!
% 0.21/0.37  # SZS status Theorem
% 0.21/0.37  # SZS output start CNFRefutation
% 0.21/0.37  fof(t7_ordinal1, axiom, ![X1, X2]:~((r2_hidden(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t7_ordinal1)).
% 0.21/0.37  fof(l49_zfmisc_1, axiom, ![X1, X2]:(r2_hidden(X1,X2)=>r1_tarski(X1,k3_tarski(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l49_zfmisc_1)).
% 0.21/0.37  fof(t10_ordinal1, axiom, ![X1]:r2_hidden(X1,k1_ordinal1(X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t10_ordinal1)).
% 0.21/0.37  fof(t37_ordinal1, conjecture, ![X1]:~(![X2]:(r2_hidden(X2,X1)<=>v3_ordinal1(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t37_ordinal1)).
% 0.21/0.37  fof(t35_ordinal1, axiom, ![X1]:(![X2]:(r2_hidden(X2,X1)=>v3_ordinal1(X2))=>v3_ordinal1(k3_tarski(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t35_ordinal1)).
% 0.21/0.37  fof(fc2_ordinal1, axiom, ![X1]:(v3_ordinal1(X1)=>(~(v1_xboole_0(k1_ordinal1(X1)))&v3_ordinal1(k1_ordinal1(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc2_ordinal1)).
% 0.21/0.37  fof(c_0_6, plain, ![X9, X10]:(~r2_hidden(X9,X10)|~r1_tarski(X10,X9)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t7_ordinal1])])).
% 0.21/0.37  fof(c_0_7, plain, ![X3, X4]:(~r2_hidden(X3,X4)|r1_tarski(X3,k3_tarski(X4))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l49_zfmisc_1])])).
% 0.21/0.37  cnf(c_0_8, plain, (~r2_hidden(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.21/0.37  cnf(c_0_9, plain, (r1_tarski(X1,k3_tarski(X2))|~r2_hidden(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.21/0.37  fof(c_0_10, plain, ![X6]:r2_hidden(X6,k1_ordinal1(X6)), inference(variable_rename,[status(thm)],[t10_ordinal1])).
% 0.21/0.37  fof(c_0_11, negated_conjecture, ~(![X1]:~(![X2]:(r2_hidden(X2,X1)<=>v3_ordinal1(X2)))), inference(assume_negation,[status(cth)],[t37_ordinal1])).
% 0.21/0.37  cnf(c_0_12, plain, (~r2_hidden(k3_tarski(X1),X2)|~r2_hidden(X2,X1)), inference(spm,[status(thm)],[c_0_8, c_0_9])).
% 0.21/0.37  cnf(c_0_13, plain, (r2_hidden(X1,k1_ordinal1(X1))), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.21/0.37  fof(c_0_14, negated_conjecture, ![X12]:((~r2_hidden(X12,esk2_0)|v3_ordinal1(X12))&(~v3_ordinal1(X12)|r2_hidden(X12,esk2_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_11])])])).
% 0.21/0.37  fof(c_0_15, plain, ![X7]:((r2_hidden(esk1_1(X7),X7)|v3_ordinal1(k3_tarski(X7)))&(~v3_ordinal1(esk1_1(X7))|v3_ordinal1(k3_tarski(X7)))), inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t35_ordinal1])])])])).
% 0.21/0.37  cnf(c_0_16, plain, (~r2_hidden(k1_ordinal1(k3_tarski(X1)),X1)), inference(spm,[status(thm)],[c_0_12, c_0_13])).
% 0.21/0.37  cnf(c_0_17, negated_conjecture, (r2_hidden(X1,esk2_0)|~v3_ordinal1(X1)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.21/0.37  fof(c_0_18, plain, ![X5]:((~v1_xboole_0(k1_ordinal1(X5))|~v3_ordinal1(X5))&(v3_ordinal1(k1_ordinal1(X5))|~v3_ordinal1(X5))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc2_ordinal1])])])])).
% 0.21/0.37  cnf(c_0_19, negated_conjecture, (v3_ordinal1(X1)|~r2_hidden(X1,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.21/0.37  cnf(c_0_20, plain, (r2_hidden(esk1_1(X1),X1)|v3_ordinal1(k3_tarski(X1))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.21/0.37  cnf(c_0_21, plain, (v3_ordinal1(k3_tarski(X1))|~v3_ordinal1(esk1_1(X1))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.21/0.37  cnf(c_0_22, negated_conjecture, (~v3_ordinal1(k1_ordinal1(k3_tarski(esk2_0)))), inference(spm,[status(thm)],[c_0_16, c_0_17])).
% 0.21/0.37  cnf(c_0_23, plain, (v3_ordinal1(k1_ordinal1(X1))|~v3_ordinal1(X1)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.21/0.37  cnf(c_0_24, negated_conjecture, (v3_ordinal1(k3_tarski(esk2_0))), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_19, c_0_20]), c_0_21])).
% 0.21/0.37  cnf(c_0_25, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22, c_0_23]), c_0_24])]), ['proof']).
% 0.21/0.37  # SZS output end CNFRefutation
% 0.21/0.37  # Proof object total steps             : 26
% 0.21/0.37  # Proof object clause steps            : 13
% 0.21/0.37  # Proof object formula steps           : 13
% 0.21/0.37  # Proof object conjectures             : 8
% 0.21/0.37  # Proof object clause conjectures      : 5
% 0.21/0.37  # Proof object formula conjectures     : 3
% 0.21/0.37  # Proof object initial clauses used    : 8
% 0.21/0.37  # Proof object initial formulas used   : 6
% 0.21/0.37  # Proof object generating inferences   : 5
% 0.21/0.37  # Proof object simplifying inferences  : 3
% 0.21/0.37  # Training examples: 0 positive, 0 negative
% 0.21/0.37  # Parsed axioms                        : 6
% 0.21/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.21/0.37  # Initial clauses                      : 9
% 0.21/0.37  # Removed in clause preprocessing      : 0
% 0.21/0.37  # Initial clauses in saturation        : 9
% 0.21/0.37  # Processed clauses                    : 14
% 0.21/0.37  # ...of these trivial                  : 0
% 0.21/0.37  # ...subsumed                          : 0
% 0.21/0.37  # ...remaining for further processing  : 13
% 0.21/0.37  # Other redundant clauses eliminated   : 0
% 0.21/0.37  # Clauses deleted for lack of memory   : 0
% 0.21/0.37  # Backward-subsumed                    : 0
% 0.21/0.37  # Backward-rewritten                   : 0
% 0.21/0.37  # Generated clauses                    : 7
% 0.21/0.37  # ...of the previous two non-trivial   : 6
% 0.21/0.37  # Contextual simplify-reflections      : 1
% 0.21/0.37  # Paramodulations                      : 7
% 0.21/0.37  # Factorizations                       : 0
% 0.21/0.37  # Equation resolutions                 : 0
% 0.21/0.37  # Propositional unsat checks           : 0
% 0.21/0.37  #    Propositional check models        : 0
% 0.21/0.37  #    Propositional check unsatisfiable : 0
% 0.21/0.37  #    Propositional clauses             : 0
% 0.21/0.37  #    Propositional clauses after purity: 0
% 0.21/0.37  #    Propositional unsat core size     : 0
% 0.21/0.37  #    Propositional preprocessing time  : 0.000
% 0.21/0.37  #    Propositional encoding time       : 0.000
% 0.21/0.37  #    Propositional solver time         : 0.000
% 0.21/0.37  #    Success case prop preproc time    : 0.000
% 0.21/0.37  #    Success case prop encoding time   : 0.000
% 0.21/0.37  #    Success case prop solver time     : 0.000
% 0.21/0.37  # Current number of processed clauses  : 13
% 0.21/0.37  #    Positive orientable unit clauses  : 2
% 0.21/0.37  #    Positive unorientable unit clauses: 0
% 0.21/0.37  #    Negative unit clauses             : 2
% 0.21/0.37  #    Non-unit-clauses                  : 9
% 0.21/0.37  # Current number of unprocessed clauses: 1
% 0.21/0.37  # ...number of literals in the above   : 2
% 0.21/0.37  # Current number of archived formulas  : 0
% 0.21/0.37  # Current number of archived clauses   : 0
% 0.21/0.37  # Clause-clause subsumption calls (NU) : 2
% 0.21/0.37  # Rec. Clause-clause subsumption calls : 2
% 0.21/0.37  # Non-unit clause-clause subsumptions  : 1
% 0.21/0.37  # Unit Clause-clause subsumption calls : 0
% 0.21/0.37  # Rewrite failures with RHS unbound    : 0
% 0.21/0.37  # BW rewrite match attempts            : 0
% 0.21/0.37  # BW rewrite match successes           : 0
% 0.21/0.37  # Condensation attempts                : 0
% 0.21/0.37  # Condensation successes               : 0
% 0.21/0.37  # Termbank termtop insertions          : 563
% 0.21/0.37  
% 0.21/0.37  # -------------------------------------------------
% 0.21/0.37  # User time                : 0.025 s
% 0.21/0.37  # System time              : 0.005 s
% 0.21/0.37  # Total time               : 0.030 s
% 0.21/0.37  # Maximum resident set size: 1564 pages
%------------------------------------------------------------------------------
