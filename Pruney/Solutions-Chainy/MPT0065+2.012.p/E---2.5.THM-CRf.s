%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n007.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:32:29 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   31 (  98 expanded)
%              Number of clauses        :   18 (  41 expanded)
%              Number of leaves         :    6 (  24 expanded)
%              Depth                    :   10
%              Number of atoms          :   54 ( 217 expanded)
%              Number of equality atoms :   14 (  45 expanded)
%              Maximal formula depth    :    7 (   3 average)
%              Maximal clause size      :    7 (   1 average)
%              Maximal term depth       :    2 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t58_xboole_1,conjecture,(
    ! [X1,X2,X3] :
      ( ( r2_xboole_0(X1,X2)
        & r1_tarski(X2,X3) )
     => r2_xboole_0(X1,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t58_xboole_1)).

fof(d8_xboole_0,axiom,(
    ! [X1,X2] :
      ( r2_xboole_0(X1,X2)
    <=> ( r1_tarski(X1,X2)
        & X1 != X2 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d8_xboole_0)).

fof(t10_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( r1_tarski(X1,X2)
     => r1_tarski(X1,k2_xboole_0(X3,X2)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t10_xboole_1)).

fof(commutativity_k2_xboole_0,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_xboole_0)).

fof(t12_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
     => k2_xboole_0(X1,X2) = X2 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_xboole_1)).

fof(irreflexivity_r2_xboole_0,axiom,(
    ! [X1,X2] : ~ r2_xboole_0(X1,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',irreflexivity_r2_xboole_0)).

fof(c_0_6,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( ( r2_xboole_0(X1,X2)
          & r1_tarski(X2,X3) )
       => r2_xboole_0(X1,X3) ) ),
    inference(assume_negation,[status(cth)],[t58_xboole_1])).

fof(c_0_7,plain,(
    ! [X6,X7] :
      ( ( r1_tarski(X6,X7)
        | ~ r2_xboole_0(X6,X7) )
      & ( X6 != X7
        | ~ r2_xboole_0(X6,X7) )
      & ( ~ r1_tarski(X6,X7)
        | X6 = X7
        | r2_xboole_0(X6,X7) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d8_xboole_0])])])).

fof(c_0_8,negated_conjecture,
    ( r2_xboole_0(esk1_0,esk2_0)
    & r1_tarski(esk2_0,esk3_0)
    & ~ r2_xboole_0(esk1_0,esk3_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_6])])])).

fof(c_0_9,plain,(
    ! [X9,X10,X11] :
      ( ~ r1_tarski(X9,X10)
      | r1_tarski(X9,k2_xboole_0(X11,X10)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t10_xboole_1])])).

cnf(c_0_10,plain,
    ( r1_tarski(X1,X2)
    | ~ r2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_11,negated_conjecture,
    ( r2_xboole_0(esk1_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_12,plain,
    ( r1_tarski(X1,k2_xboole_0(X3,X2))
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_13,negated_conjecture,
    ( r1_tarski(esk1_0,esk2_0) ),
    inference(spm,[status(thm)],[c_0_10,c_0_11])).

fof(c_0_14,plain,(
    ! [X4,X5] : k2_xboole_0(X4,X5) = k2_xboole_0(X5,X4) ),
    inference(variable_rename,[status(thm)],[commutativity_k2_xboole_0])).

fof(c_0_15,plain,(
    ! [X12,X13] :
      ( ~ r1_tarski(X12,X13)
      | k2_xboole_0(X12,X13) = X13 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t12_xboole_1])])).

cnf(c_0_16,negated_conjecture,
    ( r1_tarski(esk1_0,k2_xboole_0(X1,esk2_0)) ),
    inference(spm,[status(thm)],[c_0_12,c_0_13])).

cnf(c_0_17,plain,
    ( k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_18,plain,
    ( k2_xboole_0(X1,X2) = X2
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_19,negated_conjecture,
    ( r1_tarski(esk2_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_20,negated_conjecture,
    ( r1_tarski(esk1_0,k2_xboole_0(esk2_0,X1)) ),
    inference(spm,[status(thm)],[c_0_16,c_0_17])).

cnf(c_0_21,negated_conjecture,
    ( k2_xboole_0(esk2_0,esk3_0) = esk3_0 ),
    inference(spm,[status(thm)],[c_0_18,c_0_19])).

cnf(c_0_22,plain,
    ( X1 = X2
    | r2_xboole_0(X1,X2)
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_23,negated_conjecture,
    ( r1_tarski(esk1_0,esk3_0) ),
    inference(spm,[status(thm)],[c_0_20,c_0_21])).

cnf(c_0_24,negated_conjecture,
    ( ~ r2_xboole_0(esk1_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_25,negated_conjecture,
    ( esk3_0 = esk1_0 ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_22,c_0_23]),c_0_24])).

cnf(c_0_26,negated_conjecture,
    ( k2_xboole_0(esk1_0,esk2_0) = esk2_0 ),
    inference(spm,[status(thm)],[c_0_18,c_0_13])).

fof(c_0_27,plain,(
    ! [X8] : ~ r2_xboole_0(X8,X8) ),
    inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[irreflexivity_r2_xboole_0])])).

cnf(c_0_28,negated_conjecture,
    ( esk2_0 = esk1_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_21,c_0_25]),c_0_17]),c_0_25]),c_0_26])).

