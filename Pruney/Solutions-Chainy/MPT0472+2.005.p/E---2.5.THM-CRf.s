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
% DateTime   : Thu Dec  3 10:49:20 EST 2020

% Result     : Theorem 0.12s
% Output     : CNFRefutation 0.12s
% Verified   : 
% Statistics : Number of formulae       :   25 (  42 expanded)
%              Number of clauses        :   12 (  16 expanded)
%              Number of leaves         :    6 (  11 expanded)
%              Depth                    :    6
%              Number of atoms          :   51 (  95 expanded)
%              Number of equality atoms :   19 (  49 expanded)
%              Maximal formula depth    :    6 (   3 average)
%              Maximal clause size      :    4 (   2 average)
%              Maximal term depth       :    2 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t64_relat_1,conjecture,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ( ( k1_relat_1(X1) = k1_xboole_0
          | k2_relat_1(X1) = k1_xboole_0 )
       => X1 = k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t64_relat_1)).

fof(fc13_subset_1,axiom,(
    ! [X1] : v1_xboole_0(k1_subset_1(X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc13_subset_1)).

fof(d3_subset_1,axiom,(
    ! [X1] : k1_subset_1(X1) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_subset_1)).

fof(fc9_relat_1,axiom,(
    ! [X1] :
      ( ( ~ v1_xboole_0(X1)
        & v1_relat_1(X1) )
     => ~ v1_xboole_0(k2_relat_1(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc9_relat_1)).

fof(fc8_relat_1,axiom,(
    ! [X1] :
      ( ( ~ v1_xboole_0(X1)
        & v1_relat_1(X1) )
     => ~ v1_xboole_0(k1_relat_1(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc8_relat_1)).

fof(l13_xboole_0,axiom,(
    ! [X1] :
      ( v1_xboole_0(X1)
     => X1 = k1_xboole_0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l13_xboole_0)).

fof(c_0_6,negated_conjecture,(
    ~ ! [X1] :
        ( v1_relat_1(X1)
       => ( ( k1_relat_1(X1) = k1_xboole_0
            | k2_relat_1(X1) = k1_xboole_0 )
         => X1 = k1_xboole_0 ) ) ),
    inference(assume_negation,[status(cth)],[t64_relat_1])).

fof(c_0_7,plain,(
    ! [X4] : v1_xboole_0(k1_subset_1(X4)) ),
    inference(variable_rename,[status(thm)],[fc13_subset_1])).

fof(c_0_8,plain,(
    ! [X3] : k1_subset_1(X3) = k1_xboole_0 ),
    inference(variable_rename,[status(thm)],[d3_subset_1])).

fof(c_0_9,plain,(
    ! [X6] :
      ( v1_xboole_0(X6)
      | ~ v1_relat_1(X6)
      | ~ v1_xboole_0(k2_relat_1(X6)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc9_relat_1])])])).

fof(c_0_10,negated_conjecture,
    ( v1_relat_1(esk1_0)
    & ( k1_relat_1(esk1_0) = k1_xboole_0
      | k2_relat_1(esk1_0) = k1_xboole_0 )
    & esk1_0 != k1_xboole_0 ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_6])])])).

cnf(c_0_11,plain,
    ( v1_xboole_0(k1_subset_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_12,plain,
    ( k1_subset_1(X1) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

fof(c_0_13,plain,(
    ! [X5] :
      ( v1_xboole_0(X5)
      | ~ v1_relat_1(X5)
      | ~ v1_xboole_0(k1_relat_1(X5)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc8_relat_1])])])).

cnf(c_0_14,plain,
    ( v1_xboole_0(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_xboole_0(k2_relat_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_15,negated_conjecture,
    ( k1_relat_1(esk1_0) = k1_xboole_0
    | k2_relat_1(esk1_0) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_16,negated_conjecture,
    ( v1_relat_1(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_17,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(rw,[status(thm)],[c_0_11,c_0_12])).

fof(c_0_18,plain,(
    ! [X2] :
      ( ~ v1_xboole_0(X2)
      | X2 = k1_xboole_0 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l13_xboole_0])])).

cnf(c_0_19,plain,
    ( v1_xboole_0(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_xboole_0(k1_relat_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_20,negated_conjecture,
    ( k1_relat_1(esk1_0) = k1_xboole_0
    | v1_xboole_0(esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_14,c_0_15]),c_0_16]),c_0_17])])).

cnf(c_0_21,plain,
    ( X1 = k1_xboole_0
    | ~ v1_xboole_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_22,negated_conjecture,
    ( v1_xboole_0(esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19,c_0_20]),c_0_16]),c_0_17])])).

cnf(c_0_23,negated_conjecture,
    ( esk1_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_24,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_21,c_0_22]),c_0_23]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.09/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.09/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.33  % Computer   : n003.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 16:06:27 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.33  # Version: 2.5pre002
