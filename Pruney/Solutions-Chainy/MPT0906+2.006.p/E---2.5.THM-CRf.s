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
% DateTime   : Thu Dec  3 11:00:06 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   44 ( 165 expanded)
%              Number of clauses        :   25 (  70 expanded)
%              Number of leaves         :    9 (  45 expanded)
%              Depth                    :    8
%              Number of atoms          :   78 ( 248 expanded)
%              Number of equality atoms :   68 ( 222 expanded)
%              Maximal formula depth    :   11 (   3 average)
%              Maximal clause size      :    8 (   1 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t12_setfam_1,axiom,(
    ! [X1,X2] : k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t12_setfam_1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

fof(t66_mcart_1,conjecture,(
    ! [X1,X2] :
      ( k2_zfmisc_1(X1,X2) != k1_xboole_0
     => ! [X3] :
          ( m1_subset_1(X3,k2_zfmisc_1(X1,X2))
         => ( X3 != k1_mcart_1(X3)
            & X3 != k2_mcart_1(X3) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t66_mcart_1)).

fof(t100_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t100_xboole_1)).

fof(t26_mcart_1,axiom,(
    ! [X1,X2] :
      ~ ( X1 != k1_xboole_0
        & X2 != k1_xboole_0
        & ~ ! [X3] :
              ( m1_subset_1(X3,k2_zfmisc_1(X1,X2))
             => ( X3 != k1_mcart_1(X3)
                & X3 != k2_mcart_1(X3) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t26_mcart_1)).

fof(t125_zfmisc_1,axiom,(
    ! [X1,X2,X3] :
      ( k2_zfmisc_1(k4_xboole_0(X1,X2),X3) = k4_xboole_0(k2_zfmisc_1(X1,X3),k2_zfmisc_1(X2,X3))
      & k2_zfmisc_1(X3,k4_xboole_0(X1,X2)) = k4_xboole_0(k2_zfmisc_1(X3,X1),k2_zfmisc_1(X3,X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t125_zfmisc_1)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_enumset1)).

fof(idempotence_k3_xboole_0,axiom,(
    ! [X1,X2] : k3_xboole_0(X1,X1) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',idempotence_k3_xboole_0)).

fof(t92_xboole_1,axiom,(
    ! [X1] : k5_xboole_0(X1,X1) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t92_xboole_1)).

fof(c_0_9,plain,(
    ! [X16,X17] : k1_setfam_1(k2_tarski(X16,X17)) = k3_xboole_0(X16,X17) ),
    inference(variable_rename,[status(thm)],[t12_setfam_1])).

fof(c_0_10,plain,(
    ! [X8,X9] : k1_enumset1(X8,X8,X9) = k2_tarski(X8,X9) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_11,negated_conjecture,(
    ~ ! [X1,X2] :
        ( k2_zfmisc_1(X1,X2) != k1_xboole_0
       => ! [X3] :
            ( m1_subset_1(X3,k2_zfmisc_1(X1,X2))
           => ( X3 != k1_mcart_1(X3)
              & X3 != k2_mcart_1(X3) ) ) ) ),
    inference(assume_negation,[status(cth)],[t66_mcart_1])).

fof(c_0_12,plain,(
    ! [X5,X6] : k4_xboole_0(X5,X6) = k5_xboole_0(X5,k3_xboole_0(X5,X6)) ),
    inference(variable_rename,[status(thm)],[t100_xboole_1])).

cnf(c_0_13,plain,
    ( k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_14,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

fof(c_0_15,plain,(
    ! [X18,X19,X20] :
      ( ( X20 != k1_mcart_1(X20)
        | ~ m1_subset_1(X20,k2_zfmisc_1(X18,X19))
        | X18 = k1_xboole_0
        | X19 = k1_xboole_0 )
      & ( X20 != k2_mcart_1(X20)
        | ~ m1_subset_1(X20,k2_zfmisc_1(X18,X19))
        | X18 = k1_xboole_0
        | X19 = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t26_mcart_1])])])])).

fof(c_0_16,negated_conjecture,
    ( k2_zfmisc_1(esk1_0,esk2_0) != k1_xboole_0
    & m1_subset_1(esk3_0,k2_zfmisc_1(esk1_0,esk2_0))
    & ( esk3_0 = k1_mcart_1(esk3_0)
      | esk3_0 = k2_mcart_1(esk3_0) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_11])])])).

fof(c_0_17,plain,(
    ! [X13,X14,X15] :
      ( k2_zfmisc_1(k4_xboole_0(X13,X14),X15) = k4_xboole_0(k2_zfmisc_1(X13,X15),k2_zfmisc_1(X14,X15))
      & k2_zfmisc_1(X15,k4_xboole_0(X13,X14)) = k4_xboole_0(k2_zfmisc_1(X15,X13),k2_zfmisc_1(X15,X14)) ) ),
    inference(variable_rename,[status(thm)],[t125_zfmisc_1])).

cnf(c_0_18,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_19,plain,
    ( k1_setfam_1(k1_enumset1(X1,X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_13,c_0_14])).

fof(c_0_20,plain,(
    ! [X10,X11,X12] : k2_enumset1(X10,X10,X11,X12) = k1_enumset1(X10,X11,X12) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_21,plain,(
    ! [X4] : k3_xboole_0(X4,X4) = X4 ),
    inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[idempotence_k3_xboole_0])])).

cnf(c_0_22,plain,
    ( X2 = k1_xboole_0
    | X3 = k1_xboole_0
    | X1 != k2_mcart_1(X1)
    | ~ m1_subset_1(X1,k2_zfmisc_1(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_23,negated_conjecture,
    ( m1_subset_1(esk3_0,k2_zfmisc_1(esk1_0,esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_24,plain,
    ( X2 = k1_xboole_0
    | X3 = k1_xboole_0
    | X1 != k1_mcart_1(X1)
    | ~ m1_subset_1(X1,k2_zfmisc_1(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_25,plain,
    ( k2_zfmisc_1(X1,k4_xboole_0(X2,X3)) = k4_xboole_0(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_26,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k1_setfam_1(k1_enumset1(X1,X1,X2))) ),
    inference(rw,[status(thm)],[c_0_18,c_0_19])).

cnf(c_0_27,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_28,plain,
    ( k3_xboole_0(X1,X1) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

fof(c_0_29,plain,(
    ! [X7] : k5_xboole_0(X7,X7) = k1_xboole_0 ),
    inference(variable_rename,[status(thm)],[t92_xboole_1])).

cnf(c_0_30,negated_conjecture,
    ( esk1_0 = k1_xboole_0
    | esk2_0 = k1_xboole_0
    | k2_mcart_1(esk3_0) != esk3_0 ),
    inference(spm,[status(thm)],[c_0_22,c_0_23])).

cnf(c_0_31,negated_conjecture,
    ( esk3_0 = k1_mcart_1(esk3_0)
    | esk3_0 = k2_mcart_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_32,negated_conjecture,
    ( esk1_0 = k1_xboole_0
    | esk2_0 = k1_xboole_0
    | k1_mcart_1(esk3_0) != esk3_0 ),
    inference(spm,[status(thm)],[c_0_24,c_0_23])).

cnf(c_0_33,plain,
    ( k2_zfmisc_1(X1,k5_xboole_0(X2,k1_setfam_1(k2_enumset1(X2,X2,X2,X3)))) = k5_xboole_0(k2_zfmisc_1(X1,X2),k1_setfam_1(k2_enumset1(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,X3)))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_25,c_0_26]),c_0_26]),c_0_27]),c_0_27])).

cnf(c_0_34,plain,
    ( k1_setfam_1(k2_enumset1(X1,X1,X1,X1)) = X1 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_28,c_0_19]),c_0_27])).

cnf(c_0_35,plain,
    ( k5_xboole_0(X1,X1) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_36,plain,
    ( k2_zfmisc_1(k4_xboole_0(X1,X2),X3) = k4_xboole_0(k2_zfmisc_1(X1,X3),k2_zfmisc_1(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_37,negated_conjecture,
    ( k2_zfmisc_1(esk1_0,esk2_0) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_38,negated_conjecture,
    ( esk2_0 = k1_xboole_0
    | esk1_0 = k1_xboole_0 ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_30,c_0_31]),c_0_32])).

cnf(c_0_39,plain,
    ( k2_zfmisc_1(X1,k1_xboole_0) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_34]),c_0_35]),c_0_34]),c_0_35])).

cnf(c_0_40,plain,
    ( k2_zfmisc_1(k5_xboole_0(X1,k1_setfam_1(k2_enumset1(X1,X1,X1,X2))),X3) = k5_xboole_0(k2_zfmisc_1(X1,X3),k1_setfam_1(k2_enumset1(k2_zfmisc_1(X1,X3),k2_zfmisc_1(X1,X3),k2_zfmisc_1(X1,X3),k2_zfmisc_1(X2,X3)))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_36,c_0_26]),c_0_26]),c_0_27]),c_0_27])).

