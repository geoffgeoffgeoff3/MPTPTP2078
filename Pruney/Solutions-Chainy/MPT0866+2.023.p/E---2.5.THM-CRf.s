%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n024.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:59:33 EST 2020

% Result     : Theorem 0.21s
% Output     : CNFRefutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   28 (  37 expanded)
%              Number of clauses        :   14 (  14 expanded)
%              Number of leaves         :    7 (  10 expanded)
%              Depth                    :    7
%              Number of atoms          :   64 ( 100 expanded)
%              Number of equality atoms :   35 (  62 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal clause size      :    6 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t24_mcart_1,conjecture,(
    ! [X1,X2] :
      ~ ( X1 != k1_xboole_0
        & X2 != k1_xboole_0
        & ~ ! [X3] :
              ( m1_subset_1(X3,k2_zfmisc_1(X1,X2))
             => X3 = k4_tarski(k1_mcart_1(X3),k2_mcart_1(X3)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t24_mcart_1)).

fof(t2_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,X2)
     => ( v1_xboole_0(X2)
        | r2_hidden(X1,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_subset)).

fof(t23_mcart_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( r2_hidden(X1,X2)
       => X1 = k4_tarski(k1_mcart_1(X1),k2_mcart_1(X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t23_mcart_1)).

fof(fc6_relat_1,axiom,(
    ! [X1,X2] : v1_relat_1(k2_zfmisc_1(X1,X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc6_relat_1)).

fof(l13_xboole_0,axiom,(
    ! [X1] :
      ( v1_xboole_0(X1)
     => X1 = k1_xboole_0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l13_xboole_0)).

fof(t195_relat_1,axiom,(
    ! [X1,X2] :
      ~ ( X1 != k1_xboole_0
        & X2 != k1_xboole_0
        & ~ ( k1_relat_1(k2_zfmisc_1(X1,X2)) = X1
            & k2_relat_1(k2_zfmisc_1(X1,X2)) = X2 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t195_relat_1)).

fof(t60_relat_1,axiom,
    ( k1_relat_1(k1_xboole_0) = k1_xboole_0
    & k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t60_relat_1)).

fof(c_0_7,negated_conjecture,(
    ~ ! [X1,X2] :
        ~ ( X1 != k1_xboole_0
          & X2 != k1_xboole_0
          & ~ ! [X3] :
                ( m1_subset_1(X3,k2_zfmisc_1(X1,X2))
               => X3 = k4_tarski(k1_mcart_1(X3),k2_mcart_1(X3)) ) ) ),
    inference(assume_negation,[status(cth)],[t24_mcart_1])).

fof(c_0_8,plain,(
    ! [X5,X6] :
      ( ~ m1_subset_1(X5,X6)
      | v1_xboole_0(X6)
      | r2_hidden(X5,X6) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_subset])])).

fof(c_0_9,negated_conjecture,
    ( esk1_0 != k1_xboole_0
    & esk2_0 != k1_xboole_0
    & m1_subset_1(esk3_0,k2_zfmisc_1(esk1_0,esk2_0))
    & esk3_0 != k4_tarski(k1_mcart_1(esk3_0),k2_mcart_1(esk3_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_7])])])).

fof(c_0_10,plain,(
    ! [X11,X12] :
      ( ~ v1_relat_1(X12)
      | ~ r2_hidden(X11,X12)
      | X11 = k4_tarski(k1_mcart_1(X11),k2_mcart_1(X11)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t23_mcart_1])])).

cnf(c_0_11,plain,
    ( v1_xboole_0(X2)
    | r2_hidden(X1,X2)
    | ~ m1_subset_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_12,negated_conjecture,
    ( m1_subset_1(esk3_0,k2_zfmisc_1(esk1_0,esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

fof(c_0_13,plain,(
    ! [X7,X8] : v1_relat_1(k2_zfmisc_1(X7,X8)) ),
    inference(variable_rename,[status(thm)],[fc6_relat_1])).

fof(c_0_14,plain,(
    ! [X4] :
      ( ~ v1_xboole_0(X4)
      | X4 = k1_xboole_0 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l13_xboole_0])])).

cnf(c_0_15,plain,
    ( X2 = k4_tarski(k1_mcart_1(X2),k2_mcart_1(X2))
    | ~ v1_relat_1(X1)
    | ~ r2_hidden(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_16,negated_conjecture,
    ( r2_hidden(esk3_0,k2_zfmisc_1(esk1_0,esk2_0))
    | v1_xboole_0(k2_zfmisc_1(esk1_0,esk2_0)) ),
    inference(spm,[status(thm)],[c_0_11,c_0_12])).

cnf(c_0_17,plain,
    ( v1_relat_1(k2_zfmisc_1(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_18,negated_conjecture,
    ( esk3_0 != k4_tarski(k1_mcart_1(esk3_0),k2_mcart_1(esk3_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

fof(c_0_19,plain,(
    ! [X9,X10] :
      ( ( k1_relat_1(k2_zfmisc_1(X9,X10)) = X9
        | X9 = k1_xboole_0
        | X10 = k1_xboole_0 )
      & ( k2_relat_1(k2_zfmisc_1(X9,X10)) = X10
        | X9 = k1_xboole_0
        | X10 = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t195_relat_1])])])).

cnf(c_0_20,plain,
    ( X1 = k1_xboole_0
    | ~ v1_xboole_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_21,negated_conjecture,
    ( v1_xboole_0(k2_zfmisc_1(esk1_0,esk2_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_15,c_0_16]),c_0_17])]),c_0_18])).

cnf(c_0_22,plain,
    ( k1_relat_1(k2_zfmisc_1(X1,X2)) = X1
    | X1 = k1_xboole_0
    | X2 = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_23,negated_conjecture,
    ( k2_zfmisc_1(esk1_0,esk2_0) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_20,c_0_21])).

cnf(c_0_24,plain,
    ( k1_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[t60_relat_1])).

cnf(c_0_25,negated_conjecture,
    ( esk1_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_26,negated_conjecture,
    ( esk2_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_27,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22,c_0_23]),c_0_24])]),c_0_25]),c_0_26]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.34  % Computer   : n024.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 13:36:36 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  # Version: 2.5pre002
% 0.14/0.34  # No SInE strategy applied
% 0.14/0.34  # Trying AutoSched0 for 299 seconds
% 0.21/0.37  # AutoSched0-Mode selected heuristic G_E___024_B31_F1_PI_AE_Q4_CS_SP_S2S
% 0.21/0.37  # and selection function SelectNewComplexAHP.
% 0.21/0.37  #
% 0.21/0.37  # Preprocessing time       : 0.026 s
% 0.21/0.37  
% 0.21/0.37  # Proof found!
% 0.21/0.37  # SZS status Theorem
% 0.21/0.37  # SZS output start CNFRefutation
% 0.21/0.37  fof(t24_mcart_1, conjecture, ![X1, X2]:~(((X1!=k1_xboole_0&X2!=k1_xboole_0)&~(![X3]:(m1_subset_1(X3,k2_zfmisc_1(X1,X2))=>X3=k4_tarski(k1_mcart_1(X3),k2_mcart_1(X3)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t24_mcart_1)).
% 0.21/0.37  fof(t2_subset, axiom, ![X1, X2]:(m1_subset_1(X1,X2)=>(v1_xboole_0(X2)|r2_hidden(X1,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t2_subset)).
% 0.21/0.37  fof(t23_mcart_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(r2_hidden(X1,X2)=>X1=k4_tarski(k1_mcart_1(X1),k2_mcart_1(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t23_mcart_1)).
% 0.21/0.37  fof(fc6_relat_1, axiom, ![X1, X2]:v1_relat_1(k2_zfmisc_1(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc6_relat_1)).
% 0.21/0.37  fof(l13_xboole_0, axiom, ![X1]:(v1_xboole_0(X1)=>X1=k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l13_xboole_0)).
% 0.21/0.37  fof(t195_relat_1, axiom, ![X1, X2]:~(((X1!=k1_xboole_0&X2!=k1_xboole_0)&~((k1_relat_1(k2_zfmisc_1(X1,X2))=X1&k2_relat_1(k2_zfmisc_1(X1,X2))=X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t195_relat_1)).
% 0.21/0.37  fof(t60_relat_1, axiom, (k1_relat_1(k1_xboole_0)=k1_xboole_0&k2_relat_1(k1_xboole_0)=k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t60_relat_1)).
% 0.21/0.37  fof(c_0_7, negated_conjecture, ~(![X1, X2]:~(((X1!=k1_xboole_0&X2!=k1_xboole_0)&~(![X3]:(m1_subset_1(X3,k2_zfmisc_1(X1,X2))=>X3=k4_tarski(k1_mcart_1(X3),k2_mcart_1(X3))))))), inference(assume_negation,[status(cth)],[t24_mcart_1])).
% 0.21/0.37  fof(c_0_8, plain, ![X5, X6]:(~m1_subset_1(X5,X6)|(v1_xboole_0(X6)|r2_hidden(X5,X6))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_subset])])).
% 0.21/0.37  fof(c_0_9, negated_conjecture, ((esk1_0!=k1_xboole_0&esk2_0!=k1_xboole_0)&(m1_subset_1(esk3_0,k2_zfmisc_1(esk1_0,esk2_0))&esk3_0!=k4_tarski(k1_mcart_1(esk3_0),k2_mcart_1(esk3_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_7])])])).
% 0.21/0.37  fof(c_0_10, plain, ![X11, X12]:(~v1_relat_1(X12)|(~r2_hidden(X11,X12)|X11=k4_tarski(k1_mcart_1(X11),k2_mcart_1(X11)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t23_mcart_1])])).
% 0.21/0.37  cnf(c_0_11, plain, (v1_xboole_0(X2)|r2_hidden(X1,X2)|~m1_subset_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.21/0.37  cnf(c_0_12, negated_conjecture, (m1_subset_1(esk3_0,k2_zfmisc_1(esk1_0,esk2_0))), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.21/0.37  fof(c_0_13, plain, ![X7, X8]:v1_relat_1(k2_zfmisc_1(X7,X8)), inference(variable_rename,[status(thm)],[fc6_relat_1])).
% 0.21/0.37  fof(c_0_14, plain, ![X4]:(~v1_xboole_0(X4)|X4=k1_xboole_0), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l13_xboole_0])])).
% 0.21/0.37  cnf(c_0_15, plain, (X2=k4_tarski(k1_mcart_1(X2),k2_mcart_1(X2))|~v1_relat_1(X1)|~r2_hidden(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.21/0.37  cnf(c_0_16, negated_conjecture, (r2_hidden(esk3_0,k2_zfmisc_1(esk1_0,esk2_0))|v1_xboole_0(k2_zfmisc_1(esk1_0,esk2_0))), inference(spm,[status(thm)],[c_0_11, c_0_12])).
% 0.21/0.37  cnf(c_0_17, plain, (v1_relat_1(k2_zfmisc_1(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.21/0.37  cnf(c_0_18, negated_conjecture, (esk3_0!=k4_tarski(k1_mcart_1(esk3_0),k2_mcart_1(esk3_0))), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.21/0.37  fof(c_0_19, plain, ![X9, X10]:((k1_relat_1(k2_zfmisc_1(X9,X10))=X9|(X9=k1_xboole_0|X10=k1_xboole_0))&(k2_relat_1(k2_zfmisc_1(X9,X10))=X10|(X9=k1_xboole_0|X10=k1_xboole_0))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t195_relat_1])])])).
% 0.21/0.37  cnf(c_0_20, plain, (X1=k1_xboole_0|~v1_xboole_0(X1)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.21/0.37  cnf(c_0_21, negated_conjecture, (v1_xboole_0(k2_zfmisc_1(esk1_0,esk2_0))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_15, c_0_16]), c_0_17])]), c_0_18])).
% 0.21/0.37  cnf(c_0_22, plain, (k1_relat_1(k2_zfmisc_1(X1,X2))=X1|X1=k1_xboole_0|X2=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.21/0.37  cnf(c_0_23, negated_conjecture, (k2_zfmisc_1(esk1_0,esk2_0)=k1_xboole_0), inference(spm,[status(thm)],[c_0_20, c_0_21])).
% 0.21/0.37  cnf(c_0_24, plain, (k1_relat_1(k1_xboole_0)=k1_xboole_0), inference(split_conjunct,[status(thm)],[t60_relat_1])).
% 0.21/0.37  cnf(c_0_25, negated_conjecture, (esk1_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.21/0.37  cnf(c_0_26, negated_conjecture, (esk2_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.21/0.37  cnf(c_0_27, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22, c_0_23]), c_0_24])]), c_0_25]), c_0_26]), ['proof']).
% 0.21/0.37  # SZS output end CNFRefutation
% 0.21/0.37  # Proof object total steps             : 28
% 0.21/0.37  # Proof object clause steps            : 14
% 0.21/0.37  # Proof object formula steps           : 14
% 0.21/0.37  # Proof object conjectures             : 11
% 0.21/0.37  # Proof object clause conjectures      : 8
% 0.21/0.37  # Proof object formula conjectures     : 3
% 0.21/0.37  # Proof object initial clauses used    : 10
% 0.21/0.37  # Proof object initial formulas used   : 7
% 0.21/0.37  # Proof object generating inferences   : 4
% 0.21/0.37  # Proof object simplifying inferences  : 7
% 0.21/0.37  # Training examples: 0 positive, 0 negative
% 0.21/0.37  # Parsed axioms                        : 7
% 0.21/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.21/0.37  # Initial clauses                      : 12
% 0.21/0.37  # Removed in clause preprocessing      : 0
% 0.21/0.37  # Initial clauses in saturation        : 12
% 0.21/0.37  # Processed clauses                    : 15
% 0.21/0.37  # ...of these trivial                  : 0
% 0.21/0.37  # ...subsumed                          : 0
% 0.21/0.37  # ...remaining for further processing  : 15
% 0.21/0.37  # Other redundant clauses eliminated   : 0
% 0.21/0.37  # Clauses deleted for lack of memory   : 0
% 0.21/0.37  # Backward-subsumed                    : 0
% 0.21/0.37  # Backward-rewritten                   : 3
% 0.21/0.37  # Generated clauses                    : 6
% 0.21/0.37  # ...of the previous two non-trivial   : 6
% 0.21/0.37  # Contextual simplify-reflections      : 0
% 0.21/0.37  # Paramodulations                      : 6
% 0.21/0.37  # Factorizations                       : 0
% 0.21/0.37  # Equation resolutions                 : 0
% 0.21/0.37  # Propositional unsat checks           : 0
% 0.21/0.37  #    Propositional check models        : 0
% 0.21/0.37  #    Propositional check unsatisfiable : 0
% 0.21/0.37  #    Propositional clauses             : 0
% 0.21/0.37  #    Propositional clauses after purity: 0
% 0.21/0.37  #    Propositional unsat core size     : 0
% 0.21/0.37  #    Propositional preprocessing time  : 0.000
% 0.21/0.37  #    Propositional encoding time       : 0.000
% 0.21/0.37  #    Propositional solver time         : 0.000
% 0.21/0.37  #    Success case prop preproc time    : 0.000
% 0.21/0.37  #    Success case prop encoding time   : 0.000
% 0.21/0.37  #    Success case prop solver time     : 0.000
% 0.21/0.37  # Current number of processed clauses  : 12
% 0.21/0.37  #    Positive orientable unit clauses  : 4
% 0.21/0.37  #    Positive unorientable unit clauses: 0
% 0.21/0.37  #    Negative unit clauses             : 3
% 0.21/0.37  #    Non-unit-clauses                  : 5
% 0.21/0.37  # Current number of unprocessed clauses: 0
% 0.21/0.37  # ...number of literals in the above   : 0
% 0.21/0.37  # Current number of archived formulas  : 0
% 0.21/0.37  # Current number of archived clauses   : 3
% 0.21/0.37  # Clause-clause subsumption calls (NU) : 7
% 0.21/0.37  # Rec. Clause-clause subsumption calls : 7
% 0.21/0.37  # Non-unit clause-clause subsumptions  : 0
% 0.21/0.37  # Unit Clause-clause subsumption calls : 1
% 0.21/0.37  # Rewrite failures with RHS unbound    : 0
% 0.21/0.37  # BW rewrite match attempts            : 2
% 0.21/0.37  # BW rewrite match successes           : 2
% 0.21/0.37  # Condensation attempts                : 0
% 0.21/0.37  # Condensation successes               : 0
% 0.21/0.37  # Termbank termtop insertions          : 621
% 0.21/0.37  
% 0.21/0.37  # -------------------------------------------------
% 0.21/0.37  # User time                : 0.026 s
% 0.21/0.37  # System time              : 0.003 s
% 0.21/0.37  # Total time               : 0.029 s
% 0.21/0.37  # Maximum resident set size: 1568 pages
%------------------------------------------------------------------------------
