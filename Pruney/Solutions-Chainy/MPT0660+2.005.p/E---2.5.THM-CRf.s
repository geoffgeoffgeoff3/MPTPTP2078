%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n010.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:54:10 EST 2020

% Result     : Theorem 0.12s
% Output     : CNFRefutation 0.12s
% Verified   : 
% Statistics : Number of formulae       :   24 (  37 expanded)
%              Number of clauses        :   11 (  14 expanded)
%              Number of leaves         :    6 (  11 expanded)
%              Depth                    :    5
%              Number of atoms          :   54 (  77 expanded)
%              Number of equality atoms :   24 (  38 expanded)
%              Maximal formula depth    :   11 (   3 average)
%              Maximal clause size      :    8 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t80_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => k5_relat_1(X1,k6_relat_1(k2_relat_1(X1))) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t80_relat_1)).

fof(t71_relat_1,axiom,(
    ! [X1] :
      ( k1_relat_1(k6_relat_1(X1)) = X1
      & k2_relat_1(k6_relat_1(X1)) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_relat_1)).

fof(fc3_funct_1,axiom,(
    ! [X1] :
      ( v1_relat_1(k6_relat_1(X1))
      & v1_funct_1(k6_relat_1(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc3_funct_1)).

fof(t67_funct_1,conjecture,(
    ! [X1] : k2_funct_1(k6_relat_1(X1)) = k6_relat_1(X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t67_funct_1)).

fof(t63_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ! [X2] :
          ( ( v1_relat_1(X2)
            & v1_funct_1(X2) )
         => ( ( v2_funct_1(X1)
              & k2_relat_1(X1) = k1_relat_1(X2)
              & k5_relat_1(X1,X2) = k6_relat_1(k1_relat_1(X1)) )
           => X2 = k2_funct_1(X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t63_funct_1)).

fof(fc4_funct_1,axiom,(
    ! [X1] :
      ( v1_relat_1(k6_relat_1(X1))
      & v2_funct_1(k6_relat_1(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc4_funct_1)).

fof(c_0_6,plain,(
    ! [X4] :
      ( ~ v1_relat_1(X4)
      | k5_relat_1(X4,k6_relat_1(k2_relat_1(X4))) = X4 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t80_relat_1])])).

fof(c_0_7,plain,(
    ! [X3] :
      ( k1_relat_1(k6_relat_1(X3)) = X3
      & k2_relat_1(k6_relat_1(X3)) = X3 ) ),
    inference(variable_rename,[status(thm)],[t71_relat_1])).

fof(c_0_8,plain,(
    ! [X5] :
      ( v1_relat_1(k6_relat_1(X5))
      & v1_funct_1(k6_relat_1(X5)) ) ),
    inference(variable_rename,[status(thm)],[fc3_funct_1])).

fof(c_0_9,negated_conjecture,(
    ~ ! [X1] : k2_funct_1(k6_relat_1(X1)) = k6_relat_1(X1) ),
    inference(assume_negation,[status(cth)],[t67_funct_1])).

fof(c_0_10,plain,(
    ! [X7,X8] :
      ( ~ v1_relat_1(X7)
      | ~ v1_funct_1(X7)
      | ~ v1_relat_1(X8)
      | ~ v1_funct_1(X8)
      | ~ v2_funct_1(X7)
      | k2_relat_1(X7) != k1_relat_1(X8)
      | k5_relat_1(X7,X8) != k6_relat_1(k1_relat_1(X7))
      | X8 = k2_funct_1(X7) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t63_funct_1])])])).

cnf(c_0_11,plain,
    ( k5_relat_1(X1,k6_relat_1(k2_relat_1(X1))) = X1
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_12,plain,
    ( k2_relat_1(k6_relat_1(X1)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_13,plain,
    ( v1_relat_1(k6_relat_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

fof(c_0_14,plain,(
    ! [X6] :
      ( v1_relat_1(k6_relat_1(X6))
      & v2_funct_1(k6_relat_1(X6)) ) ),
    inference(variable_rename,[status(thm)],[fc4_funct_1])).

fof(c_0_15,negated_conjecture,(
    k2_funct_1(k6_relat_1(esk1_0)) != k6_relat_1(esk1_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_9])])])).

cnf(c_0_16,plain,
    ( X2 = k2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2)
    | ~ v2_funct_1(X1)
    | k2_relat_1(X1) != k1_relat_1(X2)
    | k5_relat_1(X1,X2) != k6_relat_1(k1_relat_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_17,plain,
    ( k5_relat_1(k6_relat_1(X1),k6_relat_1(X1)) = k6_relat_1(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_11,c_0_12]),c_0_13])])).

cnf(c_0_18,plain,
    ( k1_relat_1(k6_relat_1(X1)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_19,plain,
    ( v2_funct_1(k6_relat_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_20,plain,
    ( v1_funct_1(k6_relat_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_21,negated_conjecture,
    ( k2_funct_1(k6_relat_1(esk1_0)) != k6_relat_1(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_22,plain,
    ( k2_funct_1(k6_relat_1(X1)) = k6_relat_1(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_16,c_0_17]),c_0_18]),c_0_12]),c_0_18]),c_0_19]),c_0_20]),c_0_13])])).

