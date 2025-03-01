%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n006.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:47:03 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   23 (  37 expanded)
%              Number of clauses        :   12 (  16 expanded)
%              Number of leaves         :    5 (   9 expanded)
%              Depth                    :    7
%              Number of atoms          :   82 ( 105 expanded)
%              Number of equality atoms :   44 (  56 expanded)
%              Maximal formula depth    :   21 (   4 average)
%              Maximal clause size      :   32 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(d1_setfam_1,axiom,(
    ! [X1,X2] :
      ( ( X1 != k1_xboole_0
       => ( X2 = k1_setfam_1(X1)
        <=> ! [X3] :
              ( r2_hidden(X3,X2)
            <=> ! [X4] :
                  ( r2_hidden(X4,X1)
                 => r2_hidden(X3,X4) ) ) ) )
      & ( X1 = k1_xboole_0
       => ( X2 = k1_setfam_1(X1)
        <=> X2 = k1_xboole_0 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_setfam_1)).

fof(t49_zfmisc_1,axiom,(
    ! [X1,X2] : k2_xboole_0(k1_tarski(X1),X2) != k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t49_zfmisc_1)).

fof(l22_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( r2_hidden(X1,X2)
     => k2_xboole_0(k1_tarski(X1),X2) = X2 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l22_zfmisc_1)).

fof(t7_xboole_0,axiom,(
    ! [X1] :
      ~ ( X1 != k1_xboole_0
        & ! [X2] : ~ r2_hidden(X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_xboole_0)).

fof(t5_setfam_1,conjecture,(
    ! [X1] :
      ( r2_hidden(k1_xboole_0,X1)
     => k1_setfam_1(X1) = k1_xboole_0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t5_setfam_1)).

fof(c_0_5,plain,(
    ! [X13,X14,X15,X16,X17,X19,X22,X23,X24,X25] :
      ( ( ~ r2_hidden(X15,X14)
        | ~ r2_hidden(X16,X13)
        | r2_hidden(X15,X16)
        | X14 != k1_setfam_1(X13)
        | X13 = k1_xboole_0 )
      & ( r2_hidden(esk2_3(X13,X14,X17),X13)
        | r2_hidden(X17,X14)
        | X14 != k1_setfam_1(X13)
        | X13 = k1_xboole_0 )
      & ( ~ r2_hidden(X17,esk2_3(X13,X14,X17))
        | r2_hidden(X17,X14)
        | X14 != k1_setfam_1(X13)
        | X13 = k1_xboole_0 )
      & ( r2_hidden(esk4_2(X13,X19),X13)
        | ~ r2_hidden(esk3_2(X13,X19),X19)
        | X19 = k1_setfam_1(X13)
        | X13 = k1_xboole_0 )
      & ( ~ r2_hidden(esk3_2(X13,X19),esk4_2(X13,X19))
        | ~ r2_hidden(esk3_2(X13,X19),X19)
        | X19 = k1_setfam_1(X13)
        | X13 = k1_xboole_0 )
      & ( r2_hidden(esk3_2(X13,X19),X19)
        | ~ r2_hidden(X22,X13)
        | r2_hidden(esk3_2(X13,X19),X22)
        | X19 = k1_setfam_1(X13)
        | X13 = k1_xboole_0 )
      & ( X24 != k1_setfam_1(X23)
        | X24 = k1_xboole_0
        | X23 != k1_xboole_0 )
      & ( X25 != k1_xboole_0
        | X25 = k1_setfam_1(X23)
        | X23 != k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_setfam_1])])])])])])).

fof(c_0_6,plain,(
    ! [X11,X12] : k2_xboole_0(k1_tarski(X11),X12) != k1_xboole_0 ),
    inference(variable_rename,[status(thm)],[t49_zfmisc_1])).

fof(c_0_7,plain,(
    ! [X9,X10] :
      ( ~ r2_hidden(X9,X10)
      | k2_xboole_0(k1_tarski(X9),X10) = X10 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l22_zfmisc_1])])).

cnf(c_0_8,plain,
    ( r2_hidden(X1,X3)
    | X4 = k1_xboole_0
    | ~ r2_hidden(X1,X2)
    | ~ r2_hidden(X3,X4)
    | X2 != k1_setfam_1(X4) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

fof(c_0_9,plain,(
    ! [X7] :
      ( X7 = k1_xboole_0
      | r2_hidden(esk1_1(X7),X7) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t7_xboole_0])])])])).