cnf(c_0_41,negated_conjecture,
    ( esk1_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_38]),c_0_39])])).

cnf(c_0_42,plain,
    ( k2_zfmisc_1(k1_xboole_0,X1) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_34]),c_0_35]),c_0_34]),c_0_35])).

cnf(c_0_43,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_37,c_0_41]),c_0_42])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n023.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 15:22:21 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.19/0.38  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.19/0.38  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.19/0.38  #
% 0.19/0.38  # Preprocessing time       : 0.027 s
% 0.19/0.38  # Presaturation interreduction done
% 0.19/0.38  
% 0.19/0.38  # Proof found!
% 0.19/0.38  # SZS status Theorem
% 0.19/0.38  # SZS output start CNFRefutation
% 0.19/0.38  fof(t12_setfam_1, axiom, ![X1, X2]:k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t12_setfam_1)).
% 0.19/0.38  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t70_enumset1)).
% 0.19/0.38  fof(t66_mcart_1, conjecture, ![X1, X2]:(k2_zfmisc_1(X1,X2)!=k1_xboole_0=>![X3]:(m1_subset_1(X3,k2_zfmisc_1(X1,X2))=>(X3!=k1_mcart_1(X3)&X3!=k2_mcart_1(X3)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t66_mcart_1)).
% 0.19/0.38  fof(t100_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t100_xboole_1)).
% 0.19/0.38  fof(t26_mcart_1, axiom, ![X1, X2]:~(((X1!=k1_xboole_0&X2!=k1_xboole_0)&~(![X3]:(m1_subset_1(X3,k2_zfmisc_1(X1,X2))=>(X3!=k1_mcart_1(X3)&X3!=k2_mcart_1(X3)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t26_mcart_1)).
% 0.19/0.38  fof(t125_zfmisc_1, axiom, ![X1, X2, X3]:(k2_zfmisc_1(k4_xboole_0(X1,X2),X3)=k4_xboole_0(k2_zfmisc_1(X1,X3),k2_zfmisc_1(X2,X3))&k2_zfmisc_1(X3,k4_xboole_0(X1,X2))=k4_xboole_0(k2_zfmisc_1(X3,X1),k2_zfmisc_1(X3,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t125_zfmisc_1)).
% 0.19/0.38  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t71_enumset1)).
% 0.19/0.38  fof(idempotence_k3_xboole_0, axiom, ![X1, X2]:k3_xboole_0(X1,X1)=X1, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', idempotence_k3_xboole_0)).
% 0.19/0.38  fof(t92_xboole_1, axiom, ![X1]:k5_xboole_0(X1,X1)=k1_xboole_0, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t92_xboole_1)).
% 0.19/0.38  fof(c_0_9, plain, ![X16, X17]:k1_setfam_1(k2_tarski(X16,X17))=k3_xboole_0(X16,X17), inference(variable_rename,[status(thm)],[t12_setfam_1])).
% 0.19/0.38  fof(c_0_10, plain, ![X8, X9]:k1_enumset1(X8,X8,X9)=k2_tarski(X8,X9), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.19/0.38  fof(c_0_11, negated_conjecture, ~(![X1, X2]:(k2_zfmisc_1(X1,X2)!=k1_xboole_0=>![X3]:(m1_subset_1(X3,k2_zfmisc_1(X1,X2))=>(X3!=k1_mcart_1(X3)&X3!=k2_mcart_1(X3))))), inference(assume_negation,[status(cth)],[t66_mcart_1])).
% 0.19/0.38  fof(c_0_12, plain, ![X5, X6]:k4_xboole_0(X5,X6)=k5_xboole_0(X5,k3_xboole_0(X5,X6)), inference(variable_rename,[status(thm)],[t100_xboole_1])).
% 0.19/0.38  cnf(c_0_13, plain, (k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.19/0.38  cnf(c_0_14, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.19/0.38  fof(c_0_15, plain, ![X18, X19, X20]:((X20!=k1_mcart_1(X20)|~m1_subset_1(X20,k2_zfmisc_1(X18,X19))|(X18=k1_xboole_0|X19=k1_xboole_0))&(X20!=k2_mcart_1(X20)|~m1_subset_1(X20,k2_zfmisc_1(X18,X19))|(X18=k1_xboole_0|X19=k1_xboole_0))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t26_mcart_1])])])])).
% 0.19/0.38  fof(c_0_16, negated_conjecture, (k2_zfmisc_1(esk1_0,esk2_0)!=k1_xboole_0&(m1_subset_1(esk3_0,k2_zfmisc_1(esk1_0,esk2_0))&(esk3_0=k1_mcart_1(esk3_0)|esk3_0=k2_mcart_1(esk3_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_11])])])).
% 0.19/0.38  fof(c_0_17, plain, ![X13, X14, X15]:(k2_zfmisc_1(k4_xboole_0(X13,X14),X15)=k4_xboole_0(k2_zfmisc_1(X13,X15),k2_zfmisc_1(X14,X15))&k2_zfmisc_1(X15,k4_xboole_0(X13,X14))=k4_xboole_0(k2_zfmisc_1(X15,X13),k2_zfmisc_1(X15,X14))), inference(variable_rename,[status(thm)],[t125_zfmisc_1])).
% 0.19/0.38  cnf(c_0_18, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.19/0.38  cnf(c_0_19, plain, (k1_setfam_1(k1_enumset1(X1,X1,X2))=k3_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_13, c_0_14])).
% 0.19/0.38  fof(c_0_20, plain, ![X10, X11, X12]:k2_enumset1(X10,X10,X11,X12)=k1_enumset1(X10,X11,X12), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.19/0.38  fof(c_0_21, plain, ![X4]:k3_xboole_0(X4,X4)=X4, inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[idempotence_k3_xboole_0])])).
% 0.19/0.38  cnf(c_0_22, plain, (X2=k1_xboole_0|X3=k1_xboole_0|X1!=k2_mcart_1(X1)|~m1_subset_1(X1,k2_zfmisc_1(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.38  cnf(c_0_23, negated_conjecture, (m1_subset_1(esk3_0,k2_zfmisc_1(esk1_0,esk2_0))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.19/0.38  cnf(c_0_24, plain, (X2=k1_xboole_0|X3=k1_xboole_0|X1!=k1_mcart_1(X1)|~m1_subset_1(X1,k2_zfmisc_1(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.38  cnf(c_0_25, plain, (k2_zfmisc_1(X1,k4_xboole_0(X2,X3))=k4_xboole_0(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,X3))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.19/0.38  cnf(c_0_26, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k1_setfam_1(k1_enumset1(X1,X1,X2)))), inference(rw,[status(thm)],[c_0_18, c_0_19])).
% 0.19/0.38  cnf(c_0_27, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.19/0.38  cnf(c_0_28, plain, (k3_xboole_0(X1,X1)=X1), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.19/0.38  fof(c_0_29, plain, ![X7]:k5_xboole_0(X7,X7)=k1_xboole_0, inference(variable_rename,[status(thm)],[t92_xboole_1])).
% 0.19/0.38  cnf(c_0_30, negated_conjecture, (esk1_0=k1_xboole_0|esk2_0=k1_xboole_0|k2_mcart_1(esk3_0)!=esk3_0), inference(spm,[status(thm)],[c_0_22, c_0_23])).
% 0.19/0.38  cnf(c_0_31, negated_conjecture, (esk3_0=k1_mcart_1(esk3_0)|esk3_0=k2_mcart_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.19/0.38  cnf(c_0_32, negated_conjecture, (esk1_0=k1_xboole_0|esk2_0=k1_xboole_0|k1_mcart_1(esk3_0)!=esk3_0), inference(spm,[status(thm)],[c_0_24, c_0_23])).
% 0.19/0.38  cnf(c_0_33, plain, (k2_zfmisc_1(X1,k5_xboole_0(X2,k1_setfam_1(k2_enumset1(X2,X2,X2,X3))))=k5_xboole_0(k2_zfmisc_1(X1,X2),k1_setfam_1(k2_enumset1(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,X3))))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_25, c_0_26]), c_0_26]), c_0_27]), c_0_27])).
% 0.19/0.38  cnf(c_0_34, plain, (k1_setfam_1(k2_enumset1(X1,X1,X1,X1))=X1), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_28, c_0_19]), c_0_27])).
% 0.19/0.38  cnf(c_0_35, plain, (k5_xboole_0(X1,X1)=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.19/0.38  cnf(c_0_36, plain, (k2_zfmisc_1(k4_xboole_0(X1,X2),X3)=k4_xboole_0(k2_zfmisc_1(X1,X3),k2_zfmisc_1(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.19/0.38  cnf(c_0_37, negated_conjecture, (k2_zfmisc_1(esk1_0,esk2_0)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.19/0.38  cnf(c_0_38, negated_conjecture, (esk2_0=k1_xboole_0|esk1_0=k1_xboole_0), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_30, c_0_31]), c_0_32])).
% 0.19/0.38  cnf(c_0_39, plain, (k2_zfmisc_1(X1,k1_xboole_0)=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33, c_0_34]), c_0_35]), c_0_34]), c_0_35])).
% 0.19/0.38  cnf(c_0_40, plain, (k2_zfmisc_1(k5_xboole_0(X1,k1_setfam_1(k2_enumset1(X1,X1,X1,X2))),X3)=k5_xboole_0(k2_zfmisc_1(X1,X3),k1_setfam_1(k2_enumset1(k2_zfmisc_1(X1,X3),k2_zfmisc_1(X1,X3),k2_zfmisc_1(X1,X3),k2_zfmisc_1(X2,X3))))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_36, c_0_26]), c_0_26]), c_0_27]), c_0_27])).
% 0.19/0.38  cnf(c_0_41, negated_conjecture, (esk1_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_38]), c_0_39])])).
% 0.19/0.38  cnf(c_0_42, plain, (k2_zfmisc_1(k1_xboole_0,X1)=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_34]), c_0_35]), c_0_34]), c_0_35])).
% 0.19/0.38  cnf(c_0_43, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_37, c_0_41]), c_0_42])]), ['proof']).
% 0.19/0.38  # SZS output end CNFRefutation
% 0.19/0.38  # Proof object total steps             : 44
% 0.19/0.38  # Proof object clause steps            : 25
% 0.19/0.38  # Proof object formula steps           : 19
% 0.19/0.38  # Proof object conjectures             : 11
% 0.19/0.38  # Proof object clause conjectures      : 8
% 0.19/0.38  # Proof object formula conjectures     : 3
% 0.19/0.38  # Proof object initial clauses used    : 13
% 0.19/0.38  # Proof object initial formulas used   : 9
% 0.19/0.38  # Proof object generating inferences   : 6
% 0.19/0.38  # Proof object simplifying inferences  : 24
% 0.19/0.38  # Training examples: 0 positive, 0 negative
% 0.19/0.38  # Parsed axioms                        : 9
% 0.19/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.38  # Initial clauses                      : 13
% 0.19/0.38  # Removed in clause preprocessing      : 4
% 0.19/0.38  # Initial clauses in saturation        : 9
% 0.19/0.38  # Processed clauses                    : 24
% 0.19/0.38  # ...of these trivial                  : 0
% 0.19/0.38  # ...subsumed                          : 0
% 0.19/0.38  # ...remaining for further processing  : 24
% 0.19/0.38  # Other redundant clauses eliminated   : 0
% 0.19/0.38  # Clauses deleted for lack of memory   : 0
% 0.19/0.38  # Backward-subsumed                    : 2
% 0.19/0.38  # Backward-rewritten                   : 3
% 0.19/0.38  # Generated clauses                    : 16
% 0.19/0.38  # ...of the previous two non-trivial   : 12
% 0.19/0.38  # Contextual simplify-reflections      : 1
% 0.19/0.38  # Paramodulations                      : 16
% 0.19/0.38  # Factorizations                       : 0
% 0.19/0.38  # Equation resolutions                 : 0
% 0.19/0.38  # Propositional unsat checks           : 0
% 0.19/0.38  #    Propositional check models        : 0
% 0.19/0.38  #    Propositional check unsatisfiable : 0
% 0.19/0.38  #    Propositional clauses             : 0
% 0.19/0.38  #    Propositional clauses after purity: 0
% 0.19/0.38  #    Propositional unsat core size     : 0
% 0.19/0.38  #    Propositional preprocessing time  : 0.000
% 0.19/0.38  #    Propositional encoding time       : 0.000
% 0.19/0.38  #    Propositional solver time         : 0.000
% 0.19/0.38  #    Success case prop preproc time    : 0.000
% 0.19/0.38  #    Success case prop encoding time   : 0.000
% 0.19/0.38  #    Success case prop solver time     : 0.000
% 0.19/0.38  # Current number of processed clauses  : 10
% 0.19/0.38  #    Positive orientable unit clauses  : 7
% 0.19/0.38  #    Positive unorientable unit clauses: 0
% 0.19/0.38  #    Negative unit clauses             : 0
% 0.19/0.38  #    Non-unit-clauses                  : 3
% 0.19/0.38  # Current number of unprocessed clauses: 6
% 0.19/0.38  # ...number of literals in the above   : 7
% 0.19/0.38  # Current number of archived formulas  : 0
% 0.19/0.38  # Current number of archived clauses   : 18
% 0.19/0.38  # Clause-clause subsumption calls (NU) : 10
% 0.19/0.38  # Rec. Clause-clause subsumption calls : 10
% 0.19/0.38  # Non-unit clause-clause subsumptions  : 3
% 0.19/0.38  # Unit Clause-clause subsumption calls : 0
% 0.19/0.38  # Rewrite failures with RHS unbound    : 0
% 0.19/0.38  # BW rewrite match attempts            : 3
% 0.19/0.38  # BW rewrite match successes           : 1
% 0.19/0.38  # Condensation attempts                : 0
% 0.19/0.38  # Condensation successes               : 0
% 0.19/0.38  # Termbank termtop insertions          : 1000
% 0.19/0.38  
% 0.19/0.38  # -------------------------------------------------
% 0.19/0.38  # User time                : 0.027 s
% 0.19/0.38  # System time              : 0.004 s
% 0.19/0.38  # Total time               : 0.031 s
% 0.19/0.38  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
