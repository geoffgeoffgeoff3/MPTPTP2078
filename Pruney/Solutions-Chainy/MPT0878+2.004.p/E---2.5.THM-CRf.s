%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n007.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:59:39 EST 2020

% Result     : Theorem 0.14s
% Output     : CNFRefutation 0.14s
% Verified   : 
% Statistics : Number of formulae       :   28 ( 333 expanded)
%              Number of clauses        :   19 ( 147 expanded)
%              Number of leaves         :    4 (  84 expanded)
%              Depth                    :   14
%              Number of atoms          :   62 ( 865 expanded)
%              Number of equality atoms :   61 ( 864 expanded)
%              Maximal formula depth    :    8 (   3 average)
%              Maximal clause size      :    7 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t38_mcart_1,conjecture,(
    ! [X1,X2] :
      ( k3_zfmisc_1(X1,X1,X1) = k3_zfmisc_1(X2,X2,X2)
     => X1 = X2 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t38_mcart_1)).

fof(d3_zfmisc_1,axiom,(
    ! [X1,X2,X3] : k3_zfmisc_1(X1,X2,X3) = k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_zfmisc_1)).

fof(t195_relat_1,axiom,(
    ! [X1,X2] :
      ~ ( X1 != k1_xboole_0
        & X2 != k1_xboole_0
        & ~ ( k1_relat_1(k2_zfmisc_1(X1,X2)) = X1
            & k2_relat_1(k2_zfmisc_1(X1,X2)) = X2 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t195_relat_1)).

fof(t113_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( k2_zfmisc_1(X1,X2) = k1_xboole_0
    <=> ( X1 = k1_xboole_0
        | X2 = k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t113_zfmisc_1)).

fof(c_0_4,negated_conjecture,(
    ~ ! [X1,X2] :
        ( k3_zfmisc_1(X1,X1,X1) = k3_zfmisc_1(X2,X2,X2)
       => X1 = X2 ) ),
    inference(assume_negation,[status(cth)],[t38_mcart_1])).

fof(c_0_5,negated_conjecture,
    ( k3_zfmisc_1(esk1_0,esk1_0,esk1_0) = k3_zfmisc_1(esk2_0,esk2_0,esk2_0)
    & esk1_0 != esk2_0 ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_4])])])).

fof(c_0_6,plain,(
    ! [X8,X9,X10] : k3_zfmisc_1(X8,X9,X10) = k2_zfmisc_1(k2_zfmisc_1(X8,X9),X10) ),
    inference(variable_rename,[status(thm)],[d3_zfmisc_1])).

fof(c_0_7,plain,(
    ! [X6,X7] :
      ( ( k1_relat_1(k2_zfmisc_1(X6,X7)) = X6
        | X6 = k1_xboole_0
        | X7 = k1_xboole_0 )
      & ( k2_relat_1(k2_zfmisc_1(X6,X7)) = X7
        | X6 = k1_xboole_0
        | X7 = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t195_relat_1])])])).

cnf(c_0_8,negated_conjecture,
    ( k3_zfmisc_1(esk1_0,esk1_0,esk1_0) = k3_zfmisc_1(esk2_0,esk2_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_9,plain,
    ( k3_zfmisc_1(X1,X2,X3) = k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_10,plain,
    ( k2_relat_1(k2_zfmisc_1(X1,X2)) = X2
    | X1 = k1_xboole_0
    | X2 = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_11,negated_conjecture,
    ( k2_zfmisc_1(k2_zfmisc_1(esk2_0,esk2_0),esk2_0) = k2_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0),esk1_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_8,c_0_9]),c_0_9])).

fof(c_0_12,plain,(
    ! [X4,X5] :
      ( ( k2_zfmisc_1(X4,X5) != k1_xboole_0
        | X4 = k1_xboole_0
        | X5 = k1_xboole_0 )
      & ( X4 != k1_xboole_0
        | k2_zfmisc_1(X4,X5) = k1_xboole_0 )
      & ( X5 != k1_xboole_0
        | k2_zfmisc_1(X4,X5) = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t113_zfmisc_1])])])).

cnf(c_0_13,negated_conjecture,
    ( k2_relat_1(k2_zfmisc_1(k2_zfmisc_1(esk2_0,esk2_0),esk2_0)) = esk1_0
    | k2_zfmisc_1(esk1_0,esk1_0) = k1_xboole_0
    | esk1_0 = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_10,c_0_11])).

