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
% DateTime   : Thu Dec  3 10:50:41 EST 2020

% Result     : Theorem 0.12s
% Output     : CNFRefutation 0.12s
% Verified   : 
% Statistics : Number of formulae       :   31 (  40 expanded)
%              Number of clauses        :   15 (  19 expanded)
%              Number of leaves         :    8 (  11 expanded)
%              Depth                    :    7
%              Number of atoms          :   56 (  75 expanded)
%              Number of equality atoms :   30 (  45 expanded)
%              Maximal formula depth    :    7 (   3 average)
%              Maximal clause size      :    7 (   1 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t113_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( k2_zfmisc_1(X1,X2) = k1_xboole_0
    <=> ( X1 = k1_xboole_0
        | X2 = k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t113_zfmisc_1)).

fof(fc6_relat_1,axiom,(
    ! [X1,X2] : v1_relat_1(k2_zfmisc_1(X1,X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc6_relat_1)).

fof(symmetry_r1_xboole_0,axiom,(
    ! [X1,X2] :
      ( r1_xboole_0(X1,X2)
     => r1_xboole_0(X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',symmetry_r1_xboole_0)).

fof(t65_xboole_1,axiom,(
    ! [X1] : r1_xboole_0(X1,k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t65_xboole_1)).

fof(t95_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( k7_relat_1(X2,X1) = k1_xboole_0
      <=> r1_xboole_0(k1_relat_1(X2),X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t95_relat_1)).

fof(t150_relat_1,conjecture,(
    ! [X1] : k9_relat_1(k1_xboole_0,X1) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t150_relat_1)).

fof(t148_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => k2_relat_1(k7_relat_1(X2,X1)) = k9_relat_1(X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t148_relat_1)).

fof(t60_relat_1,axiom,
    ( k1_relat_1(k1_xboole_0) = k1_xboole_0
    & k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t60_relat_1)).

fof(c_0_8,plain,(
    ! [X6,X7] :
      ( ( k2_zfmisc_1(X6,X7) != k1_xboole_0
        | X6 = k1_xboole_0
        | X7 = k1_xboole_0 )
      & ( X6 != k1_xboole_0
        | k2_zfmisc_1(X6,X7) = k1_xboole_0 )
      & ( X7 != k1_xboole_0
        | k2_zfmisc_1(X6,X7) = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t113_zfmisc_1])])])).

fof(c_0_9,plain,(
    ! [X8,X9] : v1_relat_1(k2_zfmisc_1(X8,X9)) ),
    inference(variable_rename,[status(thm)],[fc6_relat_1])).

cnf(c_0_10,plain,
    ( k2_zfmisc_1(X2,X1) = k1_xboole_0
    | X1 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

fof(c_0_11,plain,(
    ! [X3,X4] :
      ( ~ r1_xboole_0(X3,X4)
      | r1_xboole_0(X4,X3) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[symmetry_r1_xboole_0])])).

fof(c_0_12,plain,(
    ! [X5] : r1_xboole_0(X5,k1_xboole_0) ),
    inference(variable_rename,[status(thm)],[t65_xboole_1])).

fof(c_0_13,plain,(
    ! [X12,X13] :
      ( ( k7_relat_1(X13,X12) != k1_xboole_0
        | r1_xboole_0(k1_relat_1(X13),X12)
        | ~ v1_relat_1(X13) )
      & ( ~ r1_xboole_0(k1_relat_1(X13),X12)
        | k7_relat_1(X13,X12) = k1_xboole_0
        | ~ v1_relat_1(X13) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t95_relat_1])])])).

cnf(c_0_14,plain,
    ( v1_relat_1(k2_zfmisc_1(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_15,plain,
    ( k2_zfmisc_1(X1,k1_xboole_0) = k1_xboole_0 ),
    inference(er,[status(thm)],[c_0_10])).

cnf(c_0_16,plain,
    ( r1_xboole_0(X2,X1)
    | ~ r1_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_17,plain,
    ( r1_xboole_0(X1,k1_xboole_0) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

fof(c_0_18,negated_conjecture,(
    ~ ! [X1] : k9_relat_1(k1_xboole_0,X1) = k1_xboole_0 ),
    inference(assume_negation,[status(cth)],[t150_relat_1])).

fof(c_0_19,plain,(
    ! [X10,X11] :
      ( ~ v1_relat_1(X11)
      | k2_relat_1(k7_relat_1(X11,X10)) = k9_relat_1(X11,X10) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t148_relat_1])])).

cnf(c_0_20,plain,
    ( k7_relat_1(X1,X2) = k1_xboole_0
    | ~ r1_xboole_0(k1_relat_1(X1),X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_21,plain,
    ( k1_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[t60_relat_1])).

cnf(c_0_22,plain,
    ( v1_relat_1(k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_14,c_0_15])).

cnf(c_0_23,plain,
    ( r1_xboole_0(k1_xboole_0,X1) ),
    inference(spm,[status(thm)],[c_0_16,c_0_17])).

fof(c_0_24,negated_conjecture,(
    k9_relat_1(k1_xboole_0,esk1_0) != k1_xboole_0 ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_18])])])).

cnf(c_0_25,plain,
    ( k2_relat_1(k7_relat_1(X1,X2)) = k9_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_26,plain,
    ( k7_relat_1(k1_xboole_0,X1) = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_20,c_0_21]),c_0_22]),c_0_23])])).

