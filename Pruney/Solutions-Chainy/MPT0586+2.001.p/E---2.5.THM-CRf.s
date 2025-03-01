%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n004.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:52:00 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   10 (  16 expanded)
%              Number of clauses        :    5 (   5 expanded)
%              Number of leaves         :    2 (   4 expanded)
%              Depth                    :    4
%              Number of atoms          :   26 (  44 expanded)
%              Number of equality atoms :    0 (   0 expanded)
%              Maximal formula depth    :    8 (   4 average)
%              Maximal clause size      :    6 (   1 average)
%              Maximal term depth       :    2 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t190_relat_1,conjecture,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ~ ( ~ v3_relat_1(k7_relat_1(X2,X1))
          & v3_relat_1(X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t190_relat_1)).

fof(fc19_relat_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X1)
        & v3_relat_1(X1) )
     => ( v1_relat_1(k7_relat_1(X1,X2))
        & v3_relat_1(k7_relat_1(X1,X2)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc19_relat_1)).

fof(c_0_2,negated_conjecture,(
    ~ ! [X1,X2] :
        ( v1_relat_1(X2)
       => ~ ( ~ v3_relat_1(k7_relat_1(X2,X1))
            & v3_relat_1(X2) ) ) ),
    inference(assume_negation,[status(cth)],[t190_relat_1])).

fof(c_0_3,negated_conjecture,
    ( v1_relat_1(esk2_0)
    & ~ v3_relat_1(k7_relat_1(esk2_0,esk1_0))
    & v3_relat_1(esk2_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_2])])])])).

fof(c_0_4,plain,(
    ! [X3,X4] :
      ( ( v1_relat_1(k7_relat_1(X3,X4))
        | ~ v1_relat_1(X3)
        | ~ v3_relat_1(X3) )
      & ( v3_relat_1(k7_relat_1(X3,X4))
        | ~ v1_relat_1(X3)
        | ~ v3_relat_1(X3) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[fc19_relat_1])])])).

cnf(c_0_5,negated_conjecture,
    ( ~ v3_relat_1(k7_relat_1(esk2_0,esk1_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_3])).

cnf(c_0_6,plain,
    ( v3_relat_1(k7_relat_1(X1,X2))
    | ~ v1_relat_1(X1)
    | ~ v3_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_4])).

cnf(c_0_7,negated_conjecture,
    ( v3_relat_1(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_3])).

cnf(c_0_8,negated_conjecture,
    ( v1_relat_1(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_3])).

