%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n020.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:47:31 EST 2020

% Result     : Theorem 0.12s
% Output     : CNFRefutation 0.12s
% Verified   : 
% Statistics : Number of formulae       :   18 (  34 expanded)
%              Number of clauses        :   11 (  13 expanded)
%              Number of leaves         :    3 (   8 expanded)
%              Depth                    :    7
%              Number of atoms          :   59 ( 112 expanded)
%              Number of equality atoms :   15 (  15 expanded)
%              Maximal formula depth    :   13 (   5 average)
%              Maximal clause size      :   12 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t24_setfam_1,conjecture,(
    ! [X1,X2] :
      ( r1_setfam_1(X2,k1_tarski(X1))
     => ! [X3] :
          ( r2_hidden(X3,X2)
         => r1_tarski(X3,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t24_setfam_1)).

fof(d1_tarski,axiom,(
    ! [X1,X2] :
      ( X2 = k1_tarski(X1)
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> X3 = X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_tarski)).

fof(d2_setfam_1,axiom,(
    ! [X1,X2] :
      ( r1_setfam_1(X1,X2)
    <=> ! [X3] :
          ~ ( r2_hidden(X3,X1)
            & ! [X4] :
                ~ ( r2_hidden(X4,X2)
                  & r1_tarski(X3,X4) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d2_setfam_1)).

fof(c_0_3,negated_conjecture,(
    ~ ! [X1,X2] :
        ( r1_setfam_1(X2,k1_tarski(X1))
       => ! [X3] :
            ( r2_hidden(X3,X2)
           => r1_tarski(X3,X1) ) ) ),
    inference(assume_negation,[status(cth)],[t24_setfam_1])).

fof(c_0_4,plain,(
    ! [X5,X6,X7,X8,X9,X10] :
      ( ( ~ r2_hidden(X7,X6)
        | X7 = X5
        | X6 != k1_tarski(X5) )
      & ( X8 != X5
        | r2_hidden(X8,X6)
        | X6 != k1_tarski(X5) )
      & ( ~ r2_hidden(esk1_2(X9,X10),X10)
        | esk1_2(X9,X10) != X9
        | X10 = k1_tarski(X9) )
      & ( r2_hidden(esk1_2(X9,X10),X10)
        | esk1_2(X9,X10) = X9
        | X10 = k1_tarski(X9) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_tarski])])])])])])).

fof(c_0_5,plain,(
    ! [X12,X13,X14,X16,X17,X19] :
      ( ( r2_hidden(esk2_3(X12,X13,X14),X13)
        | ~ r2_hidden(X14,X12)
        | ~ r1_setfam_1(X12,X13) )
      & ( r1_tarski(X14,esk2_3(X12,X13,X14))
        | ~ r2_hidden(X14,X12)
        | ~ r1_setfam_1(X12,X13) )
      & ( r2_hidden(esk3_2(X16,X17),X16)
        | r1_setfam_1(X16,X17) )
      & ( ~ r2_hidden(X19,X17)
        | ~ r1_tarski(esk3_2(X16,X17),X19)
        | r1_setfam_1(X16,X17) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d2_setfam_1])])])])])])).

fof(c_0_6,negated_conjecture,
    ( r1_setfam_1(esk5_0,k1_tarski(esk4_0))
    & r2_hidden(esk6_0,esk5_0)
    & ~ r1_tarski(esk6_0,esk4_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_3])])])).

cnf(c_0_7,plain,
    ( X1 = X3
    | ~ r2_hidden(X1,X2)
    | X2 != k1_tarski(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_4])).

