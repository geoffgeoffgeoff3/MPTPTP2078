%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n023.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:59:18 EST 2020

% Result     : Theorem 0.15s
% Output     : CNFRefutation 0.15s
% Verified   : 
% Statistics : Number of formulae       :   42 ( 300 expanded)
%              Number of clauses        :   27 ( 122 expanded)
%              Number of leaves         :    7 (  82 expanded)
%              Depth                    :   12
%              Number of atoms          :   96 ( 686 expanded)
%              Number of equality atoms :   55 ( 487 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal clause size      :    9 (   2 average)
%              Maximal term depth       :    3 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t19_mcart_1,conjecture,(
    ! [X1,X2,X3,X4,X5] :
      ( r2_hidden(X1,k2_zfmisc_1(k2_tarski(X2,X3),k2_tarski(X4,X5)))
     => ( ( k1_mcart_1(X1) = X2
          | k1_mcart_1(X1) = X3 )
        & ( k2_mcart_1(X1) = X4
          | k2_mcart_1(X1) = X5 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t19_mcart_1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_enumset1)).

fof(t11_mcart_1,axiom,(
    ! [X1,X2,X3] :
      ( ( r2_hidden(k1_mcart_1(X1),X2)
        & r2_hidden(k2_mcart_1(X1),X3) )
     => ( ! [X4,X5] : X1 != k4_tarski(X4,X5)
        | r2_hidden(X1,k2_zfmisc_1(X2,X3)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t11_mcart_1)).

fof(t7_mcart_1,axiom,(
    ! [X1,X2] :
      ( k1_mcart_1(k4_tarski(X1,X2)) = X1
      & k2_mcart_1(k4_tarski(X1,X2)) = X2 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_mcart_1)).

fof(t10_mcart_1,axiom,(
    ! [X1,X2,X3] :
      ( r2_hidden(X1,k2_zfmisc_1(X2,X3))
     => ( r2_hidden(k1_mcart_1(X1),X2)
        & r2_hidden(k2_mcart_1(X1),X3) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t10_mcart_1)).

fof(t16_mcart_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( r2_hidden(X1,k2_zfmisc_1(X2,k2_tarski(X3,X4)))
     => ( r2_hidden(k1_mcart_1(X1),X2)
        & ( k2_mcart_1(X1) = X3
          | k2_mcart_1(X1) = X4 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t16_mcart_1)).

fof(c_0_7,negated_conjecture,(
    ~ ! [X1,X2,X3,X4,X5] :
        ( r2_hidden(X1,k2_zfmisc_1(k2_tarski(X2,X3),k2_tarski(X4,X5)))
       => ( ( k1_mcart_1(X1) = X2
            | k1_mcart_1(X1) = X3 )
          & ( k2_mcart_1(X1) = X4
            | k2_mcart_1(X1) = X5 ) ) ) ),
    inference(assume_negation,[status(cth)],[t19_mcart_1])).

fof(c_0_8,negated_conjecture,
    ( r2_hidden(esk1_0,k2_zfmisc_1(k2_tarski(esk2_0,esk3_0),k2_tarski(esk4_0,esk5_0)))
    & ( k2_mcart_1(esk1_0) != esk4_0
      | k1_mcart_1(esk1_0) != esk2_0 )
    & ( k2_mcart_1(esk1_0) != esk5_0
      | k1_mcart_1(esk1_0) != esk2_0 )
    & ( k2_mcart_1(esk1_0) != esk4_0
      | k1_mcart_1(esk1_0) != esk3_0 )
    & ( k2_mcart_1(esk1_0) != esk5_0
      | k1_mcart_1(esk1_0) != esk3_0 ) ),
    inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_7])])])])).

fof(c_0_9,plain,(
    ! [X6,X7] : k1_enumset1(X6,X6,X7) = k2_tarski(X6,X7) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_10,plain,(
    ! [X8,X9,X10] : k2_enumset1(X8,X8,X9,X10) = k1_enumset1(X8,X9,X10) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_11,plain,(
    ! [X14,X15,X16,X17,X18] :
      ( ~ r2_hidden(k1_mcart_1(X14),X15)
      | ~ r2_hidden(k2_mcart_1(X14),X16)
      | X14 != k4_tarski(X17,X18)
      | r2_hidden(X14,k2_zfmisc_1(X15,X16)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t11_mcart_1])])])).

fof(c_0_12,plain,(
    ! [X23,X24] :
      ( k1_mcart_1(k4_tarski(X23,X24)) = X23
      & k2_mcart_1(k4_tarski(X23,X24)) = X24 ) ),
    inference(variable_rename,[status(thm)],[t7_mcart_1])).

fof(c_0_13,plain,(
    ! [X11,X12,X13] :
      ( ( r2_hidden(k1_mcart_1(X11),X12)
        | ~ r2_hidden(X11,k2_zfmisc_1(X12,X13)) )
      & ( r2_hidden(k2_mcart_1(X11),X13)
        | ~ r2_hidden(X11,k2_zfmisc_1(X12,X13)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t10_mcart_1])])])).

