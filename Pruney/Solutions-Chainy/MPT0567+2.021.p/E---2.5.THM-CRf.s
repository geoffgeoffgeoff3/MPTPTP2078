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
% DateTime   : Thu Dec  3 10:51:13 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   26 (  29 expanded)
%              Number of clauses        :   13 (  13 expanded)
%              Number of leaves         :    6 (   7 expanded)
%              Depth                    :    8
%              Number of atoms          :   68 (  74 expanded)
%              Number of equality atoms :   21 (  24 expanded)
%              Maximal formula depth    :   13 (   4 average)
%              Maximal clause size      :   14 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t113_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( k2_zfmisc_1(X1,X2) = k1_xboole_0
    <=> ( X1 = k1_xboole_0
        | X2 = k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t113_zfmisc_1)).

fof(t152_zfmisc_1,axiom,(
    ! [X1,X2] : ~ r2_hidden(X1,k2_zfmisc_1(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t152_zfmisc_1)).

fof(t166_relat_1,axiom,(
    ! [X1,X2,X3] :
      ( v1_relat_1(X3)
     => ( r2_hidden(X1,k10_relat_1(X3,X2))
      <=> ? [X4] :
            ( r2_hidden(X4,k2_relat_1(X3))
            & r2_hidden(k4_tarski(X1,X4),X3)
            & r2_hidden(X4,X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t166_relat_1)).

fof(d1_xboole_0,axiom,(
    ! [X1] :
      ( v1_xboole_0(X1)
    <=> ! [X2] : ~ r2_hidden(X2,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_xboole_0)).

fof(t171_relat_1,conjecture,(
    ! [X1] :
      ( v1_relat_1(X1)
     => k10_relat_1(X1,k1_xboole_0) = k1_xboole_0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t171_relat_1)).

fof(l13_xboole_0,axiom,(
    ! [X1] :
      ( v1_xboole_0(X1)
     => X1 = k1_xboole_0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l13_xboole_0)).

fof(c_0_6,plain,(
    ! [X10,X11] :
      ( ( k2_zfmisc_1(X10,X11) != k1_xboole_0
        | X10 = k1_xboole_0
        | X11 = k1_xboole_0 )
      & ( X10 != k1_xboole_0
        | k2_zfmisc_1(X10,X11) = k1_xboole_0 )
      & ( X11 != k1_xboole_0
        | k2_zfmisc_1(X10,X11) = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t113_zfmisc_1])])])).

fof(c_0_7,plain,(
    ! [X12,X13] : ~ r2_hidden(X12,k2_zfmisc_1(X12,X13)) ),
    inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[t152_zfmisc_1])])).

cnf(c_0_8,plain,
    ( k2_zfmisc_1(X2,X1) = k1_xboole_0
    | X1 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_9,plain,
    ( ~ r2_hidden(X1,k2_zfmisc_1(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_10,plain,
    ( k2_zfmisc_1(X1,k1_xboole_0) = k1_xboole_0 ),
    inference(er,[status(thm)],[c_0_8])).

fof(c_0_11,plain,(
    ! [X14,X15,X16,X18] :
      ( ( r2_hidden(esk2_3(X14,X15,X16),k2_relat_1(X16))
        | ~ r2_hidden(X14,k10_relat_1(X16,X15))
        | ~ v1_relat_1(X16) )
      & ( r2_hidden(k4_tarski(X14,esk2_3(X14,X15,X16)),X16)
        | ~ r2_hidden(X14,k10_relat_1(X16,X15))
        | ~ v1_relat_1(X16) )
      & ( r2_hidden(esk2_3(X14,X15,X16),X15)
        | ~ r2_hidden(X14,k10_relat_1(X16,X15))
        | ~ v1_relat_1(X16) )
      & ( ~ r2_hidden(X18,k2_relat_1(X16))
        | ~ r2_hidden(k4_tarski(X14,X18),X16)
        | ~ r2_hidden(X18,X15)
        | r2_hidden(X14,k10_relat_1(X16,X15))
        | ~ v1_relat_1(X16) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t166_relat_1])])])])])).

cnf(c_0_12,plain,
    ( ~ r2_hidden(X1,k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_9,c_0_10])).

cnf(c_0_13,plain,
    ( r2_hidden(esk2_3(X1,X2,X3),X2)
    | ~ r2_hidden(X1,k10_relat_1(X3,X2))
    | ~ v1_relat_1(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

fof(c_0_14,plain,(
    ! [X5,X6,X7] :
      ( ( ~ v1_xboole_0(X5)
        | ~ r2_hidden(X6,X5) )
      & ( r2_hidden(esk1_1(X7),X7)
        | v1_xboole_0(X7) ) ) ),
    inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d1_xboole_0])])])])])])).