cnf(c_0_27,plain,
    ( k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[t60_relat_1])).

cnf(c_0_28,negated_conjecture,
    ( k9_relat_1(k1_xboole_0,esk1_0) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_29,plain,
    ( k9_relat_1(k1_xboole_0,X1) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25,c_0_22]),c_0_26]),c_0_27])).

cnf(c_0_30,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_28,c_0_29])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.33  % Computer   : n010.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 19:22:59 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.12/0.37  # AutoSched0-Mode selected heuristic G_E___207_C18_F1_AE_CS_SP_PI_PS_S0i
% 0.12/0.37  # and selection function SelectDiffNegLit.
% 0.12/0.37  #
% 0.12/0.37  # Preprocessing time       : 0.026 s
% 0.12/0.37  # Presaturation interreduction done
% 0.12/0.37  
% 0.12/0.37  # Proof found!
% 0.12/0.37  # SZS status Theorem
% 0.12/0.37  # SZS output start CNFRefutation
% 0.12/0.37  fof(t113_zfmisc_1, axiom, ![X1, X2]:(k2_zfmisc_1(X1,X2)=k1_xboole_0<=>(X1=k1_xboole_0|X2=k1_xboole_0)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t113_zfmisc_1)).
% 0.12/0.37  fof(fc6_relat_1, axiom, ![X1, X2]:v1_relat_1(k2_zfmisc_1(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc6_relat_1)).
% 0.12/0.37  fof(symmetry_r1_xboole_0, axiom, ![X1, X2]:(r1_xboole_0(X1,X2)=>r1_xboole_0(X2,X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', symmetry_r1_xboole_0)).
% 0.12/0.37  fof(t65_xboole_1, axiom, ![X1]:r1_xboole_0(X1,k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t65_xboole_1)).
% 0.12/0.37  fof(t95_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(k7_relat_1(X2,X1)=k1_xboole_0<=>r1_xboole_0(k1_relat_1(X2),X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t95_relat_1)).
% 0.12/0.37  fof(t150_relat_1, conjecture, ![X1]:k9_relat_1(k1_xboole_0,X1)=k1_xboole_0, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t150_relat_1)).
% 0.12/0.37  fof(t148_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>k2_relat_1(k7_relat_1(X2,X1))=k9_relat_1(X2,X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t148_relat_1)).
% 0.12/0.37  fof(t60_relat_1, axiom, (k1_relat_1(k1_xboole_0)=k1_xboole_0&k2_relat_1(k1_xboole_0)=k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t60_relat_1)).
% 0.12/0.37  fof(c_0_8, plain, ![X6, X7]:((k2_zfmisc_1(X6,X7)!=k1_xboole_0|(X6=k1_xboole_0|X7=k1_xboole_0))&((X6!=k1_xboole_0|k2_zfmisc_1(X6,X7)=k1_xboole_0)&(X7!=k1_xboole_0|k2_zfmisc_1(X6,X7)=k1_xboole_0))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t113_zfmisc_1])])])).
% 0.12/0.37  fof(c_0_9, plain, ![X8, X9]:v1_relat_1(k2_zfmisc_1(X8,X9)), inference(variable_rename,[status(thm)],[fc6_relat_1])).
% 0.12/0.37  cnf(c_0_10, plain, (k2_zfmisc_1(X2,X1)=k1_xboole_0|X1!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.12/0.37  fof(c_0_11, plain, ![X3, X4]:(~r1_xboole_0(X3,X4)|r1_xboole_0(X4,X3)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[symmetry_r1_xboole_0])])).
% 0.12/0.37  fof(c_0_12, plain, ![X5]:r1_xboole_0(X5,k1_xboole_0), inference(variable_rename,[status(thm)],[t65_xboole_1])).
% 0.12/0.37  fof(c_0_13, plain, ![X12, X13]:((k7_relat_1(X13,X12)!=k1_xboole_0|r1_xboole_0(k1_relat_1(X13),X12)|~v1_relat_1(X13))&(~r1_xboole_0(k1_relat_1(X13),X12)|k7_relat_1(X13,X12)=k1_xboole_0|~v1_relat_1(X13))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t95_relat_1])])])).
% 0.12/0.37  cnf(c_0_14, plain, (v1_relat_1(k2_zfmisc_1(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.12/0.37  cnf(c_0_15, plain, (k2_zfmisc_1(X1,k1_xboole_0)=k1_xboole_0), inference(er,[status(thm)],[c_0_10])).
% 0.12/0.37  cnf(c_0_16, plain, (r1_xboole_0(X2,X1)|~r1_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.12/0.37  cnf(c_0_17, plain, (r1_xboole_0(X1,k1_xboole_0)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.12/0.37  fof(c_0_18, negated_conjecture, ~(![X1]:k9_relat_1(k1_xboole_0,X1)=k1_xboole_0), inference(assume_negation,[status(cth)],[t150_relat_1])).
% 0.12/0.37  fof(c_0_19, plain, ![X10, X11]:(~v1_relat_1(X11)|k2_relat_1(k7_relat_1(X11,X10))=k9_relat_1(X11,X10)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t148_relat_1])])).
% 0.12/0.37  cnf(c_0_20, plain, (k7_relat_1(X1,X2)=k1_xboole_0|~r1_xboole_0(k1_relat_1(X1),X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.12/0.37  cnf(c_0_21, plain, (k1_relat_1(k1_xboole_0)=k1_xboole_0), inference(split_conjunct,[status(thm)],[t60_relat_1])).
% 0.12/0.37  cnf(c_0_22, plain, (v1_relat_1(k1_xboole_0)), inference(spm,[status(thm)],[c_0_14, c_0_15])).
% 0.12/0.37  cnf(c_0_23, plain, (r1_xboole_0(k1_xboole_0,X1)), inference(spm,[status(thm)],[c_0_16, c_0_17])).
% 0.12/0.37  fof(c_0_24, negated_conjecture, k9_relat_1(k1_xboole_0,esk1_0)!=k1_xboole_0, inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_18])])])).
% 0.12/0.37  cnf(c_0_25, plain, (k2_relat_1(k7_relat_1(X1,X2))=k9_relat_1(X1,X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.12/0.37  cnf(c_0_26, plain, (k7_relat_1(k1_xboole_0,X1)=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_20, c_0_21]), c_0_22]), c_0_23])])).
% 0.12/0.37  cnf(c_0_27, plain, (k2_relat_1(k1_xboole_0)=k1_xboole_0), inference(split_conjunct,[status(thm)],[t60_relat_1])).
% 0.12/0.37  cnf(c_0_28, negated_conjecture, (k9_relat_1(k1_xboole_0,esk1_0)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.12/0.37  cnf(c_0_29, plain, (k9_relat_1(k1_xboole_0,X1)=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25, c_0_22]), c_0_26]), c_0_27])).
% 0.12/0.37  cnf(c_0_30, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_28, c_0_29])]), ['proof']).
% 0.12/0.37  # SZS output end CNFRefutation
% 0.12/0.37  # Proof object total steps             : 31
% 0.12/0.37  # Proof object clause steps            : 15
% 0.12/0.37  # Proof object formula steps           : 16
% 0.12/0.37  # Proof object conjectures             : 5
% 0.12/0.37  # Proof object clause conjectures      : 2
% 0.12/0.37  # Proof object formula conjectures     : 3
% 0.12/0.37  # Proof object initial clauses used    : 9
% 0.12/0.37  # Proof object initial formulas used   : 8
% 0.12/0.37  # Proof object generating inferences   : 5
% 0.12/0.37  # Proof object simplifying inferences  : 7
% 0.12/0.37  # Training examples: 0 positive, 0 negative
% 0.12/0.37  # Parsed axioms                        : 8
% 0.12/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.12/0.37  # Initial clauses                      : 12
% 0.12/0.37  # Removed in clause preprocessing      : 0
% 0.12/0.37  # Initial clauses in saturation        : 12
% 0.12/0.37  # Processed clauses                    : 32
% 0.12/0.37  # ...of these trivial                  : 0
% 0.12/0.37  # ...subsumed                          : 0
% 0.12/0.37  # ...remaining for further processing  : 32
% 0.12/0.37  # Other redundant clauses eliminated   : 0
% 0.12/0.37  # Clauses deleted for lack of memory   : 0
% 0.12/0.37  # Backward-subsumed                    : 0
% 0.12/0.37  # Backward-rewritten                   : 2
% 0.12/0.37  # Generated clauses                    : 14
% 0.12/0.37  # ...of the previous two non-trivial   : 10
% 0.12/0.37  # Contextual simplify-reflections      : 0
% 0.12/0.37  # Paramodulations                      : 12
% 0.12/0.37  # Factorizations                       : 0
% 0.12/0.37  # Equation resolutions                 : 2
% 0.12/0.37  # Propositional unsat checks           : 0
% 0.12/0.37  #    Propositional check models        : 0
% 0.12/0.37  #    Propositional check unsatisfiable : 0
% 0.12/0.37  #    Propositional clauses             : 0
% 0.12/0.37  #    Propositional clauses after purity: 0
% 0.12/0.37  #    Propositional unsat core size     : 0
% 0.12/0.37  #    Propositional preprocessing time  : 0.000
% 0.12/0.37  #    Propositional encoding time       : 0.000
% 0.12/0.37  #    Propositional solver time         : 0.000
% 0.12/0.37  #    Success case prop preproc time    : 0.000
% 0.12/0.37  #    Success case prop encoding time   : 0.000
% 0.12/0.37  #    Success case prop solver time     : 0.000
% 0.12/0.37  # Current number of processed clauses  : 18
% 0.12/0.37  #    Positive orientable unit clauses  : 10
% 0.12/0.37  #    Positive unorientable unit clauses: 0
% 0.12/0.37  #    Negative unit clauses             : 0
% 0.12/0.37  #    Non-unit-clauses                  : 8
% 0.12/0.37  # Current number of unprocessed clauses: 2
% 0.12/0.37  # ...number of literals in the above   : 2
% 0.12/0.37  # Current number of archived formulas  : 0
% 0.12/0.37  # Current number of archived clauses   : 14
% 0.12/0.37  # Clause-clause subsumption calls (NU) : 4
% 0.12/0.37  # Rec. Clause-clause subsumption calls : 4
% 0.12/0.37  # Non-unit clause-clause subsumptions  : 0
% 0.12/0.37  # Unit Clause-clause subsumption calls : 1
% 0.12/0.37  # Rewrite failures with RHS unbound    : 0
% 0.12/0.37  # BW rewrite match attempts            : 2
% 0.12/0.37  # BW rewrite match successes           : 2
% 0.12/0.37  # Condensation attempts                : 0
% 0.12/0.37  # Condensation successes               : 0
% 0.12/0.37  # Termbank termtop insertions          : 738
% 0.12/0.37  
% 0.12/0.37  # -------------------------------------------------
% 0.12/0.37  # User time                : 0.024 s
% 0.12/0.37  # System time              : 0.006 s
% 0.12/0.37  # Total time               : 0.031 s
% 0.12/0.37  # Maximum resident set size: 1568 pages
%------------------------------------------------------------------------------
