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
% DateTime   : Thu Dec  3 10:56:40 EST 2020

% Result     : Theorem 0.18s
% Output     : CNFRefutation 0.18s
% Verified   : 
% Statistics : Number of formulae       :   25 (  46 expanded)
%              Number of clauses        :   14 (  17 expanded)
%              Number of leaves         :    5 (  12 expanded)
%              Depth                    :    7
%              Number of atoms          :   91 ( 186 expanded)
%              Number of equality atoms :   15 (  31 expanded)
%              Maximal formula depth    :   10 (   5 average)
%              Maximal clause size      :    7 (   3 average)
%              Maximal term depth       :    2 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(d2_ordinal1,axiom,(
    ! [X1] :
      ( v1_ordinal1(X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
         => r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d2_ordinal1)).

fof(t24_ordinal1,axiom,(
    ! [X1] :
      ( v3_ordinal1(X1)
     => ! [X2] :
          ( v3_ordinal1(X2)
         => ~ ( ~ r2_hidden(X1,X2)
              & X1 != X2
              & ~ r2_hidden(X2,X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t24_ordinal1)).

fof(cc1_ordinal1,axiom,(
    ! [X1] :
      ( v3_ordinal1(X1)
     => ( v1_ordinal1(X1)
        & v2_ordinal1(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc1_ordinal1)).

fof(d8_xboole_0,axiom,(
    ! [X1,X2] :
      ( r2_xboole_0(X1,X2)
    <=> ( r1_tarski(X1,X2)
        & X1 != X2 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d8_xboole_0)).

fof(t50_ordinal1,conjecture,(
    ! [X1] :
      ( v3_ordinal1(X1)
     => ! [X2] :
          ( v3_ordinal1(X2)
         => ~ ( ~ r2_xboole_0(X1,X2)
              & X1 != X2
              & ~ r2_xboole_0(X2,X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t50_ordinal1)).

fof(c_0_5,plain,(
    ! [X6,X7,X8] :
      ( ( ~ v1_ordinal1(X6)
        | ~ r2_hidden(X7,X6)
        | r1_tarski(X7,X6) )
      & ( r2_hidden(esk1_1(X8),X8)
        | v1_ordinal1(X8) )
      & ( ~ r1_tarski(esk1_1(X8),X8)
        | v1_ordinal1(X8) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d2_ordinal1])])])])])])).

fof(c_0_6,plain,(
    ! [X10,X11] :
      ( ~ v3_ordinal1(X10)
      | ~ v3_ordinal1(X11)
      | r2_hidden(X10,X11)
      | X10 = X11
      | r2_hidden(X11,X10) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t24_ordinal1])])])])).

fof(c_0_7,plain,(
    ! [X5] :
      ( ( v1_ordinal1(X5)
        | ~ v3_ordinal1(X5) )
      & ( v2_ordinal1(X5)
        | ~ v3_ordinal1(X5) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_ordinal1])])])).

fof(c_0_8,plain,(
    ! [X3,X4] :
      ( ( r1_tarski(X3,X4)
        | ~ r2_xboole_0(X3,X4) )
      & ( X3 != X4
        | ~ r2_xboole_0(X3,X4) )
      & ( ~ r1_tarski(X3,X4)
        | X3 = X4
        | r2_xboole_0(X3,X4) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d8_xboole_0])])])).

