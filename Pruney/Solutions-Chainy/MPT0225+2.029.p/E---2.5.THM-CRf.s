%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n009.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:38:06 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   45 ( 230 expanded)
%              Number of clauses        :   26 (  91 expanded)
%              Number of leaves         :    9 (  68 expanded)
%              Depth                    :   10
%              Number of atoms          :  110 ( 362 expanded)
%              Number of equality atoms :   70 ( 287 expanded)
%              Maximal formula depth    :   22 (   4 average)
%              Maximal clause size      :   28 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t20_zfmisc_1,conjecture,(
    ! [X1,X2] :
      ( k4_xboole_0(k1_tarski(X1),k1_tarski(X2)) = k1_tarski(X1)
    <=> X1 != X2 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t20_zfmisc_1)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_enumset1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

fof(t100_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t100_xboole_1)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_enumset1)).

fof(t17_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( X1 != X2
     => r1_xboole_0(k1_tarski(X1),k1_tarski(X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t17_zfmisc_1)).

fof(t83_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_xboole_0(X1,X2)
    <=> k4_xboole_0(X1,X2) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t83_xboole_1)).

fof(l24_zfmisc_1,axiom,(
    ! [X1,X2] :
      ~ ( r1_xboole_0(k1_tarski(X1),X2)
        & r2_hidden(X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l24_zfmisc_1)).

fof(d1_enumset1,axiom,(
    ! [X1,X2,X3,X4] :
      ( X4 = k1_enumset1(X1,X2,X3)
    <=> ! [X5] :
          ( r2_hidden(X5,X4)
        <=> ~ ( X5 != X1
              & X5 != X2
              & X5 != X3 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_enumset1)).

fof(c_0_9,negated_conjecture,(
    ~ ! [X1,X2] :
        ( k4_xboole_0(k1_tarski(X1),k1_tarski(X2)) = k1_tarski(X1)
      <=> X1 != X2 ) ),
    inference(assume_negation,[status(cth)],[t20_zfmisc_1])).

fof(c_0_10,negated_conjecture,
    ( ( k4_xboole_0(k1_tarski(esk2_0),k1_tarski(esk3_0)) != k1_tarski(esk2_0)
      | esk2_0 = esk3_0 )
    & ( k4_xboole_0(k1_tarski(esk2_0),k1_tarski(esk3_0)) = k1_tarski(esk2_0)
      | esk2_0 != esk3_0 ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_9])])])).

fof(c_0_11,plain,(
    ! [X21] : k2_tarski(X21,X21) = k1_tarski(X21) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_12,plain,(
    ! [X22,X23] : k1_enumset1(X22,X22,X23) = k2_tarski(X22,X23) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_13,plain,(
    ! [X6,X7] : k4_xboole_0(X6,X7) = k5_xboole_0(X6,k3_xboole_0(X6,X7)) ),
    inference(variable_rename,[status(thm)],[t100_xboole_1])).

fof(c_0_14,plain,(
    ! [X24,X25,X26] : k2_enumset1(X24,X24,X25,X26) = k1_enumset1(X24,X25,X26) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_15,plain,(
    ! [X29,X30] :
      ( X29 = X30
      | r1_xboole_0(k1_tarski(X29),k1_tarski(X30)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t17_zfmisc_1])])).

fof(c_0_16,plain,(
    ! [X8,X9] :
      ( ( ~ r1_xboole_0(X8,X9)
        | k4_xboole_0(X8,X9) = X8 )
      & ( k4_xboole_0(X8,X9) != X8
        | r1_xboole_0(X8,X9) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t83_xboole_1])])).

cnf(c_0_17,negated_conjecture,
    ( k4_xboole_0(k1_tarski(esk2_0),k1_tarski(esk3_0)) = k1_tarski(esk2_0)
    | esk2_0 != esk3_0 ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_18,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_19,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_20,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_21,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_22,plain,
    ( X1 = X2
    | r1_xboole_0(k1_tarski(X1),k1_tarski(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_23,plain,
    ( r1_xboole_0(X1,X2)
    | k4_xboole_0(X1,X2) != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_24,negated_conjecture,
    ( k5_xboole_0(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k3_xboole_0(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k2_enumset1(esk3_0,esk3_0,esk3_0,esk3_0))) = k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0)
    | esk3_0 != esk2_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_17,c_0_18]),c_0_18]),c_0_18]),c_0_19]),c_0_19]),c_0_19]),c_0_20]),c_0_21]),c_0_21]),c_0_21]),c_0_21])).