% 0.12/0.33  # No SInE strategy applied
% 0.12/0.33  # Trying AutoSched0 for 299 seconds
% 0.12/0.36  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.12/0.36  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.12/0.36  #
% 0.12/0.36  # Preprocessing time       : 0.026 s
% 0.12/0.36  # Presaturation interreduction done
% 0.12/0.36  
% 0.12/0.36  # Proof found!
% 0.12/0.36  # SZS status Theorem
% 0.12/0.36  # SZS output start CNFRefutation
% 0.12/0.36  fof(t64_relat_1, conjecture, ![X1]:(v1_relat_1(X1)=>((k1_relat_1(X1)=k1_xboole_0|k2_relat_1(X1)=k1_xboole_0)=>X1=k1_xboole_0)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t64_relat_1)).
% 0.12/0.36  fof(fc13_subset_1, axiom, ![X1]:v1_xboole_0(k1_subset_1(X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc13_subset_1)).
% 0.12/0.36  fof(d3_subset_1, axiom, ![X1]:k1_subset_1(X1)=k1_xboole_0, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d3_subset_1)).
% 0.12/0.36  fof(fc9_relat_1, axiom, ![X1]:((~(v1_xboole_0(X1))&v1_relat_1(X1))=>~(v1_xboole_0(k2_relat_1(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc9_relat_1)).
% 0.12/0.36  fof(fc8_relat_1, axiom, ![X1]:((~(v1_xboole_0(X1))&v1_relat_1(X1))=>~(v1_xboole_0(k1_relat_1(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc8_relat_1)).
% 0.12/0.36  fof(l13_xboole_0, axiom, ![X1]:(v1_xboole_0(X1)=>X1=k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l13_xboole_0)).
% 0.12/0.36  fof(c_0_6, negated_conjecture, ~(![X1]:(v1_relat_1(X1)=>((k1_relat_1(X1)=k1_xboole_0|k2_relat_1(X1)=k1_xboole_0)=>X1=k1_xboole_0))), inference(assume_negation,[status(cth)],[t64_relat_1])).
% 0.12/0.36  fof(c_0_7, plain, ![X4]:v1_xboole_0(k1_subset_1(X4)), inference(variable_rename,[status(thm)],[fc13_subset_1])).
% 0.12/0.36  fof(c_0_8, plain, ![X3]:k1_subset_1(X3)=k1_xboole_0, inference(variable_rename,[status(thm)],[d3_subset_1])).
% 0.12/0.36  fof(c_0_9, plain, ![X6]:(v1_xboole_0(X6)|~v1_relat_1(X6)|~v1_xboole_0(k2_relat_1(X6))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc9_relat_1])])])).
% 0.12/0.36  fof(c_0_10, negated_conjecture, (v1_relat_1(esk1_0)&((k1_relat_1(esk1_0)=k1_xboole_0|k2_relat_1(esk1_0)=k1_xboole_0)&esk1_0!=k1_xboole_0)), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_6])])])).
% 0.12/0.36  cnf(c_0_11, plain, (v1_xboole_0(k1_subset_1(X1))), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.12/0.36  cnf(c_0_12, plain, (k1_subset_1(X1)=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.12/0.36  fof(c_0_13, plain, ![X5]:(v1_xboole_0(X5)|~v1_relat_1(X5)|~v1_xboole_0(k1_relat_1(X5))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc8_relat_1])])])).
% 0.12/0.36  cnf(c_0_14, plain, (v1_xboole_0(X1)|~v1_relat_1(X1)|~v1_xboole_0(k2_relat_1(X1))), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.12/0.36  cnf(c_0_15, negated_conjecture, (k1_relat_1(esk1_0)=k1_xboole_0|k2_relat_1(esk1_0)=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.12/0.36  cnf(c_0_16, negated_conjecture, (v1_relat_1(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.12/0.36  cnf(c_0_17, plain, (v1_xboole_0(k1_xboole_0)), inference(rw,[status(thm)],[c_0_11, c_0_12])).
% 0.12/0.36  fof(c_0_18, plain, ![X2]:(~v1_xboole_0(X2)|X2=k1_xboole_0), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l13_xboole_0])])).
% 0.12/0.36  cnf(c_0_19, plain, (v1_xboole_0(X1)|~v1_relat_1(X1)|~v1_xboole_0(k1_relat_1(X1))), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.12/0.36  cnf(c_0_20, negated_conjecture, (k1_relat_1(esk1_0)=k1_xboole_0|v1_xboole_0(esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_14, c_0_15]), c_0_16]), c_0_17])])).
% 0.12/0.36  cnf(c_0_21, plain, (X1=k1_xboole_0|~v1_xboole_0(X1)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.12/0.36  cnf(c_0_22, negated_conjecture, (v1_xboole_0(esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19, c_0_20]), c_0_16]), c_0_17])])).
% 0.12/0.36  cnf(c_0_23, negated_conjecture, (esk1_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.12/0.36  cnf(c_0_24, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_21, c_0_22]), c_0_23]), ['proof']).
% 0.12/0.36  # SZS output end CNFRefutation
% 0.12/0.36  # Proof object total steps             : 25
% 0.12/0.36  # Proof object clause steps            : 12
% 0.12/0.36  # Proof object formula steps           : 13
% 0.12/0.36  # Proof object conjectures             : 9
% 0.12/0.36  # Proof object clause conjectures      : 6
% 0.12/0.36  # Proof object formula conjectures     : 3
% 0.12/0.36  # Proof object initial clauses used    : 8
% 0.12/0.36  # Proof object initial formulas used   : 6
% 0.12/0.36  # Proof object generating inferences   : 3
% 0.12/0.36  # Proof object simplifying inferences  : 8
% 0.12/0.36  # Training examples: 0 positive, 0 negative
% 0.12/0.36  # Parsed axioms                        : 6
% 0.12/0.36  # Removed by relevancy pruning/SinE    : 0
% 0.12/0.36  # Initial clauses                      : 8
% 0.12/0.36  # Removed in clause preprocessing      : 1
% 0.12/0.36  # Initial clauses in saturation        : 7
% 0.12/0.36  # Processed clauses                    : 16
% 0.12/0.36  # ...of these trivial                  : 0
% 0.12/0.36  # ...subsumed                          : 0
% 0.12/0.36  # ...remaining for further processing  : 16
% 0.12/0.36  # Other redundant clauses eliminated   : 0
% 0.12/0.36  # Clauses deleted for lack of memory   : 0
% 0.12/0.36  # Backward-subsumed                    : 0
% 0.12/0.36  # Backward-rewritten                   : 1
% 0.12/0.36  # Generated clauses                    : 3
% 0.12/0.36  # ...of the previous two non-trivial   : 2
% 0.12/0.36  # Contextual simplify-reflections      : 0
% 0.12/0.36  # Paramodulations                      : 3
% 0.12/0.36  # Factorizations                       : 0
% 0.12/0.36  # Equation resolutions                 : 0
% 0.12/0.36  # Propositional unsat checks           : 0
% 0.12/0.36  #    Propositional check models        : 0
% 0.12/0.36  #    Propositional check unsatisfiable : 0
% 0.12/0.36  #    Propositional clauses             : 0
% 0.12/0.36  #    Propositional clauses after purity: 0
% 0.12/0.36  #    Propositional unsat core size     : 0
% 0.12/0.36  #    Propositional preprocessing time  : 0.000
% 0.12/0.36  #    Propositional encoding time       : 0.000
% 0.12/0.36  #    Propositional solver time         : 0.000
% 0.12/0.36  #    Success case prop preproc time    : 0.000
% 0.12/0.36  #    Success case prop encoding time   : 0.000
% 0.12/0.36  #    Success case prop solver time     : 0.000
% 0.12/0.36  # Current number of processed clauses  : 8
% 0.12/0.36  #    Positive orientable unit clauses  : 3
% 0.12/0.36  #    Positive unorientable unit clauses: 0
% 0.12/0.36  #    Negative unit clauses             : 1
% 0.12/0.36  #    Non-unit-clauses                  : 4
% 0.12/0.36  # Current number of unprocessed clauses: 0
% 0.12/0.36  # ...number of literals in the above   : 0
% 0.12/0.36  # Current number of archived formulas  : 0
% 0.12/0.36  # Current number of archived clauses   : 9
% 0.12/0.36  # Clause-clause subsumption calls (NU) : 9
% 0.12/0.36  # Rec. Clause-clause subsumption calls : 9
% 0.12/0.36  # Non-unit clause-clause subsumptions  : 0
% 0.12/0.36  # Unit Clause-clause subsumption calls : 0
% 0.12/0.36  # Rewrite failures with RHS unbound    : 0
% 0.12/0.36  # BW rewrite match attempts            : 1
% 0.12/0.36  # BW rewrite match successes           : 1
% 0.12/0.36  # Condensation attempts                : 0
% 0.12/0.36  # Condensation successes               : 0
% 0.12/0.36  # Termbank termtop insertions          : 475
% 0.12/0.36  
% 0.12/0.36  # -------------------------------------------------
% 0.12/0.36  # User time                : 0.025 s
% 0.12/0.36  # System time              : 0.004 s
% 0.12/0.36  # Total time               : 0.030 s
% 0.12/0.36  # Maximum resident set size: 1564 pages
%------------------------------------------------------------------------------
