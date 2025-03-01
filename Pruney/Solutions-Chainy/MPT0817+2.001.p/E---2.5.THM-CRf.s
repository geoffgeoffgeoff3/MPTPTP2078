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
% DateTime   : Thu Dec  3 10:57:06 EST 2020

% Result     : Theorem 0.20s
% Output     : CNFRefutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   23 (  33 expanded)
%              Number of clauses        :   12 (  13 expanded)
%              Number of leaves         :    5 (   8 expanded)
%              Depth                    :    7
%              Number of atoms          :   58 (  86 expanded)
%              Number of equality atoms :    0 (   0 expanded)
%              Maximal formula depth    :    8 (   4 average)
%              Maximal clause size      :    6 (   2 average)
%              Maximal term depth       :    3 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t13_relset_1,conjecture,(
    ! [X1,X2,X3,X4] :
      ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
     => ( r1_tarski(k1_relat_1(X4),X2)
       => m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t13_relset_1)).

fof(t11_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( v1_relat_1(X3)
     => ( ( r1_tarski(k1_relat_1(X3),X1)
          & r1_tarski(k2_relat_1(X3),X2) )
       => m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t11_relset_1)).

fof(d19_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( v5_relat_1(X2,X1)
      <=> r1_tarski(k2_relat_1(X2),X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d19_relat_1)).

fof(cc1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => v1_relat_1(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc1_relset_1)).

fof(cc2_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ( v4_relat_1(X3,X1)
        & v5_relat_1(X3,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc2_relset_1)).

fof(c_0_5,negated_conjecture,(
    ~ ! [X1,X2,X3,X4] :
        ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
       => ( r1_tarski(k1_relat_1(X4),X2)
         => m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ) ) ),
    inference(assume_negation,[status(cth)],[t13_relset_1])).

fof(c_0_6,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk3_0)))
    & r1_tarski(k1_relat_1(esk4_0),esk2_0)
    & ~ m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0))) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_5])])])).

fof(c_0_7,plain,(
    ! [X13,X14,X15] :
      ( ~ v1_relat_1(X15)
      | ~ r1_tarski(k1_relat_1(X15),X13)
      | ~ r1_tarski(k2_relat_1(X15),X14)
      | m1_subset_1(X15,k1_zfmisc_1(k2_zfmisc_1(X13,X14))) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t11_relset_1])])).

cnf(c_0_8,negated_conjecture,
    ( ~ m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_9,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(k1_relat_1(X1),X2)
    | ~ r1_tarski(k2_relat_1(X1),X3) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_10,negated_conjecture,
    ( r1_tarski(k1_relat_1(esk4_0),esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

fof(c_0_11,plain,(
    ! [X5,X6] :
      ( ( ~ v5_relat_1(X6,X5)
        | r1_tarski(k2_relat_1(X6),X5)
        | ~ v1_relat_1(X6) )
      & ( ~ r1_tarski(k2_relat_1(X6),X5)
        | v5_relat_1(X6,X5)
        | ~ v1_relat_1(X6) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d19_relat_1])])])).

fof(c_0_12,plain,(
    ! [X7,X8,X9] :
      ( ~ m1_subset_1(X9,k1_zfmisc_1(k2_zfmisc_1(X7,X8)))
      | v1_relat_1(X9) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).

cnf(c_0_13,negated_conjecture,
    ( ~ r1_tarski(k2_relat_1(esk4_0),esk3_0)
    | ~ v1_relat_1(esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_8,c_0_9]),c_0_10])])).

