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
% DateTime   : Thu Dec  3 10:52:46 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   20 (  37 expanded)
%              Number of clauses        :   11 (  13 expanded)
%              Number of leaves         :    4 (   9 expanded)
%              Depth                    :    5
%              Number of atoms          :   60 ( 122 expanded)
%              Number of equality atoms :    8 (   8 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal clause size      :    9 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t217_relat_1,conjecture,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
     => ! [X3] :
          ( ( v1_relat_1(X3)
            & v4_relat_1(X3,X1) )
         => v4_relat_1(X3,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t217_relat_1)).

fof(t102_relat_1,axiom,(
    ! [X1,X2,X3] :
      ( v1_relat_1(X3)
     => ( r1_tarski(X1,X2)
       => k7_relat_1(k7_relat_1(X3,X1),X2) = k7_relat_1(X3,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t102_relat_1)).

fof(t209_relat_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v4_relat_1(X2,X1) )
     => X2 = k7_relat_1(X2,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t209_relat_1)).

fof(fc23_relat_1,axiom,(
    ! [X1,X2,X3] :
      ( ( v1_relat_1(X3)
        & v4_relat_1(X3,X2) )
     => ( v1_relat_1(k7_relat_1(X3,X1))
        & v4_relat_1(k7_relat_1(X3,X1),X1)
        & v4_relat_1(k7_relat_1(X3,X1),X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc23_relat_1)).

fof(c_0_4,negated_conjecture,(
    ~ ! [X1,X2] :
        ( r1_tarski(X1,X2)
       => ! [X3] :
            ( ( v1_relat_1(X3)
              & v4_relat_1(X3,X1) )
           => v4_relat_1(X3,X2) ) ) ),
    inference(assume_negation,[status(cth)],[t217_relat_1])).

fof(c_0_5,plain,(
    ! [X7,X8,X9] :
      ( ~ v1_relat_1(X9)
      | ~ r1_tarski(X7,X8)
      | k7_relat_1(k7_relat_1(X9,X7),X8) = k7_relat_1(X9,X7) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t102_relat_1])])).

fof(c_0_6,plain,(
    ! [X10,X11] :
      ( ~ v1_relat_1(X11)
      | ~ v4_relat_1(X11,X10)
      | X11 = k7_relat_1(X11,X10) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t209_relat_1])])).

fof(c_0_7,plain,(
    ! [X4,X5,X6] :
      ( ( v1_relat_1(k7_relat_1(X6,X4))
        | ~ v1_relat_1(X6)
        | ~ v4_relat_1(X6,X5) )
      & ( v4_relat_1(k7_relat_1(X6,X4),X4)
        | ~ v1_relat_1(X6)
        | ~ v4_relat_1(X6,X5) )
      & ( v4_relat_1(k7_relat_1(X6,X4),X5)
        | ~ v1_relat_1(X6)
        | ~ v4_relat_1(X6,X5) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[fc23_relat_1])])])).

fof(c_0_8,negated_conjecture,
    ( r1_tarski(esk1_0,esk2_0)
    & v1_relat_1(esk3_0)
    & v4_relat_1(esk3_0,esk1_0)
    & ~ v4_relat_1(esk3_0,esk2_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_4])])])).

cnf(c_0_9,plain,
    ( k7_relat_1(k7_relat_1(X1,X2),X3) = k7_relat_1(X1,X2)
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_10,plain,
    ( X1 = k7_relat_1(X1,X2)
    | ~ v1_relat_1(X1)
    | ~ v4_relat_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_11,plain,
    ( v4_relat_1(k7_relat_1(X1,X2),X2)
    | ~ v1_relat_1(X1)
    | ~ v4_relat_1(X1,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_12,negated_conjecture,
    ( v4_relat_1(esk3_0,esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_13,negated_conjecture,
    ( v1_relat_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_14,plain,
    ( k7_relat_1(X1,X2) = X1
    | ~ r1_tarski(X3,X2)
    | ~ v4_relat_1(X1,X3)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_9,c_0_10])).

cnf(c_0_15,negated_conjecture,
    ( r1_tarski(esk1_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_16,negated_conjecture,
    ( v4_relat_1(k7_relat_1(esk3_0,X1),X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_11,c_0_12]),c_0_13])])).

cnf(c_0_17,negated_conjecture,
    ( k7_relat_1(X1,esk2_0) = X1
    | ~ v4_relat_1(X1,esk1_0)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_14,c_0_15])).

cnf(c_0_18,negated_conjecture,
    ( ~ v4_relat_1(esk3_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_19,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_16,c_0_17]),c_0_12]),c_0_13])]),c_0_18]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n022.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 15:44:10 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.13/0.37  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.13/0.37  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.13/0.37  #
