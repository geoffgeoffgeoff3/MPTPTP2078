%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n019.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:59:10 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   41 ( 113 expanded)
%              Number of clauses        :   24 (  48 expanded)
%              Number of leaves         :    8 (  30 expanded)
%              Depth                    :    8
%              Number of atoms          :   99 ( 240 expanded)
%              Number of equality atoms :   44 ( 128 expanded)
%              Maximal formula depth    :   13 (   4 average)
%              Maximal clause size      :   12 (   2 average)
%              Maximal term depth       :    3 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t16_mcart_1,conjecture,(
    ! [X1,X2,X3,X4] :
      ( r2_hidden(X1,k2_zfmisc_1(X2,k2_tarski(X3,X4)))
     => ( r2_hidden(k1_mcart_1(X1),X2)
        & ( k2_mcart_1(X1) = X3
          | k2_mcart_1(X1) = X4 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t16_mcart_1)).

fof(t72_zfmisc_1,axiom,(
    ! [X1,X2,X3] :
      ( k4_xboole_0(k2_tarski(X1,X2),X3) = k2_tarski(X1,X2)
    <=> ( ~ r2_hidden(X1,X3)
        & ~ r2_hidden(X2,X3) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t72_zfmisc_1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_enumset1)).

fof(t144_zfmisc_1,axiom,(
    ! [X1,X2,X3] :
      ~ ( ~ r2_hidden(X1,X3)
        & ~ r2_hidden(X2,X3)
        & X3 != k4_xboole_0(X3,k2_tarski(X1,X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t144_zfmisc_1)).

fof(d1_tarski,axiom,(
    ! [X1,X2] :
      ( X2 = k1_tarski(X1)
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> X3 = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_tarski)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_enumset1)).

fof(t10_mcart_1,axiom,(
    ! [X1,X2,X3] :
      ( r2_hidden(X1,k2_zfmisc_1(X2,X3))
     => ( r2_hidden(k1_mcart_1(X1),X2)
        & r2_hidden(k2_mcart_1(X1),X3) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t10_mcart_1)).

fof(c_0_8,negated_conjecture,(
    ~ ! [X1,X2,X3,X4] :
        ( r2_hidden(X1,k2_zfmisc_1(X2,k2_tarski(X3,X4)))
       => ( r2_hidden(k1_mcart_1(X1),X2)
          & ( k2_mcart_1(X1) = X3
            | k2_mcart_1(X1) = X4 ) ) ) ),
    inference(assume_negation,[status(cth)],[t16_mcart_1])).

fof(c_0_9,plain,(
    ! [X21,X22,X23] :
      ( ( ~ r2_hidden(X21,X23)
        | k4_xboole_0(k2_tarski(X21,X22),X23) != k2_tarski(X21,X22) )
      & ( ~ r2_hidden(X22,X23)
        | k4_xboole_0(k2_tarski(X21,X22),X23) != k2_tarski(X21,X22) )
      & ( r2_hidden(X21,X23)
        | r2_hidden(X22,X23)
        | k4_xboole_0(k2_tarski(X21,X22),X23) = k2_tarski(X21,X22) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t72_zfmisc_1])])])])).

fof(c_0_10,plain,(
    ! [X13,X14] : k1_enumset1(X13,X13,X14) = k2_tarski(X13,X14) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_11,plain,(
    ! [X15,X16,X17] : k2_enumset1(X15,X15,X16,X17) = k1_enumset1(X15,X16,X17) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_12,plain,(
    ! [X18,X19,X20] :
      ( r2_hidden(X18,X20)
      | r2_hidden(X19,X20)
      | X20 = k4_xboole_0(X20,k2_tarski(X18,X19)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t144_zfmisc_1])])])).

fof(c_0_13,negated_conjecture,
    ( r2_hidden(esk2_0,k2_zfmisc_1(esk3_0,k2_tarski(esk4_0,esk5_0)))
    & ( k2_mcart_1(esk2_0) != esk4_0
      | ~ r2_hidden(k1_mcart_1(esk2_0),esk3_0) )
    & ( k2_mcart_1(esk2_0) != esk5_0
      | ~ r2_hidden(k1_mcart_1(esk2_0),esk3_0) ) ),
    inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_8])])])])).

