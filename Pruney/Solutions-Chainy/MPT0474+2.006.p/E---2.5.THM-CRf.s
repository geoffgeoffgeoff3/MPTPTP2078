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
% DateTime   : Thu Dec  3 10:49:22 EST 2020

% Result     : Theorem 0.12s
% Output     : CNFRefutation 0.12s
% Verified   : 
% Statistics : Number of formulae       :   23 (  37 expanded)
%              Number of clauses        :   11 (  18 expanded)
%              Number of leaves         :    6 (  10 expanded)
%              Depth                    :    6
%              Number of atoms          :   64 (  90 expanded)
%              Number of equality atoms :   24 (  37 expanded)
%              Maximal formula depth    :   15 (   4 average)
%              Maximal clause size      :   20 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t113_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( k2_zfmisc_1(X1,X2) = k1_xboole_0
    <=> ( X1 = k1_xboole_0
        | X2 = k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t113_zfmisc_1)).

fof(cc1_relat_1,axiom,(
    ! [X1] :
      ( v1_xboole_0(X1)
     => v1_relat_1(X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc1_relat_1)).

fof(t152_zfmisc_1,axiom,(
    ! [X1,X2] : ~ r2_hidden(X1,k2_zfmisc_1(X1,X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t152_zfmisc_1)).

fof(d7_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( v1_relat_1(X2)
         => ( X2 = k4_relat_1(X1)
          <=> ! [X3,X4] :
                ( r2_hidden(k4_tarski(X3,X4),X2)
              <=> r2_hidden(k4_tarski(X4,X3),X1) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d7_relat_1)).

fof(fc1_xboole_0,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc1_xboole_0)).

fof(t66_relat_1,conjecture,(
    k4_relat_1(k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t66_relat_1)).

fof(c_0_6,plain,(
    ! [X5,X6] :
      ( ( k2_zfmisc_1(X5,X6) != k1_xboole_0
        | X5 = k1_xboole_0
        | X6 = k1_xboole_0 )
      & ( X5 != k1_xboole_0
        | k2_zfmisc_1(X5,X6) = k1_xboole_0 )
      & ( X6 != k1_xboole_0
        | k2_zfmisc_1(X5,X6) = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t113_zfmisc_1])])])).

fof(c_0_7,plain,(
    ! [X9] :
      ( ~ v1_xboole_0(X9)
      | v1_relat_1(X9) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relat_1])])).

fof(c_0_8,plain,(
    ! [X7,X8] : ~ r2_hidden(X7,k2_zfmisc_1(X7,X8)) ),
    inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[t152_zfmisc_1])])).

cnf(c_0_9,plain,
    ( k2_zfmisc_1(X2,X1) = k1_xboole_0
    | X1 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

fof(c_0_10,plain,(
    ! [X10,X11,X12,X13,X14,X15] :
      ( ( ~ r2_hidden(k4_tarski(X12,X13),X11)
        | r2_hidden(k4_tarski(X13,X12),X10)
        | X11 != k4_relat_1(X10)
        | ~ v1_relat_1(X11)
        | ~ v1_relat_1(X10) )
      & ( ~ r2_hidden(k4_tarski(X15,X14),X10)
        | r2_hidden(k4_tarski(X14,X15),X11)
        | X11 != k4_relat_1(X10)
        | ~ v1_relat_1(X11)
        | ~ v1_relat_1(X10) )
      & ( ~ r2_hidden(k4_tarski(esk1_2(X10,X11),esk2_2(X10,X11)),X11)
        | ~ r2_hidden(k4_tarski(esk2_2(X10,X11),esk1_2(X10,X11)),X10)
        | X11 = k4_relat_1(X10)
        | ~ v1_relat_1(X11)
        | ~ v1_relat_1(X10) )
      & ( r2_hidden(k4_tarski(esk1_2(X10,X11),esk2_2(X10,X11)),X11)
        | r2_hidden(k4_tarski(esk2_2(X10,X11),esk1_2(X10,X11)),X10)
        | X11 = k4_relat_1(X10)
        | ~ v1_relat_1(X11)
        | ~ v1_relat_1(X10) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d7_relat_1])])])])])])).

