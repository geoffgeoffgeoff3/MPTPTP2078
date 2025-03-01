%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n015.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:39:26 EST 2020

% Result     : Theorem 0.14s
% Output     : CNFRefutation 0.14s
% Verified   : 
% Statistics : Number of formulae       :   39 ( 230 expanded)
%              Number of clauses        :   26 (  99 expanded)
%              Number of leaves         :    6 (  62 expanded)
%              Depth                    :    7
%              Number of atoms          :  129 ( 565 expanded)
%              Number of equality atoms :   73 ( 350 expanded)
%              Maximal formula depth    :   22 (   4 average)
%              Maximal clause size      :   28 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t34_zfmisc_1,conjecture,(
    ! [X1,X2,X3,X4] :
      ( r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(k1_tarski(X3),k1_tarski(X4)))
    <=> ( X1 = X3
        & X2 = X4 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t34_zfmisc_1)).

fof(d1_tarski,axiom,(
    ! [X1,X2] :
      ( X2 = k1_tarski(X1)
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> X3 = X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_tarski)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(l54_zfmisc_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,X4))
    <=> ( r2_hidden(X1,X3)
        & r2_hidden(X2,X4) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l54_zfmisc_1)).

fof(d1_enumset1,axiom,(
    ! [X1,X2,X3,X4] :
      ( X4 = k1_enumset1(X1,X2,X3)
    <=> ! [X5] :
          ( r2_hidden(X5,X4)
        <=> ~ ( X5 != X1
              & X5 != X2
              & X5 != X3 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_enumset1)).

fof(c_0_6,negated_conjecture,(
    ~ ! [X1,X2,X3,X4] :
        ( r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(k1_tarski(X3),k1_tarski(X4)))
      <=> ( X1 = X3
          & X2 = X4 ) ) ),
    inference(assume_negation,[status(cth)],[t34_zfmisc_1])).

fof(c_0_7,plain,(
    ! [X17,X18,X19,X20,X21,X22] :
      ( ( ~ r2_hidden(X19,X18)
        | X19 = X17
        | X18 != k1_tarski(X17) )
      & ( X20 != X17
        | r2_hidden(X20,X18)
        | X18 != k1_tarski(X17) )
      & ( ~ r2_hidden(esk2_2(X21,X22),X22)
        | esk2_2(X21,X22) != X21
        | X22 = k1_tarski(X21) )
      & ( r2_hidden(esk2_2(X21,X22),X22)
        | esk2_2(X21,X22) = X21
        | X22 = k1_tarski(X21) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_tarski])])])])])])).

fof(c_0_8,plain,(
    ! [X24] : k2_tarski(X24,X24) = k1_tarski(X24) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_9,plain,(
    ! [X25,X26] : k1_enumset1(X25,X25,X26) = k2_tarski(X25,X26) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_10,negated_conjecture,
    ( ( ~ r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(k1_tarski(esk5_0),k1_tarski(esk6_0)))
      | esk3_0 != esk5_0
      | esk4_0 != esk6_0 )
    & ( esk3_0 = esk5_0
      | r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(k1_tarski(esk5_0),k1_tarski(esk6_0))) )
    & ( esk4_0 = esk6_0
      | r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(k1_tarski(esk5_0),k1_tarski(esk6_0))) ) ),
    inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_6])])])])).