fof(c_0_14,plain,(
    ! [X5,X6,X7,X8,X9,X10] :
      ( ( ~ r2_hidden(X7,X6)
        | X7 = X5
        | X6 != k1_tarski(X5) )
      & ( X8 != X5
        | r2_hidden(X8,X6)
        | X6 != k1_tarski(X5) )
      & ( ~ r2_hidden(esk1_2(X9,X10),X10)
        | esk1_2(X9,X10) != X9
        | X10 = k1_tarski(X9) )
      & ( r2_hidden(esk1_2(X9,X10),X10)
        | esk1_2(X9,X10) = X9
        | X10 = k1_tarski(X9) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_tarski])])])])])])).

fof(c_0_15,plain,(
    ! [X12] : k2_tarski(X12,X12) = k1_tarski(X12) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

cnf(c_0_16,plain,
    ( ~ r2_hidden(X1,X2)
    | k4_xboole_0(k2_tarski(X3,X1),X2) != k2_tarski(X3,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_17,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_18,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_19,plain,
    ( r2_hidden(X1,X2)
    | r2_hidden(X3,X2)
    | X2 = k4_xboole_0(X2,k2_tarski(X1,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

fof(c_0_20,plain,(
    ! [X24,X25,X26] :
      ( ( r2_hidden(k1_mcart_1(X24),X25)
        | ~ r2_hidden(X24,k2_zfmisc_1(X25,X26)) )
      & ( r2_hidden(k2_mcart_1(X24),X26)
        | ~ r2_hidden(X24,k2_zfmisc_1(X25,X26)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t10_mcart_1])])])).

cnf(c_0_21,negated_conjecture,
    ( r2_hidden(esk2_0,k2_zfmisc_1(esk3_0,k2_tarski(esk4_0,esk5_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_22,plain,
    ( X1 = X3
    | ~ r2_hidden(X1,X2)
    | X2 != k1_tarski(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_23,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_24,plain,
    ( k4_xboole_0(k2_enumset1(X3,X3,X3,X1),X2) != k2_enumset1(X3,X3,X3,X1)
    | ~ r2_hidden(X1,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_16,c_0_17]),c_0_17]),c_0_18]),c_0_18])).

cnf(c_0_25,plain,
    ( X2 = k4_xboole_0(X2,k2_enumset1(X1,X1,X1,X3))
    | r2_hidden(X3,X2)
    | r2_hidden(X1,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_19,c_0_17]),c_0_18])).

cnf(c_0_26,plain,
    ( r2_hidden(k2_mcart_1(X1),X2)
    | ~ r2_hidden(X1,k2_zfmisc_1(X3,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_27,negated_conjecture,
    ( r2_hidden(esk2_0,k2_zfmisc_1(esk3_0,k2_enumset1(esk4_0,esk4_0,esk4_0,esk5_0))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_21,c_0_17]),c_0_18])).

cnf(c_0_28,plain,
    ( r2_hidden(k1_mcart_1(X1),X2)
    | ~ r2_hidden(X1,k2_zfmisc_1(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_29,plain,
    ( X1 = X3
    | X2 != k2_enumset1(X3,X3,X3,X3)
    | ~ r2_hidden(X1,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_22,c_0_23]),c_0_17]),c_0_18])).

cnf(c_0_30,plain,
    ( r2_hidden(X1,k2_enumset1(X2,X2,X2,X3))
    | r2_hidden(X4,k2_enumset1(X2,X2,X2,X3))
    | ~ r2_hidden(X3,k2_enumset1(X1,X1,X1,X4)) ),
    inference(spm,[status(thm)],[c_0_24,c_0_25])).

cnf(c_0_31,negated_conjecture,
    ( r2_hidden(k2_mcart_1(esk2_0),k2_enumset1(esk4_0,esk4_0,esk4_0,esk5_0)) ),
    inference(spm,[status(thm)],[c_0_26,c_0_27])).

cnf(c_0_32,negated_conjecture,
    ( k2_mcart_1(esk2_0) != esk5_0
    | ~ r2_hidden(k1_mcart_1(esk2_0),esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_33,negated_conjecture,
    ( r2_hidden(k1_mcart_1(esk2_0),esk3_0) ),
    inference(spm,[status(thm)],[c_0_28,c_0_27])).

cnf(c_0_34,plain,
    ( X1 = X2
    | ~ r2_hidden(X1,k2_enumset1(X2,X2,X2,X2)) ),
    inference(er,[status(thm)],[c_0_29])).

cnf(c_0_35,negated_conjecture,
    ( r2_hidden(esk5_0,k2_enumset1(X1,X1,X1,k2_mcart_1(esk2_0)))
    | r2_hidden(esk4_0,k2_enumset1(X1,X1,X1,k2_mcart_1(esk2_0))) ),
    inference(spm,[status(thm)],[c_0_30,c_0_31])).

cnf(c_0_36,negated_conjecture,
    ( k2_mcart_1(esk2_0) != esk5_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_32,c_0_33])])).

cnf(c_0_37,negated_conjecture,
    ( k2_mcart_1(esk2_0) != esk4_0
    | ~ r2_hidden(k1_mcart_1(esk2_0),esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_38,negated_conjecture,
    ( r2_hidden(esk4_0,k2_enumset1(k2_mcart_1(esk2_0),k2_mcart_1(esk2_0),k2_mcart_1(esk2_0),k2_mcart_1(esk2_0))) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_34,c_0_35]),c_0_36])).

cnf(c_0_39,negated_conjecture,
    ( k2_mcart_1(esk2_0) != esk4_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_37,c_0_33])])).