cnf(c_0_14,negated_conjecture,
    ( esk1_0 != esk2_0 ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_15,plain,
    ( X1 = k1_xboole_0
    | X2 = k1_xboole_0
    | k2_zfmisc_1(X1,X2) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_16,negated_conjecture,
    ( k2_zfmisc_1(esk1_0,esk1_0) = k1_xboole_0
    | k2_zfmisc_1(esk2_0,esk2_0) = k1_xboole_0
    | esk1_0 = k1_xboole_0
    | esk2_0 = k1_xboole_0 ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_10,c_0_13]),c_0_14])).

cnf(c_0_17,negated_conjecture,
    ( k2_zfmisc_1(esk2_0,esk2_0) = k1_xboole_0
    | esk2_0 = k1_xboole_0
    | esk1_0 = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_15,c_0_16])).

cnf(c_0_18,plain,
    ( k2_zfmisc_1(X1,X2) = k1_xboole_0
    | X1 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_19,negated_conjecture,
    ( esk1_0 = k1_xboole_0
    | esk2_0 = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_15,c_0_17])).

cnf(c_0_20,plain,
    ( k2_zfmisc_1(k1_xboole_0,X1) = k1_xboole_0 ),
    inference(er,[status(thm)],[c_0_18])).

cnf(c_0_21,negated_conjecture,
    ( k2_zfmisc_1(k2_zfmisc_1(esk2_0,esk2_0),esk2_0) = k1_xboole_0
    | esk2_0 = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_11,c_0_19]),c_0_20]),c_0_20])).

cnf(c_0_22,negated_conjecture,
    ( k2_zfmisc_1(esk2_0,esk2_0) = k1_xboole_0
    | esk2_0 = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_15,c_0_21])).

cnf(c_0_23,negated_conjecture,
    ( esk2_0 = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_15,c_0_22])).

cnf(c_0_24,negated_conjecture,
    ( k2_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0),esk1_0) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_11,c_0_23]),c_0_23]),c_0_20]),c_0_23]),c_0_20])).

cnf(c_0_25,negated_conjecture,
    ( esk1_0 != k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_14,c_0_23])).

cnf(c_0_26,negated_conjecture,
    ( k2_zfmisc_1(esk1_0,esk1_0) = k1_xboole_0 ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_15,c_0_24]),c_0_25])).