% 0.13/0.37  # Preprocessing time       : 0.026 s
% 0.13/0.37  # Presaturation interreduction done
% 0.13/0.37  
% 0.13/0.37  # Proof found!
% 0.13/0.37  # SZS status Theorem
% 0.13/0.37  # SZS output start CNFRefutation
% 0.13/0.37  fof(t217_relat_1, conjecture, ![X1, X2]:(r1_tarski(X1,X2)=>![X3]:((v1_relat_1(X3)&v4_relat_1(X3,X1))=>v4_relat_1(X3,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t217_relat_1)).
% 0.13/0.37  fof(t102_relat_1, axiom, ![X1, X2, X3]:(v1_relat_1(X3)=>(r1_tarski(X1,X2)=>k7_relat_1(k7_relat_1(X3,X1),X2)=k7_relat_1(X3,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t102_relat_1)).
% 0.13/0.37  fof(t209_relat_1, axiom, ![X1, X2]:((v1_relat_1(X2)&v4_relat_1(X2,X1))=>X2=k7_relat_1(X2,X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t209_relat_1)).
% 0.13/0.37  fof(fc23_relat_1, axiom, ![X1, X2, X3]:((v1_relat_1(X3)&v4_relat_1(X3,X2))=>((v1_relat_1(k7_relat_1(X3,X1))&v4_relat_1(k7_relat_1(X3,X1),X1))&v4_relat_1(k7_relat_1(X3,X1),X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc23_relat_1)).
% 0.13/0.37  fof(c_0_4, negated_conjecture, ~(![X1, X2]:(r1_tarski(X1,X2)=>![X3]:((v1_relat_1(X3)&v4_relat_1(X3,X1))=>v4_relat_1(X3,X2)))), inference(assume_negation,[status(cth)],[t217_relat_1])).
% 0.13/0.37  fof(c_0_5, plain, ![X7, X8, X9]:(~v1_relat_1(X9)|(~r1_tarski(X7,X8)|k7_relat_1(k7_relat_1(X9,X7),X8)=k7_relat_1(X9,X7))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t102_relat_1])])).
% 0.13/0.37  fof(c_0_6, plain, ![X10, X11]:(~v1_relat_1(X11)|~v4_relat_1(X11,X10)|X11=k7_relat_1(X11,X10)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t209_relat_1])])).
% 0.13/0.37  fof(c_0_7, plain, ![X4, X5, X6]:(((v1_relat_1(k7_relat_1(X6,X4))|(~v1_relat_1(X6)|~v4_relat_1(X6,X5)))&(v4_relat_1(k7_relat_1(X6,X4),X4)|(~v1_relat_1(X6)|~v4_relat_1(X6,X5))))&(v4_relat_1(k7_relat_1(X6,X4),X5)|(~v1_relat_1(X6)|~v4_relat_1(X6,X5)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[fc23_relat_1])])])).
% 0.13/0.37  fof(c_0_8, negated_conjecture, (r1_tarski(esk1_0,esk2_0)&((v1_relat_1(esk3_0)&v4_relat_1(esk3_0,esk1_0))&~v4_relat_1(esk3_0,esk2_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_4])])])).
% 0.13/0.37  cnf(c_0_9, plain, (k7_relat_1(k7_relat_1(X1,X2),X3)=k7_relat_1(X1,X2)|~v1_relat_1(X1)|~r1_tarski(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_5])).
% 0.13/0.37  cnf(c_0_10, plain, (X1=k7_relat_1(X1,X2)|~v1_relat_1(X1)|~v4_relat_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.13/0.37  cnf(c_0_11, plain, (v4_relat_1(k7_relat_1(X1,X2),X2)|~v1_relat_1(X1)|~v4_relat_1(X1,X3)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.13/0.37  cnf(c_0_12, negated_conjecture, (v4_relat_1(esk3_0,esk1_0)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.13/0.37  cnf(c_0_13, negated_conjecture, (v1_relat_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.13/0.37  cnf(c_0_14, plain, (k7_relat_1(X1,X2)=X1|~r1_tarski(X3,X2)|~v4_relat_1(X1,X3)|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_9, c_0_10])).
% 0.13/0.37  cnf(c_0_15, negated_conjecture, (r1_tarski(esk1_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.13/0.37  cnf(c_0_16, negated_conjecture, (v4_relat_1(k7_relat_1(esk3_0,X1),X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_11, c_0_12]), c_0_13])])).
% 0.13/0.37  cnf(c_0_17, negated_conjecture, (k7_relat_1(X1,esk2_0)=X1|~v4_relat_1(X1,esk1_0)|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_14, c_0_15])).
% 0.13/0.37  cnf(c_0_18, negated_conjecture, (~v4_relat_1(esk3_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.13/0.37  cnf(c_0_19, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_16, c_0_17]), c_0_12]), c_0_13])]), c_0_18]), ['proof']).
% 0.13/0.37  # SZS output end CNFRefutation
% 0.13/0.37  # Proof object total steps             : 20
% 0.13/0.37  # Proof object clause steps            : 11
% 0.13/0.37  # Proof object formula steps           : 9
% 0.13/0.37  # Proof object conjectures             : 10
% 0.13/0.37  # Proof object clause conjectures      : 7
% 0.13/0.37  # Proof object formula conjectures     : 3
% 0.13/0.37  # Proof object initial clauses used    : 7
% 0.13/0.37  # Proof object initial formulas used   : 4
% 0.13/0.37  # Proof object generating inferences   : 4
% 0.13/0.37  # Proof object simplifying inferences  : 6
% 0.13/0.37  # Training examples: 0 positive, 0 negative
% 0.13/0.37  # Parsed axioms                        : 4
% 0.13/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.37  # Initial clauses                      : 9
% 0.13/0.37  # Removed in clause preprocessing      : 0
% 0.13/0.37  # Initial clauses in saturation        : 9
% 0.13/0.37  # Processed clauses                    : 22
% 0.13/0.37  # ...of these trivial                  : 0
% 0.13/0.37  # ...subsumed                          : 0
% 0.13/0.37  # ...remaining for further processing  : 22
% 0.13/0.37  # Other redundant clauses eliminated   : 0
% 0.13/0.37  # Clauses deleted for lack of memory   : 0
% 0.13/0.37  # Backward-subsumed                    : 0
% 0.13/0.37  # Backward-rewritten                   : 0
% 0.13/0.37  # Generated clauses                    : 17
% 0.13/0.37  # ...of the previous two non-trivial   : 9
% 0.13/0.37  # Contextual simplify-reflections      : 0
% 0.13/0.37  # Paramodulations                      : 17
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
% 0.13/0.37  # Current number of processed clauses  : 13
% 0.13/0.37  #    Positive orientable unit clauses  : 5
% 0.13/0.37  #    Positive unorientable unit clauses: 0
% 0.13/0.37  #    Negative unit clauses             : 1
% 0.13/0.37  #    Non-unit-clauses                  : 7
% 0.13/0.37  # Current number of unprocessed clauses: 5
% 0.13/0.37  # ...number of literals in the above   : 15
% 0.13/0.37  # Current number of archived formulas  : 0
% 0.13/0.37  # Current number of archived clauses   : 9
% 0.13/0.37  # Clause-clause subsumption calls (NU) : 13
% 0.13/0.37  # Rec. Clause-clause subsumption calls : 13
% 0.13/0.37  # Non-unit clause-clause subsumptions  : 0
% 0.13/0.37  # Unit Clause-clause subsumption calls : 0
% 0.13/0.37  # Rewrite failures with RHS unbound    : 0
% 0.13/0.37  # BW rewrite match attempts            : 0
% 0.13/0.37  # BW rewrite match successes           : 0
% 0.13/0.37  # Condensation attempts                : 0
% 0.13/0.37  # Condensation successes               : 0
% 0.13/0.37  # Termbank termtop insertions          : 798
% 0.13/0.37  
% 0.13/0.37  # -------------------------------------------------
% 0.13/0.37  # User time                : 0.026 s
% 0.13/0.37  # System time              : 0.004 s
% 0.13/0.37  # Total time               : 0.030 s
% 0.13/0.37  # Maximum resident set size: 1564 pages
%------------------------------------------------------------------------------