cnf(c_0_14,negated_conjecture,
    ( r2_hidden(esk1_0,k2_zfmisc_1(k2_tarski(esk2_0,esk3_0),k2_tarski(esk4_0,esk5_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_15,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_16,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_17,plain,
    ( r2_hidden(X1,k2_zfmisc_1(X2,X3))
    | ~ r2_hidden(k1_mcart_1(X1),X2)
    | ~ r2_hidden(k2_mcart_1(X1),X3)
    | X1 != k4_tarski(X4,X5) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_18,plain,
    ( k1_mcart_1(k4_tarski(X1,X2)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_19,plain,
    ( k2_mcart_1(k4_tarski(X1,X2)) = X2 ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_20,plain,
    ( r2_hidden(k2_mcart_1(X1),X2)
    | ~ r2_hidden(X1,k2_zfmisc_1(X3,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_21,negated_conjecture,
    ( r2_hidden(esk1_0,k2_zfmisc_1(k2_enumset1(esk2_0,esk2_0,esk2_0,esk3_0),k2_enumset1(esk4_0,esk4_0,esk4_0,esk5_0))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_14,c_0_15]),c_0_15]),c_0_16]),c_0_16])).

fof(c_0_22,plain,(
    ! [X19,X20,X21,X22] :
      ( ( r2_hidden(k1_mcart_1(X19),X20)
        | ~ r2_hidden(X19,k2_zfmisc_1(X20,k2_tarski(X21,X22))) )
      & ( k2_mcart_1(X19) = X21
        | k2_mcart_1(X19) = X22
        | ~ r2_hidden(X19,k2_zfmisc_1(X20,k2_tarski(X21,X22))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t16_mcart_1])])])).

cnf(c_0_23,plain,
    ( r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,X4))
    | ~ r2_hidden(X1,X3)
    | ~ r2_hidden(X2,X4) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(er,[status(thm)],[c_0_17]),c_0_18]),c_0_19])).

cnf(c_0_24,negated_conjecture,
    ( r2_hidden(k2_mcart_1(esk1_0),k2_enumset1(esk4_0,esk4_0,esk4_0,esk5_0)) ),
    inference(spm,[status(thm)],[c_0_20,c_0_21])).

cnf(c_0_25,plain,
    ( r2_hidden(k1_mcart_1(X1),X2)
    | ~ r2_hidden(X1,k2_zfmisc_1(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_26,plain,
    ( k2_mcart_1(X1) = X2
    | k2_mcart_1(X1) = X3
    | ~ r2_hidden(X1,k2_zfmisc_1(X4,k2_tarski(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_27,negated_conjecture,
    ( r2_hidden(k4_tarski(k2_mcart_1(esk1_0),X1),k2_zfmisc_1(k2_enumset1(esk4_0,esk4_0,esk4_0,esk5_0),X2))
    | ~ r2_hidden(X1,X2) ),
    inference(spm,[status(thm)],[c_0_23,c_0_24])).

cnf(c_0_28,negated_conjecture,
    ( r2_hidden(k1_mcart_1(esk1_0),k2_enumset1(esk2_0,esk2_0,esk2_0,esk3_0)) ),
    inference(spm,[status(thm)],[c_0_25,c_0_21])).

cnf(c_0_29,plain,
    ( k2_mcart_1(X1) = X3
    | k2_mcart_1(X1) = X2
    | ~ r2_hidden(X1,k2_zfmisc_1(X4,k2_enumset1(X2,X2,X2,X3))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_26,c_0_15]),c_0_16])).

cnf(c_0_30,negated_conjecture,
    ( r2_hidden(k4_tarski(k2_mcart_1(esk1_0),k1_mcart_1(esk1_0)),k2_zfmisc_1(k2_enumset1(esk4_0,esk4_0,esk4_0,esk5_0),k2_enumset1(esk2_0,esk2_0,esk2_0,esk3_0))) ),
    inference(spm,[status(thm)],[c_0_27,c_0_28])).

cnf(c_0_31,negated_conjecture,
    ( k2_mcart_1(esk1_0) != esk4_0
    | k1_mcart_1(esk1_0) != esk3_0 ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_32,negated_conjecture,
    ( k1_mcart_1(esk1_0) = esk2_0
    | k1_mcart_1(esk1_0) = esk3_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29,c_0_30]),c_0_19]),c_0_19])).

cnf(c_0_33,negated_conjecture,
    ( k2_mcart_1(esk1_0) != esk4_0
    | k1_mcart_1(esk1_0) != esk2_0 ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_34,negated_conjecture,
    ( k2_mcart_1(esk1_0) = esk4_0
    | k2_mcart_1(esk1_0) = esk5_0 ),
    inference(spm,[status(thm)],[c_0_29,c_0_21])).

cnf(c_0_35,negated_conjecture,
    ( k2_mcart_1(esk1_0) != esk4_0 ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_32]),c_0_33])).