fof(c_0_15,negated_conjecture,(
    ~ ! [X1] :
        ( v1_relat_1(X1)
       => k10_relat_1(X1,k1_xboole_0) = k1_xboole_0 ) ),
    inference(assume_negation,[status(cth)],[t171_relat_1])).

fof(c_0_16,plain,(
    ! [X9] :
      ( ~ v1_xboole_0(X9)
      | X9 = k1_xboole_0 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l13_xboole_0])])).

cnf(c_0_17,plain,
    ( ~ v1_relat_1(X1)
    | ~ r2_hidden(X2,k10_relat_1(X1,k1_xboole_0)) ),
    inference(spm,[status(thm)],[c_0_12,c_0_13])).

cnf(c_0_18,plain,
    ( r2_hidden(esk1_1(X1),X1)
    | v1_xboole_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

fof(c_0_19,negated_conjecture,
    ( v1_relat_1(esk3_0)
    & k10_relat_1(esk3_0,k1_xboole_0) != k1_xboole_0 ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_15])])])).

cnf(c_0_20,plain,
    ( X1 = k1_xboole_0
    | ~ v1_xboole_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_21,plain,
    ( v1_xboole_0(k10_relat_1(X1,k1_xboole_0))
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_17,c_0_18])).

cnf(c_0_22,negated_conjecture,
    ( k10_relat_1(esk3_0,k1_xboole_0) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_23,plain,
    ( k10_relat_1(X1,k1_xboole_0) = k1_xboole_0
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_20,c_0_21])).

cnf(c_0_24,negated_conjecture,
    ( v1_relat_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_25,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22,c_0_23]),c_0_24])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n001.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 16:24:15 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.13/0.37  # AutoSched0-Mode selected heuristic G_E___300_C18_F1_SE_CS_SP_S0Y