cnf(c_0_9,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_5,c_0_6]),c_0_7]),c_0_8])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n004.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 19:36:08 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.13/0.37  # AutoSched0-Mode selected heuristic G_E___103_C18_F1_PI_AE_Q4_CS_SP_S0Y
% 0.13/0.37  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.13/0.37  #
% 0.13/0.37  # Preprocessing time       : 0.026 s
% 0.13/0.37  
% 0.13/0.37  # Proof found!
% 0.13/0.37  # SZS status Theorem
% 0.13/0.37  # SZS output start CNFRefutation
% 0.13/0.37  fof(t190_relat_1, conjecture, ![X1, X2]:(v1_relat_1(X2)=>~((~(v3_relat_1(k7_relat_1(X2,X1)))&v3_relat_1(X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t190_relat_1)).
% 0.13/0.37  fof(fc19_relat_1, axiom, ![X1, X2]:((v1_relat_1(X1)&v3_relat_1(X1))=>(v1_relat_1(k7_relat_1(X1,X2))&v3_relat_1(k7_relat_1(X1,X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc19_relat_1)).
% 0.13/0.37  fof(c_0_2, negated_conjecture, ~(![X1, X2]:(v1_relat_1(X2)=>~((~(v3_relat_1(k7_relat_1(X2,X1)))&v3_relat_1(X2))))), inference(assume_negation,[status(cth)],[t190_relat_1])).
% 0.13/0.37  fof(c_0_3, negated_conjecture, (v1_relat_1(esk2_0)&(~v3_relat_1(k7_relat_1(esk2_0,esk1_0))&v3_relat_1(esk2_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_2])])])])).
% 0.13/0.37  fof(c_0_4, plain, ![X3, X4]:((v1_relat_1(k7_relat_1(X3,X4))|(~v1_relat_1(X3)|~v3_relat_1(X3)))&(v3_relat_1(k7_relat_1(X3,X4))|(~v1_relat_1(X3)|~v3_relat_1(X3)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[fc19_relat_1])])])).
% 0.13/0.37  cnf(c_0_5, negated_conjecture, (~v3_relat_1(k7_relat_1(esk2_0,esk1_0))), inference(split_conjunct,[status(thm)],[c_0_3])).
% 0.13/0.37  cnf(c_0_6, plain, (v3_relat_1(k7_relat_1(X1,X2))|~v1_relat_1(X1)|~v3_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_4])).
% 0.13/0.37  cnf(c_0_7, negated_conjecture, (v3_relat_1(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_3])).
% 0.13/0.37  cnf(c_0_8, negated_conjecture, (v1_relat_1(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_3])).
% 0.13/0.37  cnf(c_0_9, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_5, c_0_6]), c_0_7]), c_0_8])]), ['proof']).
% 0.13/0.37  # SZS output end CNFRefutation
% 0.13/0.37  # Proof object total steps             : 10
% 0.13/0.37  # Proof object clause steps            : 5
% 0.13/0.37  # Proof object formula steps           : 5
% 0.13/0.37  # Proof object conjectures             : 7
% 0.13/0.37  # Proof object clause conjectures      : 4
% 0.13/0.37  # Proof object formula conjectures     : 3
% 0.13/0.37  # Proof object initial clauses used    : 4
% 0.13/0.37  # Proof object initial formulas used   : 2
% 0.13/0.37  # Proof object generating inferences   : 1
% 0.13/0.37  # Proof object simplifying inferences  : 3
% 0.13/0.37  # Training examples: 0 positive, 0 negative
% 0.13/0.37  # Parsed axioms                        : 2
% 0.13/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.37  # Initial clauses                      : 5
% 0.13/0.37  # Removed in clause preprocessing      : 0
% 0.13/0.37  # Initial clauses in saturation        : 5
% 0.13/0.37  # Processed clauses                    : 5
% 0.13/0.37  # ...of these trivial                  : 0
% 0.13/0.37  # ...subsumed                          : 0
% 0.13/0.37  # ...remaining for further processing  : 5
% 0.13/0.37  # Other redundant clauses eliminated   : 0
% 0.13/0.37  # Clauses deleted for lack of memory   : 0
% 0.13/0.37  # Backward-subsumed                    : 0
% 0.13/0.37  # Backward-rewritten                   : 0
% 0.13/0.37  # Generated clauses                    : 1
% 0.13/0.37  # ...of the previous two non-trivial   : 0
% 0.13/0.37  # Contextual simplify-reflections      : 0
% 0.13/0.37  # Paramodulations                      : 1
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
% 0.13/0.37  # Current number of processed clauses  : 5
% 0.13/0.37  #    Positive orientable unit clauses  : 2
% 0.13/0.37  #    Positive unorientable unit clauses: 0
% 0.13/0.37  #    Negative unit clauses             : 1
% 0.13/0.37  #    Non-unit-clauses                  : 2
% 0.13/0.37  # Current number of unprocessed clauses: 0
% 0.13/0.37  # ...number of literals in the above   : 0
% 0.13/0.37  # Current number of archived formulas  : 0
% 0.13/0.37  # Current number of archived clauses   : 0
% 0.13/0.37  # Clause-clause subsumption calls (NU) : 0
% 0.13/0.37  # Rec. Clause-clause subsumption calls : 0
% 0.13/0.37  # Non-unit clause-clause subsumptions  : 0
% 0.13/0.37  # Unit Clause-clause subsumption calls : 0
% 0.13/0.37  # Rewrite failures with RHS unbound    : 0
% 0.13/0.37  # BW rewrite match attempts            : 0
% 0.13/0.37  # BW rewrite match successes           : 0
% 0.13/0.37  # Condensation attempts                : 0
% 0.13/0.37  # Condensation successes               : 0
% 0.13/0.37  # Termbank termtop insertions          : 275
% 0.13/0.37  
% 0.13/0.37  # -------------------------------------------------
% 0.13/0.37  # User time                : 0.024 s
% 0.13/0.37  # System time              : 0.005 s
% 0.13/0.37  # Total time               : 0.029 s
% 0.13/0.37  # Maximum resident set size: 1552 pages
%------------------------------------------------------------------------------