cnf(c_0_40,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_34,c_0_38]),c_0_39]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n019.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 15:49:07 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.13/0.37  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S0U
% 0.13/0.37  # and selection function SelectComplexExceptRRHorn.
% 0.13/0.37  #
% 0.13/0.37  # Preprocessing time       : 0.027 s
% 0.13/0.37  # Presaturation interreduction done
% 0.13/0.37  
% 0.13/0.37  # Proof found!
% 0.13/0.37  # SZS status Theorem
% 0.13/0.37  # SZS output start CNFRefutation
% 0.13/0.37  fof(t16_mcart_1, conjecture, ![X1, X2, X3, X4]:(r2_hidden(X1,k2_zfmisc_1(X2,k2_tarski(X3,X4)))=>(r2_hidden(k1_mcart_1(X1),X2)&(k2_mcart_1(X1)=X3|k2_mcart_1(X1)=X4))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t16_mcart_1)).
% 0.13/0.37  fof(t72_zfmisc_1, axiom, ![X1, X2, X3]:(k4_xboole_0(k2_tarski(X1,X2),X3)=k2_tarski(X1,X2)<=>(~(r2_hidden(X1,X3))&~(r2_hidden(X2,X3)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t72_zfmisc_1)).
% 0.13/0.37  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t70_enumset1)).
% 0.13/0.37  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t71_enumset1)).
% 0.13/0.37  fof(t144_zfmisc_1, axiom, ![X1, X2, X3]:~(((~(r2_hidden(X1,X3))&~(r2_hidden(X2,X3)))&X3!=k4_xboole_0(X3,k2_tarski(X1,X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t144_zfmisc_1)).
% 0.13/0.37  fof(d1_tarski, axiom, ![X1, X2]:(X2=k1_tarski(X1)<=>![X3]:(r2_hidden(X3,X2)<=>X3=X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d1_tarski)).
% 0.13/0.37  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t69_enumset1)).
% 0.13/0.37  fof(t10_mcart_1, axiom, ![X1, X2, X3]:(r2_hidden(X1,k2_zfmisc_1(X2,X3))=>(r2_hidden(k1_mcart_1(X1),X2)&r2_hidden(k2_mcart_1(X1),X3))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t10_mcart_1)).
% 0.13/0.37  fof(c_0_8, negated_conjecture, ~(![X1, X2, X3, X4]:(r2_hidden(X1,k2_zfmisc_1(X2,k2_tarski(X3,X4)))=>(r2_hidden(k1_mcart_1(X1),X2)&(k2_mcart_1(X1)=X3|k2_mcart_1(X1)=X4)))), inference(assume_negation,[status(cth)],[t16_mcart_1])).
% 0.13/0.37  fof(c_0_9, plain, ![X21, X22, X23]:(((~r2_hidden(X21,X23)|k4_xboole_0(k2_tarski(X21,X22),X23)!=k2_tarski(X21,X22))&(~r2_hidden(X22,X23)|k4_xboole_0(k2_tarski(X21,X22),X23)!=k2_tarski(X21,X22)))&(r2_hidden(X21,X23)|r2_hidden(X22,X23)|k4_xboole_0(k2_tarski(X21,X22),X23)=k2_tarski(X21,X22))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t72_zfmisc_1])])])])).
% 0.13/0.37  fof(c_0_10, plain, ![X13, X14]:k1_enumset1(X13,X13,X14)=k2_tarski(X13,X14), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.13/0.37  fof(c_0_11, plain, ![X15, X16, X17]:k2_enumset1(X15,X15,X16,X17)=k1_enumset1(X15,X16,X17), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.13/0.37  fof(c_0_12, plain, ![X18, X19, X20]:(r2_hidden(X18,X20)|r2_hidden(X19,X20)|X20=k4_xboole_0(X20,k2_tarski(X18,X19))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t144_zfmisc_1])])])).
% 0.13/0.37  fof(c_0_13, negated_conjecture, (r2_hidden(esk2_0,k2_zfmisc_1(esk3_0,k2_tarski(esk4_0,esk5_0)))&((k2_mcart_1(esk2_0)!=esk4_0|~r2_hidden(k1_mcart_1(esk2_0),esk3_0))&(k2_mcart_1(esk2_0)!=esk5_0|~r2_hidden(k1_mcart_1(esk2_0),esk3_0)))), inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_8])])])])).
% 0.13/0.37  fof(c_0_14, plain, ![X5, X6, X7, X8, X9, X10]:(((~r2_hidden(X7,X6)|X7=X5|X6!=k1_tarski(X5))&(X8!=X5|r2_hidden(X8,X6)|X6!=k1_tarski(X5)))&((~r2_hidden(esk1_2(X9,X10),X10)|esk1_2(X9,X10)!=X9|X10=k1_tarski(X9))&(r2_hidden(esk1_2(X9,X10),X10)|esk1_2(X9,X10)=X9|X10=k1_tarski(X9)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_tarski])])])])])])).
% 0.13/0.37  fof(c_0_15, plain, ![X12]:k2_tarski(X12,X12)=k1_tarski(X12), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.13/0.37  cnf(c_0_16, plain, (~r2_hidden(X1,X2)|k4_xboole_0(k2_tarski(X3,X1),X2)!=k2_tarski(X3,X1)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.37  cnf(c_0_17, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.37  cnf(c_0_18, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.13/0.37  cnf(c_0_19, plain, (r2_hidden(X1,X2)|r2_hidden(X3,X2)|X2=k4_xboole_0(X2,k2_tarski(X1,X3))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.13/0.37  fof(c_0_20, plain, ![X24, X25, X26]:((r2_hidden(k1_mcart_1(X24),X25)|~r2_hidden(X24,k2_zfmisc_1(X25,X26)))&(r2_hidden(k2_mcart_1(X24),X26)|~r2_hidden(X24,k2_zfmisc_1(X25,X26)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t10_mcart_1])])])).
% 0.13/0.37  cnf(c_0_21, negated_conjecture, (r2_hidden(esk2_0,k2_zfmisc_1(esk3_0,k2_tarski(esk4_0,esk5_0)))), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.13/0.37  cnf(c_0_22, plain, (X1=X3|~r2_hidden(X1,X2)|X2!=k1_tarski(X3)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.13/0.37  cnf(c_0_23, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.13/0.37  cnf(c_0_24, plain, (k4_xboole_0(k2_enumset1(X3,X3,X3,X1),X2)!=k2_enumset1(X3,X3,X3,X1)|~r2_hidden(X1,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_16, c_0_17]), c_0_17]), c_0_18]), c_0_18])).
% 0.13/0.37  cnf(c_0_25, plain, (X2=k4_xboole_0(X2,k2_enumset1(X1,X1,X1,X3))|r2_hidden(X3,X2)|r2_hidden(X1,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_19, c_0_17]), c_0_18])).
% 0.13/0.37  cnf(c_0_26, plain, (r2_hidden(k2_mcart_1(X1),X2)|~r2_hidden(X1,k2_zfmisc_1(X3,X2))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.13/0.37  cnf(c_0_27, negated_conjecture, (r2_hidden(esk2_0,k2_zfmisc_1(esk3_0,k2_enumset1(esk4_0,esk4_0,esk4_0,esk5_0)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_21, c_0_17]), c_0_18])).
% 0.13/0.37  cnf(c_0_28, plain, (r2_hidden(k1_mcart_1(X1),X2)|~r2_hidden(X1,k2_zfmisc_1(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.13/0.37  cnf(c_0_29, plain, (X1=X3|X2!=k2_enumset1(X3,X3,X3,X3)|~r2_hidden(X1,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_22, c_0_23]), c_0_17]), c_0_18])).
% 0.13/0.37  cnf(c_0_30, plain, (r2_hidden(X1,k2_enumset1(X2,X2,X2,X3))|r2_hidden(X4,k2_enumset1(X2,X2,X2,X3))|~r2_hidden(X3,k2_enumset1(X1,X1,X1,X4))), inference(spm,[status(thm)],[c_0_24, c_0_25])).
% 0.13/0.37  cnf(c_0_31, negated_conjecture, (r2_hidden(k2_mcart_1(esk2_0),k2_enumset1(esk4_0,esk4_0,esk4_0,esk5_0))), inference(spm,[status(thm)],[c_0_26, c_0_27])).
% 0.13/0.37  cnf(c_0_32, negated_conjecture, (k2_mcart_1(esk2_0)!=esk5_0|~r2_hidden(k1_mcart_1(esk2_0),esk3_0)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.13/0.37  cnf(c_0_33, negated_conjecture, (r2_hidden(k1_mcart_1(esk2_0),esk3_0)), inference(spm,[status(thm)],[c_0_28, c_0_27])).
% 0.13/0.37  cnf(c_0_34, plain, (X1=X2|~r2_hidden(X1,k2_enumset1(X2,X2,X2,X2))), inference(er,[status(thm)],[c_0_29])).
% 0.13/0.37  cnf(c_0_35, negated_conjecture, (r2_hidden(esk5_0,k2_enumset1(X1,X1,X1,k2_mcart_1(esk2_0)))|r2_hidden(esk4_0,k2_enumset1(X1,X1,X1,k2_mcart_1(esk2_0)))), inference(spm,[status(thm)],[c_0_30, c_0_31])).
% 0.13/0.37  cnf(c_0_36, negated_conjecture, (k2_mcart_1(esk2_0)!=esk5_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_32, c_0_33])])).
% 0.13/0.37  cnf(c_0_37, negated_conjecture, (k2_mcart_1(esk2_0)!=esk4_0|~r2_hidden(k1_mcart_1(esk2_0),esk3_0)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.13/0.37  cnf(c_0_38, negated_conjecture, (r2_hidden(esk4_0,k2_enumset1(k2_mcart_1(esk2_0),k2_mcart_1(esk2_0),k2_mcart_1(esk2_0),k2_mcart_1(esk2_0)))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_34, c_0_35]), c_0_36])).
% 0.13/0.37  cnf(c_0_39, negated_conjecture, (k2_mcart_1(esk2_0)!=esk4_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_37, c_0_33])])).
% 0.13/0.37  cnf(c_0_40, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_34, c_0_38]), c_0_39]), ['proof']).
% 0.13/0.37  # SZS output end CNFRefutation
% 0.13/0.37  # Proof object total steps             : 41
% 0.13/0.37  # Proof object clause steps            : 24
% 0.13/0.37  # Proof object formula steps           : 17
% 0.13/0.37  # Proof object conjectures             : 14
% 0.13/0.37  # Proof object clause conjectures      : 11
% 0.13/0.37  # Proof object formula conjectures     : 3
% 0.13/0.37  # Proof object initial clauses used    : 11
% 0.13/0.37  # Proof object initial formulas used   : 8
% 0.13/0.37  # Proof object generating inferences   : 6
% 0.13/0.37  # Proof object simplifying inferences  : 18
% 0.13/0.37  # Training examples: 0 positive, 0 negative
% 0.13/0.37  # Parsed axioms                        : 8
% 0.13/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.37  # Initial clauses                      : 16
% 0.13/0.37  # Removed in clause preprocessing      : 3
% 0.13/0.37  # Initial clauses in saturation        : 13
% 0.13/0.37  # Processed clauses                    : 48
% 0.13/0.37  # ...of these trivial                  : 2
% 0.13/0.37  # ...subsumed                          : 3
% 0.13/0.37  # ...remaining for further processing  : 43
% 0.13/0.37  # Other redundant clauses eliminated   : 13
% 0.13/0.37  # Clauses deleted for lack of memory   : 0
% 0.13/0.37  # Backward-subsumed                    : 0
% 0.13/0.37  # Backward-rewritten                   : 3
% 0.13/0.37  # Generated clauses                    : 134
% 0.13/0.37  # ...of the previous two non-trivial   : 106
% 0.13/0.37  # Contextual simplify-reflections      : 0
% 0.13/0.37  # Paramodulations                      : 122
% 0.13/0.37  # Factorizations                       : 0
% 0.13/0.37  # Equation resolutions                 : 13
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
% 0.13/0.37  # Current number of processed clauses  : 25
% 0.13/0.37  #    Positive orientable unit clauses  : 5
% 0.13/0.37  #    Positive unorientable unit clauses: 0
% 0.13/0.37  #    Negative unit clauses             : 2
% 0.13/0.37  #    Non-unit-clauses                  : 18
% 0.13/0.37  # Current number of unprocessed clauses: 83
% 0.13/0.37  # ...number of literals in the above   : 343
% 0.13/0.37  # Current number of archived formulas  : 0
% 0.13/0.37  # Current number of archived clauses   : 19
% 0.13/0.37  # Clause-clause subsumption calls (NU) : 31
% 0.13/0.37  # Rec. Clause-clause subsumption calls : 24
% 0.13/0.37  # Non-unit clause-clause subsumptions  : 3
% 0.13/0.37  # Unit Clause-clause subsumption calls : 10
% 0.13/0.37  # Rewrite failures with RHS unbound    : 0
% 0.13/0.37  # BW rewrite match attempts            : 7
% 0.13/0.37  # BW rewrite match successes           : 2
% 0.13/0.37  # Condensation attempts                : 0
% 0.13/0.37  # Condensation successes               : 0
% 0.13/0.37  # Termbank termtop insertions          : 2617
% 0.13/0.37  
% 0.13/0.37  # -------------------------------------------------
% 0.13/0.37  # User time                : 0.028 s
% 0.13/0.37  # System time              : 0.006 s
% 0.13/0.37  # Total time               : 0.034 s
% 0.13/0.37  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