cnf(c_0_11,plain,
    ( X1 = X3
    | ~ r2_hidden(X1,X2)
    | X2 != k1_tarski(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_12,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_13,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

fof(c_0_14,plain,(
    ! [X27,X28,X29,X30] :
      ( ( r2_hidden(X27,X29)
        | ~ r2_hidden(k4_tarski(X27,X28),k2_zfmisc_1(X29,X30)) )
      & ( r2_hidden(X28,X30)
        | ~ r2_hidden(k4_tarski(X27,X28),k2_zfmisc_1(X29,X30)) )
      & ( ~ r2_hidden(X27,X29)
        | ~ r2_hidden(X28,X30)
        | r2_hidden(k4_tarski(X27,X28),k2_zfmisc_1(X29,X30)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l54_zfmisc_1])])])).

cnf(c_0_15,negated_conjecture,
    ( esk4_0 = esk6_0
    | r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(k1_tarski(esk5_0),k1_tarski(esk6_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

fof(c_0_16,plain,(
    ! [X6,X7,X8,X9,X10,X11,X12,X13,X14,X15] :
      ( ( ~ r2_hidden(X10,X9)
        | X10 = X6
        | X10 = X7
        | X10 = X8
        | X9 != k1_enumset1(X6,X7,X8) )
      & ( X11 != X6
        | r2_hidden(X11,X9)
        | X9 != k1_enumset1(X6,X7,X8) )
      & ( X11 != X7
        | r2_hidden(X11,X9)
        | X9 != k1_enumset1(X6,X7,X8) )
      & ( X11 != X8
        | r2_hidden(X11,X9)
        | X9 != k1_enumset1(X6,X7,X8) )
      & ( esk1_4(X12,X13,X14,X15) != X12
        | ~ r2_hidden(esk1_4(X12,X13,X14,X15),X15)
        | X15 = k1_enumset1(X12,X13,X14) )
      & ( esk1_4(X12,X13,X14,X15) != X13
        | ~ r2_hidden(esk1_4(X12,X13,X14,X15),X15)
        | X15 = k1_enumset1(X12,X13,X14) )
      & ( esk1_4(X12,X13,X14,X15) != X14
        | ~ r2_hidden(esk1_4(X12,X13,X14,X15),X15)
        | X15 = k1_enumset1(X12,X13,X14) )
      & ( r2_hidden(esk1_4(X12,X13,X14,X15),X15)
        | esk1_4(X12,X13,X14,X15) = X12
        | esk1_4(X12,X13,X14,X15) = X13
        | esk1_4(X12,X13,X14,X15) = X14
        | X15 = k1_enumset1(X12,X13,X14) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_enumset1])])])])])])).

cnf(c_0_17,negated_conjecture,
    ( esk3_0 = esk5_0
    | r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(k1_tarski(esk5_0),k1_tarski(esk6_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_18,negated_conjecture,
    ( ~ r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(k1_tarski(esk5_0),k1_tarski(esk6_0)))
    | esk3_0 != esk5_0
    | esk4_0 != esk6_0 ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_19,plain,
    ( X1 = X3
    | X2 != k1_enumset1(X3,X3,X3)
    | ~ r2_hidden(X1,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_11,c_0_12]),c_0_13])).

cnf(c_0_20,plain,
    ( r2_hidden(X1,X2)
    | ~ r2_hidden(k4_tarski(X3,X1),k2_zfmisc_1(X4,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_21,negated_conjecture,
    ( esk6_0 = esk4_0
    | r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(k1_enumset1(esk5_0,esk5_0,esk5_0),k1_enumset1(esk6_0,esk6_0,esk6_0))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_15,c_0_12]),c_0_12]),c_0_13]),c_0_13])).

cnf(c_0_22,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k1_enumset1(X4,X5,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_23,plain,
    ( r2_hidden(X1,X2)
    | ~ r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(X2,X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_24,negated_conjecture,
    ( esk5_0 = esk3_0
    | r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(k1_enumset1(esk5_0,esk5_0,esk5_0),k1_enumset1(esk6_0,esk6_0,esk6_0))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_17,c_0_12]),c_0_12]),c_0_13]),c_0_13])).

cnf(c_0_25,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k1_enumset1(X4,X2,X5) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_26,negated_conjecture,
    ( esk5_0 != esk3_0
    | esk6_0 != esk4_0
    | ~ r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(k1_enumset1(esk5_0,esk5_0,esk5_0),k1_enumset1(esk6_0,esk6_0,esk6_0))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_18,c_0_12]),c_0_12]),c_0_13]),c_0_13])).