cnf(c_0_11,plain,
    ( v1_relat_1(X1)
    | ~ v1_xboole_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_12,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(split_conjunct,[status(thm)],[fc1_xboole_0])).

cnf(c_0_13,plain,
    ( ~ r2_hidden(X1,k2_zfmisc_1(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_14,plain,
    ( k2_zfmisc_1(X1,k1_xboole_0) = k1_xboole_0 ),
    inference(er,[status(thm)],[c_0_9])).

fof(c_0_15,negated_conjecture,(
    k4_relat_1(k1_xboole_0) != k1_xboole_0 ),
    inference(assume_negation,[status(cth)],[t66_relat_1])).

cnf(c_0_16,plain,
    ( r2_hidden(k4_tarski(esk1_2(X1,X2),esk2_2(X1,X2)),X2)
    | r2_hidden(k4_tarski(esk2_2(X1,X2),esk1_2(X1,X2)),X1)
    | X2 = k4_relat_1(X1)
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_17,plain,
    ( v1_relat_1(k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_11,c_0_12])).

cnf(c_0_18,plain,
    ( ~ r2_hidden(X1,k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_13,c_0_14])).

fof(c_0_19,negated_conjecture,(
    k4_relat_1(k1_xboole_0) != k1_xboole_0 ),
    inference(fof_simplification,[status(thm)],[c_0_15])).

cnf(c_0_20,plain,
    ( k4_relat_1(X1) = k1_xboole_0
    | r2_hidden(k4_tarski(esk2_2(X1,k1_xboole_0),esk1_2(X1,k1_xboole_0)),X1)
    | ~ v1_relat_1(X1) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_16,c_0_17]),c_0_18])).

cnf(c_0_21,negated_conjecture,
    ( k4_relat_1(k1_xboole_0) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_22,plain,
    ( $false ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_20,c_0_17]),c_0_21]),c_0_18]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.33  % Computer   : n004.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 17:58:08 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.33  # Version: 2.5pre002
