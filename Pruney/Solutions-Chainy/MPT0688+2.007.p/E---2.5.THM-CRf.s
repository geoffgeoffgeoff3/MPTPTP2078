%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n018.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:54:40 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   16 (  24 expanded)
%              Number of clauses        :    9 (   9 expanded)
%              Number of leaves         :    3 (   6 expanded)
%              Depth                    :    6
%              Number of atoms          :   47 (  81 expanded)
%              Number of equality atoms :    8 (  14 expanded)
%              Maximal formula depth    :   10 (   5 average)
%              Maximal clause size      :    7 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t143_funct_1,conjecture,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( ! [X3] :
            ~ ( r2_hidden(X3,X1)
              & k10_relat_1(X2,k1_tarski(X3)) = k1_xboole_0 )
       => r1_tarski(X1,k2_relat_1(X2)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t143_funct_1)).

fof(t142_funct_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( r2_hidden(X1,k2_relat_1(X2))
      <=> k10_relat_1(X2,k1_tarski(X1)) != k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t142_funct_1)).

fof(d3_tarski,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
    <=> ! [X3] :
          ( r2_hidden(X3,X1)
         => r2_hidden(X3,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_tarski)).

fof(c_0_3,negated_conjecture,(
    ~ ! [X1,X2] :
        ( v1_relat_1(X2)
       => ( ! [X3] :
              ~ ( r2_hidden(X3,X1)
                & k10_relat_1(X2,k1_tarski(X3)) = k1_xboole_0 )
         => r1_tarski(X1,k2_relat_1(X2)) ) ) ),
    inference(assume_negation,[status(cth)],[t143_funct_1])).

fof(c_0_4,negated_conjecture,(
    ! [X14] :
      ( v1_relat_1(esk3_0)
      & ( ~ r2_hidden(X14,esk2_0)
        | k10_relat_1(esk3_0,k1_tarski(X14)) != k1_xboole_0 )
      & ~ r1_tarski(esk2_0,k2_relat_1(esk3_0)) ) ),
    inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_3])])])])).

fof(c_0_5,plain,(
    ! [X10,X11] :
      ( ( ~ r2_hidden(X10,k2_relat_1(X11))
        | k10_relat_1(X11,k1_tarski(X10)) != k1_xboole_0
        | ~ v1_relat_1(X11) )
      & ( k10_relat_1(X11,k1_tarski(X10)) = k1_xboole_0
        | r2_hidden(X10,k2_relat_1(X11))
        | ~ v1_relat_1(X11) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t142_funct_1])])])).