fof(c_0_10,negated_conjecture,(
    ~ ! [X1] :
        ( r2_hidden(k1_xboole_0,X1)
       => k1_setfam_1(X1) = k1_xboole_0 ) ),
    inference(assume_negation,[status(cth)],[t5_setfam_1])).

cnf(c_0_11,plain,
    ( k2_xboole_0(k1_tarski(X1),X2) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_12,plain,
    ( k2_xboole_0(k1_tarski(X1),X2) = X2
    | ~ r2_hidden(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_13,plain,
    ( X1 = k1_xboole_0
    | r2_hidden(X2,X3)
    | ~ r2_hidden(X2,k1_setfam_1(X1))
    | ~ r2_hidden(X3,X1) ),
    inference(er,[status(thm)],[c_0_8])).

cnf(c_0_14,plain,
    ( X1 = k1_xboole_0
    | r2_hidden(esk1_1(X1),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

fof(c_0_15,negated_conjecture,
    ( r2_hidden(k1_xboole_0,esk5_0)
    & k1_setfam_1(esk5_0) != k1_xboole_0 ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_10])])])).

cnf(c_0_16,plain,
    ( ~ r2_hidden(X1,k1_xboole_0) ),
    inference(er,[status(thm)],[inference(spm,[status(thm)],[c_0_11,c_0_12])])).

cnf(c_0_17,plain,
    ( k1_setfam_1(X1) = k1_xboole_0
    | X1 = k1_xboole_0
    | r2_hidden(esk1_1(k1_setfam_1(X1)),X2)
    | ~ r2_hidden(X2,X1) ),
    inference(spm,[status(thm)],[c_0_13,c_0_14])).

cnf(c_0_18,negated_conjecture,
    ( k1_setfam_1(esk5_0) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_19,plain,
    ( k1_setfam_1(X1) = k1_xboole_0
    | X1 = k1_xboole_0
    | ~ r2_hidden(k1_xboole_0,X1) ),
    inference(spm,[status(thm)],[c_0_16,c_0_17])).

cnf(c_0_20,negated_conjecture,
    ( r2_hidden(k1_xboole_0,esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_21,negated_conjecture,
    ( esk5_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_18,c_0_19]),c_0_20])])).