cnf(c_0_9,plain,
    ( r1_tarski(X2,X1)
    | ~ v1_ordinal1(X1)
    | ~ r2_hidden(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_10,plain,
    ( r2_hidden(X1,X2)
    | X1 = X2
    | r2_hidden(X2,X1)
    | ~ v3_ordinal1(X1)
    | ~ v3_ordinal1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_11,plain,
    ( v1_ordinal1(X1)
    | ~ v3_ordinal1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_12,plain,
    ( X1 = X2
    | r2_xboole_0(X1,X2)
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_13,plain,
    ( X1 = X2
    | r2_hidden(X1,X2)
    | r1_tarski(X2,X1)
    | ~ v3_ordinal1(X2)
    | ~ v3_ordinal1(X1) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_9,c_0_10]),c_0_11])).

fof(c_0_14,negated_conjecture,(
    ~ ! [X1] :
        ( v3_ordinal1(X1)
       => ! [X2] :
            ( v3_ordinal1(X2)
           => ~ ( ~ r2_xboole_0(X1,X2)
                & X1 != X2
                & ~ r2_xboole_0(X2,X1) ) ) ) ),
    inference(assume_negation,[status(cth)],[t50_ordinal1])).

cnf(c_0_15,plain,
    ( X1 = X2
    | r2_hidden(X2,X1)
    | r2_xboole_0(X1,X2)
    | ~ v3_ordinal1(X1)
    | ~ v3_ordinal1(X2) ),
    inference(spm,[status(thm)],[c_0_12,c_0_13])).

fof(c_0_16,negated_conjecture,
    ( v3_ordinal1(esk2_0)
    & v3_ordinal1(esk3_0)
    & ~ r2_xboole_0(esk2_0,esk3_0)
    & esk2_0 != esk3_0
    & ~ r2_xboole_0(esk3_0,esk2_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_14])])])])).

cnf(c_0_17,plain,
    ( X1 = X2
    | r1_tarski(X2,X1)
    | r2_xboole_0(X1,X2)
    | ~ v3_ordinal1(X1)
    | ~ v3_ordinal1(X2) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_9,c_0_15]),c_0_11])).

cnf(c_0_18,negated_conjecture,
    ( ~ r2_xboole_0(esk2_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_19,plain,
    ( X1 = X2
    | r2_xboole_0(X2,X1)
    | r2_xboole_0(X1,X2)
    | ~ v3_ordinal1(X2)
    | ~ v3_ordinal1(X1) ),
    inference(spm,[status(thm)],[c_0_12,c_0_17])).

cnf(c_0_20,negated_conjecture,
    ( v3_ordinal1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_21,negated_conjecture,
    ( v3_ordinal1(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_22,negated_conjecture,
    ( esk2_0 != esk3_0 ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_23,negated_conjecture,
    ( ~ r2_xboole_0(esk3_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_24,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_18,c_0_19]),c_0_20]),c_0_21])]),c_0_22]),c_0_23]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.33  % Computer   : n010.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 20:06:59 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.33  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.18/0.36  # AutoSched0-Mode selected heuristic G_____0026_C18_F1_SE_CS_SP_S4S
