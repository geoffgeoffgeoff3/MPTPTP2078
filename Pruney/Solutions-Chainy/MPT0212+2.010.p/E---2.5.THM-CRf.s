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
% DateTime   : Thu Dec  3 10:36:54 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   30 (  48 expanded)
%              Number of clauses        :   17 (  22 expanded)
%              Number of leaves         :    6 (  12 expanded)
%              Depth                    :    8
%              Number of atoms          :   74 ( 118 expanded)
%              Number of equality atoms :   38 (  67 expanded)
%              Maximal formula depth    :   13 (   3 average)
%              Maximal clause size      :   12 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t1_zfmisc_1,conjecture,(
    k1_zfmisc_1(k1_xboole_0) = k1_tarski(k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t1_zfmisc_1)).

fof(t96_enumset1,axiom,(
    ! [X1] : k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t96_enumset1)).

fof(d1_tarski,axiom,(
    ! [X1,X2] :
      ( X2 = k1_tarski(X1)
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> X3 = X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_tarski)).

fof(d1_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( X2 = k1_zfmisc_1(X1)
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> r1_tarski(X3,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_zfmisc_1)).

fof(t3_xboole_1,axiom,(
    ! [X1] :
      ( r1_tarski(X1,k1_xboole_0)
     => X1 = k1_xboole_0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_xboole_1)).

fof(t2_xboole_1,axiom,(
    ! [X1] : r1_tarski(k1_xboole_0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_xboole_1)).

fof(c_0_6,negated_conjecture,(
    k1_zfmisc_1(k1_xboole_0) != k1_tarski(k1_xboole_0) ),
    inference(assume_negation,[status(cth)],[t1_zfmisc_1])).

fof(c_0_7,negated_conjecture,(
    k1_zfmisc_1(k1_xboole_0) != k1_tarski(k1_xboole_0) ),
    inference(fof_simplification,[status(thm)],[c_0_6])).

fof(c_0_8,plain,(
    ! [X13] : k6_enumset1(X13,X13,X13,X13,X13,X13,X13,X13) = k1_tarski(X13) ),
    inference(variable_rename,[status(thm)],[t96_enumset1])).

fof(c_0_9,plain,(
    ! [X6,X7,X8,X9,X10,X11] :
      ( ( ~ r2_hidden(X8,X7)
        | X8 = X6
        | X7 != k1_tarski(X6) )
      & ( X9 != X6
        | r2_hidden(X9,X7)
        | X7 != k1_tarski(X6) )
      & ( ~ r2_hidden(esk1_2(X10,X11),X11)
        | esk1_2(X10,X11) != X10
        | X11 = k1_tarski(X10) )
      & ( r2_hidden(esk1_2(X10,X11),X11)
        | esk1_2(X10,X11) = X10
        | X11 = k1_tarski(X10) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_tarski])])])])])])).

fof(c_0_10,plain,(
    ! [X14,X15,X16,X17,X18,X19] :
      ( ( ~ r2_hidden(X16,X15)
        | r1_tarski(X16,X14)
        | X15 != k1_zfmisc_1(X14) )
      & ( ~ r1_tarski(X17,X14)
        | r2_hidden(X17,X15)
        | X15 != k1_zfmisc_1(X14) )
      & ( ~ r2_hidden(esk2_2(X18,X19),X19)
        | ~ r1_tarski(esk2_2(X18,X19),X18)
        | X19 = k1_zfmisc_1(X18) )
      & ( r2_hidden(esk2_2(X18,X19),X19)
        | r1_tarski(esk2_2(X18,X19),X18)
        | X19 = k1_zfmisc_1(X18) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_zfmisc_1])])])])])])).