fof(c_0_6,plain,(
    ! [X4,X5,X6,X7,X8] :
      ( ( ~ r1_tarski(X4,X5)
        | ~ r2_hidden(X6,X4)
        | r2_hidden(X6,X5) )
      & ( r2_hidden(esk1_2(X7,X8),X7)
        | r1_tarski(X7,X8) )
      & ( ~ r2_hidden(esk1_2(X7,X8),X8)
        | r1_tarski(X7,X8) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).

cnf(c_0_7,negated_conjecture,
    ( ~ r2_hidden(X1,esk2_0)
    | k10_relat_1(esk3_0,k1_tarski(X1)) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_4])).

cnf(c_0_8,plain,
    ( k10_relat_1(X1,k1_tarski(X2)) = k1_xboole_0
    | r2_hidden(X2,k2_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_9,negated_conjecture,
    ( v1_relat_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_4])).

cnf(c_0_10,plain,
    ( r1_tarski(X1,X2)
    | ~ r2_hidden(esk1_2(X1,X2),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_11,negated_conjecture,
    ( r2_hidden(X1,k2_relat_1(esk3_0))
    | ~ r2_hidden(X1,esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_7,c_0_8]),c_0_9])])).

cnf(c_0_12,negated_conjecture,
    ( r1_tarski(X1,k2_relat_1(esk3_0))
    | ~ r2_hidden(esk1_2(X1,k2_relat_1(esk3_0)),esk2_0) ),
    inference(spm,[status(thm)],[c_0_10,c_0_11])).

cnf(c_0_13,plain,
    ( r2_hidden(esk1_2(X1,X2),X1)
    | r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_14,negated_conjecture,
    ( ~ r1_tarski(esk2_0,k2_relat_1(esk3_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_4])).

cnf(c_0_15,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_12,c_0_13]),c_0_14]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n018.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 10:57:26 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.13/0.37  # AutoSched0-Mode selected heuristic G_E___300_C18_F1_SE_CS_SP_S0Y
% 0.13/0.37  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.13/0.37  #
% 0.13/0.37  # Preprocessing time       : 0.026 s
% 0.13/0.37  
% 0.13/0.37  # Proof found!
% 0.13/0.37  # SZS status Theorem
% 0.13/0.37  # SZS output start CNFRefutation
% 0.13/0.37  fof(t143_funct_1, conjecture, ![X1, X2]:(v1_relat_1(X2)=>(![X3]:~((r2_hidden(X3,X1)&k10_relat_1(X2,k1_tarski(X3))=k1_xboole_0))=>r1_tarski(X1,k2_relat_1(X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t143_funct_1)).
% 0.13/0.37  fof(t142_funct_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(r2_hidden(X1,k2_relat_1(X2))<=>k10_relat_1(X2,k1_tarski(X1))!=k1_xboole_0)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t142_funct_1)).
% 0.13/0.37  fof(d3_tarski, axiom, ![X1, X2]:(r1_tarski(X1,X2)<=>![X3]:(r2_hidden(X3,X1)=>r2_hidden(X3,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d3_tarski)).
% 0.13/0.37  fof(c_0_3, negated_conjecture, ~(![X1, X2]:(v1_relat_1(X2)=>(![X3]:~((r2_hidden(X3,X1)&k10_relat_1(X2,k1_tarski(X3))=k1_xboole_0))=>r1_tarski(X1,k2_relat_1(X2))))), inference(assume_negation,[status(cth)],[t143_funct_1])).
% 0.13/0.37  fof(c_0_4, negated_conjecture, ![X14]:(v1_relat_1(esk3_0)&((~r2_hidden(X14,esk2_0)|k10_relat_1(esk3_0,k1_tarski(X14))!=k1_xboole_0)&~r1_tarski(esk2_0,k2_relat_1(esk3_0)))), inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_3])])])])).
% 0.13/0.37  fof(c_0_5, plain, ![X10, X11]:((~r2_hidden(X10,k2_relat_1(X11))|k10_relat_1(X11,k1_tarski(X10))!=k1_xboole_0|~v1_relat_1(X11))&(k10_relat_1(X11,k1_tarski(X10))=k1_xboole_0|r2_hidden(X10,k2_relat_1(X11))|~v1_relat_1(X11))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t142_funct_1])])])).
% 0.13/0.37  fof(c_0_6, plain, ![X4, X5, X6, X7, X8]:((~r1_tarski(X4,X5)|(~r2_hidden(X6,X4)|r2_hidden(X6,X5)))&((r2_hidden(esk1_2(X7,X8),X7)|r1_tarski(X7,X8))&(~r2_hidden(esk1_2(X7,X8),X8)|r1_tarski(X7,X8)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).
% 0.13/0.37  cnf(c_0_7, negated_conjecture, (~r2_hidden(X1,esk2_0)|k10_relat_1(esk3_0,k1_tarski(X1))!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_4])).
% 0.13/0.37  cnf(c_0_8, plain, (k10_relat_1(X1,k1_tarski(X2))=k1_xboole_0|r2_hidden(X2,k2_relat_1(X1))|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_5])).
% 0.13/0.37  cnf(c_0_9, negated_conjecture, (v1_relat_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_4])).
% 0.13/0.37  cnf(c_0_10, plain, (r1_tarski(X1,X2)|~r2_hidden(esk1_2(X1,X2),X2)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.13/0.37  cnf(c_0_11, negated_conjecture, (r2_hidden(X1,k2_relat_1(esk3_0))|~r2_hidden(X1,esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_7, c_0_8]), c_0_9])])).
% 0.13/0.37  cnf(c_0_12, negated_conjecture, (r1_tarski(X1,k2_relat_1(esk3_0))|~r2_hidden(esk1_2(X1,k2_relat_1(esk3_0)),esk2_0)), inference(spm,[status(thm)],[c_0_10, c_0_11])).
% 0.13/0.37  cnf(c_0_13, plain, (r2_hidden(esk1_2(X1,X2),X1)|r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.13/0.37  cnf(c_0_14, negated_conjecture, (~r1_tarski(esk2_0,k2_relat_1(esk3_0))), inference(split_conjunct,[status(thm)],[c_0_4])).
% 0.13/0.37  cnf(c_0_15, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_12, c_0_13]), c_0_14]), ['proof']).
% 0.13/0.37  # SZS output end CNFRefutation
% 0.13/0.37  # Proof object total steps             : 16
% 0.13/0.37  # Proof object clause steps            : 9
% 0.13/0.37  # Proof object formula steps           : 7
% 0.13/0.37  # Proof object conjectures             : 9
% 0.13/0.37  # Proof object clause conjectures      : 6
% 0.13/0.37  # Proof object formula conjectures     : 3
% 0.13/0.37  # Proof object initial clauses used    : 6
% 0.13/0.37  # Proof object initial formulas used   : 3
% 0.13/0.37  # Proof object generating inferences   : 3
% 0.13/0.37  # Proof object simplifying inferences  : 3
% 0.13/0.37  # Training examples: 0 positive, 0 negative
% 0.13/0.37  # Parsed axioms                        : 3
% 0.13/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.37  # Initial clauses                      : 8
% 0.13/0.37  # Removed in clause preprocessing      : 0
% 0.13/0.37  # Initial clauses in saturation        : 8
% 0.13/0.37  # Processed clauses                    : 10
% 0.13/0.37  # ...of these trivial                  : 0
% 0.13/0.37  # ...subsumed                          : 0
% 0.13/0.37  # ...remaining for further processing  : 10
% 0.13/0.37  # Other redundant clauses eliminated   : 0
% 0.13/0.37  # Clauses deleted for lack of memory   : 0
% 0.13/0.37  # Backward-subsumed                    : 0
% 0.13/0.37  # Backward-rewritten                   : 0
% 0.13/0.37  # Generated clauses                    : 5
% 0.13/0.37  # ...of the previous two non-trivial   : 3
% 0.13/0.37  # Contextual simplify-reflections      : 0
% 0.13/0.37  # Paramodulations                      : 5
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
% 0.13/0.37  # Current number of processed clauses  : 10
% 0.13/0.37  #    Positive orientable unit clauses  : 2
% 0.13/0.37  #    Positive unorientable unit clauses: 0
% 0.13/0.37  #    Negative unit clauses             : 1
% 0.13/0.37  #    Non-unit-clauses                  : 7
% 0.13/0.37  # Current number of unprocessed clauses: 1
% 0.13/0.37  # ...number of literals in the above   : 3
% 0.13/0.37  # Current number of archived formulas  : 0
% 0.13/0.37  # Current number of archived clauses   : 0
% 0.13/0.37  # Clause-clause subsumption calls (NU) : 5
% 0.13/0.37  # Rec. Clause-clause subsumption calls : 5
% 0.13/0.37  # Non-unit clause-clause subsumptions  : 0
% 0.13/0.37  # Unit Clause-clause subsumption calls : 2
% 0.13/0.37  # Rewrite failures with RHS unbound    : 0
% 0.13/0.37  # BW rewrite match attempts            : 2
% 0.13/0.37  # BW rewrite match successes           : 0
% 0.13/0.37  # Condensation attempts                : 0
% 0.13/0.37  # Condensation successes               : 0
% 0.13/0.37  # Termbank termtop insertions          : 590
% 0.13/0.37  
% 0.13/0.37  # -------------------------------------------------
% 0.13/0.37  # User time                : 0.026 s
% 0.13/0.37  # System time              : 0.003 s
% 0.13/0.37  # Total time               : 0.029 s
% 0.13/0.37  # Maximum resident set size: 1560 pages
%------------------------------------------------------------------------------
