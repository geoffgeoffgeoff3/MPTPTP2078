%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n014.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:12:56 EST 2020

% Result     : Theorem 0.14s
% Output     : CNFRefutation 0.14s
% Verified   : 
% Statistics : Number of formulae       :   22 (  87 expanded)
%              Number of clauses        :   13 (  32 expanded)
%              Number of leaves         :    4 (  21 expanded)
%              Depth                    :    6
%              Number of atoms          :   54 ( 345 expanded)
%              Number of equality atoms :   35 ( 269 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal clause size      :    9 (   2 average)
%              Maximal term depth       :    3 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t10_tops_2,conjecture,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X1)))
     => ( ~ ( X2 != k1_xboole_0
            & k7_setfam_1(X1,X2) = k1_xboole_0 )
        & ~ ( k7_setfam_1(X1,X2) != k1_xboole_0
            & X2 = k1_xboole_0 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t10_tops_2)).

fof(t46_setfam_1,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X1)))
     => ~ ( X2 != k1_xboole_0
          & k7_setfam_1(X1,X2) = k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t46_setfam_1)).

fof(involutiveness_k7_setfam_1,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X1)))
     => k7_setfam_1(X1,k7_setfam_1(X1,X2)) = X2 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',involutiveness_k7_setfam_1)).

fof(dt_k7_setfam_1,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X1)))
     => m1_subset_1(k7_setfam_1(X1,X2),k1_zfmisc_1(k1_zfmisc_1(X1))) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k7_setfam_1)).

fof(c_0_4,negated_conjecture,(
    ~ ! [X1,X2] :
        ( m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X1)))
       => ( ~ ( X2 != k1_xboole_0
              & k7_setfam_1(X1,X2) = k1_xboole_0 )
          & ~ ( k7_setfam_1(X1,X2) != k1_xboole_0
              & X2 = k1_xboole_0 ) ) ) ),
    inference(assume_negation,[status(cth)],[t10_tops_2])).

fof(c_0_5,plain,(
    ! [X7,X8] :
      ( ~ m1_subset_1(X8,k1_zfmisc_1(k1_zfmisc_1(X7)))
      | X8 = k1_xboole_0
      | k7_setfam_1(X7,X8) != k1_xboole_0 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t46_setfam_1])])).

fof(c_0_6,negated_conjecture,
    ( m1_subset_1(esk2_0,k1_zfmisc_1(k1_zfmisc_1(esk1_0)))
    & ( k7_setfam_1(esk1_0,esk2_0) != k1_xboole_0
      | esk2_0 != k1_xboole_0 )
    & ( esk2_0 = k1_xboole_0
      | esk2_0 != k1_xboole_0 )
    & ( k7_setfam_1(esk1_0,esk2_0) != k1_xboole_0
      | k7_setfam_1(esk1_0,esk2_0) = k1_xboole_0 )
    & ( esk2_0 = k1_xboole_0
      | k7_setfam_1(esk1_0,esk2_0) = k1_xboole_0 ) ),
    inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_4])])])])).

fof(c_0_7,plain,(
    ! [X5,X6] :
      ( ~ m1_subset_1(X6,k1_zfmisc_1(k1_zfmisc_1(X5)))
      | k7_setfam_1(X5,k7_setfam_1(X5,X6)) = X6 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[involutiveness_k7_setfam_1])])).

fof(c_0_8,plain,(
    ! [X3,X4] :
      ( ~ m1_subset_1(X4,k1_zfmisc_1(k1_zfmisc_1(X3)))
      | m1_subset_1(k7_setfam_1(X3,X4),k1_zfmisc_1(k1_zfmisc_1(X3))) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k7_setfam_1])])).