% 0.12/0.33  # No SInE strategy applied
% 0.12/0.33  # Trying AutoSched0 for 299 seconds
% 0.12/0.39  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S00DA
% 0.12/0.39  # and selection function SelectSmallestOrientable.
% 0.12/0.39  #
% 0.12/0.39  # Preprocessing time       : 0.049 s
% 0.12/0.39  # Presaturation interreduction done
% 0.12/0.39  
% 0.12/0.39  # Proof found!
% 0.12/0.39  # SZS status Theorem
% 0.12/0.39  # SZS output start CNFRefutation
% 0.12/0.39  fof(t113_zfmisc_1, axiom, ![X1, X2]:(k2_zfmisc_1(X1,X2)=k1_xboole_0<=>(X1=k1_xboole_0|X2=k1_xboole_0)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t113_zfmisc_1)).
% 0.12/0.39  fof(cc1_relat_1, axiom, ![X1]:(v1_xboole_0(X1)=>v1_relat_1(X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc1_relat_1)).
% 0.12/0.39  fof(t152_zfmisc_1, axiom, ![X1, X2]:~(r2_hidden(X1,k2_zfmisc_1(X1,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t152_zfmisc_1)).
% 0.12/0.39  fof(d7_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>![X2]:(v1_relat_1(X2)=>(X2=k4_relat_1(X1)<=>![X3, X4]:(r2_hidden(k4_tarski(X3,X4),X2)<=>r2_hidden(k4_tarski(X4,X3),X1))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d7_relat_1)).
% 0.12/0.39  fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc1_xboole_0)).
% 0.12/0.39  fof(t66_relat_1, conjecture, k4_relat_1(k1_xboole_0)=k1_xboole_0, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t66_relat_1)).
% 0.12/0.39  fof(c_0_6, plain, ![X5, X6]:((k2_zfmisc_1(X5,X6)!=k1_xboole_0|(X5=k1_xboole_0|X6=k1_xboole_0))&((X5!=k1_xboole_0|k2_zfmisc_1(X5,X6)=k1_xboole_0)&(X6!=k1_xboole_0|k2_zfmisc_1(X5,X6)=k1_xboole_0))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t113_zfmisc_1])])])).
% 0.12/0.39  fof(c_0_7, plain, ![X9]:(~v1_xboole_0(X9)|v1_relat_1(X9)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relat_1])])).
% 0.12/0.39  fof(c_0_8, plain, ![X7, X8]:~r2_hidden(X7,k2_zfmisc_1(X7,X8)), inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[t152_zfmisc_1])])).
% 0.12/0.39  cnf(c_0_9, plain, (k2_zfmisc_1(X2,X1)=k1_xboole_0|X1!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.12/0.39  fof(c_0_10, plain, ![X10, X11, X12, X13, X14, X15]:(((~r2_hidden(k4_tarski(X12,X13),X11)|r2_hidden(k4_tarski(X13,X12),X10)|X11!=k4_relat_1(X10)|~v1_relat_1(X11)|~v1_relat_1(X10))&(~r2_hidden(k4_tarski(X15,X14),X10)|r2_hidden(k4_tarski(X14,X15),X11)|X11!=k4_relat_1(X10)|~v1_relat_1(X11)|~v1_relat_1(X10)))&((~r2_hidden(k4_tarski(esk1_2(X10,X11),esk2_2(X10,X11)),X11)|~r2_hidden(k4_tarski(esk2_2(X10,X11),esk1_2(X10,X11)),X10)|X11=k4_relat_1(X10)|~v1_relat_1(X11)|~v1_relat_1(X10))&(r2_hidden(k4_tarski(esk1_2(X10,X11),esk2_2(X10,X11)),X11)|r2_hidden(k4_tarski(esk2_2(X10,X11),esk1_2(X10,X11)),X10)|X11=k4_relat_1(X10)|~v1_relat_1(X11)|~v1_relat_1(X10)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d7_relat_1])])])])])])).
% 0.12/0.39  cnf(c_0_11, plain, (v1_relat_1(X1)|~v1_xboole_0(X1)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.12/0.39  cnf(c_0_12, plain, (v1_xboole_0(k1_xboole_0)), inference(split_conjunct,[status(thm)],[fc1_xboole_0])).
% 0.12/0.39  cnf(c_0_13, plain, (~r2_hidden(X1,k2_zfmisc_1(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.12/0.39  cnf(c_0_14, plain, (k2_zfmisc_1(X1,k1_xboole_0)=k1_xboole_0), inference(er,[status(thm)],[c_0_9])).
% 0.12/0.39  fof(c_0_15, negated_conjecture, ~(k4_relat_1(k1_xboole_0)=k1_xboole_0), inference(assume_negation,[status(cth)],[t66_relat_1])).
% 0.12/0.39  cnf(c_0_16, plain, (r2_hidden(k4_tarski(esk1_2(X1,X2),esk2_2(X1,X2)),X2)|r2_hidden(k4_tarski(esk2_2(X1,X2),esk1_2(X1,X2)),X1)|X2=k4_relat_1(X1)|~v1_relat_1(X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.12/0.39  cnf(c_0_17, plain, (v1_relat_1(k1_xboole_0)), inference(spm,[status(thm)],[c_0_11, c_0_12])).
% 0.12/0.39  cnf(c_0_18, plain, (~r2_hidden(X1,k1_xboole_0)), inference(spm,[status(thm)],[c_0_13, c_0_14])).
% 0.12/0.39  fof(c_0_19, negated_conjecture, k4_relat_1(k1_xboole_0)!=k1_xboole_0, inference(fof_simplification,[status(thm)],[c_0_15])).
% 0.12/0.39  cnf(c_0_20, plain, (k4_relat_1(X1)=k1_xboole_0|r2_hidden(k4_tarski(esk2_2(X1,k1_xboole_0),esk1_2(X1,k1_xboole_0)),X1)|~v1_relat_1(X1)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_16, c_0_17]), c_0_18])).
% 0.12/0.39  cnf(c_0_21, negated_conjecture, (k4_relat_1(k1_xboole_0)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.12/0.39  cnf(c_0_22, plain, ($false), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_20, c_0_17]), c_0_21]), c_0_18]), ['proof']).
% 0.12/0.39  # SZS output end CNFRefutation
% 0.12/0.39  # Proof object total steps             : 23
% 0.12/0.39  # Proof object clause steps            : 11
% 0.12/0.39  # Proof object formula steps           : 12
% 0.12/0.39  # Proof object conjectures             : 4
% 0.12/0.39  # Proof object clause conjectures      : 1
% 0.12/0.39  # Proof object formula conjectures     : 3
% 0.12/0.39  # Proof object initial clauses used    : 6
% 0.12/0.39  # Proof object initial formulas used   : 6
% 0.12/0.39  # Proof object generating inferences   : 4
% 0.12/0.39  # Proof object simplifying inferences  : 4
% 0.12/0.39  # Training examples: 0 positive, 0 negative
% 0.12/0.39  # Parsed axioms                        : 6
% 0.12/0.39  # Removed by relevancy pruning/SinE    : 0
% 0.12/0.39  # Initial clauses                      : 11
% 0.12/0.39  # Removed in clause preprocessing      : 0
% 0.12/0.39  # Initial clauses in saturation        : 11
% 0.12/0.39  # Processed clauses                    : 32
% 0.12/0.39  # ...of these trivial                  : 0
% 0.12/0.39  # ...subsumed                          : 2
% 0.12/0.39  # ...remaining for further processing  : 30
% 0.12/0.39  # Other redundant clauses eliminated   : 4
% 0.12/0.39  # Clauses deleted for lack of memory   : 0
% 0.12/0.39  # Backward-subsumed                    : 0
% 0.12/0.39  # Backward-rewritten                   : 0
% 0.12/0.39  # Generated clauses                    : 12
% 0.12/0.39  # ...of the previous two non-trivial   : 11
% 0.12/0.39  # Contextual simplify-reflections      : 0
% 0.12/0.39  # Paramodulations                      : 8
% 0.12/0.39  # Factorizations                       : 0
% 0.12/0.39  # Equation resolutions                 : 4
% 0.12/0.39  # Propositional unsat checks           : 0
% 0.12/0.39  #    Propositional check models        : 0
% 0.12/0.39  #    Propositional check unsatisfiable : 0
% 0.12/0.39  #    Propositional clauses             : 0
% 0.12/0.39  #    Propositional clauses after purity: 0
% 0.12/0.39  #    Propositional unsat core size     : 0
% 0.12/0.39  #    Propositional preprocessing time  : 0.000
% 0.12/0.39  #    Propositional encoding time       : 0.000
% 0.12/0.39  #    Propositional solver time         : 0.000
% 0.12/0.39  #    Success case prop preproc time    : 0.000
% 0.12/0.39  #    Success case prop encoding time   : 0.000
% 0.12/0.39  #    Success case prop solver time     : 0.000
% 0.12/0.39  # Current number of processed clauses  : 15
% 0.12/0.39  #    Positive orientable unit clauses  : 4
% 0.12/0.39  #    Positive unorientable unit clauses: 0
% 0.12/0.39  #    Negative unit clauses             : 3
% 0.12/0.39  #    Non-unit-clauses                  : 8
% 0.12/0.39  # Current number of unprocessed clauses: 1
% 0.12/0.39  # ...number of literals in the above   : 4
% 0.12/0.39  # Current number of archived formulas  : 0
% 0.12/0.39  # Current number of archived clauses   : 11
% 0.12/0.39  # Clause-clause subsumption calls (NU) : 44
% 0.12/0.39  # Rec. Clause-clause subsumption calls : 12
% 0.12/0.39  # Non-unit clause-clause subsumptions  : 0
% 0.12/0.39  # Unit Clause-clause subsumption calls : 0
% 0.12/0.39  # Rewrite failures with RHS unbound    : 0
% 0.12/0.39  # BW rewrite match attempts            : 0
% 0.12/0.39  # BW rewrite match successes           : 0
% 0.12/0.39  # Condensation attempts                : 0
% 0.12/0.39  # Condensation successes               : 0
% 0.12/0.39  # Termbank termtop insertions          : 1040
% 0.19/0.39  
% 0.19/0.39  # -------------------------------------------------
% 0.19/0.39  # User time                : 0.048 s
% 0.19/0.39  # System time              : 0.007 s
% 0.19/0.39  # Total time               : 0.055 s
% 0.19/0.39  # Maximum resident set size: 1564 pages
%------------------------------------------------------------------------------