cnf(c_0_14,plain,
    ( r1_tarski(k2_relat_1(X1),X2)
    | ~ v5_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_15,plain,
    ( v1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_16,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk3_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

fof(c_0_17,plain,(
    ! [X10,X11,X12] :
      ( ( v4_relat_1(X12,X10)
        | ~ m1_subset_1(X12,k1_zfmisc_1(k2_zfmisc_1(X10,X11))) )
      & ( v5_relat_1(X12,X11)
        | ~ m1_subset_1(X12,k1_zfmisc_1(k2_zfmisc_1(X10,X11))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).

cnf(c_0_18,negated_conjecture,
    ( ~ v5_relat_1(esk4_0,esk3_0)
    | ~ v1_relat_1(esk4_0) ),
    inference(spm,[status(thm)],[c_0_13,c_0_14])).

cnf(c_0_19,negated_conjecture,
    ( v1_relat_1(esk4_0) ),
    inference(spm,[status(thm)],[c_0_15,c_0_16])).

cnf(c_0_20,plain,
    ( v5_relat_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_21,negated_conjecture,
    ( ~ v5_relat_1(esk4_0,esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_18,c_0_19])])).

cnf(c_0_22,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_20,c_0_16]),c_0_21]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.08/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.08/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.35  % Computer   : n010.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 10:42:14 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.20/0.40  # AutoSched0-Mode selected heuristic G_E___107_C48_F1_PI_AE_Q4_CS_SP_PS_S0Y
% 0.20/0.40  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.20/0.40  #
% 0.20/0.40  # Preprocessing time       : 0.048 s
% 0.20/0.40  # Presaturation interreduction done
% 0.20/0.40  
% 0.20/0.40  # Proof found!
% 0.20/0.40  # SZS status Theorem
% 0.20/0.40  # SZS output start CNFRefutation
% 0.20/0.40  fof(t13_relset_1, conjecture, ![X1, X2, X3, X4]:(m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))=>(r1_tarski(k1_relat_1(X4),X2)=>m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X3))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t13_relset_1)).
% 0.20/0.40  fof(t11_relset_1, axiom, ![X1, X2, X3]:(v1_relat_1(X3)=>((r1_tarski(k1_relat_1(X3),X1)&r1_tarski(k2_relat_1(X3),X2))=>m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t11_relset_1)).
% 0.20/0.40  fof(d19_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(v5_relat_1(X2,X1)<=>r1_tarski(k2_relat_1(X2),X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d19_relat_1)).
% 0.20/0.40  fof(cc1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>v1_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc1_relset_1)).
% 0.20/0.40  fof(cc2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(v4_relat_1(X3,X1)&v5_relat_1(X3,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc2_relset_1)).
% 0.20/0.40  fof(c_0_5, negated_conjecture, ~(![X1, X2, X3, X4]:(m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))=>(r1_tarski(k1_relat_1(X4),X2)=>m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))))), inference(assume_negation,[status(cth)],[t13_relset_1])).
% 0.20/0.40  fof(c_0_6, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk3_0)))&(r1_tarski(k1_relat_1(esk4_0),esk2_0)&~m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_5])])])).
% 0.20/0.40  fof(c_0_7, plain, ![X13, X14, X15]:(~v1_relat_1(X15)|(~r1_tarski(k1_relat_1(X15),X13)|~r1_tarski(k2_relat_1(X15),X14)|m1_subset_1(X15,k1_zfmisc_1(k2_zfmisc_1(X13,X14))))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t11_relset_1])])).
% 0.20/0.40  cnf(c_0_8, negated_conjecture, (~m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0)))), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.20/0.40  cnf(c_0_9, plain, (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~v1_relat_1(X1)|~r1_tarski(k1_relat_1(X1),X2)|~r1_tarski(k2_relat_1(X1),X3)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.20/0.40  cnf(c_0_10, negated_conjecture, (r1_tarski(k1_relat_1(esk4_0),esk2_0)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.20/0.40  fof(c_0_11, plain, ![X5, X6]:((~v5_relat_1(X6,X5)|r1_tarski(k2_relat_1(X6),X5)|~v1_relat_1(X6))&(~r1_tarski(k2_relat_1(X6),X5)|v5_relat_1(X6,X5)|~v1_relat_1(X6))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d19_relat_1])])])).
% 0.20/0.40  fof(c_0_12, plain, ![X7, X8, X9]:(~m1_subset_1(X9,k1_zfmisc_1(k2_zfmisc_1(X7,X8)))|v1_relat_1(X9)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).
% 0.20/0.40  cnf(c_0_13, negated_conjecture, (~r1_tarski(k2_relat_1(esk4_0),esk3_0)|~v1_relat_1(esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_8, c_0_9]), c_0_10])])).
% 0.20/0.40  cnf(c_0_14, plain, (r1_tarski(k2_relat_1(X1),X2)|~v5_relat_1(X1,X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.20/0.40  cnf(c_0_15, plain, (v1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.20/0.40  cnf(c_0_16, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk3_0)))), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.20/0.40  fof(c_0_17, plain, ![X10, X11, X12]:((v4_relat_1(X12,X10)|~m1_subset_1(X12,k1_zfmisc_1(k2_zfmisc_1(X10,X11))))&(v5_relat_1(X12,X11)|~m1_subset_1(X12,k1_zfmisc_1(k2_zfmisc_1(X10,X11))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).
% 0.20/0.40  cnf(c_0_18, negated_conjecture, (~v5_relat_1(esk4_0,esk3_0)|~v1_relat_1(esk4_0)), inference(spm,[status(thm)],[c_0_13, c_0_14])).
% 0.20/0.40  cnf(c_0_19, negated_conjecture, (v1_relat_1(esk4_0)), inference(spm,[status(thm)],[c_0_15, c_0_16])).
% 0.20/0.40  cnf(c_0_20, plain, (v5_relat_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.20/0.40  cnf(c_0_21, negated_conjecture, (~v5_relat_1(esk4_0,esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_18, c_0_19])])).
% 0.20/0.40  cnf(c_0_22, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_20, c_0_16]), c_0_21]), ['proof']).
% 0.20/0.40  # SZS output end CNFRefutation
% 0.20/0.40  # Proof object total steps             : 23
% 0.20/0.40  # Proof object clause steps            : 12
% 0.20/0.40  # Proof object formula steps           : 11
% 0.20/0.40  # Proof object conjectures             : 11
% 0.20/0.40  # Proof object clause conjectures      : 8
% 0.20/0.40  # Proof object formula conjectures     : 3
% 0.20/0.40  # Proof object initial clauses used    : 7
% 0.20/0.40  # Proof object initial formulas used   : 5
% 0.20/0.40  # Proof object generating inferences   : 4
% 0.20/0.40  # Proof object simplifying inferences  : 5
% 0.20/0.40  # Training examples: 0 positive, 0 negative
% 0.20/0.40  # Parsed axioms                        : 5
% 0.20/0.40  # Removed by relevancy pruning/SinE    : 0
% 0.20/0.40  # Initial clauses                      : 9
% 0.20/0.40  # Removed in clause preprocessing      : 0
% 0.20/0.40  # Initial clauses in saturation        : 9
% 0.20/0.40  # Processed clauses                    : 23
% 0.20/0.40  # ...of these trivial                  : 0
% 0.20/0.40  # ...subsumed                          : 0
% 0.20/0.40  # ...remaining for further processing  : 22
% 0.20/0.40  # Other redundant clauses eliminated   : 0
% 0.20/0.40  # Clauses deleted for lack of memory   : 0
% 0.20/0.40  # Backward-subsumed                    : 0
% 0.20/0.40  # Backward-rewritten                   : 2
% 0.20/0.40  # Generated clauses                    : 9
% 0.20/0.40  # ...of the previous two non-trivial   : 9
% 0.20/0.40  # Contextual simplify-reflections      : 0
% 0.20/0.40  # Paramodulations                      : 9
% 0.20/0.40  # Factorizations                       : 0
% 0.20/0.40  # Equation resolutions                 : 0
% 0.20/0.40  # Propositional unsat checks           : 0
% 0.20/0.40  #    Propositional check models        : 0
% 0.20/0.40  #    Propositional check unsatisfiable : 0
% 0.20/0.40  #    Propositional clauses             : 0
% 0.20/0.40  #    Propositional clauses after purity: 0
% 0.20/0.40  #    Propositional unsat core size     : 0
% 0.20/0.40  #    Propositional preprocessing time  : 0.000
% 0.20/0.40  #    Propositional encoding time       : 0.000
% 0.20/0.40  #    Propositional solver time         : 0.000
% 0.20/0.40  #    Success case prop preproc time    : 0.000
% 0.20/0.40  #    Success case prop encoding time   : 0.000
% 0.20/0.40  #    Success case prop solver time     : 0.000
% 0.20/0.40  # Current number of processed clauses  : 11
% 0.20/0.40  #    Positive orientable unit clauses  : 3
% 0.20/0.40  #    Positive unorientable unit clauses: 0
% 0.20/0.40  #    Negative unit clauses             : 2
% 0.20/0.40  #    Non-unit-clauses                  : 6
% 0.20/0.40  # Current number of unprocessed clauses: 4
% 0.20/0.40  # ...number of literals in the above   : 10
% 0.20/0.40  # Current number of archived formulas  : 0
% 0.20/0.40  # Current number of archived clauses   : 11
% 0.20/0.40  # Clause-clause subsumption calls (NU) : 10
% 0.20/0.40  # Rec. Clause-clause subsumption calls : 6
% 0.20/0.40  # Non-unit clause-clause subsumptions  : 0
% 0.20/0.40  # Unit Clause-clause subsumption calls : 3
% 0.20/0.40  # Rewrite failures with RHS unbound    : 0
% 0.20/0.40  # BW rewrite match attempts            : 1
% 0.20/0.40  # BW rewrite match successes           : 1
% 0.20/0.40  # Condensation attempts                : 0
% 0.20/0.40  # Condensation successes               : 0
% 0.20/0.40  # Termbank termtop insertions          : 805
% 0.20/0.40  
% 0.20/0.40  # -------------------------------------------------
% 0.20/0.40  # User time                : 0.048 s
% 0.20/0.40  # System time              : 0.005 s
% 0.20/0.40  # Total time               : 0.053 s
% 0.20/0.40  # Maximum resident set size: 1568 pages
%------------------------------------------------------------------------------