cnf(c_0_27,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_15,c_0_26]),c_0_25]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.14  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.35  % Computer   : n007.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % WCLimit    : 600
% 0.14/0.35  % DateTime   : Tue Dec  1 17:52:51 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  # Version: 2.5pre002
% 0.14/0.35  # No SInE strategy applied
% 0.14/0.35  # Trying AutoSched0 for 299 seconds
% 0.14/0.38  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.14/0.38  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.14/0.38  #
% 0.14/0.38  # Preprocessing time       : 0.026 s
% 0.14/0.38  # Presaturation interreduction done
% 0.14/0.38  
% 0.14/0.38  # Proof found!
% 0.14/0.38  # SZS status Theorem
% 0.14/0.38  # SZS output start CNFRefutation
% 0.14/0.38  fof(t38_mcart_1, conjecture, ![X1, X2]:(k3_zfmisc_1(X1,X1,X1)=k3_zfmisc_1(X2,X2,X2)=>X1=X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t38_mcart_1)).
% 0.14/0.38  fof(d3_zfmisc_1, axiom, ![X1, X2, X3]:k3_zfmisc_1(X1,X2,X3)=k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d3_zfmisc_1)).
% 0.14/0.38  fof(t195_relat_1, axiom, ![X1, X2]:~(((X1!=k1_xboole_0&X2!=k1_xboole_0)&~((k1_relat_1(k2_zfmisc_1(X1,X2))=X1&k2_relat_1(k2_zfmisc_1(X1,X2))=X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t195_relat_1)).
% 0.14/0.38  fof(t113_zfmisc_1, axiom, ![X1, X2]:(k2_zfmisc_1(X1,X2)=k1_xboole_0<=>(X1=k1_xboole_0|X2=k1_xboole_0)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t113_zfmisc_1)).
% 0.14/0.38  fof(c_0_4, negated_conjecture, ~(![X1, X2]:(k3_zfmisc_1(X1,X1,X1)=k3_zfmisc_1(X2,X2,X2)=>X1=X2)), inference(assume_negation,[status(cth)],[t38_mcart_1])).
% 0.14/0.38  fof(c_0_5, negated_conjecture, (k3_zfmisc_1(esk1_0,esk1_0,esk1_0)=k3_zfmisc_1(esk2_0,esk2_0,esk2_0)&esk1_0!=esk2_0), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_4])])])).
% 0.14/0.38  fof(c_0_6, plain, ![X8, X9, X10]:k3_zfmisc_1(X8,X9,X10)=k2_zfmisc_1(k2_zfmisc_1(X8,X9),X10), inference(variable_rename,[status(thm)],[d3_zfmisc_1])).
% 0.14/0.38  fof(c_0_7, plain, ![X6, X7]:((k1_relat_1(k2_zfmisc_1(X6,X7))=X6|(X6=k1_xboole_0|X7=k1_xboole_0))&(k2_relat_1(k2_zfmisc_1(X6,X7))=X7|(X6=k1_xboole_0|X7=k1_xboole_0))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t195_relat_1])])])).
% 0.14/0.38  cnf(c_0_8, negated_conjecture, (k3_zfmisc_1(esk1_0,esk1_0,esk1_0)=k3_zfmisc_1(esk2_0,esk2_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_5])).
% 0.14/0.38  cnf(c_0_9, plain, (k3_zfmisc_1(X1,X2,X3)=k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.14/0.38  cnf(c_0_10, plain, (k2_relat_1(k2_zfmisc_1(X1,X2))=X2|X1=k1_xboole_0|X2=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.14/0.38  cnf(c_0_11, negated_conjecture, (k2_zfmisc_1(k2_zfmisc_1(esk2_0,esk2_0),esk2_0)=k2_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0),esk1_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_8, c_0_9]), c_0_9])).
% 0.14/0.38  fof(c_0_12, plain, ![X4, X5]:((k2_zfmisc_1(X4,X5)!=k1_xboole_0|(X4=k1_xboole_0|X5=k1_xboole_0))&((X4!=k1_xboole_0|k2_zfmisc_1(X4,X5)=k1_xboole_0)&(X5!=k1_xboole_0|k2_zfmisc_1(X4,X5)=k1_xboole_0))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t113_zfmisc_1])])])).
% 0.14/0.38  cnf(c_0_13, negated_conjecture, (k2_relat_1(k2_zfmisc_1(k2_zfmisc_1(esk2_0,esk2_0),esk2_0))=esk1_0|k2_zfmisc_1(esk1_0,esk1_0)=k1_xboole_0|esk1_0=k1_xboole_0), inference(spm,[status(thm)],[c_0_10, c_0_11])).
% 0.14/0.38  cnf(c_0_14, negated_conjecture, (esk1_0!=esk2_0), inference(split_conjunct,[status(thm)],[c_0_5])).
% 0.14/0.38  cnf(c_0_15, plain, (X1=k1_xboole_0|X2=k1_xboole_0|k2_zfmisc_1(X1,X2)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.14/0.38  cnf(c_0_16, negated_conjecture, (k2_zfmisc_1(esk1_0,esk1_0)=k1_xboole_0|k2_zfmisc_1(esk2_0,esk2_0)=k1_xboole_0|esk1_0=k1_xboole_0|esk2_0=k1_xboole_0), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_10, c_0_13]), c_0_14])).
% 0.14/0.38  cnf(c_0_17, negated_conjecture, (k2_zfmisc_1(esk2_0,esk2_0)=k1_xboole_0|esk2_0=k1_xboole_0|esk1_0=k1_xboole_0), inference(spm,[status(thm)],[c_0_15, c_0_16])).
% 0.14/0.38  cnf(c_0_18, plain, (k2_zfmisc_1(X1,X2)=k1_xboole_0|X1!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.14/0.38  cnf(c_0_19, negated_conjecture, (esk1_0=k1_xboole_0|esk2_0=k1_xboole_0), inference(spm,[status(thm)],[c_0_15, c_0_17])).
% 0.14/0.38  cnf(c_0_20, plain, (k2_zfmisc_1(k1_xboole_0,X1)=k1_xboole_0), inference(er,[status(thm)],[c_0_18])).
% 0.14/0.38  cnf(c_0_21, negated_conjecture, (k2_zfmisc_1(k2_zfmisc_1(esk2_0,esk2_0),esk2_0)=k1_xboole_0|esk2_0=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_11, c_0_19]), c_0_20]), c_0_20])).
% 0.14/0.38  cnf(c_0_22, negated_conjecture, (k2_zfmisc_1(esk2_0,esk2_0)=k1_xboole_0|esk2_0=k1_xboole_0), inference(spm,[status(thm)],[c_0_15, c_0_21])).
% 0.14/0.38  cnf(c_0_23, negated_conjecture, (esk2_0=k1_xboole_0), inference(spm,[status(thm)],[c_0_15, c_0_22])).
% 0.14/0.38  cnf(c_0_24, negated_conjecture, (k2_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0),esk1_0)=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_11, c_0_23]), c_0_23]), c_0_20]), c_0_23]), c_0_20])).
% 0.14/0.38  cnf(c_0_25, negated_conjecture, (esk1_0!=k1_xboole_0), inference(rw,[status(thm)],[c_0_14, c_0_23])).
% 0.14/0.38  cnf(c_0_26, negated_conjecture, (k2_zfmisc_1(esk1_0,esk1_0)=k1_xboole_0), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_15, c_0_24]), c_0_25])).
% 0.14/0.38  cnf(c_0_27, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_15, c_0_26]), c_0_25]), ['proof']).
% 0.14/0.38  # SZS output end CNFRefutation
% 0.14/0.38  # Proof object total steps             : 28
% 0.14/0.38  # Proof object clause steps            : 19
% 0.14/0.38  # Proof object formula steps           : 9
% 0.14/0.38  # Proof object conjectures             : 17
% 0.14/0.38  # Proof object clause conjectures      : 14
% 0.14/0.38  # Proof object formula conjectures     : 3
% 0.14/0.38  # Proof object initial clauses used    : 6
% 0.14/0.38  # Proof object initial formulas used   : 4
% 0.14/0.38  # Proof object generating inferences   : 9
% 0.14/0.38  # Proof object simplifying inferences  : 14
% 0.14/0.38  # Training examples: 0 positive, 0 negative
% 0.14/0.38  # Parsed axioms                        : 4
% 0.14/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.14/0.38  # Initial clauses                      : 8
% 0.14/0.38  # Removed in clause preprocessing      : 1
% 0.14/0.38  # Initial clauses in saturation        : 7
% 0.14/0.38  # Processed clauses                    : 27
% 0.14/0.38  # ...of these trivial                  : 0
% 0.14/0.38  # ...subsumed                          : 0
% 0.14/0.38  # ...remaining for further processing  : 27
% 0.14/0.38  # Other redundant clauses eliminated   : 2
% 0.14/0.38  # Clauses deleted for lack of memory   : 0
% 0.14/0.38  # Backward-subsumed                    : 2
% 0.14/0.38  # Backward-rewritten                   : 8
% 0.14/0.38  # Generated clauses                    : 34
% 0.14/0.38  # ...of the previous two non-trivial   : 35
% 0.14/0.38  # Contextual simplify-reflections      : 0
% 0.14/0.38  # Paramodulations                      : 32
% 0.14/0.38  # Factorizations                       : 0
% 0.14/0.38  # Equation resolutions                 : 2
% 0.14/0.38  # Propositional unsat checks           : 0
% 0.14/0.38  #    Propositional check models        : 0
% 0.14/0.38  #    Propositional check unsatisfiable : 0
% 0.14/0.38  #    Propositional clauses             : 0
% 0.14/0.38  #    Propositional clauses after purity: 0
% 0.14/0.38  #    Propositional unsat core size     : 0
% 0.14/0.38  #    Propositional preprocessing time  : 0.000
% 0.14/0.38  #    Propositional encoding time       : 0.000
% 0.14/0.38  #    Propositional solver time         : 0.000
% 0.14/0.38  #    Success case prop preproc time    : 0.000
% 0.14/0.38  #    Success case prop encoding time   : 0.000
% 0.14/0.38  #    Success case prop solver time     : 0.000
% 0.14/0.38  # Current number of processed clauses  : 8
% 0.14/0.38  #    Positive orientable unit clauses  : 4
% 0.14/0.38  #    Positive unorientable unit clauses: 0
% 0.14/0.38  #    Negative unit clauses             : 1
% 0.14/0.38  #    Non-unit-clauses                  : 3
% 0.14/0.38  # Current number of unprocessed clauses: 17
% 0.14/0.38  # ...number of literals in the above   : 52
% 0.14/0.38  # Current number of archived formulas  : 0
% 0.14/0.38  # Current number of archived clauses   : 18
% 0.14/0.38  # Clause-clause subsumption calls (NU) : 10
% 0.14/0.38  # Rec. Clause-clause subsumption calls : 7
% 0.14/0.38  # Non-unit clause-clause subsumptions  : 2
% 0.14/0.38  # Unit Clause-clause subsumption calls : 0
% 0.14/0.38  # Rewrite failures with RHS unbound    : 0
% 0.14/0.38  # BW rewrite match attempts            : 2
% 0.14/0.38  # BW rewrite match successes           : 2
% 0.14/0.38  # Condensation attempts                : 0
% 0.14/0.38  # Condensation successes               : 0
% 0.14/0.38  # Termbank termtop insertions          : 764
% 0.14/0.38  
% 0.14/0.38  # -------------------------------------------------
% 0.14/0.38  # User time                : 0.028 s
% 0.14/0.38  # System time              : 0.002 s
% 0.14/0.38  # Total time               : 0.030 s
% 0.14/0.38  # Maximum resident set size: 1564 pages
%------------------------------------------------------------------------------
