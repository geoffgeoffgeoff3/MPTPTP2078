%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n016.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:59:19 EST 2020

% Result     : Theorem 0.14s
% Output     : CNFRefutation 0.14s
% Verified   : 
% Statistics : Number of formulae       :   59 ( 848 expanded)
%              Number of clauses        :   32 ( 333 expanded)
%              Number of leaves         :   13 ( 247 expanded)
%              Depth                    :    8
%              Number of atoms          :   86 (1099 expanded)
%              Number of equality atoms :   69 (1014 expanded)
%              Maximal formula depth    :    8 (   3 average)
%              Maximal clause size      :    7 (   1 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(l51_zfmisc_1,axiom,(
    ! [X1,X2] : k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l51_zfmisc_1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(t12_setfam_1,axiom,(
    ! [X1,X2] : k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_setfam_1)).

fof(t20_mcart_1,conjecture,(
    ! [X1] :
      ( ? [X2,X3] : X1 = k4_tarski(X2,X3)
     => ( X1 != k1_mcart_1(X1)
        & X1 != k2_mcart_1(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t20_mcart_1)).

fof(t35_zfmisc_1,axiom,(
    ! [X1,X2] : k2_zfmisc_1(k1_tarski(X1),k1_tarski(X2)) = k1_tarski(k4_tarski(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t35_zfmisc_1)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).

fof(t72_enumset1,axiom,(
    ! [X1,X2,X3,X4] : k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t72_enumset1)).

fof(t49_zfmisc_1,axiom,(
    ! [X1,X2] : k2_xboole_0(k1_tarski(X1),X2) != k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t49_zfmisc_1)).

fof(t22_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,k3_xboole_0(X1,X2)) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t22_xboole_1)).

fof(t7_mcart_1,axiom,(
    ! [X1,X2] :
      ( k1_mcart_1(k4_tarski(X1,X2)) = X1
      & k2_mcart_1(k4_tarski(X1,X2)) = X2 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_mcart_1)).

fof(t135_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( ( r1_tarski(X1,k2_zfmisc_1(X1,X2))
        | r1_tarski(X1,k2_zfmisc_1(X2,X1)) )
     => X1 = k1_xboole_0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t135_zfmisc_1)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).

fof(c_0_13,plain,(
    ! [X19,X20] : k3_tarski(k2_tarski(X19,X20)) = k2_xboole_0(X19,X20) ),
    inference(variable_rename,[status(thm)],[l51_zfmisc_1])).

fof(c_0_14,plain,(
    ! [X10,X11] : k1_enumset1(X10,X10,X11) = k2_tarski(X10,X11) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_15,plain,(
    ! [X27,X28] : k1_setfam_1(k2_tarski(X27,X28)) = k3_xboole_0(X27,X28) ),
    inference(variable_rename,[status(thm)],[t12_setfam_1])).

fof(c_0_16,negated_conjecture,(
    ~ ! [X1] :
        ( ? [X2,X3] : X1 = k4_tarski(X2,X3)
       => ( X1 != k1_mcart_1(X1)
          & X1 != k2_mcart_1(X1) ) ) ),
    inference(assume_negation,[status(cth)],[t20_mcart_1])).

fof(c_0_17,plain,(
    ! [X23,X24] : k2_zfmisc_1(k1_tarski(X23),k1_tarski(X24)) = k1_tarski(k4_tarski(X23,X24)) ),
    inference(variable_rename,[status(thm)],[t35_zfmisc_1])).

fof(c_0_18,plain,(
    ! [X9] : k2_tarski(X9,X9) = k1_tarski(X9) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_19,plain,(
    ! [X12,X13,X14] : k2_enumset1(X12,X12,X13,X14) = k1_enumset1(X12,X13,X14) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_20,plain,(
    ! [X15,X16,X17,X18] : k3_enumset1(X15,X15,X16,X17,X18) = k2_enumset1(X15,X16,X17,X18) ),
    inference(variable_rename,[status(thm)],[t72_enumset1])).

fof(c_0_21,plain,(
    ! [X25,X26] : k2_xboole_0(k1_tarski(X25),X26) != k1_xboole_0 ),
    inference(variable_rename,[status(thm)],[t49_zfmisc_1])).

cnf(c_0_22,plain,
    ( k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_23,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

fof(c_0_24,plain,(
    ! [X7,X8] : k2_xboole_0(X7,k3_xboole_0(X7,X8)) = X7 ),
    inference(variable_rename,[status(thm)],[t22_xboole_1])).

cnf(c_0_25,plain,
    ( k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

fof(c_0_26,plain,(
    ! [X29,X30] :
      ( k1_mcart_1(k4_tarski(X29,X30)) = X29
      & k2_mcart_1(k4_tarski(X29,X30)) = X30 ) ),
    inference(variable_rename,[status(thm)],[t7_mcart_1])).

fof(c_0_27,negated_conjecture,
    ( esk1_0 = k4_tarski(esk2_0,esk3_0)
    & ( esk1_0 = k1_mcart_1(esk1_0)
      | esk1_0 = k2_mcart_1(esk1_0) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_16])])])).

cnf(c_0_28,plain,
    ( k2_zfmisc_1(k1_tarski(X1),k1_tarski(X2)) = k1_tarski(k4_tarski(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_29,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_30,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_31,plain,
    ( k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_32,plain,
    ( k2_xboole_0(k1_tarski(X1),X2) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_33,plain,
    ( k3_tarski(k1_enumset1(X1,X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_22,c_0_23])).

cnf(c_0_34,plain,
    ( k2_xboole_0(X1,k3_xboole_0(X1,X2)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_35,plain,
    ( k1_setfam_1(k1_enumset1(X1,X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_25,c_0_23])).

cnf(c_0_36,plain,
    ( k1_mcart_1(k4_tarski(X1,X2)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_37,negated_conjecture,
    ( esk1_0 = k4_tarski(esk2_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

fof(c_0_38,plain,(
    ! [X21,X22] :
      ( ( ~ r1_tarski(X21,k2_zfmisc_1(X21,X22))
        | X21 = k1_xboole_0 )
      & ( ~ r1_tarski(X21,k2_zfmisc_1(X22,X21))
        | X21 = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t135_zfmisc_1])])])).

cnf(c_0_39,plain,
    ( k2_zfmisc_1(k3_enumset1(X1,X1,X1,X1,X1),k3_enumset1(X2,X2,X2,X2,X2)) = k3_enumset1(k4_tarski(X1,X2),k4_tarski(X1,X2),k4_tarski(X1,X2),k4_tarski(X1,X2),k4_tarski(X1,X2)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_28,c_0_29]),c_0_29]),c_0_29]),c_0_23]),c_0_23]),c_0_23]),c_0_30]),c_0_30]),c_0_30]),c_0_31]),c_0_31]),c_0_31])).

