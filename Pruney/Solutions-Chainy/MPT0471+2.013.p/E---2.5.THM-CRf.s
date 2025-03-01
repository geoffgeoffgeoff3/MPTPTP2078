%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n001.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:49:16 EST 2020

% Result     : Theorem 0.12s
% Output     : CNFRefutation 0.12s
% Verified   : 
% Statistics : Number of formulae       :   20 (  21 expanded)
%              Number of clauses        :    9 (   9 expanded)
%              Number of leaves         :    6 (   7 expanded)
%              Depth                    :    4
%              Number of atoms          :   27 (  29 expanded)
%              Number of equality atoms :   14 (  16 expanded)
%              Maximal formula depth    :    4 (   2 average)
%              Maximal clause size      :    2 (   1 average)
%              Maximal term depth       :    3 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(cc1_relat_1,axiom,(
    ! [X1] :
      ( v1_xboole_0(X1)
     => v1_relat_1(X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc1_relat_1)).

fof(t63_relat_1,conjecture,(
    k3_relat_1(k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t63_relat_1)).

fof(d6_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => k3_relat_1(X1) = k2_xboole_0(k1_relat_1(X1),k2_relat_1(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d6_relat_1)).

fof(fc1_xboole_0,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc1_xboole_0)).

fof(t1_boole,axiom,(
    ! [X1] : k2_xboole_0(X1,k1_xboole_0) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t1_boole)).

fof(t60_relat_1,axiom,
    ( k1_relat_1(k1_xboole_0) = k1_xboole_0
    & k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t60_relat_1)).

fof(c_0_6,plain,(
    ! [X3] :
      ( ~ v1_xboole_0(X3)
      | v1_relat_1(X3) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relat_1])])).

fof(c_0_7,negated_conjecture,(
    k3_relat_1(k1_xboole_0) != k1_xboole_0 ),
    inference(assume_negation,[status(cth)],[t63_relat_1])).

fof(c_0_8,plain,(
    ! [X4] :
      ( ~ v1_relat_1(X4)
      | k3_relat_1(X4) = k2_xboole_0(k1_relat_1(X4),k2_relat_1(X4)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d6_relat_1])])).

cnf(c_0_9,plain,
    ( v1_relat_1(X1)
    | ~ v1_xboole_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_10,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(split_conjunct,[status(thm)],[fc1_xboole_0])).

fof(c_0_11,plain,(
    ! [X2] : k2_xboole_0(X2,k1_xboole_0) = X2 ),
    inference(variable_rename,[status(thm)],[t1_boole])).

fof(c_0_12,negated_conjecture,(
    k3_relat_1(k1_xboole_0) != k1_xboole_0 ),
    inference(fof_simplification,[status(thm)],[c_0_7])).

cnf(c_0_13,plain,
    ( k3_relat_1(X1) = k2_xboole_0(k1_relat_1(X1),k2_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_14,plain,
    ( v1_relat_1(k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_9,c_0_10])).

cnf(c_0_15,plain,
    ( k1_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[t60_relat_1])).

cnf(c_0_16,plain,
    ( k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[t60_relat_1])).

cnf(c_0_17,plain,
    ( k2_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_18,negated_conjecture,
    ( k3_relat_1(k1_xboole_0) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_19,plain,
    ( $false ),
    inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_13,c_0_14]),c_0_15]),c_0_16]),c_0_17]),c_0_18]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.33  % Computer   : n001.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 15:07:45 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.12/0.35  # AutoSched0-Mode selected heuristic G_E___107_C00_02_nc_F1_PI_AE_Q4_CS_SP_PS_S00EN