cnf(c_0_36,negated_conjecture,
    ( k2_mcart_1(esk1_0) != esk5_0
    | k1_mcart_1(esk1_0) != esk3_0 ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_37,negated_conjecture,
    ( k2_mcart_1(esk1_0) = esk5_0 ),
    inference(sr,[status(thm)],[c_0_34,c_0_35])).

cnf(c_0_38,negated_conjecture,
    ( k2_mcart_1(esk1_0) != esk5_0
    | k1_mcart_1(esk1_0) != esk2_0 ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_39,negated_conjecture,
    ( k1_mcart_1(esk1_0) != esk3_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_36,c_0_37])])).

cnf(c_0_40,negated_conjecture,
    ( k1_mcart_1(esk1_0) != esk2_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_38,c_0_37])])).

cnf(c_0_41,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[c_0_32,c_0_39]),c_0_40]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.14  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.15/0.35  % Computer   : n023.cluster.edu
% 0.15/0.35  % Model      : x86_64 x86_64
% 0.15/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.15/0.35  % Memory     : 8042.1875MB
% 0.15/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.15/0.35  % CPULimit   : 60
% 0.15/0.35  % WCLimit    : 600
% 0.15/0.35  % DateTime   : Tue Dec  1 14:01:51 EST 2020
% 0.15/0.35  % CPUTime    : 
% 0.15/0.35  # Version: 2.5pre002
% 0.15/0.35  # No SInE strategy applied
% 0.15/0.35  # Trying AutoSched0 for 299 seconds
% 0.15/0.38  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S078N
% 0.15/0.38  # and selection function SelectCQIArNpEqFirst.
% 0.15/0.38  #
% 0.15/0.38  # Preprocessing time       : 0.026 s
% 0.15/0.38  # Presaturation interreduction done
% 0.15/0.38  
% 0.15/0.38  # Proof found!
% 0.15/0.38  # SZS status Theorem
% 0.15/0.38  # SZS output start CNFRefutation
% 0.15/0.38  fof(t19_mcart_1, conjecture, ![X1, X2, X3, X4, X5]:(r2_hidden(X1,k2_zfmisc_1(k2_tarski(X2,X3),k2_tarski(X4,X5)))=>((k1_mcart_1(X1)=X2|k1_mcart_1(X1)=X3)&(k2_mcart_1(X1)=X4|k2_mcart_1(X1)=X5))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t19_mcart_1)).
% 0.15/0.38  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t70_enumset1)).
% 0.15/0.38  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t71_enumset1)).
% 0.15/0.38  fof(t11_mcart_1, axiom, ![X1, X2, X3]:((r2_hidden(k1_mcart_1(X1),X2)&r2_hidden(k2_mcart_1(X1),X3))=>(![X4, X5]:X1!=k4_tarski(X4,X5)|r2_hidden(X1,k2_zfmisc_1(X2,X3)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t11_mcart_1)).
% 0.15/0.38  fof(t7_mcart_1, axiom, ![X1, X2]:(k1_mcart_1(k4_tarski(X1,X2))=X1&k2_mcart_1(k4_tarski(X1,X2))=X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t7_mcart_1)).
% 0.15/0.38  fof(t10_mcart_1, axiom, ![X1, X2, X3]:(r2_hidden(X1,k2_zfmisc_1(X2,X3))=>(r2_hidden(k1_mcart_1(X1),X2)&r2_hidden(k2_mcart_1(X1),X3))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t10_mcart_1)).
% 0.15/0.38  fof(t16_mcart_1, axiom, ![X1, X2, X3, X4]:(r2_hidden(X1,k2_zfmisc_1(X2,k2_tarski(X3,X4)))=>(r2_hidden(k1_mcart_1(X1),X2)&(k2_mcart_1(X1)=X3|k2_mcart_1(X1)=X4))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t16_mcart_1)).
% 0.15/0.38  fof(c_0_7, negated_conjecture, ~(![X1, X2, X3, X4, X5]:(r2_hidden(X1,k2_zfmisc_1(k2_tarski(X2,X3),k2_tarski(X4,X5)))=>((k1_mcart_1(X1)=X2|k1_mcart_1(X1)=X3)&(k2_mcart_1(X1)=X4|k2_mcart_1(X1)=X5)))), inference(assume_negation,[status(cth)],[t19_mcart_1])).
% 0.15/0.38  fof(c_0_8, negated_conjecture, (r2_hidden(esk1_0,k2_zfmisc_1(k2_tarski(esk2_0,esk3_0),k2_tarski(esk4_0,esk5_0)))&(((k2_mcart_1(esk1_0)!=esk4_0|k1_mcart_1(esk1_0)!=esk2_0)&(k2_mcart_1(esk1_0)!=esk5_0|k1_mcart_1(esk1_0)!=esk2_0))&((k2_mcart_1(esk1_0)!=esk4_0|k1_mcart_1(esk1_0)!=esk3_0)&(k2_mcart_1(esk1_0)!=esk5_0|k1_mcart_1(esk1_0)!=esk3_0)))), inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_7])])])])).
% 0.15/0.38  fof(c_0_9, plain, ![X6, X7]:k1_enumset1(X6,X6,X7)=k2_tarski(X6,X7), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.15/0.38  fof(c_0_10, plain, ![X8, X9, X10]:k2_enumset1(X8,X8,X9,X10)=k1_enumset1(X8,X9,X10), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.15/0.38  fof(c_0_11, plain, ![X14, X15, X16, X17, X18]:(~r2_hidden(k1_mcart_1(X14),X15)|~r2_hidden(k2_mcart_1(X14),X16)|(X14!=k4_tarski(X17,X18)|r2_hidden(X14,k2_zfmisc_1(X15,X16)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t11_mcart_1])])])).
% 0.15/0.38  fof(c_0_12, plain, ![X23, X24]:(k1_mcart_1(k4_tarski(X23,X24))=X23&k2_mcart_1(k4_tarski(X23,X24))=X24), inference(variable_rename,[status(thm)],[t7_mcart_1])).
% 0.15/0.38  fof(c_0_13, plain, ![X11, X12, X13]:((r2_hidden(k1_mcart_1(X11),X12)|~r2_hidden(X11,k2_zfmisc_1(X12,X13)))&(r2_hidden(k2_mcart_1(X11),X13)|~r2_hidden(X11,k2_zfmisc_1(X12,X13)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t10_mcart_1])])])).
% 0.15/0.38  cnf(c_0_14, negated_conjecture, (r2_hidden(esk1_0,k2_zfmisc_1(k2_tarski(esk2_0,esk3_0),k2_tarski(esk4_0,esk5_0)))), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.15/0.38  cnf(c_0_15, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.15/0.38  cnf(c_0_16, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.15/0.38  cnf(c_0_17, plain, (r2_hidden(X1,k2_zfmisc_1(X2,X3))|~r2_hidden(k1_mcart_1(X1),X2)|~r2_hidden(k2_mcart_1(X1),X3)|X1!=k4_tarski(X4,X5)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.15/0.38  cnf(c_0_18, plain, (k1_mcart_1(k4_tarski(X1,X2))=X1), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.15/0.38  cnf(c_0_19, plain, (k2_mcart_1(k4_tarski(X1,X2))=X2), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.15/0.38  cnf(c_0_20, plain, (r2_hidden(k2_mcart_1(X1),X2)|~r2_hidden(X1,k2_zfmisc_1(X3,X2))), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.15/0.38  cnf(c_0_21, negated_conjecture, (r2_hidden(esk1_0,k2_zfmisc_1(k2_enumset1(esk2_0,esk2_0,esk2_0,esk3_0),k2_enumset1(esk4_0,esk4_0,esk4_0,esk5_0)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_14, c_0_15]), c_0_15]), c_0_16]), c_0_16])).
% 0.15/0.38  fof(c_0_22, plain, ![X19, X20, X21, X22]:((r2_hidden(k1_mcart_1(X19),X20)|~r2_hidden(X19,k2_zfmisc_1(X20,k2_tarski(X21,X22))))&(k2_mcart_1(X19)=X21|k2_mcart_1(X19)=X22|~r2_hidden(X19,k2_zfmisc_1(X20,k2_tarski(X21,X22))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t16_mcart_1])])])).
% 0.15/0.38  cnf(c_0_23, plain, (r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,X4))|~r2_hidden(X1,X3)|~r2_hidden(X2,X4)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(er,[status(thm)],[c_0_17]), c_0_18]), c_0_19])).
% 0.15/0.38  cnf(c_0_24, negated_conjecture, (r2_hidden(k2_mcart_1(esk1_0),k2_enumset1(esk4_0,esk4_0,esk4_0,esk5_0))), inference(spm,[status(thm)],[c_0_20, c_0_21])).
% 0.15/0.38  cnf(c_0_25, plain, (r2_hidden(k1_mcart_1(X1),X2)|~r2_hidden(X1,k2_zfmisc_1(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.15/0.38  cnf(c_0_26, plain, (k2_mcart_1(X1)=X2|k2_mcart_1(X1)=X3|~r2_hidden(X1,k2_zfmisc_1(X4,k2_tarski(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.15/0.38  cnf(c_0_27, negated_conjecture, (r2_hidden(k4_tarski(k2_mcart_1(esk1_0),X1),k2_zfmisc_1(k2_enumset1(esk4_0,esk4_0,esk4_0,esk5_0),X2))|~r2_hidden(X1,X2)), inference(spm,[status(thm)],[c_0_23, c_0_24])).
% 0.15/0.38  cnf(c_0_28, negated_conjecture, (r2_hidden(k1_mcart_1(esk1_0),k2_enumset1(esk2_0,esk2_0,esk2_0,esk3_0))), inference(spm,[status(thm)],[c_0_25, c_0_21])).
% 0.15/0.38  cnf(c_0_29, plain, (k2_mcart_1(X1)=X3|k2_mcart_1(X1)=X2|~r2_hidden(X1,k2_zfmisc_1(X4,k2_enumset1(X2,X2,X2,X3)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_26, c_0_15]), c_0_16])).
% 0.15/0.38  cnf(c_0_30, negated_conjecture, (r2_hidden(k4_tarski(k2_mcart_1(esk1_0),k1_mcart_1(esk1_0)),k2_zfmisc_1(k2_enumset1(esk4_0,esk4_0,esk4_0,esk5_0),k2_enumset1(esk2_0,esk2_0,esk2_0,esk3_0)))), inference(spm,[status(thm)],[c_0_27, c_0_28])).
% 0.15/0.38  cnf(c_0_31, negated_conjecture, (k2_mcart_1(esk1_0)!=esk4_0|k1_mcart_1(esk1_0)!=esk3_0), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.15/0.38  cnf(c_0_32, negated_conjecture, (k1_mcart_1(esk1_0)=esk2_0|k1_mcart_1(esk1_0)=esk3_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29, c_0_30]), c_0_19]), c_0_19])).
% 0.15/0.38  cnf(c_0_33, negated_conjecture, (k2_mcart_1(esk1_0)!=esk4_0|k1_mcart_1(esk1_0)!=esk2_0), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.15/0.38  cnf(c_0_34, negated_conjecture, (k2_mcart_1(esk1_0)=esk4_0|k2_mcart_1(esk1_0)=esk5_0), inference(spm,[status(thm)],[c_0_29, c_0_21])).
% 0.15/0.38  cnf(c_0_35, negated_conjecture, (k2_mcart_1(esk1_0)!=esk4_0), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_32]), c_0_33])).
% 0.15/0.38  cnf(c_0_36, negated_conjecture, (k2_mcart_1(esk1_0)!=esk5_0|k1_mcart_1(esk1_0)!=esk3_0), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.15/0.38  cnf(c_0_37, negated_conjecture, (k2_mcart_1(esk1_0)=esk5_0), inference(sr,[status(thm)],[c_0_34, c_0_35])).
% 0.15/0.38  cnf(c_0_38, negated_conjecture, (k2_mcart_1(esk1_0)!=esk5_0|k1_mcart_1(esk1_0)!=esk2_0), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.15/0.38  cnf(c_0_39, negated_conjecture, (k1_mcart_1(esk1_0)!=esk3_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_36, c_0_37])])).
% 0.15/0.38  cnf(c_0_40, negated_conjecture, (k1_mcart_1(esk1_0)!=esk2_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_38, c_0_37])])).
% 0.15/0.38  cnf(c_0_41, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(sr,[status(thm)],[c_0_32, c_0_39]), c_0_40]), ['proof']).
% 0.15/0.38  # SZS output end CNFRefutation
% 0.15/0.38  # Proof object total steps             : 42
% 0.15/0.38  # Proof object clause steps            : 27
% 0.15/0.38  # Proof object formula steps           : 15
% 0.15/0.38  # Proof object conjectures             : 20
% 0.15/0.38  # Proof object clause conjectures      : 17
% 0.15/0.38  # Proof object formula conjectures     : 3
% 0.15/0.38  # Proof object initial clauses used    : 13
% 0.15/0.38  # Proof object initial formulas used   : 7
% 0.15/0.38  # Proof object generating inferences   : 7
% 0.15/0.38  # Proof object simplifying inferences  : 19
% 0.15/0.38  # Training examples: 0 positive, 0 negative
% 0.15/0.38  # Parsed axioms                        : 7
% 0.15/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.15/0.38  # Initial clauses                      : 14
% 0.15/0.38  # Removed in clause preprocessing      : 2
% 0.15/0.38  # Initial clauses in saturation        : 12
% 0.15/0.38  # Processed clauses                    : 56
% 0.15/0.38  # ...of these trivial                  : 1
% 0.15/0.38  # ...subsumed                          : 7
% 0.15/0.38  # ...remaining for further processing  : 47
% 0.15/0.38  # Other redundant clauses eliminated   : 1
% 0.15/0.38  # Clauses deleted for lack of memory   : 0
% 0.15/0.38  # Backward-subsumed                    : 0
% 0.15/0.38  # Backward-rewritten                   : 14
% 0.15/0.38  # Generated clauses                    : 101
% 0.15/0.38  # ...of the previous two non-trivial   : 107
% 0.15/0.38  # Contextual simplify-reflections      : 1
% 0.15/0.38  # Paramodulations                      : 93
% 0.15/0.38  # Factorizations                       : 2
% 0.15/0.38  # Equation resolutions                 : 1
% 0.15/0.38  # Propositional unsat checks           : 0
% 0.15/0.38  #    Propositional check models        : 0
% 0.15/0.38  #    Propositional check unsatisfiable : 0
% 0.15/0.38  #    Propositional clauses             : 0
% 0.15/0.38  #    Propositional clauses after purity: 0
% 0.15/0.38  #    Propositional unsat core size     : 0
% 0.15/0.38  #    Propositional preprocessing time  : 0.000
% 0.15/0.38  #    Propositional encoding time       : 0.000
% 0.15/0.38  #    Propositional solver time         : 0.000
% 0.15/0.38  #    Success case prop preproc time    : 0.000
% 0.15/0.38  #    Success case prop encoding time   : 0.000
% 0.15/0.38  #    Success case prop solver time     : 0.000
% 0.15/0.38  # Current number of processed clauses  : 16
% 0.15/0.38  #    Positive orientable unit clauses  : 6
% 0.15/0.38  #    Positive unorientable unit clauses: 0
% 0.15/0.38  #    Negative unit clauses             : 3
% 0.15/0.38  #    Non-unit-clauses                  : 7
% 0.15/0.38  # Current number of unprocessed clauses: 71
% 0.15/0.38  # ...number of literals in the above   : 122
% 0.15/0.38  # Current number of archived formulas  : 0
% 0.15/0.38  # Current number of archived clauses   : 32
% 0.15/0.38  # Clause-clause subsumption calls (NU) : 77
% 0.15/0.38  # Rec. Clause-clause subsumption calls : 70
% 0.15/0.38  # Non-unit clause-clause subsumptions  : 6
% 0.15/0.38  # Unit Clause-clause subsumption calls : 15
% 0.15/0.38  # Rewrite failures with RHS unbound    : 0
% 0.15/0.38  # BW rewrite match attempts            : 1
% 0.15/0.38  # BW rewrite match successes           : 1
% 0.15/0.38  # Condensation attempts                : 0
% 0.15/0.38  # Condensation successes               : 0
% 0.15/0.38  # Termbank termtop insertions          : 3244
% 0.15/0.38  
% 0.15/0.38  # -------------------------------------------------
% 0.15/0.38  # User time                : 0.029 s
% 0.15/0.38  # System time              : 0.004 s
% 0.15/0.38  # Total time               : 0.033 s
% 0.15/0.38  # Maximum resident set size: 1568 pages
%------------------------------------------------------------------------------