cnf(c_0_22,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(rw,[status(thm)],[c_0_20,c_0_21]),c_0_16]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.33  % Computer   : n006.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 13:38:22 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.33  # Version: 2.5pre002
% 0.12/0.33  # No SInE strategy applied
% 0.12/0.33  # Trying AutoSched0 for 299 seconds
% 0.19/0.36  # AutoSched0-Mode selected heuristic G_E___300_C18_F1_SE_CS_SP_S0Y
% 0.19/0.36  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.19/0.36  #
% 0.19/0.36  # Preprocessing time       : 0.027 s
% 0.19/0.36  
% 0.19/0.36  # Proof found!
% 0.19/0.36  # SZS status Theorem
% 0.19/0.36  # SZS output start CNFRefutation
% 0.19/0.36  fof(d1_setfam_1, axiom, ![X1, X2]:((X1!=k1_xboole_0=>(X2=k1_setfam_1(X1)<=>![X3]:(r2_hidden(X3,X2)<=>![X4]:(r2_hidden(X4,X1)=>r2_hidden(X3,X4)))))&(X1=k1_xboole_0=>(X2=k1_setfam_1(X1)<=>X2=k1_xboole_0))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d1_setfam_1)).
% 0.19/0.36  fof(t49_zfmisc_1, axiom, ![X1, X2]:k2_xboole_0(k1_tarski(X1),X2)!=k1_xboole_0, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t49_zfmisc_1)).
% 0.19/0.36  fof(l22_zfmisc_1, axiom, ![X1, X2]:(r2_hidden(X1,X2)=>k2_xboole_0(k1_tarski(X1),X2)=X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l22_zfmisc_1)).
% 0.19/0.36  fof(t7_xboole_0, axiom, ![X1]:~((X1!=k1_xboole_0&![X2]:~(r2_hidden(X2,X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t7_xboole_0)).
% 0.19/0.36  fof(t5_setfam_1, conjecture, ![X1]:(r2_hidden(k1_xboole_0,X1)=>k1_setfam_1(X1)=k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t5_setfam_1)).
% 0.19/0.36  fof(c_0_5, plain, ![X13, X14, X15, X16, X17, X19, X22, X23, X24, X25]:((((~r2_hidden(X15,X14)|(~r2_hidden(X16,X13)|r2_hidden(X15,X16))|X14!=k1_setfam_1(X13)|X13=k1_xboole_0)&((r2_hidden(esk2_3(X13,X14,X17),X13)|r2_hidden(X17,X14)|X14!=k1_setfam_1(X13)|X13=k1_xboole_0)&(~r2_hidden(X17,esk2_3(X13,X14,X17))|r2_hidden(X17,X14)|X14!=k1_setfam_1(X13)|X13=k1_xboole_0)))&(((r2_hidden(esk4_2(X13,X19),X13)|~r2_hidden(esk3_2(X13,X19),X19)|X19=k1_setfam_1(X13)|X13=k1_xboole_0)&(~r2_hidden(esk3_2(X13,X19),esk4_2(X13,X19))|~r2_hidden(esk3_2(X13,X19),X19)|X19=k1_setfam_1(X13)|X13=k1_xboole_0))&(r2_hidden(esk3_2(X13,X19),X19)|(~r2_hidden(X22,X13)|r2_hidden(esk3_2(X13,X19),X22))|X19=k1_setfam_1(X13)|X13=k1_xboole_0)))&((X24!=k1_setfam_1(X23)|X24=k1_xboole_0|X23!=k1_xboole_0)&(X25!=k1_xboole_0|X25=k1_setfam_1(X23)|X23!=k1_xboole_0))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_setfam_1])])])])])])).
% 0.19/0.36  fof(c_0_6, plain, ![X11, X12]:k2_xboole_0(k1_tarski(X11),X12)!=k1_xboole_0, inference(variable_rename,[status(thm)],[t49_zfmisc_1])).
% 0.19/0.36  fof(c_0_7, plain, ![X9, X10]:(~r2_hidden(X9,X10)|k2_xboole_0(k1_tarski(X9),X10)=X10), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l22_zfmisc_1])])).
% 0.19/0.36  cnf(c_0_8, plain, (r2_hidden(X1,X3)|X4=k1_xboole_0|~r2_hidden(X1,X2)|~r2_hidden(X3,X4)|X2!=k1_setfam_1(X4)), inference(split_conjunct,[status(thm)],[c_0_5])).
% 0.19/0.36  fof(c_0_9, plain, ![X7]:(X7=k1_xboole_0|r2_hidden(esk1_1(X7),X7)), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t7_xboole_0])])])])).
% 0.19/0.36  fof(c_0_10, negated_conjecture, ~(![X1]:(r2_hidden(k1_xboole_0,X1)=>k1_setfam_1(X1)=k1_xboole_0)), inference(assume_negation,[status(cth)],[t5_setfam_1])).
% 0.19/0.36  cnf(c_0_11, plain, (k2_xboole_0(k1_tarski(X1),X2)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.19/0.36  cnf(c_0_12, plain, (k2_xboole_0(k1_tarski(X1),X2)=X2|~r2_hidden(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.19/0.36  cnf(c_0_13, plain, (X1=k1_xboole_0|r2_hidden(X2,X3)|~r2_hidden(X2,k1_setfam_1(X1))|~r2_hidden(X3,X1)), inference(er,[status(thm)],[c_0_8])).
% 0.19/0.36  cnf(c_0_14, plain, (X1=k1_xboole_0|r2_hidden(esk1_1(X1),X1)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.19/0.36  fof(c_0_15, negated_conjecture, (r2_hidden(k1_xboole_0,esk5_0)&k1_setfam_1(esk5_0)!=k1_xboole_0), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_10])])])).
% 0.19/0.36  cnf(c_0_16, plain, (~r2_hidden(X1,k1_xboole_0)), inference(er,[status(thm)],[inference(spm,[status(thm)],[c_0_11, c_0_12])])).
% 0.19/0.36  cnf(c_0_17, plain, (k1_setfam_1(X1)=k1_xboole_0|X1=k1_xboole_0|r2_hidden(esk1_1(k1_setfam_1(X1)),X2)|~r2_hidden(X2,X1)), inference(spm,[status(thm)],[c_0_13, c_0_14])).
% 0.19/0.36  cnf(c_0_18, negated_conjecture, (k1_setfam_1(esk5_0)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.36  cnf(c_0_19, plain, (k1_setfam_1(X1)=k1_xboole_0|X1=k1_xboole_0|~r2_hidden(k1_xboole_0,X1)), inference(spm,[status(thm)],[c_0_16, c_0_17])).
% 0.19/0.36  cnf(c_0_20, negated_conjecture, (r2_hidden(k1_xboole_0,esk5_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.36  cnf(c_0_21, negated_conjecture, (esk5_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_18, c_0_19]), c_0_20])])).
% 0.19/0.36  cnf(c_0_22, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(rw,[status(thm)],[c_0_20, c_0_21]), c_0_16]), ['proof']).
% 0.19/0.36  # SZS output end CNFRefutation
% 0.19/0.36  # Proof object total steps             : 23
% 0.19/0.36  # Proof object clause steps            : 12
% 0.19/0.36  # Proof object formula steps           : 11
% 0.19/0.36  # Proof object conjectures             : 7
% 0.19/0.36  # Proof object clause conjectures      : 4
% 0.19/0.36  # Proof object formula conjectures     : 3
% 0.19/0.36  # Proof object initial clauses used    : 6
% 0.19/0.36  # Proof object initial formulas used   : 5
% 0.19/0.36  # Proof object generating inferences   : 4
% 0.19/0.36  # Proof object simplifying inferences  : 6
% 0.19/0.36  # Training examples: 0 positive, 0 negative
% 0.19/0.36  # Parsed axioms                        : 6
% 0.19/0.36  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.36  # Initial clauses                      : 14
% 0.19/0.36  # Removed in clause preprocessing      : 0
% 0.19/0.36  # Initial clauses in saturation        : 14
% 0.19/0.36  # Processed clauses                    : 21
% 0.19/0.36  # ...of these trivial                  : 0
% 0.19/0.36  # ...subsumed                          : 1
% 0.19/0.36  # ...remaining for further processing  : 20
% 0.19/0.36  # Other redundant clauses eliminated   : 8
% 0.19/0.36  # Clauses deleted for lack of memory   : 0
% 0.19/0.36  # Backward-subsumed                    : 0
% 0.19/0.36  # Backward-rewritten                   : 2
% 0.19/0.36  # Generated clauses                    : 21
% 0.19/0.36  # ...of the previous two non-trivial   : 19
% 0.19/0.36  # Contextual simplify-reflections      : 0
% 0.19/0.36  # Paramodulations                      : 15
% 0.19/0.36  # Factorizations                       : 0
% 0.19/0.36  # Equation resolutions                 : 8
% 0.19/0.36  # Propositional unsat checks           : 0
% 0.19/0.36  #    Propositional check models        : 0
% 0.19/0.36  #    Propositional check unsatisfiable : 0
% 0.19/0.36  #    Propositional clauses             : 0
% 0.19/0.36  #    Propositional clauses after purity: 0
% 0.19/0.36  #    Propositional unsat core size     : 0
% 0.19/0.36  #    Propositional preprocessing time  : 0.000
% 0.19/0.36  #    Propositional encoding time       : 0.000
% 0.19/0.36  #    Propositional solver time         : 0.000
% 0.19/0.36  #    Success case prop preproc time    : 0.000
% 0.19/0.36  #    Success case prop encoding time   : 0.000
% 0.19/0.36  #    Success case prop solver time     : 0.000
% 0.19/0.36  # Current number of processed clauses  : 13
% 0.19/0.36  #    Positive orientable unit clauses  : 2
% 0.19/0.36  #    Positive unorientable unit clauses: 0
% 0.19/0.36  #    Negative unit clauses             : 2
% 0.19/0.36  #    Non-unit-clauses                  : 9
% 0.19/0.36  # Current number of unprocessed clauses: 12
% 0.19/0.36  # ...number of literals in the above   : 51
% 0.19/0.36  # Current number of archived formulas  : 0
% 0.19/0.36  # Current number of archived clauses   : 2
% 0.19/0.36  # Clause-clause subsumption calls (NU) : 47
% 0.19/0.36  # Rec. Clause-clause subsumption calls : 31
% 0.19/0.36  # Non-unit clause-clause subsumptions  : 0
% 0.19/0.36  # Unit Clause-clause subsumption calls : 0
% 0.19/0.36  # Rewrite failures with RHS unbound    : 0
% 0.19/0.36  # BW rewrite match attempts            : 1
% 0.19/0.36  # BW rewrite match successes           : 1
% 0.19/0.36  # Condensation attempts                : 0
% 0.19/0.36  # Condensation successes               : 0
% 0.19/0.36  # Termbank termtop insertions          : 1167
% 0.19/0.36  
% 0.19/0.36  # -------------------------------------------------
% 0.19/0.36  # User time                : 0.024 s
% 0.19/0.36  # System time              : 0.007 s
% 0.19/0.36  # Total time               : 0.032 s
% 0.19/0.36  # Maximum resident set size: 1568 pages
%------------------------------------------------------------------------------