cnf(c_0_8,plain,
    ( r2_hidden(esk2_3(X1,X2,X3),X2)
    | ~ r2_hidden(X3,X1)
    | ~ r1_setfam_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_9,negated_conjecture,
    ( r1_setfam_1(esk5_0,k1_tarski(esk4_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_10,plain,
    ( X1 = X2
    | ~ r2_hidden(X1,k1_tarski(X2)) ),
    inference(er,[status(thm)],[c_0_7])).

cnf(c_0_11,negated_conjecture,
    ( r2_hidden(esk2_3(esk5_0,k1_tarski(esk4_0),X1),k1_tarski(esk4_0))
    | ~ r2_hidden(X1,esk5_0) ),
    inference(spm,[status(thm)],[c_0_8,c_0_9])).

cnf(c_0_12,negated_conjecture,
    ( esk2_3(esk5_0,k1_tarski(esk4_0),X1) = esk4_0
    | ~ r2_hidden(X1,esk5_0) ),
    inference(spm,[status(thm)],[c_0_10,c_0_11])).

cnf(c_0_13,negated_conjecture,
    ( r2_hidden(esk6_0,esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_14,plain,
    ( r1_tarski(X1,esk2_3(X2,X3,X1))
    | ~ r2_hidden(X1,X2)
    | ~ r1_setfam_1(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_15,negated_conjecture,
    ( esk2_3(esk5_0,k1_tarski(esk4_0),esk6_0) = esk4_0 ),
    inference(spm,[status(thm)],[c_0_12,c_0_13])).

cnf(c_0_16,negated_conjecture,
    ( ~ r1_tarski(esk6_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_17,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_14,c_0_15]),c_0_9]),c_0_13])]),c_0_16]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.33  % Computer   : n020.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 10:50:07 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.12/0.36  # AutoSched0-Mode selected heuristic G_E___107_B00_00_F1_PI_AE_Q4_CS_SP_PS_S070I
% 0.12/0.36  # and selection function SelectVGNonCR.
% 0.12/0.36  #
% 0.12/0.36  # Preprocessing time       : 0.026 s
% 0.12/0.36  # Presaturation interreduction done
% 0.12/0.36  
% 0.12/0.36  # Proof found!
% 0.12/0.36  # SZS status Theorem
% 0.12/0.36  # SZS output start CNFRefutation
% 0.12/0.36  fof(t24_setfam_1, conjecture, ![X1, X2]:(r1_setfam_1(X2,k1_tarski(X1))=>![X3]:(r2_hidden(X3,X2)=>r1_tarski(X3,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t24_setfam_1)).
% 0.12/0.36  fof(d1_tarski, axiom, ![X1, X2]:(X2=k1_tarski(X1)<=>![X3]:(r2_hidden(X3,X2)<=>X3=X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_tarski)).
% 0.12/0.36  fof(d2_setfam_1, axiom, ![X1, X2]:(r1_setfam_1(X1,X2)<=>![X3]:~((r2_hidden(X3,X1)&![X4]:~((r2_hidden(X4,X2)&r1_tarski(X3,X4)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d2_setfam_1)).
% 0.12/0.36  fof(c_0_3, negated_conjecture, ~(![X1, X2]:(r1_setfam_1(X2,k1_tarski(X1))=>![X3]:(r2_hidden(X3,X2)=>r1_tarski(X3,X1)))), inference(assume_negation,[status(cth)],[t24_setfam_1])).
% 0.12/0.36  fof(c_0_4, plain, ![X5, X6, X7, X8, X9, X10]:(((~r2_hidden(X7,X6)|X7=X5|X6!=k1_tarski(X5))&(X8!=X5|r2_hidden(X8,X6)|X6!=k1_tarski(X5)))&((~r2_hidden(esk1_2(X9,X10),X10)|esk1_2(X9,X10)!=X9|X10=k1_tarski(X9))&(r2_hidden(esk1_2(X9,X10),X10)|esk1_2(X9,X10)=X9|X10=k1_tarski(X9)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_tarski])])])])])])).
% 0.12/0.36  fof(c_0_5, plain, ![X12, X13, X14, X16, X17, X19]:(((r2_hidden(esk2_3(X12,X13,X14),X13)|~r2_hidden(X14,X12)|~r1_setfam_1(X12,X13))&(r1_tarski(X14,esk2_3(X12,X13,X14))|~r2_hidden(X14,X12)|~r1_setfam_1(X12,X13)))&((r2_hidden(esk3_2(X16,X17),X16)|r1_setfam_1(X16,X17))&(~r2_hidden(X19,X17)|~r1_tarski(esk3_2(X16,X17),X19)|r1_setfam_1(X16,X17)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d2_setfam_1])])])])])])).
% 0.12/0.36  fof(c_0_6, negated_conjecture, (r1_setfam_1(esk5_0,k1_tarski(esk4_0))&(r2_hidden(esk6_0,esk5_0)&~r1_tarski(esk6_0,esk4_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_3])])])).
% 0.12/0.36  cnf(c_0_7, plain, (X1=X3|~r2_hidden(X1,X2)|X2!=k1_tarski(X3)), inference(split_conjunct,[status(thm)],[c_0_4])).
% 0.12/0.36  cnf(c_0_8, plain, (r2_hidden(esk2_3(X1,X2,X3),X2)|~r2_hidden(X3,X1)|~r1_setfam_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_5])).
% 0.12/0.36  cnf(c_0_9, negated_conjecture, (r1_setfam_1(esk5_0,k1_tarski(esk4_0))), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.12/0.36  cnf(c_0_10, plain, (X1=X2|~r2_hidden(X1,k1_tarski(X2))), inference(er,[status(thm)],[c_0_7])).
% 0.12/0.36  cnf(c_0_11, negated_conjecture, (r2_hidden(esk2_3(esk5_0,k1_tarski(esk4_0),X1),k1_tarski(esk4_0))|~r2_hidden(X1,esk5_0)), inference(spm,[status(thm)],[c_0_8, c_0_9])).
% 0.12/0.36  cnf(c_0_12, negated_conjecture, (esk2_3(esk5_0,k1_tarski(esk4_0),X1)=esk4_0|~r2_hidden(X1,esk5_0)), inference(spm,[status(thm)],[c_0_10, c_0_11])).
% 0.12/0.36  cnf(c_0_13, negated_conjecture, (r2_hidden(esk6_0,esk5_0)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.12/0.36  cnf(c_0_14, plain, (r1_tarski(X1,esk2_3(X2,X3,X1))|~r2_hidden(X1,X2)|~r1_setfam_1(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_5])).
% 0.12/0.36  cnf(c_0_15, negated_conjecture, (esk2_3(esk5_0,k1_tarski(esk4_0),esk6_0)=esk4_0), inference(spm,[status(thm)],[c_0_12, c_0_13])).
% 0.12/0.36  cnf(c_0_16, negated_conjecture, (~r1_tarski(esk6_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.12/0.36  cnf(c_0_17, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_14, c_0_15]), c_0_9]), c_0_13])]), c_0_16]), ['proof']).
% 0.12/0.36  # SZS output end CNFRefutation
% 0.12/0.36  # Proof object total steps             : 18
% 0.12/0.36  # Proof object clause steps            : 11
% 0.12/0.36  # Proof object formula steps           : 7
% 0.12/0.36  # Proof object conjectures             : 10
% 0.12/0.36  # Proof object clause conjectures      : 7
% 0.12/0.36  # Proof object formula conjectures     : 3
% 0.12/0.36  # Proof object initial clauses used    : 6
% 0.12/0.36  # Proof object initial formulas used   : 3
% 0.12/0.36  # Proof object generating inferences   : 5
% 0.12/0.36  # Proof object simplifying inferences  : 4
% 0.12/0.36  # Training examples: 0 positive, 0 negative
% 0.12/0.36  # Parsed axioms                        : 3
% 0.12/0.36  # Removed by relevancy pruning/SinE    : 0
% 0.12/0.36  # Initial clauses                      : 11
% 0.12/0.36  # Removed in clause preprocessing      : 0
% 0.12/0.36  # Initial clauses in saturation        : 11
% 0.12/0.36  # Processed clauses                    : 29
% 0.12/0.36  # ...of these trivial                  : 0
% 0.12/0.36  # ...subsumed                          : 0
% 0.12/0.36  # ...remaining for further processing  : 29
% 0.12/0.36  # Other redundant clauses eliminated   : 1
% 0.12/0.36  # Clauses deleted for lack of memory   : 0
% 0.12/0.36  # Backward-subsumed                    : 0
% 0.12/0.36  # Backward-rewritten                   : 0
% 0.12/0.36  # Generated clauses                    : 17
% 0.12/0.36  # ...of the previous two non-trivial   : 13
% 0.12/0.36  # Contextual simplify-reflections      : 0
% 0.12/0.36  # Paramodulations                      : 14
% 0.12/0.36  # Factorizations                       : 0
% 0.12/0.36  # Equation resolutions                 : 3
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
% 0.12/0.36  # Current number of processed clauses  : 17
% 0.12/0.36  #    Positive orientable unit clauses  : 3
% 0.12/0.36  #    Positive unorientable unit clauses: 0
% 0.12/0.36  #    Negative unit clauses             : 1
% 0.12/0.36  #    Non-unit-clauses                  : 13
% 0.12/0.36  # Current number of unprocessed clauses: 6
% 0.12/0.36  # ...number of literals in the above   : 18
% 0.12/0.36  # Current number of archived formulas  : 0
% 0.12/0.36  # Current number of archived clauses   : 11
% 0.12/0.36  # Clause-clause subsumption calls (NU) : 4
% 0.12/0.36  # Rec. Clause-clause subsumption calls : 4
% 0.12/0.36  # Non-unit clause-clause subsumptions  : 0
% 0.12/0.36  # Unit Clause-clause subsumption calls : 0
% 0.12/0.36  # Rewrite failures with RHS unbound    : 0
% 0.12/0.36  # BW rewrite match attempts            : 1
% 0.12/0.36  # BW rewrite match successes           : 0
% 0.12/0.36  # Condensation attempts                : 0
% 0.12/0.36  # Condensation successes               : 0
% 0.12/0.36  # Termbank termtop insertions          : 925
% 0.12/0.36  
% 0.12/0.36  # -------------------------------------------------
% 0.12/0.36  # User time                : 0.026 s
% 0.12/0.36  # System time              : 0.005 s
% 0.12/0.36  # Total time               : 0.031 s
% 0.12/0.36  # Maximum resident set size: 1564 pages
%------------------------------------------------------------------------------