cnf(c_0_9,plain,
    ( X1 = k1_xboole_0
    | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X2)))
    | k7_setfam_1(X2,X1) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_10,negated_conjecture,
    ( m1_subset_1(esk2_0,k1_zfmisc_1(k1_zfmisc_1(esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_11,negated_conjecture,
    ( esk2_0 = k1_xboole_0
    | k7_setfam_1(esk1_0,esk2_0) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_12,plain,
    ( k7_setfam_1(X2,k7_setfam_1(X2,X1)) = X1
    | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_13,plain,
    ( m1_subset_1(k7_setfam_1(X2,X1),k1_zfmisc_1(k1_zfmisc_1(X2)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_14,negated_conjecture,
    ( esk2_0 = k1_xboole_0 ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_9,c_0_10]),c_0_11])).

cnf(c_0_15,negated_conjecture,
    ( k7_setfam_1(esk1_0,k7_setfam_1(esk1_0,esk2_0)) = esk2_0 ),
    inference(spm,[status(thm)],[c_0_12,c_0_10])).

cnf(c_0_16,negated_conjecture,
    ( k7_setfam_1(esk1_0,esk2_0) != k1_xboole_0
    | esk2_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_17,plain,
    ( k7_setfam_1(X1,X2) = k1_xboole_0
    | k7_setfam_1(X1,k7_setfam_1(X1,X2)) != k1_xboole_0
    | ~ m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X1))) ),
    inference(spm,[status(thm)],[c_0_9,c_0_13])).

cnf(c_0_18,negated_conjecture,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_zfmisc_1(esk1_0))) ),
    inference(rw,[status(thm)],[c_0_10,c_0_14])).

cnf(c_0_19,negated_conjecture,
    ( k7_setfam_1(esk1_0,k7_setfam_1(esk1_0,k1_xboole_0)) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_15,c_0_14]),c_0_14])).

cnf(c_0_20,negated_conjecture,
    ( k7_setfam_1(esk1_0,k1_xboole_0) != k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_16,c_0_14]),c_0_14])])).