cnf(c_0_29,plain,
    ( ~ r2_xboole_0(X1,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_30,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(rw,[status(thm)],[c_0_11,c_0_28]),c_0_29]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.35  % Computer   : n007.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 16:09:51 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.13/0.38  # AutoSched0-Mode selected heuristic G_E___008_C45_F1_PI_S5PRR_SE_Q4_CS_SP_S4S
% 0.13/0.38  # and selection function SelectNewComplexAHPNS.
% 0.13/0.38  #
% 0.13/0.38  # Preprocessing time       : 0.026 s
% 0.13/0.38  
% 0.13/0.38  # Proof found!
% 0.13/0.38  # SZS status Theorem
% 0.13/0.38  # SZS output start CNFRefutation
% 0.13/0.38  fof(t58_xboole_1, conjecture, ![X1, X2, X3]:((r2_xboole_0(X1,X2)&r1_tarski(X2,X3))=>r2_xboole_0(X1,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t58_xboole_1)).
% 0.13/0.38  fof(d8_xboole_0, axiom, ![X1, X2]:(r2_xboole_0(X1,X2)<=>(r1_tarski(X1,X2)&X1!=X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d8_xboole_0)).
% 0.13/0.38  fof(t10_xboole_1, axiom, ![X1, X2, X3]:(r1_tarski(X1,X2)=>r1_tarski(X1,k2_xboole_0(X3,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t10_xboole_1)).
% 0.13/0.38  fof(commutativity_k2_xboole_0, axiom, ![X1, X2]:k2_xboole_0(X1,X2)=k2_xboole_0(X2,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', commutativity_k2_xboole_0)).
% 0.13/0.38  fof(t12_xboole_1, axiom, ![X1, X2]:(r1_tarski(X1,X2)=>k2_xboole_0(X1,X2)=X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t12_xboole_1)).
% 0.13/0.38  fof(irreflexivity_r2_xboole_0, axiom, ![X1, X2]:~(r2_xboole_0(X1,X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', irreflexivity_r2_xboole_0)).
% 0.13/0.38  fof(c_0_6, negated_conjecture, ~(![X1, X2, X3]:((r2_xboole_0(X1,X2)&r1_tarski(X2,X3))=>r2_xboole_0(X1,X3))), inference(assume_negation,[status(cth)],[t58_xboole_1])).
% 0.13/0.38  fof(c_0_7, plain, ![X6, X7]:(((r1_tarski(X6,X7)|~r2_xboole_0(X6,X7))&(X6!=X7|~r2_xboole_0(X6,X7)))&(~r1_tarski(X6,X7)|X6=X7|r2_xboole_0(X6,X7))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d8_xboole_0])])])).
% 0.13/0.38  fof(c_0_8, negated_conjecture, ((r2_xboole_0(esk1_0,esk2_0)&r1_tarski(esk2_0,esk3_0))&~r2_xboole_0(esk1_0,esk3_0)), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_6])])])).
% 0.13/0.38  fof(c_0_9, plain, ![X9, X10, X11]:(~r1_tarski(X9,X10)|r1_tarski(X9,k2_xboole_0(X11,X10))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t10_xboole_1])])).
% 0.13/0.38  cnf(c_0_10, plain, (r1_tarski(X1,X2)|~r2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.13/0.38  cnf(c_0_11, negated_conjecture, (r2_xboole_0(esk1_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.13/0.38  cnf(c_0_12, plain, (r1_tarski(X1,k2_xboole_0(X3,X2))|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.38  cnf(c_0_13, negated_conjecture, (r1_tarski(esk1_0,esk2_0)), inference(spm,[status(thm)],[c_0_10, c_0_11])).
% 0.13/0.38  fof(c_0_14, plain, ![X4, X5]:k2_xboole_0(X4,X5)=k2_xboole_0(X5,X4), inference(variable_rename,[status(thm)],[commutativity_k2_xboole_0])).
% 0.13/0.38  fof(c_0_15, plain, ![X12, X13]:(~r1_tarski(X12,X13)|k2_xboole_0(X12,X13)=X13), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t12_xboole_1])])).
% 0.13/0.38  cnf(c_0_16, negated_conjecture, (r1_tarski(esk1_0,k2_xboole_0(X1,esk2_0))), inference(spm,[status(thm)],[c_0_12, c_0_13])).
% 0.13/0.38  cnf(c_0_17, plain, (k2_xboole_0(X1,X2)=k2_xboole_0(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.13/0.38  cnf(c_0_18, plain, (k2_xboole_0(X1,X2)=X2|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.13/0.38  cnf(c_0_19, negated_conjecture, (r1_tarski(esk2_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.13/0.38  cnf(c_0_20, negated_conjecture, (r1_tarski(esk1_0,k2_xboole_0(esk2_0,X1))), inference(spm,[status(thm)],[c_0_16, c_0_17])).
% 0.13/0.38  cnf(c_0_21, negated_conjecture, (k2_xboole_0(esk2_0,esk3_0)=esk3_0), inference(spm,[status(thm)],[c_0_18, c_0_19])).
% 0.13/0.38  cnf(c_0_22, plain, (X1=X2|r2_xboole_0(X1,X2)|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.13/0.38  cnf(c_0_23, negated_conjecture, (r1_tarski(esk1_0,esk3_0)), inference(spm,[status(thm)],[c_0_20, c_0_21])).
% 0.13/0.38  cnf(c_0_24, negated_conjecture, (~r2_xboole_0(esk1_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.13/0.38  cnf(c_0_25, negated_conjecture, (esk3_0=esk1_0), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_22, c_0_23]), c_0_24])).
% 0.13/0.38  cnf(c_0_26, negated_conjecture, (k2_xboole_0(esk1_0,esk2_0)=esk2_0), inference(spm,[status(thm)],[c_0_18, c_0_13])).
% 0.13/0.38  fof(c_0_27, plain, ![X8]:~r2_xboole_0(X8,X8), inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[irreflexivity_r2_xboole_0])])).
% 0.13/0.38  cnf(c_0_28, negated_conjecture, (esk2_0=esk1_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_21, c_0_25]), c_0_17]), c_0_25]), c_0_26])).
% 0.13/0.38  cnf(c_0_29, plain, (~r2_xboole_0(X1,X1)), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.13/0.38  cnf(c_0_30, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(rw,[status(thm)],[c_0_11, c_0_28]), c_0_29]), ['proof']).
% 0.13/0.38  # SZS output end CNFRefutation
% 0.13/0.38  # Proof object total steps             : 31
% 0.13/0.38  # Proof object clause steps            : 18
% 0.13/0.38  # Proof object formula steps           : 13
% 0.13/0.38  # Proof object conjectures             : 15
% 0.13/0.38  # Proof object clause conjectures      : 12
% 0.13/0.38  # Proof object formula conjectures     : 3
% 0.13/0.38  # Proof object initial clauses used    : 9
% 0.13/0.38  # Proof object initial formulas used   : 6
% 0.13/0.38  # Proof object generating inferences   : 7
% 0.13/0.38  # Proof object simplifying inferences  : 7
% 0.13/0.38  # Training examples: 0 positive, 0 negative
% 0.13/0.38  # Parsed axioms                        : 6
% 0.13/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.38  # Initial clauses                      : 10
% 0.13/0.38  # Removed in clause preprocessing      : 0
% 0.13/0.38  # Initial clauses in saturation        : 10
% 0.13/0.38  # Processed clauses                    : 24
% 0.13/0.38  # ...of these trivial                  : 1
% 0.13/0.38  # ...subsumed                          : 1
% 0.13/0.38  # ...remaining for further processing  : 22
% 0.13/0.38  # Other redundant clauses eliminated   : 1
% 0.13/0.38  # Clauses deleted for lack of memory   : 0
% 0.13/0.38  # Backward-subsumed                    : 0
% 0.13/0.38  # Backward-rewritten                   : 13
% 0.13/0.38  # Generated clauses                    : 39
% 0.13/0.38  # ...of the previous two non-trivial   : 42
% 0.13/0.38  # Contextual simplify-reflections      : 0
% 0.13/0.38  # Paramodulations                      : 38
% 0.13/0.38  # Factorizations                       : 0
% 0.13/0.38  # Equation resolutions                 : 1
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
% 0.13/0.38  # Current number of processed clauses  : 8
% 0.13/0.38  #    Positive orientable unit clauses  : 2
% 0.13/0.38  #    Positive unorientable unit clauses: 1
% 0.13/0.38  #    Negative unit clauses             : 1
% 0.13/0.38  #    Non-unit-clauses                  : 4
% 0.13/0.38  # Current number of unprocessed clauses: 24
% 0.13/0.38  # ...number of literals in the above   : 29
% 0.13/0.38  # Current number of archived formulas  : 0
% 0.13/0.38  # Current number of archived clauses   : 13
% 0.13/0.38  # Clause-clause subsumption calls (NU) : 1
% 0.13/0.38  # Rec. Clause-clause subsumption calls : 1
% 0.13/0.38  # Non-unit clause-clause subsumptions  : 0
% 0.13/0.38  # Unit Clause-clause subsumption calls : 1
% 0.13/0.38  # Rewrite failures with RHS unbound    : 0
% 0.13/0.38  # BW rewrite match attempts            : 6
% 0.13/0.38  # BW rewrite match successes           : 6
% 0.13/0.38  # Condensation attempts                : 0
% 0.13/0.38  # Condensation successes               : 0
% 0.13/0.38  # Termbank termtop insertions          : 758
% 0.13/0.38  
% 0.13/0.38  # -------------------------------------------------
% 0.13/0.38  # User time                : 0.028 s
% 0.13/0.38  # System time              : 0.002 s
% 0.13/0.38  # Total time               : 0.031 s
% 0.13/0.38  # Maximum resident set size: 1560 pages
%------------------------------------------------------------------------------