cnf(c_0_25,plain,
    ( X1 = X2
    | r1_xboole_0(k2_enumset1(X1,X1,X1,X1),k2_enumset1(X2,X2,X2,X2)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_22,c_0_18]),c_0_18]),c_0_19]),c_0_19]),c_0_21]),c_0_21])).

fof(c_0_26,plain,(
    ! [X27,X28] :
      ( ~ r1_xboole_0(k1_tarski(X27),X28)
      | ~ r2_hidden(X27,X28) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l24_zfmisc_1])])).

cnf(c_0_27,plain,
    ( k4_xboole_0(X1,X2) = X1
    | ~ r1_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_28,plain,
    ( r1_xboole_0(X1,X2)
    | k5_xboole_0(X1,k3_xboole_0(X1,X2)) != X1 ),
    inference(rw,[status(thm)],[c_0_23,c_0_20])).

cnf(c_0_29,negated_conjecture,
    ( k5_xboole_0(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k3_xboole_0(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0))) = k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0)
    | r1_xboole_0(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k2_enumset1(esk3_0,esk3_0,esk3_0,esk3_0)) ),
    inference(er,[status(thm)],[inference(spm,[status(thm)],[c_0_24,c_0_25])])).

fof(c_0_30,plain,(
    ! [X10,X11,X12,X13,X14,X15,X16,X17,X18,X19] :
      ( ( ~ r2_hidden(X14,X13)
        | X14 = X10
        | X14 = X11
        | X14 = X12
        | X13 != k1_enumset1(X10,X11,X12) )
      & ( X15 != X10
        | r2_hidden(X15,X13)
        | X13 != k1_enumset1(X10,X11,X12) )
      & ( X15 != X11
        | r2_hidden(X15,X13)
        | X13 != k1_enumset1(X10,X11,X12) )
      & ( X15 != X12
        | r2_hidden(X15,X13)
        | X13 != k1_enumset1(X10,X11,X12) )
      & ( esk1_4(X16,X17,X18,X19) != X16
        | ~ r2_hidden(esk1_4(X16,X17,X18,X19),X19)
        | X19 = k1_enumset1(X16,X17,X18) )
      & ( esk1_4(X16,X17,X18,X19) != X17
        | ~ r2_hidden(esk1_4(X16,X17,X18,X19),X19)
        | X19 = k1_enumset1(X16,X17,X18) )
      & ( esk1_4(X16,X17,X18,X19) != X18
        | ~ r2_hidden(esk1_4(X16,X17,X18,X19),X19)
        | X19 = k1_enumset1(X16,X17,X18) )
      & ( r2_hidden(esk1_4(X16,X17,X18,X19),X19)
        | esk1_4(X16,X17,X18,X19) = X16
        | esk1_4(X16,X17,X18,X19) = X17
        | esk1_4(X16,X17,X18,X19) = X18
        | X19 = k1_enumset1(X16,X17,X18) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_enumset1])])])])])])).

cnf(c_0_31,plain,
    ( ~ r1_xboole_0(k1_tarski(X1),X2)
    | ~ r2_hidden(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_32,negated_conjecture,
    ( esk2_0 = esk3_0
    | k4_xboole_0(k1_tarski(esk2_0),k1_tarski(esk3_0)) != k1_tarski(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_33,plain,
    ( k5_xboole_0(X1,k3_xboole_0(X1,X2)) = X1
    | ~ r1_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_27,c_0_20])).

cnf(c_0_34,negated_conjecture,
    ( r1_xboole_0(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k2_enumset1(esk3_0,esk3_0,esk3_0,esk3_0))
    | r1_xboole_0(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0)) ),
    inference(spm,[status(thm)],[c_0_28,c_0_29])).

cnf(c_0_35,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k1_enumset1(X2,X4,X5) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_36,plain,
    ( ~ r2_hidden(X1,X2)
    | ~ r1_xboole_0(k2_enumset1(X1,X1,X1,X1),X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_31,c_0_18]),c_0_19]),c_0_21])).