cnf(c_0_21,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_17,c_0_18]),c_0_19])]),c_0_20]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.34  % Computer   : n014.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 19:08:52 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  # Version: 2.5pre002
% 0.14/0.34  # No SInE strategy applied
% 0.14/0.34  # Trying AutoSched0 for 299 seconds
% 0.14/0.37  # AutoSched0-Mode selected heuristic G_E___300_C18_F1_SE_CS_SP_S0Y
% 0.14/0.37  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.14/0.37  #
% 0.14/0.37  # Preprocessing time       : 0.026 s
% 0.14/0.37  
% 0.14/0.37  # Proof found!
% 0.14/0.37  # SZS status Theorem
% 0.14/0.37  # SZS output start CNFRefutation
% 0.14/0.37  fof(t10_tops_2, conjecture, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X1)))=>(~((X2!=k1_xboole_0&k7_setfam_1(X1,X2)=k1_xboole_0))&~((k7_setfam_1(X1,X2)!=k1_xboole_0&X2=k1_xboole_0)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t10_tops_2)).
% 0.14/0.37  fof(t46_setfam_1, axiom, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X1)))=>~((X2!=k1_xboole_0&k7_setfam_1(X1,X2)=k1_xboole_0))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t46_setfam_1)).
% 0.14/0.37  fof(involutiveness_k7_setfam_1, axiom, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X1)))=>k7_setfam_1(X1,k7_setfam_1(X1,X2))=X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', involutiveness_k7_setfam_1)).
% 0.14/0.37  fof(dt_k7_setfam_1, axiom, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X1)))=>m1_subset_1(k7_setfam_1(X1,X2),k1_zfmisc_1(k1_zfmisc_1(X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k7_setfam_1)).
% 0.14/0.37  fof(c_0_4, negated_conjecture, ~(![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X1)))=>(~((X2!=k1_xboole_0&k7_setfam_1(X1,X2)=k1_xboole_0))&~((k7_setfam_1(X1,X2)!=k1_xboole_0&X2=k1_xboole_0))))), inference(assume_negation,[status(cth)],[t10_tops_2])).
% 0.14/0.37  fof(c_0_5, plain, ![X7, X8]:(~m1_subset_1(X8,k1_zfmisc_1(k1_zfmisc_1(X7)))|(X8=k1_xboole_0|k7_setfam_1(X7,X8)!=k1_xboole_0)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t46_setfam_1])])).
% 0.14/0.37  fof(c_0_6, negated_conjecture, (m1_subset_1(esk2_0,k1_zfmisc_1(k1_zfmisc_1(esk1_0)))&(((k7_setfam_1(esk1_0,esk2_0)!=k1_xboole_0|esk2_0!=k1_xboole_0)&(esk2_0=k1_xboole_0|esk2_0!=k1_xboole_0))&((k7_setfam_1(esk1_0,esk2_0)!=k1_xboole_0|k7_setfam_1(esk1_0,esk2_0)=k1_xboole_0)&(esk2_0=k1_xboole_0|k7_setfam_1(esk1_0,esk2_0)=k1_xboole_0)))), inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_4])])])])).
% 0.14/0.37  fof(c_0_7, plain, ![X5, X6]:(~m1_subset_1(X6,k1_zfmisc_1(k1_zfmisc_1(X5)))|k7_setfam_1(X5,k7_setfam_1(X5,X6))=X6), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[involutiveness_k7_setfam_1])])).
% 0.14/0.37  fof(c_0_8, plain, ![X3, X4]:(~m1_subset_1(X4,k1_zfmisc_1(k1_zfmisc_1(X3)))|m1_subset_1(k7_setfam_1(X3,X4),k1_zfmisc_1(k1_zfmisc_1(X3)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k7_setfam_1])])).
% 0.14/0.37  cnf(c_0_9, plain, (X1=k1_xboole_0|~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X2)))|k7_setfam_1(X2,X1)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_5])).
% 0.14/0.37  cnf(c_0_10, negated_conjecture, (m1_subset_1(esk2_0,k1_zfmisc_1(k1_zfmisc_1(esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.14/0.37  cnf(c_0_11, negated_conjecture, (esk2_0=k1_xboole_0|k7_setfam_1(esk1_0,esk2_0)=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.14/0.37  cnf(c_0_12, plain, (k7_setfam_1(X2,k7_setfam_1(X2,X1))=X1|~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X2)))), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.14/0.37  cnf(c_0_13, plain, (m1_subset_1(k7_setfam_1(X2,X1),k1_zfmisc_1(k1_zfmisc_1(X2)))|~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X2)))), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.14/0.37  cnf(c_0_14, negated_conjecture, (esk2_0=k1_xboole_0), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_9, c_0_10]), c_0_11])).
% 0.14/0.37  cnf(c_0_15, negated_conjecture, (k7_setfam_1(esk1_0,k7_setfam_1(esk1_0,esk2_0))=esk2_0), inference(spm,[status(thm)],[c_0_12, c_0_10])).
% 0.14/0.37  cnf(c_0_16, negated_conjecture, (k7_setfam_1(esk1_0,esk2_0)!=k1_xboole_0|esk2_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.14/0.37  cnf(c_0_17, plain, (k7_setfam_1(X1,X2)=k1_xboole_0|k7_setfam_1(X1,k7_setfam_1(X1,X2))!=k1_xboole_0|~m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X1)))), inference(spm,[status(thm)],[c_0_9, c_0_13])).
% 0.14/0.37  cnf(c_0_18, negated_conjecture, (m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_zfmisc_1(esk1_0)))), inference(rw,[status(thm)],[c_0_10, c_0_14])).
% 0.14/0.37  cnf(c_0_19, negated_conjecture, (k7_setfam_1(esk1_0,k7_setfam_1(esk1_0,k1_xboole_0))=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_15, c_0_14]), c_0_14])).
% 0.14/0.37  cnf(c_0_20, negated_conjecture, (k7_setfam_1(esk1_0,k1_xboole_0)!=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_16, c_0_14]), c_0_14])])).
% 0.14/0.37  cnf(c_0_21, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_17, c_0_18]), c_0_19])]), c_0_20]), ['proof']).
% 0.14/0.37  # SZS output end CNFRefutation
% 0.14/0.37  # Proof object total steps             : 22
% 0.14/0.37  # Proof object clause steps            : 13
% 0.14/0.37  # Proof object formula steps           : 9
% 0.14/0.37  # Proof object conjectures             : 12
% 0.14/0.37  # Proof object clause conjectures      : 9
% 0.14/0.37  # Proof object formula conjectures     : 3
% 0.14/0.37  # Proof object initial clauses used    : 6
% 0.14/0.37  # Proof object initial formulas used   : 4
% 0.14/0.37  # Proof object generating inferences   : 4
% 0.14/0.37  # Proof object simplifying inferences  : 10
% 0.14/0.37  # Training examples: 0 positive, 0 negative
% 0.14/0.37  # Parsed axioms                        : 4
% 0.14/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.14/0.37  # Initial clauses                      : 8
% 0.14/0.37  # Removed in clause preprocessing      : 2
% 0.14/0.37  # Initial clauses in saturation        : 6
% 0.14/0.37  # Processed clauses                    : 18
% 0.14/0.37  # ...of these trivial                  : 1
% 0.14/0.37  # ...subsumed                          : 1
% 0.14/0.37  # ...remaining for further processing  : 16
% 0.14/0.37  # Other redundant clauses eliminated   : 0
% 0.14/0.37  # Clauses deleted for lack of memory   : 0
% 0.14/0.37  # Backward-subsumed                    : 0
% 0.14/0.37  # Backward-rewritten                   : 7
% 0.14/0.37  # Generated clauses                    : 19
% 0.14/0.37  # ...of the previous two non-trivial   : 15
% 0.14/0.37  # Contextual simplify-reflections      : 1
% 0.14/0.37  # Paramodulations                      : 19
% 0.14/0.37  # Factorizations                       : 0
% 0.14/0.37  # Equation resolutions                 : 0
% 0.14/0.37  # Propositional unsat checks           : 0
% 0.14/0.37  #    Propositional check models        : 0
% 0.14/0.37  #    Propositional check unsatisfiable : 0
% 0.14/0.37  #    Propositional clauses             : 0
% 0.14/0.37  #    Propositional clauses after purity: 0
% 0.14/0.37  #    Propositional unsat core size     : 0
% 0.14/0.37  #    Propositional preprocessing time  : 0.000
% 0.14/0.37  #    Propositional encoding time       : 0.000
% 0.14/0.37  #    Propositional solver time         : 0.000
% 0.14/0.37  #    Success case prop preproc time    : 0.000
% 0.14/0.37  #    Success case prop encoding time   : 0.000
% 0.14/0.37  #    Success case prop solver time     : 0.000
% 0.14/0.37  # Current number of processed clauses  : 9
% 0.14/0.37  #    Positive orientable unit clauses  : 3
% 0.14/0.37  #    Positive unorientable unit clauses: 0
% 0.14/0.37  #    Negative unit clauses             : 1
% 0.14/0.37  #    Non-unit-clauses                  : 5
% 0.14/0.37  # Current number of unprocessed clauses: 2
% 0.14/0.37  # ...number of literals in the above   : 6
% 0.14/0.37  # Current number of archived formulas  : 0
% 0.14/0.37  # Current number of archived clauses   : 7
% 0.14/0.37  # Clause-clause subsumption calls (NU) : 9
% 0.14/0.37  # Rec. Clause-clause subsumption calls : 9
% 0.14/0.37  # Non-unit clause-clause subsumptions  : 2
% 0.14/0.37  # Unit Clause-clause subsumption calls : 0
% 0.14/0.37  # Rewrite failures with RHS unbound    : 0
% 0.14/0.37  # BW rewrite match attempts            : 1
% 0.14/0.37  # BW rewrite match successes           : 1
% 0.14/0.37  # Condensation attempts                : 0
% 0.14/0.37  # Condensation successes               : 0
% 0.14/0.37  # Termbank termtop insertions          : 775
% 0.14/0.37  
% 0.14/0.37  # -------------------------------------------------
% 0.14/0.37  # User time                : 0.026 s
% 0.14/0.37  # System time              : 0.004 s
% 0.14/0.37  # Total time               : 0.030 s
% 0.14/0.37  # Maximum resident set size: 1560 pages
%------------------------------------------------------------------------------