% 0.18/0.36  # and selection function SelectNewComplexAHPNS.
% 0.18/0.36  #
% 0.18/0.36  # Preprocessing time       : 0.026 s
% 0.18/0.36  
% 0.18/0.36  # Proof found!
% 0.18/0.36  # SZS status Theorem
% 0.18/0.36  # SZS output start CNFRefutation
% 0.18/0.36  fof(d2_ordinal1, axiom, ![X1]:(v1_ordinal1(X1)<=>![X2]:(r2_hidden(X2,X1)=>r1_tarski(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d2_ordinal1)).
% 0.18/0.36  fof(t24_ordinal1, axiom, ![X1]:(v3_ordinal1(X1)=>![X2]:(v3_ordinal1(X2)=>~(((~(r2_hidden(X1,X2))&X1!=X2)&~(r2_hidden(X2,X1)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t24_ordinal1)).
% 0.18/0.36  fof(cc1_ordinal1, axiom, ![X1]:(v3_ordinal1(X1)=>(v1_ordinal1(X1)&v2_ordinal1(X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc1_ordinal1)).
% 0.18/0.36  fof(d8_xboole_0, axiom, ![X1, X2]:(r2_xboole_0(X1,X2)<=>(r1_tarski(X1,X2)&X1!=X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d8_xboole_0)).
% 0.18/0.36  fof(t50_ordinal1, conjecture, ![X1]:(v3_ordinal1(X1)=>![X2]:(v3_ordinal1(X2)=>~(((~(r2_xboole_0(X1,X2))&X1!=X2)&~(r2_xboole_0(X2,X1)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t50_ordinal1)).
% 0.18/0.36  fof(c_0_5, plain, ![X6, X7, X8]:((~v1_ordinal1(X6)|(~r2_hidden(X7,X6)|r1_tarski(X7,X6)))&((r2_hidden(esk1_1(X8),X8)|v1_ordinal1(X8))&(~r1_tarski(esk1_1(X8),X8)|v1_ordinal1(X8)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d2_ordinal1])])])])])])).
% 0.18/0.36  fof(c_0_6, plain, ![X10, X11]:(~v3_ordinal1(X10)|(~v3_ordinal1(X11)|(r2_hidden(X10,X11)|X10=X11|r2_hidden(X11,X10)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t24_ordinal1])])])])).
% 0.18/0.36  fof(c_0_7, plain, ![X5]:((v1_ordinal1(X5)|~v3_ordinal1(X5))&(v2_ordinal1(X5)|~v3_ordinal1(X5))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_ordinal1])])])).
% 0.18/0.36  fof(c_0_8, plain, ![X3, X4]:(((r1_tarski(X3,X4)|~r2_xboole_0(X3,X4))&(X3!=X4|~r2_xboole_0(X3,X4)))&(~r1_tarski(X3,X4)|X3=X4|r2_xboole_0(X3,X4))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d8_xboole_0])])])).
% 0.18/0.36  cnf(c_0_9, plain, (r1_tarski(X2,X1)|~v1_ordinal1(X1)|~r2_hidden(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_5])).
% 0.18/0.36  cnf(c_0_10, plain, (r2_hidden(X1,X2)|X1=X2|r2_hidden(X2,X1)|~v3_ordinal1(X1)|~v3_ordinal1(X2)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.18/0.36  cnf(c_0_11, plain, (v1_ordinal1(X1)|~v3_ordinal1(X1)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.18/0.36  cnf(c_0_12, plain, (X1=X2|r2_xboole_0(X1,X2)|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.18/0.36  cnf(c_0_13, plain, (X1=X2|r2_hidden(X1,X2)|r1_tarski(X2,X1)|~v3_ordinal1(X2)|~v3_ordinal1(X1)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_9, c_0_10]), c_0_11])).
% 0.18/0.36  fof(c_0_14, negated_conjecture, ~(![X1]:(v3_ordinal1(X1)=>![X2]:(v3_ordinal1(X2)=>~(((~(r2_xboole_0(X1,X2))&X1!=X2)&~(r2_xboole_0(X2,X1))))))), inference(assume_negation,[status(cth)],[t50_ordinal1])).
% 0.18/0.36  cnf(c_0_15, plain, (X1=X2|r2_hidden(X2,X1)|r2_xboole_0(X1,X2)|~v3_ordinal1(X1)|~v3_ordinal1(X2)), inference(spm,[status(thm)],[c_0_12, c_0_13])).
% 0.18/0.36  fof(c_0_16, negated_conjecture, (v3_ordinal1(esk2_0)&(v3_ordinal1(esk3_0)&((~r2_xboole_0(esk2_0,esk3_0)&esk2_0!=esk3_0)&~r2_xboole_0(esk3_0,esk2_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_14])])])])).
% 0.18/0.36  cnf(c_0_17, plain, (X1=X2|r1_tarski(X2,X1)|r2_xboole_0(X1,X2)|~v3_ordinal1(X1)|~v3_ordinal1(X2)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_9, c_0_15]), c_0_11])).
% 0.18/0.36  cnf(c_0_18, negated_conjecture, (~r2_xboole_0(esk2_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.18/0.36  cnf(c_0_19, plain, (X1=X2|r2_xboole_0(X2,X1)|r2_xboole_0(X1,X2)|~v3_ordinal1(X2)|~v3_ordinal1(X1)), inference(spm,[status(thm)],[c_0_12, c_0_17])).
% 0.18/0.36  cnf(c_0_20, negated_conjecture, (v3_ordinal1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.18/0.36  cnf(c_0_21, negated_conjecture, (v3_ordinal1(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.18/0.36  cnf(c_0_22, negated_conjecture, (esk2_0!=esk3_0), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.18/0.36  cnf(c_0_23, negated_conjecture, (~r2_xboole_0(esk3_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.18/0.36  cnf(c_0_24, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_18, c_0_19]), c_0_20]), c_0_21])]), c_0_22]), c_0_23]), ['proof']).
% 0.18/0.36  # SZS output end CNFRefutation
% 0.18/0.36  # Proof object total steps             : 25
% 0.18/0.36  # Proof object clause steps            : 14
% 0.18/0.36  # Proof object formula steps           : 11
% 0.18/0.36  # Proof object conjectures             : 9
% 0.18/0.36  # Proof object clause conjectures      : 6
% 0.18/0.36  # Proof object formula conjectures     : 3
% 0.18/0.36  # Proof object initial clauses used    : 9
% 0.18/0.36  # Proof object initial formulas used   : 5
% 0.18/0.36  # Proof object generating inferences   : 5
% 0.18/0.36  # Proof object simplifying inferences  : 7
% 0.18/0.36  # Training examples: 0 positive, 0 negative
% 0.18/0.36  # Parsed axioms                        : 5
% 0.18/0.36  # Removed by relevancy pruning/SinE    : 0
% 0.18/0.36  # Initial clauses                      : 14
% 0.18/0.36  # Removed in clause preprocessing      : 0
% 0.18/0.36  # Initial clauses in saturation        : 14
% 0.18/0.36  # Processed clauses                    : 21
% 0.18/0.36  # ...of these trivial                  : 0
% 0.18/0.36  # ...subsumed                          : 2
% 0.18/0.36  # ...remaining for further processing  : 19
% 0.18/0.36  # Other redundant clauses eliminated   : 1
% 0.18/0.36  # Clauses deleted for lack of memory   : 0
% 0.18/0.36  # Backward-subsumed                    : 0
% 0.18/0.36  # Backward-rewritten                   : 0
% 0.18/0.36  # Generated clauses                    : 17
% 0.18/0.36  # ...of the previous two non-trivial   : 8
% 0.18/0.36  # Contextual simplify-reflections      : 2
% 0.18/0.36  # Paramodulations                      : 12
% 0.18/0.36  # Factorizations                       : 4
% 0.18/0.36  # Equation resolutions                 : 1
% 0.18/0.36  # Propositional unsat checks           : 0
% 0.18/0.36  #    Propositional check models        : 0
% 0.18/0.36  #    Propositional check unsatisfiable : 0
% 0.18/0.36  #    Propositional clauses             : 0
% 0.18/0.36  #    Propositional clauses after purity: 0
% 0.18/0.36  #    Propositional unsat core size     : 0
% 0.18/0.36  #    Propositional preprocessing time  : 0.000
% 0.18/0.36  #    Propositional encoding time       : 0.000
% 0.18/0.36  #    Propositional solver time         : 0.000
% 0.18/0.36  #    Success case prop preproc time    : 0.000
% 0.18/0.36  #    Success case prop encoding time   : 0.000
% 0.18/0.36  #    Success case prop solver time     : 0.000
% 0.18/0.36  # Current number of processed clauses  : 18
% 0.18/0.36  #    Positive orientable unit clauses  : 2
% 0.18/0.36  #    Positive unorientable unit clauses: 0
% 0.18/0.36  #    Negative unit clauses             : 4
% 0.18/0.36  #    Non-unit-clauses                  : 12
% 0.18/0.36  # Current number of unprocessed clauses: 1
% 0.18/0.36  # ...number of literals in the above   : 5
% 0.18/0.36  # Current number of archived formulas  : 0
% 0.18/0.36  # Current number of archived clauses   : 0
% 0.18/0.36  # Clause-clause subsumption calls (NU) : 26
% 0.18/0.36  # Rec. Clause-clause subsumption calls : 6
% 0.18/0.36  # Non-unit clause-clause subsumptions  : 4
% 0.18/0.36  # Unit Clause-clause subsumption calls : 3
% 0.18/0.36  # Rewrite failures with RHS unbound    : 0
% 0.18/0.36  # BW rewrite match attempts            : 0
% 0.18/0.36  # BW rewrite match successes           : 0
% 0.18/0.36  # Condensation attempts                : 0
% 0.18/0.36  # Condensation successes               : 0
% 0.18/0.36  # Termbank termtop insertions          : 887
% 0.18/0.36  
% 0.18/0.36  # -------------------------------------------------
% 0.18/0.36  # User time                : 0.027 s
% 0.18/0.36  # System time              : 0.003 s
% 0.18/0.36  # Total time               : 0.030 s
% 0.18/0.36  # Maximum resident set size: 1564 pages
%------------------------------------------------------------------------------