cnf(c_0_37,negated_conjecture,
    ( esk3_0 = esk2_0
    | k5_xboole_0(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k3_xboole_0(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k2_enumset1(esk3_0,esk3_0,esk3_0,esk3_0))) != k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_32,c_0_18]),c_0_18]),c_0_18]),c_0_19]),c_0_19]),c_0_19]),c_0_20]),c_0_21]),c_0_21]),c_0_21]),c_0_21])).

cnf(c_0_38,negated_conjecture,
    ( k5_xboole_0(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k3_xboole_0(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k2_enumset1(esk3_0,esk3_0,esk3_0,esk3_0))) = k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0)
    | r1_xboole_0(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0)) ),
    inference(spm,[status(thm)],[c_0_33,c_0_34])).

cnf(c_0_39,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k2_enumset1(X2,X2,X4,X5) ),
    inference(rw,[status(thm)],[c_0_35,c_0_21])).

cnf(c_0_40,negated_conjecture,
    ( r1_xboole_0(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0))
    | ~ r2_hidden(esk2_0,k2_enumset1(esk3_0,esk3_0,esk3_0,esk3_0)) ),
    inference(spm,[status(thm)],[c_0_36,c_0_34])).

cnf(c_0_41,negated_conjecture,
    ( esk3_0 = esk2_0
    | r1_xboole_0(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0)) ),
    inference(spm,[status(thm)],[c_0_37,c_0_38])).

cnf(c_0_42,plain,
    ( r2_hidden(X1,k2_enumset1(X1,X1,X2,X3)) ),
    inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_39])])).

cnf(c_0_43,negated_conjecture,
    ( r1_xboole_0(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_41]),c_0_42])])).