cnf(c_0_27,plain,
    ( r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(X2,X4))
    | ~ r2_hidden(X1,X2)
    | ~ r2_hidden(X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_28,plain,
    ( X1 = X2
    | ~ r2_hidden(X1,k1_enumset1(X2,X2,X2)) ),
    inference(er,[status(thm)],[c_0_19])).

cnf(c_0_29,negated_conjecture,
    ( esk6_0 = esk4_0
    | r2_hidden(esk4_0,k1_enumset1(esk6_0,esk6_0,esk6_0)) ),
    inference(spm,[status(thm)],[c_0_20,c_0_21])).

cnf(c_0_30,plain,
    ( r2_hidden(X1,X2)
    | X2 != k1_enumset1(X3,X4,X1) ),
    inference(er,[status(thm)],[c_0_22])).

cnf(c_0_31,negated_conjecture,
    ( esk3_0 = esk5_0
    | r2_hidden(esk3_0,k1_enumset1(esk5_0,esk5_0,esk5_0)) ),
    inference(spm,[status(thm)],[c_0_23,c_0_24])).

cnf(c_0_32,plain,
    ( r2_hidden(X1,X2)
    | X2 != k1_enumset1(X3,X1,X4) ),
    inference(er,[status(thm)],[c_0_25])).

cnf(c_0_33,negated_conjecture,
    ( esk3_0 != esk5_0
    | esk6_0 != esk4_0
    | ~ r2_hidden(esk4_0,k1_enumset1(esk6_0,esk6_0,esk6_0))
    | ~ r2_hidden(esk3_0,k1_enumset1(esk5_0,esk5_0,esk5_0)) ),
    inference(spm,[status(thm)],[c_0_26,c_0_27])).

cnf(c_0_34,negated_conjecture,
    ( esk6_0 = esk4_0 ),
    inference(spm,[status(thm)],[c_0_28,c_0_29])).

cnf(c_0_35,plain,
    ( r2_hidden(X1,k1_enumset1(X2,X3,X1)) ),
    inference(er,[status(thm)],[c_0_30])).

cnf(c_0_36,negated_conjecture,
    ( esk3_0 = esk5_0 ),
    inference(spm,[status(thm)],[c_0_28,c_0_31])).

cnf(c_0_37,plain,
    ( r2_hidden(X1,k1_enumset1(X2,X1,X3)) ),
    inference(er,[status(thm)],[c_0_32])).

cnf(c_0_38,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_33,c_0_34]),c_0_34]),c_0_34]),c_0_34]),c_0_35])]),c_0_36]),c_0_36]),c_0_37])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.34  % Computer   : n015.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 19:45:23 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.35  # Version: 2.5pre002
% 0.14/0.35  # No SInE strategy applied
% 0.14/0.35  # Trying AutoSched0 for 299 seconds
% 0.14/0.38  # AutoSched0-Mode selected heuristic G_E___208_B02_F1_AE_CS_SP_PS_S0Y
% 0.14/0.38  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.14/0.38  #
% 0.14/0.38  # Preprocessing time       : 0.027 s
% 0.14/0.38  # Presaturation interreduction done
% 0.14/0.38  
% 0.14/0.38  # Proof found!
% 0.14/0.38  # SZS status Theorem
% 0.14/0.38  # SZS output start CNFRefutation
% 0.14/0.38  fof(t34_zfmisc_1, conjecture, ![X1, X2, X3, X4]:(r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(k1_tarski(X3),k1_tarski(X4)))<=>(X1=X3&X2=X4)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t34_zfmisc_1)).
% 0.14/0.38  fof(d1_tarski, axiom, ![X1, X2]:(X2=k1_tarski(X1)<=>![X3]:(r2_hidden(X3,X2)<=>X3=X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_tarski)).
% 0.14/0.38  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t69_enumset1)).
% 0.14/0.38  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t70_enumset1)).
% 0.14/0.38  fof(l54_zfmisc_1, axiom, ![X1, X2, X3, X4]:(r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,X4))<=>(r2_hidden(X1,X3)&r2_hidden(X2,X4))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l54_zfmisc_1)).
% 0.14/0.38  fof(d1_enumset1, axiom, ![X1, X2, X3, X4]:(X4=k1_enumset1(X1,X2,X3)<=>![X5]:(r2_hidden(X5,X4)<=>~(((X5!=X1&X5!=X2)&X5!=X3)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_enumset1)).
% 0.14/0.38  fof(c_0_6, negated_conjecture, ~(![X1, X2, X3, X4]:(r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(k1_tarski(X3),k1_tarski(X4)))<=>(X1=X3&X2=X4))), inference(assume_negation,[status(cth)],[t34_zfmisc_1])).
% 0.14/0.38  fof(c_0_7, plain, ![X17, X18, X19, X20, X21, X22]:(((~r2_hidden(X19,X18)|X19=X17|X18!=k1_tarski(X17))&(X20!=X17|r2_hidden(X20,X18)|X18!=k1_tarski(X17)))&((~r2_hidden(esk2_2(X21,X22),X22)|esk2_2(X21,X22)!=X21|X22=k1_tarski(X21))&(r2_hidden(esk2_2(X21,X22),X22)|esk2_2(X21,X22)=X21|X22=k1_tarski(X21)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_tarski])])])])])])).
% 0.14/0.38  fof(c_0_8, plain, ![X24]:k2_tarski(X24,X24)=k1_tarski(X24), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.14/0.38  fof(c_0_9, plain, ![X25, X26]:k1_enumset1(X25,X25,X26)=k2_tarski(X25,X26), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.14/0.38  fof(c_0_10, negated_conjecture, ((~r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(k1_tarski(esk5_0),k1_tarski(esk6_0)))|(esk3_0!=esk5_0|esk4_0!=esk6_0))&((esk3_0=esk5_0|r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(k1_tarski(esk5_0),k1_tarski(esk6_0))))&(esk4_0=esk6_0|r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(k1_tarski(esk5_0),k1_tarski(esk6_0)))))), inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_6])])])])).
% 0.14/0.38  cnf(c_0_11, plain, (X1=X3|~r2_hidden(X1,X2)|X2!=k1_tarski(X3)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.14/0.38  cnf(c_0_12, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.14/0.38  cnf(c_0_13, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.14/0.38  fof(c_0_14, plain, ![X27, X28, X29, X30]:(((r2_hidden(X27,X29)|~r2_hidden(k4_tarski(X27,X28),k2_zfmisc_1(X29,X30)))&(r2_hidden(X28,X30)|~r2_hidden(k4_tarski(X27,X28),k2_zfmisc_1(X29,X30))))&(~r2_hidden(X27,X29)|~r2_hidden(X28,X30)|r2_hidden(k4_tarski(X27,X28),k2_zfmisc_1(X29,X30)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l54_zfmisc_1])])])).
% 0.14/0.38  cnf(c_0_15, negated_conjecture, (esk4_0=esk6_0|r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(k1_tarski(esk5_0),k1_tarski(esk6_0)))), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.14/0.38  fof(c_0_16, plain, ![X6, X7, X8, X9, X10, X11, X12, X13, X14, X15]:(((~r2_hidden(X10,X9)|(X10=X6|X10=X7|X10=X8)|X9!=k1_enumset1(X6,X7,X8))&(((X11!=X6|r2_hidden(X11,X9)|X9!=k1_enumset1(X6,X7,X8))&(X11!=X7|r2_hidden(X11,X9)|X9!=k1_enumset1(X6,X7,X8)))&(X11!=X8|r2_hidden(X11,X9)|X9!=k1_enumset1(X6,X7,X8))))&((((esk1_4(X12,X13,X14,X15)!=X12|~r2_hidden(esk1_4(X12,X13,X14,X15),X15)|X15=k1_enumset1(X12,X13,X14))&(esk1_4(X12,X13,X14,X15)!=X13|~r2_hidden(esk1_4(X12,X13,X14,X15),X15)|X15=k1_enumset1(X12,X13,X14)))&(esk1_4(X12,X13,X14,X15)!=X14|~r2_hidden(esk1_4(X12,X13,X14,X15),X15)|X15=k1_enumset1(X12,X13,X14)))&(r2_hidden(esk1_4(X12,X13,X14,X15),X15)|(esk1_4(X12,X13,X14,X15)=X12|esk1_4(X12,X13,X14,X15)=X13|esk1_4(X12,X13,X14,X15)=X14)|X15=k1_enumset1(X12,X13,X14)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_enumset1])])])])])])).
% 0.14/0.38  cnf(c_0_17, negated_conjecture, (esk3_0=esk5_0|r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(k1_tarski(esk5_0),k1_tarski(esk6_0)))), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.14/0.38  cnf(c_0_18, negated_conjecture, (~r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(k1_tarski(esk5_0),k1_tarski(esk6_0)))|esk3_0!=esk5_0|esk4_0!=esk6_0), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.14/0.38  cnf(c_0_19, plain, (X1=X3|X2!=k1_enumset1(X3,X3,X3)|~r2_hidden(X1,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_11, c_0_12]), c_0_13])).
% 0.14/0.38  cnf(c_0_20, plain, (r2_hidden(X1,X2)|~r2_hidden(k4_tarski(X3,X1),k2_zfmisc_1(X4,X2))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.14/0.38  cnf(c_0_21, negated_conjecture, (esk6_0=esk4_0|r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(k1_enumset1(esk5_0,esk5_0,esk5_0),k1_enumset1(esk6_0,esk6_0,esk6_0)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_15, c_0_12]), c_0_12]), c_0_13]), c_0_13])).
% 0.14/0.38  cnf(c_0_22, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k1_enumset1(X4,X5,X2)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.14/0.38  cnf(c_0_23, plain, (r2_hidden(X1,X2)|~r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(X2,X4))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.14/0.38  cnf(c_0_24, negated_conjecture, (esk5_0=esk3_0|r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(k1_enumset1(esk5_0,esk5_0,esk5_0),k1_enumset1(esk6_0,esk6_0,esk6_0)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_17, c_0_12]), c_0_12]), c_0_13]), c_0_13])).
% 0.14/0.38  cnf(c_0_25, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k1_enumset1(X4,X2,X5)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.14/0.38  cnf(c_0_26, negated_conjecture, (esk5_0!=esk3_0|esk6_0!=esk4_0|~r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(k1_enumset1(esk5_0,esk5_0,esk5_0),k1_enumset1(esk6_0,esk6_0,esk6_0)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_18, c_0_12]), c_0_12]), c_0_13]), c_0_13])).
% 0.14/0.38  cnf(c_0_27, plain, (r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(X2,X4))|~r2_hidden(X1,X2)|~r2_hidden(X3,X4)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.14/0.38  cnf(c_0_28, plain, (X1=X2|~r2_hidden(X1,k1_enumset1(X2,X2,X2))), inference(er,[status(thm)],[c_0_19])).
% 0.14/0.38  cnf(c_0_29, negated_conjecture, (esk6_0=esk4_0|r2_hidden(esk4_0,k1_enumset1(esk6_0,esk6_0,esk6_0))), inference(spm,[status(thm)],[c_0_20, c_0_21])).
% 0.14/0.38  cnf(c_0_30, plain, (r2_hidden(X1,X2)|X2!=k1_enumset1(X3,X4,X1)), inference(er,[status(thm)],[c_0_22])).
% 0.14/0.38  cnf(c_0_31, negated_conjecture, (esk3_0=esk5_0|r2_hidden(esk3_0,k1_enumset1(esk5_0,esk5_0,esk5_0))), inference(spm,[status(thm)],[c_0_23, c_0_24])).
% 0.14/0.38  cnf(c_0_32, plain, (r2_hidden(X1,X2)|X2!=k1_enumset1(X3,X1,X4)), inference(er,[status(thm)],[c_0_25])).
% 0.14/0.38  cnf(c_0_33, negated_conjecture, (esk3_0!=esk5_0|esk6_0!=esk4_0|~r2_hidden(esk4_0,k1_enumset1(esk6_0,esk6_0,esk6_0))|~r2_hidden(esk3_0,k1_enumset1(esk5_0,esk5_0,esk5_0))), inference(spm,[status(thm)],[c_0_26, c_0_27])).
% 0.14/0.38  cnf(c_0_34, negated_conjecture, (esk6_0=esk4_0), inference(spm,[status(thm)],[c_0_28, c_0_29])).
% 0.14/0.38  cnf(c_0_35, plain, (r2_hidden(X1,k1_enumset1(X2,X3,X1))), inference(er,[status(thm)],[c_0_30])).
% 0.14/0.38  cnf(c_0_36, negated_conjecture, (esk3_0=esk5_0), inference(spm,[status(thm)],[c_0_28, c_0_31])).
% 0.14/0.38  cnf(c_0_37, plain, (r2_hidden(X1,k1_enumset1(X2,X1,X3))), inference(er,[status(thm)],[c_0_32])).
% 0.14/0.38  cnf(c_0_38, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_33, c_0_34]), c_0_34]), c_0_34]), c_0_34]), c_0_35])]), c_0_36]), c_0_36]), c_0_37])]), ['proof']).
% 0.14/0.38  # SZS output end CNFRefutation
% 0.14/0.38  # Proof object total steps             : 39
% 0.14/0.38  # Proof object clause steps            : 26
% 0.14/0.38  # Proof object formula steps           : 13
% 0.14/0.38  # Proof object conjectures             : 15
% 0.14/0.38  # Proof object clause conjectures      : 12
% 0.14/0.38  # Proof object formula conjectures     : 3
% 0.14/0.38  # Proof object initial clauses used    : 11
% 0.14/0.38  # Proof object initial formulas used   : 6
% 0.14/0.38  # Proof object generating inferences   : 8
% 0.14/0.38  # Proof object simplifying inferences  : 26
% 0.14/0.38  # Training examples: 0 positive, 0 negative
% 0.14/0.38  # Parsed axioms                        : 6
% 0.14/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.14/0.38  # Initial clauses                      : 20
% 0.14/0.38  # Removed in clause preprocessing      : 2
% 0.14/0.38  # Initial clauses in saturation        : 18
% 0.14/0.38  # Processed clauses                    : 52
% 0.14/0.38  # ...of these trivial                  : 0
% 0.14/0.38  # ...subsumed                          : 3
% 0.14/0.38  # ...remaining for further processing  : 48
% 0.14/0.38  # Other redundant clauses eliminated   : 4
% 0.14/0.38  # Clauses deleted for lack of memory   : 0
% 0.14/0.38  # Backward-subsumed                    : 1
% 0.14/0.38  # Backward-rewritten                   : 7
% 0.14/0.38  # Generated clauses                    : 31
% 0.14/0.38  # ...of the previous two non-trivial   : 23
% 0.14/0.38  # Contextual simplify-reflections      : 0
% 0.14/0.38  # Paramodulations                      : 22
% 0.14/0.38  # Factorizations                       : 0
% 0.14/0.38  # Equation resolutions                 : 9
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
% 0.14/0.38  # Current number of processed clauses  : 19
% 0.14/0.38  #    Positive orientable unit clauses  : 5
% 0.14/0.38  #    Positive unorientable unit clauses: 0
% 0.14/0.38  #    Negative unit clauses             : 0
% 0.14/0.38  #    Non-unit-clauses                  : 14
% 0.14/0.38  # Current number of unprocessed clauses: 5
% 0.14/0.38  # ...number of literals in the above   : 16
% 0.14/0.38  # Current number of archived formulas  : 0
% 0.14/0.38  # Current number of archived clauses   : 27
% 0.14/0.38  # Clause-clause subsumption calls (NU) : 105
% 0.14/0.38  # Rec. Clause-clause subsumption calls : 81
% 0.14/0.38  # Non-unit clause-clause subsumptions  : 3
% 0.14/0.38  # Unit Clause-clause subsumption calls : 10
% 0.14/0.38  # Rewrite failures with RHS unbound    : 0
% 0.14/0.38  # BW rewrite match attempts            : 8
% 0.14/0.38  # BW rewrite match successes           : 2
% 0.14/0.38  # Condensation attempts                : 0
% 0.14/0.38  # Condensation successes               : 0
% 0.14/0.38  # Termbank termtop insertions          : 1679
% 0.14/0.38  
% 0.14/0.38  # -------------------------------------------------
% 0.14/0.38  # User time                : 0.029 s
% 0.14/0.38  # System time              : 0.003 s
% 0.14/0.38  # Total time               : 0.032 s
% 0.14/0.38  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
