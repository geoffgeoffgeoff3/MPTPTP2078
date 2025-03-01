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
% DateTime   : Thu Dec  3 10:43:18 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   22 (  28 expanded)
%              Number of clauses        :   11 (  13 expanded)
%              Number of leaves         :    5 (   7 expanded)
%              Depth                    :    7
%              Number of atoms          :   32 (  41 expanded)
%              Number of equality atoms :    3 (   3 expanded)
%              Maximal formula depth    :    7 (   3 average)
%              Maximal clause size      :    3 (   1 average)
%              Maximal term depth       :    3 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t17_xboole_1,axiom,(
    ! [X1,X2] : r1_tarski(k3_xboole_0(X1,X2),X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t17_xboole_1)).

fof(commutativity_k3_xboole_0,axiom,(
    ! [X1,X2] : k3_xboole_0(X1,X2) = k3_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).

fof(t95_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
     => r1_tarski(k3_tarski(X1),k3_tarski(X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t95_zfmisc_1)).

fof(t19_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( ( r1_tarski(X1,X2)
        & r1_tarski(X1,X3) )
     => r1_tarski(X1,k3_xboole_0(X2,X3)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t19_xboole_1)).

fof(t97_zfmisc_1,conjecture,(
    ! [X1,X2] : r1_tarski(k3_tarski(k3_xboole_0(X1,X2)),k3_xboole_0(k3_tarski(X1),k3_tarski(X2))) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t97_zfmisc_1)).

fof(c_0_5,plain,(
    ! [X6,X7] : r1_tarski(k3_xboole_0(X6,X7),X6) ),
    inference(variable_rename,[status(thm)],[t17_xboole_1])).

fof(c_0_6,plain,(
    ! [X4,X5] : k3_xboole_0(X4,X5) = k3_xboole_0(X5,X4) ),
    inference(variable_rename,[status(thm)],[commutativity_k3_xboole_0])).

fof(c_0_7,plain,(
    ! [X11,X12] :
      ( ~ r1_tarski(X11,X12)
      | r1_tarski(k3_tarski(X11),k3_tarski(X12)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t95_zfmisc_1])])).

cnf(c_0_8,plain,
    ( r1_tarski(k3_xboole_0(X1,X2),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_9,plain,
    ( k3_xboole_0(X1,X2) = k3_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

fof(c_0_10,plain,(
    ! [X8,X9,X10] :
      ( ~ r1_tarski(X8,X9)
      | ~ r1_tarski(X8,X10)
      | r1_tarski(X8,k3_xboole_0(X9,X10)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t19_xboole_1])])).

cnf(c_0_11,plain,
    ( r1_tarski(k3_tarski(X1),k3_tarski(X2))
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_12,plain,
    ( r1_tarski(k3_xboole_0(X1,X2),X2) ),
    inference(spm,[status(thm)],[c_0_8,c_0_9])).

fof(c_0_13,negated_conjecture,(
    ~ ! [X1,X2] : r1_tarski(k3_tarski(k3_xboole_0(X1,X2)),k3_xboole_0(k3_tarski(X1),k3_tarski(X2))) ),
    inference(assume_negation,[status(cth)],[t97_zfmisc_1])).

cnf(c_0_14,plain,
    ( r1_tarski(X1,k3_xboole_0(X2,X3))
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X1,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_15,plain,
    ( r1_tarski(k3_tarski(k3_xboole_0(X1,X2)),k3_tarski(X2)) ),
    inference(spm,[status(thm)],[c_0_11,c_0_12])).

fof(c_0_16,negated_conjecture,(
    ~ r1_tarski(k3_tarski(k3_xboole_0(esk1_0,esk2_0)),k3_xboole_0(k3_tarski(esk1_0),k3_tarski(esk2_0))) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_13])])])).

cnf(c_0_17,plain,
    ( r1_tarski(k3_tarski(k3_xboole_0(X1,X2)),k3_xboole_0(X3,k3_tarski(X2)))
    | ~ r1_tarski(k3_tarski(k3_xboole_0(X1,X2)),X3) ),
    inference(spm,[status(thm)],[c_0_14,c_0_15])).

cnf(c_0_18,plain,
    ( r1_tarski(k3_tarski(k3_xboole_0(X1,X2)),k3_tarski(X1)) ),
    inference(spm,[status(thm)],[c_0_11,c_0_8])).

cnf(c_0_19,negated_conjecture,
    ( ~ r1_tarski(k3_tarski(k3_xboole_0(esk1_0,esk2_0)),k3_xboole_0(k3_tarski(esk1_0),k3_tarski(esk2_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_20,plain,
    ( r1_tarski(k3_tarski(k3_xboole_0(X1,X2)),k3_xboole_0(k3_tarski(X1),k3_tarski(X2))) ),
    inference(spm,[status(thm)],[c_0_17,c_0_18])).

cnf(c_0_21,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_19,c_0_20])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n012.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 16:46:22 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.13/0.37  # AutoSched0-Mode selected heuristic G_E___208_B01_00_F1_SE_CS_SP_PS_S064A
% 0.13/0.37  # and selection function SelectComplexG.
% 0.13/0.37  #
% 0.13/0.37  # Preprocessing time       : 0.027 s
% 0.13/0.37  # Presaturation interreduction done
% 0.13/0.37  
% 0.13/0.37  # Proof found!
% 0.13/0.37  # SZS status Theorem
% 0.13/0.37  # SZS output start CNFRefutation
% 0.13/0.37  fof(t17_xboole_1, axiom, ![X1, X2]:r1_tarski(k3_xboole_0(X1,X2),X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t17_xboole_1)).
% 0.13/0.37  fof(commutativity_k3_xboole_0, axiom, ![X1, X2]:k3_xboole_0(X1,X2)=k3_xboole_0(X2,X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', commutativity_k3_xboole_0)).
% 0.13/0.37  fof(t95_zfmisc_1, axiom, ![X1, X2]:(r1_tarski(X1,X2)=>r1_tarski(k3_tarski(X1),k3_tarski(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t95_zfmisc_1)).
% 0.13/0.37  fof(t19_xboole_1, axiom, ![X1, X2, X3]:((r1_tarski(X1,X2)&r1_tarski(X1,X3))=>r1_tarski(X1,k3_xboole_0(X2,X3))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t19_xboole_1)).
% 0.13/0.37  fof(t97_zfmisc_1, conjecture, ![X1, X2]:r1_tarski(k3_tarski(k3_xboole_0(X1,X2)),k3_xboole_0(k3_tarski(X1),k3_tarski(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t97_zfmisc_1)).
% 0.13/0.37  fof(c_0_5, plain, ![X6, X7]:r1_tarski(k3_xboole_0(X6,X7),X6), inference(variable_rename,[status(thm)],[t17_xboole_1])).
% 0.13/0.37  fof(c_0_6, plain, ![X4, X5]:k3_xboole_0(X4,X5)=k3_xboole_0(X5,X4), inference(variable_rename,[status(thm)],[commutativity_k3_xboole_0])).
% 0.13/0.37  fof(c_0_7, plain, ![X11, X12]:(~r1_tarski(X11,X12)|r1_tarski(k3_tarski(X11),k3_tarski(X12))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t95_zfmisc_1])])).
% 0.13/0.37  cnf(c_0_8, plain, (r1_tarski(k3_xboole_0(X1,X2),X1)), inference(split_conjunct,[status(thm)],[c_0_5])).
% 0.13/0.37  cnf(c_0_9, plain, (k3_xboole_0(X1,X2)=k3_xboole_0(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.13/0.37  fof(c_0_10, plain, ![X8, X9, X10]:(~r1_tarski(X8,X9)|~r1_tarski(X8,X10)|r1_tarski(X8,k3_xboole_0(X9,X10))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t19_xboole_1])])).
% 0.13/0.37  cnf(c_0_11, plain, (r1_tarski(k3_tarski(X1),k3_tarski(X2))|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.13/0.37  cnf(c_0_12, plain, (r1_tarski(k3_xboole_0(X1,X2),X2)), inference(spm,[status(thm)],[c_0_8, c_0_9])).
% 0.13/0.37  fof(c_0_13, negated_conjecture, ~(![X1, X2]:r1_tarski(k3_tarski(k3_xboole_0(X1,X2)),k3_xboole_0(k3_tarski(X1),k3_tarski(X2)))), inference(assume_negation,[status(cth)],[t97_zfmisc_1])).
% 0.13/0.37  cnf(c_0_14, plain, (r1_tarski(X1,k3_xboole_0(X2,X3))|~r1_tarski(X1,X2)|~r1_tarski(X1,X3)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.37  cnf(c_0_15, plain, (r1_tarski(k3_tarski(k3_xboole_0(X1,X2)),k3_tarski(X2))), inference(spm,[status(thm)],[c_0_11, c_0_12])).
% 0.13/0.37  fof(c_0_16, negated_conjecture, ~r1_tarski(k3_tarski(k3_xboole_0(esk1_0,esk2_0)),k3_xboole_0(k3_tarski(esk1_0),k3_tarski(esk2_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_13])])])).
% 0.13/0.37  cnf(c_0_17, plain, (r1_tarski(k3_tarski(k3_xboole_0(X1,X2)),k3_xboole_0(X3,k3_tarski(X2)))|~r1_tarski(k3_tarski(k3_xboole_0(X1,X2)),X3)), inference(spm,[status(thm)],[c_0_14, c_0_15])).
% 0.13/0.37  cnf(c_0_18, plain, (r1_tarski(k3_tarski(k3_xboole_0(X1,X2)),k3_tarski(X1))), inference(spm,[status(thm)],[c_0_11, c_0_8])).
% 0.13/0.37  cnf(c_0_19, negated_conjecture, (~r1_tarski(k3_tarski(k3_xboole_0(esk1_0,esk2_0)),k3_xboole_0(k3_tarski(esk1_0),k3_tarski(esk2_0)))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.13/0.37  cnf(c_0_20, plain, (r1_tarski(k3_tarski(k3_xboole_0(X1,X2)),k3_xboole_0(k3_tarski(X1),k3_tarski(X2)))), inference(spm,[status(thm)],[c_0_17, c_0_18])).
% 0.13/0.37  cnf(c_0_21, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_19, c_0_20])]), ['proof']).
% 0.13/0.37  # SZS output end CNFRefutation
% 0.13/0.37  # Proof object total steps             : 22
% 0.13/0.37  # Proof object clause steps            : 11
% 0.13/0.37  # Proof object formula steps           : 11
% 0.13/0.37  # Proof object conjectures             : 5
% 0.13/0.37  # Proof object clause conjectures      : 2
% 0.13/0.37  # Proof object formula conjectures     : 3
% 0.13/0.37  # Proof object initial clauses used    : 5
% 0.13/0.37  # Proof object initial formulas used   : 5
% 0.13/0.37  # Proof object generating inferences   : 5
% 0.13/0.37  # Proof object simplifying inferences  : 2
% 0.13/0.37  # Training examples: 0 positive, 0 negative
% 0.13/0.37  # Parsed axioms                        : 5
% 0.13/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.37  # Initial clauses                      : 5
% 0.13/0.37  # Removed in clause preprocessing      : 0
% 0.13/0.37  # Initial clauses in saturation        : 5
% 0.13/0.37  # Processed clauses                    : 82
% 0.13/0.37  # ...of these trivial                  : 23
% 0.13/0.37  # ...subsumed                          : 12
% 0.13/0.37  # ...remaining for further processing  : 47
% 0.13/0.37  # Other redundant clauses eliminated   : 0
% 0.13/0.37  # Clauses deleted for lack of memory   : 0
% 0.13/0.37  # Backward-subsumed                    : 0
% 0.13/0.37  # Backward-rewritten                   : 1
% 0.13/0.37  # Generated clauses                    : 256
% 0.13/0.37  # ...of the previous two non-trivial   : 202
% 0.13/0.37  # Contextual simplify-reflections      : 0
% 0.13/0.37  # Paramodulations                      : 256
% 0.13/0.37  # Factorizations                       : 0
% 0.13/0.37  # Equation resolutions                 : 0
% 0.13/0.37  # Propositional unsat checks           : 0
% 0.13/0.37  #    Propositional check models        : 0
% 0.13/0.37  #    Propositional check unsatisfiable : 0
% 0.13/0.37  #    Propositional clauses             : 0
% 0.13/0.37  #    Propositional clauses after purity: 0
% 0.13/0.37  #    Propositional unsat core size     : 0
% 0.13/0.37  #    Propositional preprocessing time  : 0.000
% 0.13/0.37  #    Propositional encoding time       : 0.000
% 0.13/0.37  #    Propositional solver time         : 0.000
% 0.13/0.37  #    Success case prop preproc time    : 0.000
% 0.13/0.37  #    Success case prop encoding time   : 0.000
% 0.13/0.37  #    Success case prop solver time     : 0.000
% 0.13/0.37  # Current number of processed clauses  : 41
% 0.13/0.37  #    Positive orientable unit clauses  : 30
% 0.13/0.37  #    Positive unorientable unit clauses: 1
% 0.13/0.37  #    Negative unit clauses             : 0
% 0.13/0.37  #    Non-unit-clauses                  : 10
% 0.13/0.37  # Current number of unprocessed clauses: 130
% 0.13/0.37  # ...number of literals in the above   : 155
% 0.13/0.37  # Current number of archived formulas  : 0
% 0.13/0.37  # Current number of archived clauses   : 6
% 0.13/0.37  # Clause-clause subsumption calls (NU) : 66
% 0.13/0.37  # Rec. Clause-clause subsumption calls : 66
% 0.13/0.37  # Non-unit clause-clause subsumptions  : 12
% 0.13/0.37  # Unit Clause-clause subsumption calls : 29
% 0.13/0.37  # Rewrite failures with RHS unbound    : 0
% 0.13/0.37  # BW rewrite match attempts            : 93
% 0.13/0.37  # BW rewrite match successes           : 9
% 0.13/0.37  # Condensation attempts                : 0
% 0.13/0.37  # Condensation successes               : 0
% 0.13/0.37  # Termbank termtop insertions          : 3131
% 0.13/0.37  
% 0.13/0.37  # -------------------------------------------------
% 0.13/0.37  # User time                : 0.028 s
% 0.13/0.37  # System time              : 0.005 s
% 0.13/0.37  # Total time               : 0.034 s
% 0.13/0.37  # Maximum resident set size: 1560 pages
%------------------------------------------------------------------------------