cnf(c_0_11,negated_conjecture,
    ( k1_zfmisc_1(k1_xboole_0) != k1_tarski(k1_xboole_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_12,plain,
    ( k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_13,plain,
    ( r2_hidden(esk1_2(X1,X2),X2)
    | esk1_2(X1,X2) = X1
    | X2 = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_14,plain,
    ( r1_tarski(X1,X3)
    | ~ r2_hidden(X1,X2)
    | X2 != k1_zfmisc_1(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_15,negated_conjecture,
    ( k1_zfmisc_1(k1_xboole_0) != k6_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0) ),
    inference(rw,[status(thm)],[c_0_11,c_0_12])).

cnf(c_0_16,plain,
    ( esk1_2(X1,X2) = X1
    | X2 = k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)
    | r2_hidden(esk1_2(X1,X2),X2) ),
    inference(rw,[status(thm)],[c_0_13,c_0_12])).

fof(c_0_17,plain,(
    ! [X5] :
      ( ~ r1_tarski(X5,k1_xboole_0)
      | X5 = k1_xboole_0 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_xboole_1])])).

cnf(c_0_18,plain,
    ( X2 = k1_tarski(X1)
    | ~ r2_hidden(esk1_2(X1,X2),X2)
    | esk1_2(X1,X2) != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_19,plain,
    ( r1_tarski(X1,X2)
    | ~ r2_hidden(X1,k1_zfmisc_1(X2)) ),
    inference(er,[status(thm)],[c_0_14])).

cnf(c_0_20,negated_conjecture,
    ( esk1_2(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) = k1_xboole_0
    | r2_hidden(esk1_2(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)),k1_zfmisc_1(k1_xboole_0)) ),
    inference(er,[status(thm)],[inference(spm,[status(thm)],[c_0_15,c_0_16])])).

cnf(c_0_21,plain,
    ( X1 = k1_xboole_0
    | ~ r1_tarski(X1,k1_xboole_0) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_22,plain,
    ( X2 = k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)
    | esk1_2(X1,X2) != X1
    | ~ r2_hidden(esk1_2(X1,X2),X2) ),
    inference(rw,[status(thm)],[c_0_18,c_0_12])).

cnf(c_0_23,negated_conjecture,
    ( esk1_2(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) = k1_xboole_0 ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_19,c_0_20]),c_0_21])).

cnf(c_0_24,plain,
    ( r2_hidden(X1,X3)
    | ~ r1_tarski(X1,X2)
    | X3 != k1_zfmisc_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

fof(c_0_25,plain,(
    ! [X4] : r1_tarski(k1_xboole_0,X4) ),
    inference(variable_rename,[status(thm)],[t2_xboole_1])).

cnf(c_0_26,negated_conjecture,
    ( ~ r2_hidden(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_22,c_0_23]),c_0_15])).

cnf(c_0_27,plain,
    ( r2_hidden(X1,k1_zfmisc_1(X2))
    | ~ r1_tarski(X1,X2) ),
    inference(er,[status(thm)],[c_0_24])).

cnf(c_0_28,plain,
    ( r1_tarski(k1_xboole_0,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_29,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26,c_0_27]),c_0_28])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n007.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 17:50:51 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.13/0.38  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S5PRR_RG_S04BN