% 0.13/0.37  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.13/0.37  #
% 0.13/0.37  # Preprocessing time       : 0.028 s
% 0.13/0.37  
% 0.13/0.37  # Proof found!
% 0.13/0.37  # SZS status Theorem
% 0.13/0.37  # SZS output start CNFRefutation
% 0.13/0.37  fof(t113_zfmisc_1, axiom, ![X1, X2]:(k2_zfmisc_1(X1,X2)=k1_xboole_0<=>(X1=k1_xboole_0|X2=k1_xboole_0)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t113_zfmisc_1)).
% 0.13/0.37  fof(t152_zfmisc_1, axiom, ![X1, X2]:~(r2_hidden(X1,k2_zfmisc_1(X1,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t152_zfmisc_1)).
% 0.13/0.37  fof(t166_relat_1, axiom, ![X1, X2, X3]:(v1_relat_1(X3)=>(r2_hidden(X1,k10_relat_1(X3,X2))<=>?[X4]:((r2_hidden(X4,k2_relat_1(X3))&r2_hidden(k4_tarski(X1,X4),X3))&r2_hidden(X4,X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t166_relat_1)).
% 0.13/0.37  fof(d1_xboole_0, axiom, ![X1]:(v1_xboole_0(X1)<=>![X2]:~(r2_hidden(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_xboole_0)).
% 0.13/0.37  fof(t171_relat_1, conjecture, ![X1]:(v1_relat_1(X1)=>k10_relat_1(X1,k1_xboole_0)=k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t171_relat_1)).
% 0.13/0.37  fof(l13_xboole_0, axiom, ![X1]:(v1_xboole_0(X1)=>X1=k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l13_xboole_0)).
% 0.13/0.37  fof(c_0_6, plain, ![X10, X11]:((k2_zfmisc_1(X10,X11)!=k1_xboole_0|(X10=k1_xboole_0|X11=k1_xboole_0))&((X10!=k1_xboole_0|k2_zfmisc_1(X10,X11)=k1_xboole_0)&(X11!=k1_xboole_0|k2_zfmisc_1(X10,X11)=k1_xboole_0))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t113_zfmisc_1])])])).
% 0.13/0.37  fof(c_0_7, plain, ![X12, X13]:~r2_hidden(X12,k2_zfmisc_1(X12,X13)), inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[t152_zfmisc_1])])).
% 0.13/0.37  cnf(c_0_8, plain, (k2_zfmisc_1(X2,X1)=k1_xboole_0|X1!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.13/0.37  cnf(c_0_9, plain, (~r2_hidden(X1,k2_zfmisc_1(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.13/0.37  cnf(c_0_10, plain, (k2_zfmisc_1(X1,k1_xboole_0)=k1_xboole_0), inference(er,[status(thm)],[c_0_8])).
% 0.13/0.37  fof(c_0_11, plain, ![X14, X15, X16, X18]:((((r2_hidden(esk2_3(X14,X15,X16),k2_relat_1(X16))|~r2_hidden(X14,k10_relat_1(X16,X15))|~v1_relat_1(X16))&(r2_hidden(k4_tarski(X14,esk2_3(X14,X15,X16)),X16)|~r2_hidden(X14,k10_relat_1(X16,X15))|~v1_relat_1(X16)))&(r2_hidden(esk2_3(X14,X15,X16),X15)|~r2_hidden(X14,k10_relat_1(X16,X15))|~v1_relat_1(X16)))&(~r2_hidden(X18,k2_relat_1(X16))|~r2_hidden(k4_tarski(X14,X18),X16)|~r2_hidden(X18,X15)|r2_hidden(X14,k10_relat_1(X16,X15))|~v1_relat_1(X16))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t166_relat_1])])])])])).
% 0.13/0.37  cnf(c_0_12, plain, (~r2_hidden(X1,k1_xboole_0)), inference(spm,[status(thm)],[c_0_9, c_0_10])).
% 0.13/0.37  cnf(c_0_13, plain, (r2_hidden(esk2_3(X1,X2,X3),X2)|~r2_hidden(X1,k10_relat_1(X3,X2))|~v1_relat_1(X3)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.13/0.37  fof(c_0_14, plain, ![X5, X6, X7]:((~v1_xboole_0(X5)|~r2_hidden(X6,X5))&(r2_hidden(esk1_1(X7),X7)|v1_xboole_0(X7))), inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d1_xboole_0])])])])])])).
% 0.13/0.37  fof(c_0_15, negated_conjecture, ~(![X1]:(v1_relat_1(X1)=>k10_relat_1(X1,k1_xboole_0)=k1_xboole_0)), inference(assume_negation,[status(cth)],[t171_relat_1])).
% 0.13/0.37  fof(c_0_16, plain, ![X9]:(~v1_xboole_0(X9)|X9=k1_xboole_0), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l13_xboole_0])])).
% 0.13/0.37  cnf(c_0_17, plain, (~v1_relat_1(X1)|~r2_hidden(X2,k10_relat_1(X1,k1_xboole_0))), inference(spm,[status(thm)],[c_0_12, c_0_13])).
% 0.13/0.37  cnf(c_0_18, plain, (r2_hidden(esk1_1(X1),X1)|v1_xboole_0(X1)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.13/0.37  fof(c_0_19, negated_conjecture, (v1_relat_1(esk3_0)&k10_relat_1(esk3_0,k1_xboole_0)!=k1_xboole_0), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_15])])])).
% 0.13/0.37  cnf(c_0_20, plain, (X1=k1_xboole_0|~v1_xboole_0(X1)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.13/0.37  cnf(c_0_21, plain, (v1_xboole_0(k10_relat_1(X1,k1_xboole_0))|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_17, c_0_18])).
% 0.13/0.37  cnf(c_0_22, negated_conjecture, (k10_relat_1(esk3_0,k1_xboole_0)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.13/0.37  cnf(c_0_23, plain, (k10_relat_1(X1,k1_xboole_0)=k1_xboole_0|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_20, c_0_21])).
% 0.13/0.37  cnf(c_0_24, negated_conjecture, (v1_relat_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.13/0.37  cnf(c_0_25, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22, c_0_23]), c_0_24])]), ['proof']).
% 0.13/0.37  # SZS output end CNFRefutation
% 0.13/0.37  # Proof object total steps             : 26
% 0.13/0.37  # Proof object clause steps            : 13
% 0.13/0.37  # Proof object formula steps           : 13
% 0.13/0.37  # Proof object conjectures             : 6
% 0.13/0.37  # Proof object clause conjectures      : 3
% 0.13/0.37  # Proof object formula conjectures     : 3
% 0.13/0.37  # Proof object initial clauses used    : 7
% 0.13/0.37  # Proof object initial formulas used   : 6
% 0.13/0.37  # Proof object generating inferences   : 5
% 0.13/0.37  # Proof object simplifying inferences  : 3
% 0.13/0.37  # Training examples: 0 positive, 0 negative
% 0.13/0.37  # Parsed axioms                        : 6
% 0.13/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.37  # Initial clauses                      : 13
% 0.13/0.37  # Removed in clause preprocessing      : 0
% 0.13/0.37  # Initial clauses in saturation        : 13
% 0.13/0.37  # Processed clauses                    : 19
% 0.13/0.37  # ...of these trivial                  : 0
% 0.13/0.37  # ...subsumed                          : 1
% 0.13/0.37  # ...remaining for further processing  : 18
% 0.13/0.37  # Other redundant clauses eliminated   : 2
% 0.13/0.37  # Clauses deleted for lack of memory   : 0
% 0.13/0.37  # Backward-subsumed                    : 0
% 0.13/0.37  # Backward-rewritten                   : 0
% 0.13/0.37  # Generated clauses                    : 14
% 0.13/0.37  # ...of the previous two non-trivial   : 10
% 0.13/0.37  # Contextual simplify-reflections      : 0
% 0.13/0.37  # Paramodulations                      : 12
% 0.13/0.37  # Factorizations                       : 0
% 0.13/0.37  # Equation resolutions                 : 2
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
% 0.13/0.37  # Current number of processed clauses  : 16
% 0.13/0.37  #    Positive orientable unit clauses  : 4
% 0.13/0.37  #    Positive unorientable unit clauses: 0
% 0.13/0.37  #    Negative unit clauses             : 3
% 0.13/0.37  #    Non-unit-clauses                  : 9
% 0.13/0.37  # Current number of unprocessed clauses: 4
% 0.13/0.37  # ...number of literals in the above   : 12
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
% 0.13/0.37  # Termbank termtop insertions          : 842
% 0.13/0.37  
% 0.13/0.37  # -------------------------------------------------
% 0.13/0.37  # User time                : 0.025 s
% 0.13/0.37  # System time              : 0.007 s
% 0.13/0.37  # Total time               : 0.032 s
% 0.13/0.37  # Maximum resident set size: 1568 pages
%------------------------------------------------------------------------------