cnf(c_0_40,plain,
    ( k3_tarski(k3_enumset1(k3_enumset1(X1,X1,X1,X1,X1),k3_enumset1(X1,X1,X1,X1,X1),k3_enumset1(X1,X1,X1,X1,X1),k3_enumset1(X1,X1,X1,X1,X1),X2)) != k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_32,c_0_29]),c_0_23]),c_0_33]),c_0_30]),c_0_30]),c_0_30]),c_0_31]),c_0_31]),c_0_31]),c_0_31])).

cnf(c_0_41,plain,
    ( k3_tarski(k3_enumset1(X1,X1,X1,X1,k1_setfam_1(k3_enumset1(X1,X1,X1,X1,X2)))) = X1 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_34,c_0_33]),c_0_35]),c_0_30]),c_0_30]),c_0_31]),c_0_31])).

cnf(c_0_42,plain,
    ( k2_mcart_1(k4_tarski(X1,X2)) = X2 ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_43,negated_conjecture,
    ( esk1_0 = k1_mcart_1(esk1_0)
    | esk1_0 = k2_mcart_1(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_44,negated_conjecture,
    ( k1_mcart_1(esk1_0) = esk2_0 ),
    inference(spm,[status(thm)],[c_0_36,c_0_37])).

fof(c_0_45,plain,(
    ! [X5,X6] :
      ( ( r1_tarski(X5,X6)
        | X5 != X6 )
      & ( r1_tarski(X6,X5)
        | X5 != X6 )
      & ( ~ r1_tarski(X5,X6)
        | ~ r1_tarski(X6,X5)
        | X5 = X6 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

cnf(c_0_46,plain,
    ( X1 = k1_xboole_0
    | ~ r1_tarski(X1,k2_zfmisc_1(X2,X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_38])).

cnf(c_0_47,negated_conjecture,
    ( k2_zfmisc_1(k3_enumset1(esk2_0,esk2_0,esk2_0,esk2_0,esk2_0),k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0)) = k3_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0) ),
    inference(spm,[status(thm)],[c_0_39,c_0_37])).

cnf(c_0_48,plain,
    ( k3_enumset1(X1,X1,X1,X1,X1) != k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_40,c_0_41])).

cnf(c_0_49,negated_conjecture,
    ( k2_mcart_1(esk1_0) = esk3_0 ),
    inference(spm,[status(thm)],[c_0_42,c_0_37])).

cnf(c_0_50,negated_conjecture,
    ( k2_mcart_1(esk1_0) = esk1_0
    | esk2_0 = esk1_0 ),
    inference(rw,[status(thm)],[c_0_43,c_0_44])).

cnf(c_0_51,plain,
    ( r1_tarski(X1,X2)
    | X2 != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_45])).

cnf(c_0_52,plain,
    ( X1 = k1_xboole_0
    | ~ r1_tarski(X1,k2_zfmisc_1(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_38])).

cnf(c_0_53,negated_conjecture,
    ( ~ r1_tarski(k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0),k3_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0)) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_46,c_0_47]),c_0_48])).