% 0.13/0.38  # and selection function PSelectComplexExceptUniqMaxHorn.
% 0.13/0.38  #
% 0.13/0.38  # Preprocessing time       : 0.026 s
% 0.13/0.38  # Presaturation interreduction done
% 0.13/0.38  
% 0.13/0.38  # Proof found!
% 0.13/0.38  # SZS status Theorem
% 0.13/0.38  # SZS output start CNFRefutation
% 0.13/0.38  fof(t1_zfmisc_1, conjecture, k1_zfmisc_1(k1_xboole_0)=k1_tarski(k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t1_zfmisc_1)).
% 0.13/0.38  fof(t96_enumset1, axiom, ![X1]:k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t96_enumset1)).
% 0.13/0.38  fof(d1_tarski, axiom, ![X1, X2]:(X2=k1_tarski(X1)<=>![X3]:(r2_hidden(X3,X2)<=>X3=X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_tarski)).
% 0.13/0.38  fof(d1_zfmisc_1, axiom, ![X1, X2]:(X2=k1_zfmisc_1(X1)<=>![X3]:(r2_hidden(X3,X2)<=>r1_tarski(X3,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_zfmisc_1)).
% 0.13/0.38  fof(t3_xboole_1, axiom, ![X1]:(r1_tarski(X1,k1_xboole_0)=>X1=k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_xboole_1)).
% 0.13/0.38  fof(t2_xboole_1, axiom, ![X1]:r1_tarski(k1_xboole_0,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t2_xboole_1)).
% 0.13/0.38  fof(c_0_6, negated_conjecture, ~(k1_zfmisc_1(k1_xboole_0)=k1_tarski(k1_xboole_0)), inference(assume_negation,[status(cth)],[t1_zfmisc_1])).
% 0.13/0.38  fof(c_0_7, negated_conjecture, k1_zfmisc_1(k1_xboole_0)!=k1_tarski(k1_xboole_0), inference(fof_simplification,[status(thm)],[c_0_6])).
% 0.13/0.38  fof(c_0_8, plain, ![X13]:k6_enumset1(X13,X13,X13,X13,X13,X13,X13,X13)=k1_tarski(X13), inference(variable_rename,[status(thm)],[t96_enumset1])).
% 0.13/0.38  fof(c_0_9, plain, ![X6, X7, X8, X9, X10, X11]:(((~r2_hidden(X8,X7)|X8=X6|X7!=k1_tarski(X6))&(X9!=X6|r2_hidden(X9,X7)|X7!=k1_tarski(X6)))&((~r2_hidden(esk1_2(X10,X11),X11)|esk1_2(X10,X11)!=X10|X11=k1_tarski(X10))&(r2_hidden(esk1_2(X10,X11),X11)|esk1_2(X10,X11)=X10|X11=k1_tarski(X10)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_tarski])])])])])])).
% 0.13/0.38  fof(c_0_10, plain, ![X14, X15, X16, X17, X18, X19]:(((~r2_hidden(X16,X15)|r1_tarski(X16,X14)|X15!=k1_zfmisc_1(X14))&(~r1_tarski(X17,X14)|r2_hidden(X17,X15)|X15!=k1_zfmisc_1(X14)))&((~r2_hidden(esk2_2(X18,X19),X19)|~r1_tarski(esk2_2(X18,X19),X18)|X19=k1_zfmisc_1(X18))&(r2_hidden(esk2_2(X18,X19),X19)|r1_tarski(esk2_2(X18,X19),X18)|X19=k1_zfmisc_1(X18)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_zfmisc_1])])])])])])).
% 0.13/0.38  cnf(c_0_11, negated_conjecture, (k1_zfmisc_1(k1_xboole_0)!=k1_tarski(k1_xboole_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.13/0.38  cnf(c_0_12, plain, (k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.13/0.38  cnf(c_0_13, plain, (r2_hidden(esk1_2(X1,X2),X2)|esk1_2(X1,X2)=X1|X2=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.38  cnf(c_0_14, plain, (r1_tarski(X1,X3)|~r2_hidden(X1,X2)|X2!=k1_zfmisc_1(X3)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_15, negated_conjecture, (k1_zfmisc_1(k1_xboole_0)!=k6_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0)), inference(rw,[status(thm)],[c_0_11, c_0_12])).
% 0.13/0.38  cnf(c_0_16, plain, (esk1_2(X1,X2)=X1|X2=k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)|r2_hidden(esk1_2(X1,X2),X2)), inference(rw,[status(thm)],[c_0_13, c_0_12])).
% 0.13/0.38  fof(c_0_17, plain, ![X5]:(~r1_tarski(X5,k1_xboole_0)|X5=k1_xboole_0), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_xboole_1])])).
% 0.13/0.38  cnf(c_0_18, plain, (X2=k1_tarski(X1)|~r2_hidden(esk1_2(X1,X2),X2)|esk1_2(X1,X2)!=X1), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.38  cnf(c_0_19, plain, (r1_tarski(X1,X2)|~r2_hidden(X1,k1_zfmisc_1(X2))), inference(er,[status(thm)],[c_0_14])).
% 0.13/0.38  cnf(c_0_20, negated_conjecture, (esk1_2(k1_xboole_0,k1_zfmisc_1(k1_xboole_0))=k1_xboole_0|r2_hidden(esk1_2(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)),k1_zfmisc_1(k1_xboole_0))), inference(er,[status(thm)],[inference(spm,[status(thm)],[c_0_15, c_0_16])])).
% 0.13/0.38  cnf(c_0_21, plain, (X1=k1_xboole_0|~r1_tarski(X1,k1_xboole_0)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.13/0.38  cnf(c_0_22, plain, (X2=k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)|esk1_2(X1,X2)!=X1|~r2_hidden(esk1_2(X1,X2),X2)), inference(rw,[status(thm)],[c_0_18, c_0_12])).
% 0.13/0.38  cnf(c_0_23, negated_conjecture, (esk1_2(k1_xboole_0,k1_zfmisc_1(k1_xboole_0))=k1_xboole_0), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_19, c_0_20]), c_0_21])).
% 0.13/0.38  cnf(c_0_24, plain, (r2_hidden(X1,X3)|~r1_tarski(X1,X2)|X3!=k1_zfmisc_1(X2)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  fof(c_0_25, plain, ![X4]:r1_tarski(k1_xboole_0,X4), inference(variable_rename,[status(thm)],[t2_xboole_1])).
% 0.13/0.38  cnf(c_0_26, negated_conjecture, (~r2_hidden(k1_xboole_0,k1_zfmisc_1(k1_xboole_0))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_22, c_0_23]), c_0_15])).
% 0.13/0.38  cnf(c_0_27, plain, (r2_hidden(X1,k1_zfmisc_1(X2))|~r1_tarski(X1,X2)), inference(er,[status(thm)],[c_0_24])).
% 0.13/0.38  cnf(c_0_28, plain, (r1_tarski(k1_xboole_0,X1)), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.13/0.38  cnf(c_0_29, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26, c_0_27]), c_0_28])]), ['proof']).
% 0.13/0.38  # SZS output end CNFRefutation
% 0.13/0.38  # Proof object total steps             : 30
% 0.13/0.38  # Proof object clause steps            : 17
% 0.13/0.38  # Proof object formula steps           : 13
% 0.13/0.38  # Proof object conjectures             : 9
% 0.13/0.38  # Proof object clause conjectures      : 6
% 0.13/0.38  # Proof object formula conjectures     : 3
% 0.13/0.38  # Proof object initial clauses used    : 8
% 0.13/0.38  # Proof object initial formulas used   : 6
% 0.13/0.38  # Proof object generating inferences   : 4
% 0.13/0.38  # Proof object simplifying inferences  : 10
% 0.13/0.38  # Training examples: 0 positive, 0 negative
% 0.13/0.38  # Parsed axioms                        : 6
% 0.13/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.38  # Initial clauses                      : 12
% 0.13/0.38  # Removed in clause preprocessing      : 1
% 0.13/0.38  # Initial clauses in saturation        : 11
% 0.13/0.38  # Processed clauses                    : 33
% 0.13/0.38  # ...of these trivial                  : 0
% 0.13/0.38  # ...subsumed                          : 1
% 0.13/0.38  # ...remaining for further processing  : 32
% 0.13/0.38  # Other redundant clauses eliminated   : 7
% 0.13/0.38  # Clauses deleted for lack of memory   : 0
% 0.13/0.38  # Backward-subsumed                    : 0
% 0.13/0.38  # Backward-rewritten                   : 1
% 0.13/0.38  # Generated clauses                    : 47
% 0.13/0.38  # ...of the previous two non-trivial   : 40
% 0.13/0.38  # Contextual simplify-reflections      : 1
% 0.13/0.38  # Paramodulations                      : 41
% 0.13/0.38  # Factorizations                       : 0
% 0.13/0.38  # Equation resolutions                 : 7
% 0.13/0.38  # Propositional unsat checks           : 0
% 0.13/0.38  #    Propositional check models        : 0
% 0.13/0.38  #    Propositional check unsatisfiable : 0
% 0.13/0.38  #    Propositional clauses             : 0
% 0.13/0.38  #    Propositional clauses after purity: 0
% 0.13/0.38  #    Propositional unsat core size     : 0
% 0.13/0.38  #    Propositional preprocessing time  : 0.000
% 0.13/0.38  #    Propositional encoding time       : 0.000
% 0.13/0.38  #    Propositional solver time         : 0.000
% 0.13/0.38  #    Success case prop preproc time    : 0.000
% 0.13/0.38  #    Success case prop encoding time   : 0.000
% 0.13/0.38  #    Success case prop solver time     : 0.000
% 0.13/0.38  # Current number of processed clauses  : 16
% 0.13/0.38  #    Positive orientable unit clauses  : 3
% 0.13/0.38  #    Positive unorientable unit clauses: 0
% 0.13/0.38  #    Negative unit clauses             : 2
% 0.13/0.38  #    Non-unit-clauses                  : 11
% 0.13/0.38  # Current number of unprocessed clauses: 29
% 0.13/0.38  # ...number of literals in the above   : 120
% 0.13/0.38  # Current number of archived formulas  : 0
% 0.13/0.38  # Current number of archived clauses   : 13
% 0.13/0.38  # Clause-clause subsumption calls (NU) : 7
% 0.13/0.38  # Rec. Clause-clause subsumption calls : 7
% 0.13/0.38  # Non-unit clause-clause subsumptions  : 2
% 0.13/0.38  # Unit Clause-clause subsumption calls : 0
% 0.13/0.38  # Rewrite failures with RHS unbound    : 0
% 0.13/0.38  # BW rewrite match attempts            : 3
% 0.13/0.38  # BW rewrite match successes           : 1
% 0.13/0.38  # Condensation attempts                : 0
% 0.13/0.38  # Condensation successes               : 0
% 0.13/0.38  # Termbank termtop insertions          : 1314
% 0.13/0.38  
% 0.13/0.38  # -------------------------------------------------
% 0.13/0.38  # User time                : 0.028 s
% 0.13/0.38  # System time              : 0.003 s
% 0.13/0.38  # Total time               : 0.031 s
% 0.13/0.38  # Maximum resident set size: 1560 pages
%------------------------------------------------------------------------------