cnf(c_0_44,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_36,c_0_43]),c_0_42])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n009.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 13:54:26 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.13/0.38  # AutoSched0-Mode selected heuristic h208_C18_F1_SE_CS_SP_PS_S002A
% 0.13/0.38  # and selection function SelectNegativeLiterals.
% 0.13/0.38  #
% 0.13/0.38  # Preprocessing time       : 0.028 s
% 0.13/0.38  # Presaturation interreduction done
% 0.13/0.38  
% 0.13/0.38  # Proof found!
% 0.13/0.38  # SZS status Theorem
% 0.13/0.38  # SZS output start CNFRefutation
% 0.13/0.38  fof(t20_zfmisc_1, conjecture, ![X1, X2]:(k4_xboole_0(k1_tarski(X1),k1_tarski(X2))=k1_tarski(X1)<=>X1!=X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t20_zfmisc_1)).
% 0.13/0.38  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t69_enumset1)).
% 0.13/0.38  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t70_enumset1)).
% 0.13/0.38  fof(t100_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t100_xboole_1)).
% 0.13/0.38  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t71_enumset1)).
% 0.13/0.38  fof(t17_zfmisc_1, axiom, ![X1, X2]:(X1!=X2=>r1_xboole_0(k1_tarski(X1),k1_tarski(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t17_zfmisc_1)).
% 0.13/0.38  fof(t83_xboole_1, axiom, ![X1, X2]:(r1_xboole_0(X1,X2)<=>k4_xboole_0(X1,X2)=X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t83_xboole_1)).
% 0.13/0.38  fof(l24_zfmisc_1, axiom, ![X1, X2]:~((r1_xboole_0(k1_tarski(X1),X2)&r2_hidden(X1,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l24_zfmisc_1)).
% 0.13/0.38  fof(d1_enumset1, axiom, ![X1, X2, X3, X4]:(X4=k1_enumset1(X1,X2,X3)<=>![X5]:(r2_hidden(X5,X4)<=>~(((X5!=X1&X5!=X2)&X5!=X3)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d1_enumset1)).
% 0.13/0.38  fof(c_0_9, negated_conjecture, ~(![X1, X2]:(k4_xboole_0(k1_tarski(X1),k1_tarski(X2))=k1_tarski(X1)<=>X1!=X2)), inference(assume_negation,[status(cth)],[t20_zfmisc_1])).
% 0.13/0.38  fof(c_0_10, negated_conjecture, ((k4_xboole_0(k1_tarski(esk2_0),k1_tarski(esk3_0))!=k1_tarski(esk2_0)|esk2_0=esk3_0)&(k4_xboole_0(k1_tarski(esk2_0),k1_tarski(esk3_0))=k1_tarski(esk2_0)|esk2_0!=esk3_0)), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_9])])])).
% 0.13/0.38  fof(c_0_11, plain, ![X21]:k2_tarski(X21,X21)=k1_tarski(X21), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.13/0.38  fof(c_0_12, plain, ![X22, X23]:k1_enumset1(X22,X22,X23)=k2_tarski(X22,X23), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.13/0.38  fof(c_0_13, plain, ![X6, X7]:k4_xboole_0(X6,X7)=k5_xboole_0(X6,k3_xboole_0(X6,X7)), inference(variable_rename,[status(thm)],[t100_xboole_1])).
% 0.13/0.38  fof(c_0_14, plain, ![X24, X25, X26]:k2_enumset1(X24,X24,X25,X26)=k1_enumset1(X24,X25,X26), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.13/0.38  fof(c_0_15, plain, ![X29, X30]:(X29=X30|r1_xboole_0(k1_tarski(X29),k1_tarski(X30))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t17_zfmisc_1])])).
% 0.13/0.38  fof(c_0_16, plain, ![X8, X9]:((~r1_xboole_0(X8,X9)|k4_xboole_0(X8,X9)=X8)&(k4_xboole_0(X8,X9)!=X8|r1_xboole_0(X8,X9))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t83_xboole_1])])).
% 0.13/0.38  cnf(c_0_17, negated_conjecture, (k4_xboole_0(k1_tarski(esk2_0),k1_tarski(esk3_0))=k1_tarski(esk2_0)|esk2_0!=esk3_0), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_18, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.13/0.38  cnf(c_0_19, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.13/0.38  cnf(c_0_20, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.13/0.38  cnf(c_0_21, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.13/0.38  cnf(c_0_22, plain, (X1=X2|r1_xboole_0(k1_tarski(X1),k1_tarski(X2))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.13/0.38  cnf(c_0_23, plain, (r1_xboole_0(X1,X2)|k4_xboole_0(X1,X2)!=X1), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.13/0.38  cnf(c_0_24, negated_conjecture, (k5_xboole_0(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k3_xboole_0(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k2_enumset1(esk3_0,esk3_0,esk3_0,esk3_0)))=k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0)|esk3_0!=esk2_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_17, c_0_18]), c_0_18]), c_0_18]), c_0_19]), c_0_19]), c_0_19]), c_0_20]), c_0_21]), c_0_21]), c_0_21]), c_0_21])).
% 0.13/0.38  cnf(c_0_25, plain, (X1=X2|r1_xboole_0(k2_enumset1(X1,X1,X1,X1),k2_enumset1(X2,X2,X2,X2))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_22, c_0_18]), c_0_18]), c_0_19]), c_0_19]), c_0_21]), c_0_21])).
% 0.13/0.38  fof(c_0_26, plain, ![X27, X28]:(~r1_xboole_0(k1_tarski(X27),X28)|~r2_hidden(X27,X28)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l24_zfmisc_1])])).
% 0.13/0.38  cnf(c_0_27, plain, (k4_xboole_0(X1,X2)=X1|~r1_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.13/0.38  cnf(c_0_28, plain, (r1_xboole_0(X1,X2)|k5_xboole_0(X1,k3_xboole_0(X1,X2))!=X1), inference(rw,[status(thm)],[c_0_23, c_0_20])).
% 0.13/0.38  cnf(c_0_29, negated_conjecture, (k5_xboole_0(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k3_xboole_0(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0)))=k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0)|r1_xboole_0(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k2_enumset1(esk3_0,esk3_0,esk3_0,esk3_0))), inference(er,[status(thm)],[inference(spm,[status(thm)],[c_0_24, c_0_25])])).
% 0.13/0.38  fof(c_0_30, plain, ![X10, X11, X12, X13, X14, X15, X16, X17, X18, X19]:(((~r2_hidden(X14,X13)|(X14=X10|X14=X11|X14=X12)|X13!=k1_enumset1(X10,X11,X12))&(((X15!=X10|r2_hidden(X15,X13)|X13!=k1_enumset1(X10,X11,X12))&(X15!=X11|r2_hidden(X15,X13)|X13!=k1_enumset1(X10,X11,X12)))&(X15!=X12|r2_hidden(X15,X13)|X13!=k1_enumset1(X10,X11,X12))))&((((esk1_4(X16,X17,X18,X19)!=X16|~r2_hidden(esk1_4(X16,X17,X18,X19),X19)|X19=k1_enumset1(X16,X17,X18))&(esk1_4(X16,X17,X18,X19)!=X17|~r2_hidden(esk1_4(X16,X17,X18,X19),X19)|X19=k1_enumset1(X16,X17,X18)))&(esk1_4(X16,X17,X18,X19)!=X18|~r2_hidden(esk1_4(X16,X17,X18,X19),X19)|X19=k1_enumset1(X16,X17,X18)))&(r2_hidden(esk1_4(X16,X17,X18,X19),X19)|(esk1_4(X16,X17,X18,X19)=X16|esk1_4(X16,X17,X18,X19)=X17|esk1_4(X16,X17,X18,X19)=X18)|X19=k1_enumset1(X16,X17,X18)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_enumset1])])])])])])).
% 0.13/0.38  cnf(c_0_31, plain, (~r1_xboole_0(k1_tarski(X1),X2)|~r2_hidden(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.13/0.38  cnf(c_0_32, negated_conjecture, (esk2_0=esk3_0|k4_xboole_0(k1_tarski(esk2_0),k1_tarski(esk3_0))!=k1_tarski(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_33, plain, (k5_xboole_0(X1,k3_xboole_0(X1,X2))=X1|~r1_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_27, c_0_20])).
% 0.13/0.38  cnf(c_0_34, negated_conjecture, (r1_xboole_0(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k2_enumset1(esk3_0,esk3_0,esk3_0,esk3_0))|r1_xboole_0(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0))), inference(spm,[status(thm)],[c_0_28, c_0_29])).
% 0.13/0.38  cnf(c_0_35, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k1_enumset1(X2,X4,X5)), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.13/0.38  cnf(c_0_36, plain, (~r2_hidden(X1,X2)|~r1_xboole_0(k2_enumset1(X1,X1,X1,X1),X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_31, c_0_18]), c_0_19]), c_0_21])).
% 0.13/0.38  cnf(c_0_37, negated_conjecture, (esk3_0=esk2_0|k5_xboole_0(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k3_xboole_0(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k2_enumset1(esk3_0,esk3_0,esk3_0,esk3_0)))!=k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_32, c_0_18]), c_0_18]), c_0_18]), c_0_19]), c_0_19]), c_0_19]), c_0_20]), c_0_21]), c_0_21]), c_0_21]), c_0_21])).
% 0.13/0.38  cnf(c_0_38, negated_conjecture, (k5_xboole_0(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k3_xboole_0(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k2_enumset1(esk3_0,esk3_0,esk3_0,esk3_0)))=k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0)|r1_xboole_0(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0))), inference(spm,[status(thm)],[c_0_33, c_0_34])).
% 0.13/0.38  cnf(c_0_39, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k2_enumset1(X2,X2,X4,X5)), inference(rw,[status(thm)],[c_0_35, c_0_21])).
% 0.13/0.38  cnf(c_0_40, negated_conjecture, (r1_xboole_0(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0))|~r2_hidden(esk2_0,k2_enumset1(esk3_0,esk3_0,esk3_0,esk3_0))), inference(spm,[status(thm)],[c_0_36, c_0_34])).
% 0.13/0.38  cnf(c_0_41, negated_conjecture, (esk3_0=esk2_0|r1_xboole_0(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0))), inference(spm,[status(thm)],[c_0_37, c_0_38])).
% 0.13/0.38  cnf(c_0_42, plain, (r2_hidden(X1,k2_enumset1(X1,X1,X2,X3))), inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_39])])).
% 0.13/0.38  cnf(c_0_43, negated_conjecture, (r1_xboole_0(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_41]), c_0_42])])).
% 0.13/0.38  cnf(c_0_44, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_36, c_0_43]), c_0_42])]), ['proof']).
% 0.13/0.38  # SZS output end CNFRefutation
% 0.13/0.38  # Proof object total steps             : 45
% 0.13/0.38  # Proof object clause steps            : 26
% 0.13/0.38  # Proof object formula steps           : 19
% 0.13/0.38  # Proof object conjectures             : 14
% 0.13/0.38  # Proof object clause conjectures      : 11
% 0.13/0.38  # Proof object formula conjectures     : 3
% 0.13/0.38  # Proof object initial clauses used    : 11
% 0.13/0.38  # Proof object initial formulas used   : 9
% 0.13/0.38  # Proof object generating inferences   : 7
% 0.13/0.38  # Proof object simplifying inferences  : 41
% 0.13/0.38  # Training examples: 0 positive, 0 negative
% 0.13/0.38  # Parsed axioms                        : 9
% 0.13/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.38  # Initial clauses                      : 18
% 0.13/0.38  # Removed in clause preprocessing      : 4
% 0.13/0.38  # Initial clauses in saturation        : 14
% 0.13/0.38  # Processed clauses                    : 42
% 0.13/0.38  # ...of these trivial                  : 0
% 0.13/0.38  # ...subsumed                          : 0
% 0.13/0.38  # ...remaining for further processing  : 42
% 0.13/0.38  # Other redundant clauses eliminated   : 35
% 0.13/0.38  # Clauses deleted for lack of memory   : 0
% 0.13/0.38  # Backward-subsumed                    : 0
% 0.13/0.38  # Backward-rewritten                   : 4
% 0.13/0.38  # Generated clauses                    : 295
% 0.13/0.38  # ...of the previous two non-trivial   : 242
% 0.13/0.38  # Contextual simplify-reflections      : 0
% 0.13/0.38  # Paramodulations                      : 257
% 0.13/0.38  # Factorizations                       : 6
% 0.13/0.38  # Equation resolutions                 : 35
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
% 0.13/0.38  # Current number of processed clauses  : 20
% 0.13/0.38  #    Positive orientable unit clauses  : 4
% 0.13/0.38  #    Positive unorientable unit clauses: 0
% 0.13/0.38  #    Negative unit clauses             : 0
% 0.13/0.38  #    Non-unit-clauses                  : 16
% 0.13/0.38  # Current number of unprocessed clauses: 224
% 0.13/0.38  # ...number of literals in the above   : 802
% 0.13/0.38  # Current number of archived formulas  : 0
% 0.13/0.38  # Current number of archived clauses   : 22
% 0.13/0.38  # Clause-clause subsumption calls (NU) : 43
% 0.13/0.38  # Rec. Clause-clause subsumption calls : 43
% 0.13/0.38  # Non-unit clause-clause subsumptions  : 0
% 0.13/0.38  # Unit Clause-clause subsumption calls : 2
% 0.13/0.38  # Rewrite failures with RHS unbound    : 0
% 0.13/0.38  # BW rewrite match attempts            : 7
% 0.13/0.38  # BW rewrite match successes           : 1
% 0.13/0.38  # Condensation attempts                : 0
% 0.13/0.38  # Condensation successes               : 0
% 0.13/0.38  # Termbank termtop insertions          : 5892
% 0.13/0.38  
% 0.13/0.38  # -------------------------------------------------
% 0.13/0.38  # User time                : 0.032 s
% 0.13/0.38  # System time              : 0.004 s
% 0.13/0.38  # Total time               : 0.036 s
% 0.13/0.38  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