% 0.12/0.35  # and selection function PSelectSmallestOrientable.
% 0.12/0.35  #
% 0.12/0.35  # Preprocessing time       : 0.013 s
% 0.12/0.35  # Presaturation interreduction done
% 0.12/0.35  
% 0.12/0.35  # Proof found!
% 0.12/0.35  # SZS status Theorem
% 0.12/0.35  # SZS output start CNFRefutation
% 0.12/0.35  fof(cc1_relat_1, axiom, ![X1]:(v1_xboole_0(X1)=>v1_relat_1(X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc1_relat_1)).
% 0.12/0.35  fof(t63_relat_1, conjecture, k3_relat_1(k1_xboole_0)=k1_xboole_0, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t63_relat_1)).
% 0.12/0.35  fof(d6_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>k3_relat_1(X1)=k2_xboole_0(k1_relat_1(X1),k2_relat_1(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d6_relat_1)).
% 0.12/0.35  fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc1_xboole_0)).
% 0.12/0.35  fof(t1_boole, axiom, ![X1]:k2_xboole_0(X1,k1_xboole_0)=X1, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t1_boole)).
% 0.12/0.35  fof(t60_relat_1, axiom, (k1_relat_1(k1_xboole_0)=k1_xboole_0&k2_relat_1(k1_xboole_0)=k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t60_relat_1)).
% 0.12/0.35  fof(c_0_6, plain, ![X3]:(~v1_xboole_0(X3)|v1_relat_1(X3)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relat_1])])).
% 0.12/0.35  fof(c_0_7, negated_conjecture, ~(k3_relat_1(k1_xboole_0)=k1_xboole_0), inference(assume_negation,[status(cth)],[t63_relat_1])).
% 0.12/0.35  fof(c_0_8, plain, ![X4]:(~v1_relat_1(X4)|k3_relat_1(X4)=k2_xboole_0(k1_relat_1(X4),k2_relat_1(X4))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d6_relat_1])])).
% 0.12/0.35  cnf(c_0_9, plain, (v1_relat_1(X1)|~v1_xboole_0(X1)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.12/0.35  cnf(c_0_10, plain, (v1_xboole_0(k1_xboole_0)), inference(split_conjunct,[status(thm)],[fc1_xboole_0])).
% 0.12/0.35  fof(c_0_11, plain, ![X2]:k2_xboole_0(X2,k1_xboole_0)=X2, inference(variable_rename,[status(thm)],[t1_boole])).
% 0.12/0.35  fof(c_0_12, negated_conjecture, k3_relat_1(k1_xboole_0)!=k1_xboole_0, inference(fof_simplification,[status(thm)],[c_0_7])).
% 0.12/0.35  cnf(c_0_13, plain, (k3_relat_1(X1)=k2_xboole_0(k1_relat_1(X1),k2_relat_1(X1))|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.12/0.35  cnf(c_0_14, plain, (v1_relat_1(k1_xboole_0)), inference(spm,[status(thm)],[c_0_9, c_0_10])).
% 0.12/0.35  cnf(c_0_15, plain, (k1_relat_1(k1_xboole_0)=k1_xboole_0), inference(split_conjunct,[status(thm)],[t60_relat_1])).
% 0.12/0.35  cnf(c_0_16, plain, (k2_relat_1(k1_xboole_0)=k1_xboole_0), inference(split_conjunct,[status(thm)],[t60_relat_1])).
% 0.12/0.35  cnf(c_0_17, plain, (k2_xboole_0(X1,k1_xboole_0)=X1), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.12/0.35  cnf(c_0_18, negated_conjecture, (k3_relat_1(k1_xboole_0)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.12/0.35  cnf(c_0_19, plain, ($false), inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_13, c_0_14]), c_0_15]), c_0_16]), c_0_17]), c_0_18]), ['proof']).
% 0.12/0.35  # SZS output end CNFRefutation
% 0.12/0.35  # Proof object total steps             : 20
% 0.12/0.35  # Proof object clause steps            : 9
% 0.12/0.35  # Proof object formula steps           : 11
% 0.12/0.35  # Proof object conjectures             : 4
% 0.12/0.35  # Proof object clause conjectures      : 1
% 0.12/0.35  # Proof object formula conjectures     : 3
% 0.12/0.35  # Proof object initial clauses used    : 7
% 0.12/0.35  # Proof object initial formulas used   : 6
% 0.12/0.35  # Proof object generating inferences   : 2
% 0.12/0.35  # Proof object simplifying inferences  : 4
% 0.12/0.35  # Training examples: 0 positive, 0 negative
% 0.12/0.35  # Parsed axioms                        : 6
% 0.12/0.35  # Removed by relevancy pruning/SinE    : 0
% 0.12/0.35  # Initial clauses                      : 7
% 0.12/0.35  # Removed in clause preprocessing      : 0
% 0.12/0.35  # Initial clauses in saturation        : 7
% 0.12/0.35  # Processed clauses                    : 15
% 0.12/0.35  # ...of these trivial                  : 0
% 0.12/0.35  # ...subsumed                          : 0
% 0.12/0.35  # ...remaining for further processing  : 15
% 0.12/0.35  # Other redundant clauses eliminated   : 0
% 0.12/0.35  # Clauses deleted for lack of memory   : 0
% 0.12/0.35  # Backward-subsumed                    : 0
% 0.12/0.35  # Backward-rewritten                   : 0
% 0.12/0.35  # Generated clauses                    : 4
% 0.12/0.35  # ...of the previous two non-trivial   : 3
% 0.12/0.35  # Contextual simplify-reflections      : 0
% 0.12/0.35  # Paramodulations                      : 4
% 0.12/0.35  # Factorizations                       : 0
% 0.12/0.35  # Equation resolutions                 : 0
% 0.12/0.35  # Propositional unsat checks           : 0
% 0.12/0.35  #    Propositional check models        : 0
% 0.12/0.35  #    Propositional check unsatisfiable : 0
% 0.12/0.35  #    Propositional clauses             : 0
% 0.12/0.35  #    Propositional clauses after purity: 0
% 0.12/0.35  #    Propositional unsat core size     : 0
% 0.12/0.35  #    Propositional preprocessing time  : 0.000
% 0.12/0.35  #    Propositional encoding time       : 0.000
% 0.12/0.35  #    Propositional solver time         : 0.000
% 0.12/0.35  #    Success case prop preproc time    : 0.000
% 0.12/0.35  #    Success case prop encoding time   : 0.000
% 0.12/0.35  #    Success case prop solver time     : 0.000
% 0.12/0.35  # Current number of processed clauses  : 8
% 0.12/0.35  #    Positive orientable unit clauses  : 5
% 0.12/0.35  #    Positive unorientable unit clauses: 0
% 0.12/0.35  #    Negative unit clauses             : 1
% 0.12/0.35  #    Non-unit-clauses                  : 2
% 0.12/0.35  # Current number of unprocessed clauses: 2
% 0.12/0.35  # ...number of literals in the above   : 2
% 0.12/0.35  # Current number of archived formulas  : 0
% 0.12/0.35  # Current number of archived clauses   : 7
% 0.12/0.35  # Clause-clause subsumption calls (NU) : 0
% 0.12/0.35  # Rec. Clause-clause subsumption calls : 0
% 0.12/0.35  # Non-unit clause-clause subsumptions  : 0
% 0.12/0.35  # Unit Clause-clause subsumption calls : 0
% 0.12/0.35  # Rewrite failures with RHS unbound    : 0
% 0.12/0.35  # BW rewrite match attempts            : 0
% 0.12/0.35  # BW rewrite match successes           : 0
% 0.12/0.35  # Condensation attempts                : 0
% 0.12/0.35  # Condensation successes               : 0
% 0.12/0.35  # Termbank termtop insertions          : 285
% 0.12/0.35  
% 0.12/0.35  # -------------------------------------------------
% 0.12/0.35  # User time                : 0.014 s
% 0.12/0.35  # System time              : 0.002 s
% 0.12/0.35  # Total time               : 0.015 s
% 0.12/0.35  # Maximum resident set size: 1560 pages
%------------------------------------------------------------------------------