cnf(c_0_54,negated_conjecture,
    ( esk2_0 = esk1_0
    | esk3_0 = esk1_0 ),
    inference(spm,[status(thm)],[c_0_49,c_0_50])).

cnf(c_0_55,plain,
    ( r1_tarski(X1,X1) ),
    inference(er,[status(thm)],[c_0_51])).

cnf(c_0_56,negated_conjecture,
    ( ~ r1_tarski(k3_enumset1(esk2_0,esk2_0,esk2_0,esk2_0,esk2_0),k3_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0)) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_52,c_0_47]),c_0_48])).

cnf(c_0_57,negated_conjecture,
    ( esk2_0 = esk1_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53,c_0_54]),c_0_55])])).

cnf(c_0_58,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_56,c_0_57]),c_0_57]),c_0_57]),c_0_57]),c_0_57]),c_0_55])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.34  % Computer   : n016.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 11:13:04 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  # Version: 2.5pre002
% 0.14/0.34  # No SInE strategy applied
% 0.14/0.34  # Trying AutoSched0 for 299 seconds
% 0.14/0.37  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.14/0.37  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.14/0.37  #
% 0.14/0.37  # Preprocessing time       : 0.027 s
% 0.14/0.37  # Presaturation interreduction done
% 0.14/0.37  
% 0.14/0.37  # Proof found!
% 0.14/0.37  # SZS status Theorem
% 0.14/0.37  # SZS output start CNFRefutation
% 0.14/0.37  fof(l51_zfmisc_1, axiom, ![X1, X2]:k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l51_zfmisc_1)).
% 0.14/0.37  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t70_enumset1)).
% 0.14/0.37  fof(t12_setfam_1, axiom, ![X1, X2]:k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t12_setfam_1)).
% 0.14/0.37  fof(t20_mcart_1, conjecture, ![X1]:(?[X2, X3]:X1=k4_tarski(X2,X3)=>(X1!=k1_mcart_1(X1)&X1!=k2_mcart_1(X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t20_mcart_1)).
% 0.14/0.37  fof(t35_zfmisc_1, axiom, ![X1, X2]:k2_zfmisc_1(k1_tarski(X1),k1_tarski(X2))=k1_tarski(k4_tarski(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t35_zfmisc_1)).
% 0.14/0.37  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t69_enumset1)).
% 0.14/0.37  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t71_enumset1)).
% 0.14/0.37  fof(t72_enumset1, axiom, ![X1, X2, X3, X4]:k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t72_enumset1)).
% 0.14/0.37  fof(t49_zfmisc_1, axiom, ![X1, X2]:k2_xboole_0(k1_tarski(X1),X2)!=k1_xboole_0, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t49_zfmisc_1)).
% 0.14/0.37  fof(t22_xboole_1, axiom, ![X1, X2]:k2_xboole_0(X1,k3_xboole_0(X1,X2))=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t22_xboole_1)).
% 0.14/0.37  fof(t7_mcart_1, axiom, ![X1, X2]:(k1_mcart_1(k4_tarski(X1,X2))=X1&k2_mcart_1(k4_tarski(X1,X2))=X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t7_mcart_1)).
% 0.14/0.37  fof(t135_zfmisc_1, axiom, ![X1, X2]:((r1_tarski(X1,k2_zfmisc_1(X1,X2))|r1_tarski(X1,k2_zfmisc_1(X2,X1)))=>X1=k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t135_zfmisc_1)).
% 0.14/0.37  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.14/0.37  fof(c_0_13, plain, ![X19, X20]:k3_tarski(k2_tarski(X19,X20))=k2_xboole_0(X19,X20), inference(variable_rename,[status(thm)],[l51_zfmisc_1])).
% 0.14/0.37  fof(c_0_14, plain, ![X10, X11]:k1_enumset1(X10,X10,X11)=k2_tarski(X10,X11), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.14/0.37  fof(c_0_15, plain, ![X27, X28]:k1_setfam_1(k2_tarski(X27,X28))=k3_xboole_0(X27,X28), inference(variable_rename,[status(thm)],[t12_setfam_1])).
% 0.14/0.37  fof(c_0_16, negated_conjecture, ~(![X1]:(?[X2, X3]:X1=k4_tarski(X2,X3)=>(X1!=k1_mcart_1(X1)&X1!=k2_mcart_1(X1)))), inference(assume_negation,[status(cth)],[t20_mcart_1])).
% 0.14/0.37  fof(c_0_17, plain, ![X23, X24]:k2_zfmisc_1(k1_tarski(X23),k1_tarski(X24))=k1_tarski(k4_tarski(X23,X24)), inference(variable_rename,[status(thm)],[t35_zfmisc_1])).
% 0.14/0.37  fof(c_0_18, plain, ![X9]:k2_tarski(X9,X9)=k1_tarski(X9), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.14/0.37  fof(c_0_19, plain, ![X12, X13, X14]:k2_enumset1(X12,X12,X13,X14)=k1_enumset1(X12,X13,X14), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.14/0.37  fof(c_0_20, plain, ![X15, X16, X17, X18]:k3_enumset1(X15,X15,X16,X17,X18)=k2_enumset1(X15,X16,X17,X18), inference(variable_rename,[status(thm)],[t72_enumset1])).
% 0.14/0.37  fof(c_0_21, plain, ![X25, X26]:k2_xboole_0(k1_tarski(X25),X26)!=k1_xboole_0, inference(variable_rename,[status(thm)],[t49_zfmisc_1])).
% 0.14/0.37  cnf(c_0_22, plain, (k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.14/0.37  cnf(c_0_23, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.14/0.37  fof(c_0_24, plain, ![X7, X8]:k2_xboole_0(X7,k3_xboole_0(X7,X8))=X7, inference(variable_rename,[status(thm)],[t22_xboole_1])).
% 0.14/0.37  cnf(c_0_25, plain, (k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.37  fof(c_0_26, plain, ![X29, X30]:(k1_mcart_1(k4_tarski(X29,X30))=X29&k2_mcart_1(k4_tarski(X29,X30))=X30), inference(variable_rename,[status(thm)],[t7_mcart_1])).
% 0.14/0.37  fof(c_0_27, negated_conjecture, (esk1_0=k4_tarski(esk2_0,esk3_0)&(esk1_0=k1_mcart_1(esk1_0)|esk1_0=k2_mcart_1(esk1_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_16])])])).
% 0.14/0.37  cnf(c_0_28, plain, (k2_zfmisc_1(k1_tarski(X1),k1_tarski(X2))=k1_tarski(k4_tarski(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.14/0.37  cnf(c_0_29, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.14/0.37  cnf(c_0_30, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.14/0.37  cnf(c_0_31, plain, (k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.14/0.37  cnf(c_0_32, plain, (k2_xboole_0(k1_tarski(X1),X2)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.14/0.37  cnf(c_0_33, plain, (k3_tarski(k1_enumset1(X1,X1,X2))=k2_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_22, c_0_23])).
% 0.14/0.37  cnf(c_0_34, plain, (k2_xboole_0(X1,k3_xboole_0(X1,X2))=X1), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.14/0.37  cnf(c_0_35, plain, (k1_setfam_1(k1_enumset1(X1,X1,X2))=k3_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_25, c_0_23])).
% 0.14/0.37  cnf(c_0_36, plain, (k1_mcart_1(k4_tarski(X1,X2))=X1), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.14/0.37  cnf(c_0_37, negated_conjecture, (esk1_0=k4_tarski(esk2_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.14/0.37  fof(c_0_38, plain, ![X21, X22]:((~r1_tarski(X21,k2_zfmisc_1(X21,X22))|X21=k1_xboole_0)&(~r1_tarski(X21,k2_zfmisc_1(X22,X21))|X21=k1_xboole_0)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t135_zfmisc_1])])])).
% 0.14/0.37  cnf(c_0_39, plain, (k2_zfmisc_1(k3_enumset1(X1,X1,X1,X1,X1),k3_enumset1(X2,X2,X2,X2,X2))=k3_enumset1(k4_tarski(X1,X2),k4_tarski(X1,X2),k4_tarski(X1,X2),k4_tarski(X1,X2),k4_tarski(X1,X2))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_28, c_0_29]), c_0_29]), c_0_29]), c_0_23]), c_0_23]), c_0_23]), c_0_30]), c_0_30]), c_0_30]), c_0_31]), c_0_31]), c_0_31])).
% 0.14/0.37  cnf(c_0_40, plain, (k3_tarski(k3_enumset1(k3_enumset1(X1,X1,X1,X1,X1),k3_enumset1(X1,X1,X1,X1,X1),k3_enumset1(X1,X1,X1,X1,X1),k3_enumset1(X1,X1,X1,X1,X1),X2))!=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_32, c_0_29]), c_0_23]), c_0_33]), c_0_30]), c_0_30]), c_0_30]), c_0_31]), c_0_31]), c_0_31]), c_0_31])).
% 0.14/0.37  cnf(c_0_41, plain, (k3_tarski(k3_enumset1(X1,X1,X1,X1,k1_setfam_1(k3_enumset1(X1,X1,X1,X1,X2))))=X1), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_34, c_0_33]), c_0_35]), c_0_30]), c_0_30]), c_0_31]), c_0_31])).
% 0.14/0.37  cnf(c_0_42, plain, (k2_mcart_1(k4_tarski(X1,X2))=X2), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.14/0.37  cnf(c_0_43, negated_conjecture, (esk1_0=k1_mcart_1(esk1_0)|esk1_0=k2_mcart_1(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.14/0.37  cnf(c_0_44, negated_conjecture, (k1_mcart_1(esk1_0)=esk2_0), inference(spm,[status(thm)],[c_0_36, c_0_37])).
% 0.14/0.37  fof(c_0_45, plain, ![X5, X6]:(((r1_tarski(X5,X6)|X5!=X6)&(r1_tarski(X6,X5)|X5!=X6))&(~r1_tarski(X5,X6)|~r1_tarski(X6,X5)|X5=X6)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.14/0.37  cnf(c_0_46, plain, (X1=k1_xboole_0|~r1_tarski(X1,k2_zfmisc_1(X2,X1))), inference(split_conjunct,[status(thm)],[c_0_38])).
% 0.14/0.37  cnf(c_0_47, negated_conjecture, (k2_zfmisc_1(k3_enumset1(esk2_0,esk2_0,esk2_0,esk2_0,esk2_0),k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0))=k3_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0)), inference(spm,[status(thm)],[c_0_39, c_0_37])).
% 0.14/0.37  cnf(c_0_48, plain, (k3_enumset1(X1,X1,X1,X1,X1)!=k1_xboole_0), inference(spm,[status(thm)],[c_0_40, c_0_41])).
% 0.14/0.37  cnf(c_0_49, negated_conjecture, (k2_mcart_1(esk1_0)=esk3_0), inference(spm,[status(thm)],[c_0_42, c_0_37])).
% 0.14/0.37  cnf(c_0_50, negated_conjecture, (k2_mcart_1(esk1_0)=esk1_0|esk2_0=esk1_0), inference(rw,[status(thm)],[c_0_43, c_0_44])).
% 0.14/0.37  cnf(c_0_51, plain, (r1_tarski(X1,X2)|X2!=X1), inference(split_conjunct,[status(thm)],[c_0_45])).
% 0.14/0.37  cnf(c_0_52, plain, (X1=k1_xboole_0|~r1_tarski(X1,k2_zfmisc_1(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_38])).
% 0.14/0.37  cnf(c_0_53, negated_conjecture, (~r1_tarski(k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0),k3_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_46, c_0_47]), c_0_48])).
% 0.14/0.37  cnf(c_0_54, negated_conjecture, (esk2_0=esk1_0|esk3_0=esk1_0), inference(spm,[status(thm)],[c_0_49, c_0_50])).
% 0.14/0.37  cnf(c_0_55, plain, (r1_tarski(X1,X1)), inference(er,[status(thm)],[c_0_51])).
% 0.14/0.37  cnf(c_0_56, negated_conjecture, (~r1_tarski(k3_enumset1(esk2_0,esk2_0,esk2_0,esk2_0,esk2_0),k3_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_52, c_0_47]), c_0_48])).
% 0.14/0.37  cnf(c_0_57, negated_conjecture, (esk2_0=esk1_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53, c_0_54]), c_0_55])])).
% 0.14/0.37  cnf(c_0_58, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_56, c_0_57]), c_0_57]), c_0_57]), c_0_57]), c_0_57]), c_0_55])]), ['proof']).
% 0.14/0.37  # SZS output end CNFRefutation
% 0.14/0.37  # Proof object total steps             : 59
% 0.14/0.37  # Proof object clause steps            : 32
% 0.14/0.37  # Proof object formula steps           : 27
% 0.14/0.37  # Proof object conjectures             : 14
% 0.14/0.37  # Proof object clause conjectures      : 11
% 0.14/0.37  # Proof object formula conjectures     : 3
% 0.14/0.37  # Proof object initial clauses used    : 16
% 0.14/0.37  # Proof object initial formulas used   : 13
% 0.14/0.37  # Proof object generating inferences   : 8
% 0.14/0.37  # Proof object simplifying inferences  : 43
% 0.14/0.37  # Training examples: 0 positive, 0 negative
% 0.14/0.37  # Parsed axioms                        : 13
% 0.14/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.14/0.37  # Initial clauses                      : 18
% 0.14/0.37  # Removed in clause preprocessing      : 6
% 0.14/0.37  # Initial clauses in saturation        : 12
% 0.14/0.37  # Processed clauses                    : 40
% 0.14/0.37  # ...of these trivial                  : 0
% 0.14/0.37  # ...subsumed                          : 2
% 0.14/0.37  # ...remaining for further processing  : 38
% 0.14/0.37  # Other redundant clauses eliminated   : 2
% 0.14/0.37  # Clauses deleted for lack of memory   : 0
% 0.14/0.37  # Backward-subsumed                    : 0
% 0.14/0.37  # Backward-rewritten                   : 8
% 0.14/0.37  # Generated clauses                    : 59
% 0.14/0.37  # ...of the previous two non-trivial   : 53
% 0.14/0.37  # Contextual simplify-reflections      : 0
% 0.14/0.37  # Paramodulations                      : 57
% 0.14/0.37  # Factorizations                       : 0
% 0.14/0.37  # Equation resolutions                 : 2
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
% 0.14/0.37  # Current number of processed clauses  : 17
% 0.14/0.37  #    Positive orientable unit clauses  : 8
% 0.14/0.37  #    Positive unorientable unit clauses: 0
% 0.14/0.37  #    Negative unit clauses             : 6
% 0.14/0.37  #    Non-unit-clauses                  : 3
% 0.14/0.37  # Current number of unprocessed clauses: 36
% 0.14/0.37  # ...number of literals in the above   : 50
% 0.14/0.37  # Current number of archived formulas  : 0
% 0.14/0.37  # Current number of archived clauses   : 25
% 0.14/0.37  # Clause-clause subsumption calls (NU) : 5
% 0.14/0.37  # Rec. Clause-clause subsumption calls : 5
% 0.14/0.37  # Non-unit clause-clause subsumptions  : 1
% 0.14/0.37  # Unit Clause-clause subsumption calls : 2
% 0.14/0.37  # Rewrite failures with RHS unbound    : 0
% 0.14/0.37  # BW rewrite match attempts            : 3
% 0.14/0.37  # BW rewrite match successes           : 2
% 0.14/0.37  # Condensation attempts                : 0
% 0.14/0.37  # Condensation successes               : 0
% 0.14/0.37  # Termbank termtop insertions          : 1617
% 0.14/0.37  
% 0.14/0.37  # -------------------------------------------------
% 0.14/0.37  # User time                : 0.028 s
% 0.14/0.37  # System time              : 0.004 s
% 0.14/0.37  # Total time               : 0.032 s
% 0.14/0.37  # Maximum resident set size: 1576 pages
%------------------------------------------------------------------------------