cnf(c_0_23,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_21,c_0_22])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.33  % Computer   : n010.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 16:55:14 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.12/0.37  # AutoSched0-Mode selected heuristic G_E___208_C12_11_nc_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.12/0.37  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.12/0.37  #
% 0.12/0.37  # Preprocessing time       : 0.026 s
% 0.12/0.37  # Presaturation interreduction done
% 0.12/0.37  
% 0.12/0.37  # Proof found!
% 0.12/0.37  # SZS status Theorem
% 0.12/0.37  # SZS output start CNFRefutation
% 0.12/0.37  fof(t80_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>k5_relat_1(X1,k6_relat_1(k2_relat_1(X1)))=X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t80_relat_1)).
% 0.12/0.37  fof(t71_relat_1, axiom, ![X1]:(k1_relat_1(k6_relat_1(X1))=X1&k2_relat_1(k6_relat_1(X1))=X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t71_relat_1)).
% 0.12/0.37  fof(fc3_funct_1, axiom, ![X1]:(v1_relat_1(k6_relat_1(X1))&v1_funct_1(k6_relat_1(X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc3_funct_1)).
% 0.12/0.37  fof(t67_funct_1, conjecture, ![X1]:k2_funct_1(k6_relat_1(X1))=k6_relat_1(X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t67_funct_1)).
% 0.12/0.37  fof(t63_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>![X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(((v2_funct_1(X1)&k2_relat_1(X1)=k1_relat_1(X2))&k5_relat_1(X1,X2)=k6_relat_1(k1_relat_1(X1)))=>X2=k2_funct_1(X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t63_funct_1)).
% 0.12/0.37  fof(fc4_funct_1, axiom, ![X1]:(v1_relat_1(k6_relat_1(X1))&v2_funct_1(k6_relat_1(X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc4_funct_1)).
% 0.12/0.37  fof(c_0_6, plain, ![X4]:(~v1_relat_1(X4)|k5_relat_1(X4,k6_relat_1(k2_relat_1(X4)))=X4), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t80_relat_1])])).
% 0.12/0.37  fof(c_0_7, plain, ![X3]:(k1_relat_1(k6_relat_1(X3))=X3&k2_relat_1(k6_relat_1(X3))=X3), inference(variable_rename,[status(thm)],[t71_relat_1])).
% 0.12/0.37  fof(c_0_8, plain, ![X5]:(v1_relat_1(k6_relat_1(X5))&v1_funct_1(k6_relat_1(X5))), inference(variable_rename,[status(thm)],[fc3_funct_1])).
% 0.12/0.37  fof(c_0_9, negated_conjecture, ~(![X1]:k2_funct_1(k6_relat_1(X1))=k6_relat_1(X1)), inference(assume_negation,[status(cth)],[t67_funct_1])).
% 0.12/0.37  fof(c_0_10, plain, ![X7, X8]:(~v1_relat_1(X7)|~v1_funct_1(X7)|(~v1_relat_1(X8)|~v1_funct_1(X8)|(~v2_funct_1(X7)|k2_relat_1(X7)!=k1_relat_1(X8)|k5_relat_1(X7,X8)!=k6_relat_1(k1_relat_1(X7))|X8=k2_funct_1(X7)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t63_funct_1])])])).
% 0.12/0.37  cnf(c_0_11, plain, (k5_relat_1(X1,k6_relat_1(k2_relat_1(X1)))=X1|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.12/0.37  cnf(c_0_12, plain, (k2_relat_1(k6_relat_1(X1))=X1), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.12/0.37  cnf(c_0_13, plain, (v1_relat_1(k6_relat_1(X1))), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.12/0.37  fof(c_0_14, plain, ![X6]:(v1_relat_1(k6_relat_1(X6))&v2_funct_1(k6_relat_1(X6))), inference(variable_rename,[status(thm)],[fc4_funct_1])).
% 0.12/0.37  fof(c_0_15, negated_conjecture, k2_funct_1(k6_relat_1(esk1_0))!=k6_relat_1(esk1_0), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_9])])])).
% 0.12/0.37  cnf(c_0_16, plain, (X2=k2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)|~v1_relat_1(X2)|~v1_funct_1(X2)|~v2_funct_1(X1)|k2_relat_1(X1)!=k1_relat_1(X2)|k5_relat_1(X1,X2)!=k6_relat_1(k1_relat_1(X1))), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.12/0.37  cnf(c_0_17, plain, (k5_relat_1(k6_relat_1(X1),k6_relat_1(X1))=k6_relat_1(X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_11, c_0_12]), c_0_13])])).
% 0.12/0.37  cnf(c_0_18, plain, (k1_relat_1(k6_relat_1(X1))=X1), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.12/0.37  cnf(c_0_19, plain, (v2_funct_1(k6_relat_1(X1))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.12/0.37  cnf(c_0_20, plain, (v1_funct_1(k6_relat_1(X1))), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.12/0.37  cnf(c_0_21, negated_conjecture, (k2_funct_1(k6_relat_1(esk1_0))!=k6_relat_1(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.12/0.37  cnf(c_0_22, plain, (k2_funct_1(k6_relat_1(X1))=k6_relat_1(X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_16, c_0_17]), c_0_18]), c_0_12]), c_0_18]), c_0_19]), c_0_20]), c_0_13])])).
% 0.12/0.37  cnf(c_0_23, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_21, c_0_22])]), ['proof']).
% 0.12/0.37  # SZS output end CNFRefutation
% 0.12/0.37  # Proof object total steps             : 24
% 0.12/0.37  # Proof object clause steps            : 11
% 0.12/0.37  # Proof object formula steps           : 13
% 0.12/0.37  # Proof object conjectures             : 5
% 0.12/0.37  # Proof object clause conjectures      : 2
% 0.12/0.37  # Proof object formula conjectures     : 3
% 0.12/0.37  # Proof object initial clauses used    : 8
% 0.12/0.37  # Proof object initial formulas used   : 6
% 0.12/0.37  # Proof object generating inferences   : 2
% 0.12/0.37  # Proof object simplifying inferences  : 11
% 0.12/0.37  # Training examples: 0 positive, 0 negative
% 0.12/0.37  # Parsed axioms                        : 6
% 0.12/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.12/0.37  # Initial clauses                      : 9
% 0.12/0.37  # Removed in clause preprocessing      : 0
% 0.12/0.37  # Initial clauses in saturation        : 9
% 0.12/0.37  # Processed clauses                    : 19
% 0.12/0.37  # ...of these trivial                  : 1
% 0.12/0.37  # ...subsumed                          : 0
% 0.12/0.37  # ...remaining for further processing  : 18
% 0.12/0.37  # Other redundant clauses eliminated   : 1
% 0.12/0.37  # Clauses deleted for lack of memory   : 0
% 0.12/0.37  # Backward-subsumed                    : 0
% 0.12/0.37  # Backward-rewritten                   : 1
% 0.12/0.37  # Generated clauses                    : 5
% 0.12/0.37  # ...of the previous two non-trivial   : 4
% 0.12/0.37  # Contextual simplify-reflections      : 0
% 0.12/0.37  # Paramodulations                      : 4
% 0.12/0.37  # Factorizations                       : 0
% 0.12/0.37  # Equation resolutions                 : 1
% 0.12/0.37  # Propositional unsat checks           : 0
% 0.12/0.37  #    Propositional check models        : 0
% 0.12/0.37  #    Propositional check unsatisfiable : 0
% 0.12/0.37  #    Propositional clauses             : 0
% 0.12/0.37  #    Propositional clauses after purity: 0
% 0.12/0.37  #    Propositional unsat core size     : 0
% 0.12/0.37  #    Propositional preprocessing time  : 0.000
% 0.12/0.37  #    Propositional encoding time       : 0.000
% 0.12/0.37  #    Propositional solver time         : 0.000
% 0.12/0.37  #    Success case prop preproc time    : 0.000
% 0.12/0.37  #    Success case prop encoding time   : 0.000
% 0.12/0.37  #    Success case prop solver time     : 0.000
% 0.12/0.37  # Current number of processed clauses  : 9
% 0.12/0.37  #    Positive orientable unit clauses  : 7
% 0.12/0.37  #    Positive unorientable unit clauses: 0
% 0.12/0.37  #    Negative unit clauses             : 0
% 0.12/0.37  #    Non-unit-clauses                  : 2
% 0.12/0.37  # Current number of unprocessed clauses: 2
% 0.12/0.37  # ...number of literals in the above   : 9
% 0.12/0.37  # Current number of archived formulas  : 0
% 0.12/0.37  # Current number of archived clauses   : 9
% 0.12/0.37  # Clause-clause subsumption calls (NU) : 0
% 0.12/0.37  # Rec. Clause-clause subsumption calls : 0
% 0.12/0.37  # Non-unit clause-clause subsumptions  : 0
% 0.12/0.37  # Unit Clause-clause subsumption calls : 0
% 0.12/0.37  # Rewrite failures with RHS unbound    : 0
% 0.12/0.37  # BW rewrite match attempts            : 1
% 0.12/0.37  # BW rewrite match successes           : 1
% 0.12/0.37  # Condensation attempts                : 0
% 0.12/0.37  # Condensation successes               : 0
% 0.12/0.37  # Termbank termtop insertions          : 666
% 0.12/0.37  
% 0.12/0.37  # -------------------------------------------------
% 0.12/0.37  # User time                : 0.028 s
% 0.12/0.37  # System time              : 0.002 s
% 0.12/0.37  # Total time               : 0.030 s
% 0.12/0.37  # Maximum resident set size: 1568 pages
%------------------------------------------------------------------------------
