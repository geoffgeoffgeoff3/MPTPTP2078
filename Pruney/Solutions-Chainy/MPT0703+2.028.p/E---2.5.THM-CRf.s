%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n012.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:55:17 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   71 ( 345 expanded)
%              Number of clauses        :   48 ( 155 expanded)
%              Number of leaves         :   11 (  84 expanded)
%              Depth                    :   16
%              Number of atoms          :  134 ( 909 expanded)
%              Number of equality atoms :   33 ( 152 expanded)
%              Maximal formula depth    :    8 (   3 average)
%              Maximal clause size      :    7 (   1 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d10_xboole_0)).

fof(t11_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( r1_tarski(k2_xboole_0(X1,X2),X3)
     => r1_tarski(X1,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t11_xboole_1)).

fof(t158_funct_1,conjecture,(
    ! [X1,X2,X3] :
      ( ( v1_relat_1(X3)
        & v1_funct_1(X3) )
     => ( ( r1_tarski(k10_relat_1(X3,X1),k10_relat_1(X3,X2))
          & r1_tarski(X1,k2_relat_1(X3)) )
       => r1_tarski(X1,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t158_funct_1)).

fof(t1_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( ( r1_tarski(X1,X2)
        & r1_tarski(X2,X3) )
     => r1_tarski(X1,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t1_xboole_1)).

fof(t12_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
     => k2_xboole_0(X1,X2) = X2 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t12_xboole_1)).

fof(t43_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( r1_tarski(X1,k2_xboole_0(X2,X3))
     => r1_tarski(k4_xboole_0(X1,X2),X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t43_xboole_1)).

fof(t44_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( r1_tarski(k4_xboole_0(X1,X2),X3)
     => r1_tarski(X1,k2_xboole_0(X2,X3)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t44_xboole_1)).

fof(t138_funct_1,axiom,(
    ! [X1,X2,X3] :
      ( ( v1_relat_1(X3)
        & v1_funct_1(X3) )
     => k10_relat_1(X3,k6_subset_1(X1,X2)) = k6_subset_1(k10_relat_1(X3,X1),k10_relat_1(X3,X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t138_funct_1)).

fof(redefinition_k6_subset_1,axiom,(
    ! [X1,X2] : k6_subset_1(X1,X2) = k4_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k6_subset_1)).

fof(t36_xboole_1,axiom,(
    ! [X1,X2] : r1_tarski(k4_xboole_0(X1,X2),X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t36_xboole_1)).

fof(t147_funct_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v1_funct_1(X2) )
     => ( r1_tarski(X1,k2_relat_1(X2))
       => k9_relat_1(X2,k10_relat_1(X2,X1)) = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t147_funct_1)).

fof(c_0_11,plain,(
    ! [X4,X5] :
      ( ( r1_tarski(X4,X5)
        | X4 != X5 )
      & ( r1_tarski(X5,X4)
        | X4 != X5 )
      & ( ~ r1_tarski(X4,X5)
        | ~ r1_tarski(X5,X4)
        | X4 = X5 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

fof(c_0_12,plain,(
    ! [X6,X7,X8] :
      ( ~ r1_tarski(k2_xboole_0(X6,X7),X8)
      | r1_tarski(X6,X8) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t11_xboole_1])])).

cnf(c_0_13,plain,
    ( r1_tarski(X1,X2)
    | X2 != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

fof(c_0_14,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( ( v1_relat_1(X3)
          & v1_funct_1(X3) )
       => ( ( r1_tarski(k10_relat_1(X3,X1),k10_relat_1(X3,X2))
            & r1_tarski(X1,k2_relat_1(X3)) )
         => r1_tarski(X1,X2) ) ) ),
    inference(assume_negation,[status(cth)],[t158_funct_1])).

fof(c_0_15,plain,(
    ! [X11,X12,X13] :
      ( ~ r1_tarski(X11,X12)
      | ~ r1_tarski(X12,X13)
      | r1_tarski(X11,X13) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_xboole_1])])).

cnf(c_0_16,plain,
    ( r1_tarski(X1,X3)
    | ~ r1_tarski(k2_xboole_0(X1,X2),X3) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_17,plain,
    ( r1_tarski(X1,X1) ),
    inference(er,[status(thm)],[c_0_13])).

fof(c_0_18,plain,(
    ! [X9,X10] :
      ( ~ r1_tarski(X9,X10)
      | k2_xboole_0(X9,X10) = X10 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t12_xboole_1])])).

fof(c_0_19,negated_conjecture,
    ( v1_relat_1(esk3_0)
    & v1_funct_1(esk3_0)
    & r1_tarski(k10_relat_1(esk3_0,esk1_0),k10_relat_1(esk3_0,esk2_0))
    & r1_tarski(esk1_0,k2_relat_1(esk3_0))
    & ~ r1_tarski(esk1_0,esk2_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_14])])])).

fof(c_0_20,plain,(
    ! [X16,X17,X18] :
      ( ~ r1_tarski(X16,k2_xboole_0(X17,X18))
      | r1_tarski(k4_xboole_0(X16,X17),X18) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t43_xboole_1])])).

cnf(c_0_21,plain,
    ( r1_tarski(X1,X3)
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_22,plain,
    ( r1_tarski(X1,k2_xboole_0(X1,X2)) ),
    inference(spm,[status(thm)],[c_0_16,c_0_17])).

cnf(c_0_23,plain,
    ( k2_xboole_0(X1,X2) = X2
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_24,negated_conjecture,
    ( r1_tarski(esk1_0,k2_relat_1(esk3_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

fof(c_0_25,plain,(
    ! [X19,X20,X21] :
      ( ~ r1_tarski(k4_xboole_0(X19,X20),X21)
      | r1_tarski(X19,k2_xboole_0(X20,X21)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t44_xboole_1])])).

cnf(c_0_26,plain,
    ( r1_tarski(k4_xboole_0(X1,X2),X3)
    | ~ r1_tarski(X1,k2_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_27,plain,
    ( r1_tarski(X1,k2_xboole_0(X2,X3))
    | ~ r1_tarski(X1,X2) ),
    inference(spm,[status(thm)],[c_0_21,c_0_22])).

cnf(c_0_28,negated_conjecture,
    ( r1_tarski(k10_relat_1(esk3_0,esk1_0),k10_relat_1(esk3_0,esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

fof(c_0_29,plain,(
    ! [X24,X25,X26] :
      ( ~ v1_relat_1(X26)
      | ~ v1_funct_1(X26)
      | k10_relat_1(X26,k6_subset_1(X24,X25)) = k6_subset_1(k10_relat_1(X26,X24),k10_relat_1(X26,X25)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t138_funct_1])])).

fof(c_0_30,plain,(
    ! [X22,X23] : k6_subset_1(X22,X23) = k4_xboole_0(X22,X23) ),
    inference(variable_rename,[status(thm)],[redefinition_k6_subset_1])).

cnf(c_0_31,negated_conjecture,
    ( k2_xboole_0(esk1_0,k2_relat_1(esk3_0)) = k2_relat_1(esk3_0) ),
    inference(spm,[status(thm)],[c_0_23,c_0_24])).

cnf(c_0_32,plain,
    ( r1_tarski(X1,k2_xboole_0(X2,X3))
    | ~ r1_tarski(k4_xboole_0(X1,X2),X3) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_33,plain,
    ( r1_tarski(k4_xboole_0(X1,X1),X2) ),
    inference(spm,[status(thm)],[c_0_26,c_0_22])).

cnf(c_0_34,negated_conjecture,
    ( r1_tarski(k10_relat_1(esk3_0,esk1_0),k2_xboole_0(k10_relat_1(esk3_0,esk2_0),X1)) ),
    inference(spm,[status(thm)],[c_0_27,c_0_28])).

cnf(c_0_35,plain,
    ( k10_relat_1(X1,k6_subset_1(X2,X3)) = k6_subset_1(k10_relat_1(X1,X2),k10_relat_1(X1,X3))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_36,plain,
    ( k6_subset_1(X1,X2) = k4_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_37,negated_conjecture,
    ( r1_tarski(esk1_0,X1)
    | ~ r1_tarski(k2_relat_1(esk3_0),X1) ),
    inference(spm,[status(thm)],[c_0_16,c_0_31])).

cnf(c_0_38,plain,
    ( r1_tarski(X1,k2_xboole_0(X2,k4_xboole_0(X1,X2))) ),
    inference(spm,[status(thm)],[c_0_32,c_0_17])).

cnf(c_0_39,plain,
    ( k2_xboole_0(k4_xboole_0(X1,X1),X2) = X2 ),
    inference(spm,[status(thm)],[c_0_23,c_0_33])).

fof(c_0_40,plain,(
    ! [X14,X15] : r1_tarski(k4_xboole_0(X14,X15),X14) ),
    inference(variable_rename,[status(thm)],[t36_xboole_1])).

cnf(c_0_41,plain,
    ( X1 = X2
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_42,negated_conjecture,
    ( r1_tarski(k4_xboole_0(k10_relat_1(esk3_0,esk1_0),k10_relat_1(esk3_0,esk2_0)),X1) ),
    inference(spm,[status(thm)],[c_0_26,c_0_34])).

cnf(c_0_43,plain,
    ( k10_relat_1(X1,k4_xboole_0(X2,X3)) = k4_xboole_0(k10_relat_1(X1,X2),k10_relat_1(X1,X3))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_35,c_0_36]),c_0_36])).

cnf(c_0_44,negated_conjecture,
    ( v1_funct_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_45,negated_conjecture,
    ( v1_relat_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_46,negated_conjecture,
    ( r1_tarski(esk1_0,k2_xboole_0(k2_relat_1(esk3_0),X1)) ),
    inference(spm,[status(thm)],[c_0_37,c_0_22])).

cnf(c_0_47,plain,
    ( r1_tarski(X1,k4_xboole_0(X1,k4_xboole_0(X2,X2))) ),
    inference(spm,[status(thm)],[c_0_38,c_0_39])).

cnf(c_0_48,plain,
    ( r1_tarski(k4_xboole_0(X1,X2),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_40])).

cnf(c_0_49,plain,
    ( X1 = k4_xboole_0(X2,X2)
    | ~ r1_tarski(X1,k4_xboole_0(X2,X2)) ),
    inference(spm,[status(thm)],[c_0_41,c_0_33])).

cnf(c_0_50,negated_conjecture,
    ( r1_tarski(k10_relat_1(esk3_0,k4_xboole_0(esk1_0,esk2_0)),X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_42,c_0_43]),c_0_44]),c_0_45])])).

fof(c_0_51,plain,(
    ! [X27,X28] :
      ( ~ v1_relat_1(X28)
      | ~ v1_funct_1(X28)
      | ~ r1_tarski(X27,k2_relat_1(X28))
      | k9_relat_1(X28,k10_relat_1(X28,X27)) = X27 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t147_funct_1])])).

cnf(c_0_52,negated_conjecture,
    ( r1_tarski(X1,k2_relat_1(esk3_0))
    | ~ r1_tarski(X1,esk1_0) ),
    inference(spm,[status(thm)],[c_0_21,c_0_24])).

cnf(c_0_53,negated_conjecture,
    ( r1_tarski(k4_xboole_0(esk1_0,k2_relat_1(esk3_0)),X1) ),
    inference(spm,[status(thm)],[c_0_26,c_0_46])).

cnf(c_0_54,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X2,X2)) = X1 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41,c_0_47]),c_0_48])])).

cnf(c_0_55,negated_conjecture,
    ( k10_relat_1(esk3_0,k4_xboole_0(esk1_0,esk2_0)) = k4_xboole_0(X1,X1) ),
    inference(spm,[status(thm)],[c_0_49,c_0_50])).

cnf(c_0_56,plain,
    ( k9_relat_1(X1,k10_relat_1(X1,X2)) = X2
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ r1_tarski(X2,k2_relat_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_51])).

cnf(c_0_57,negated_conjecture,
    ( r1_tarski(k4_xboole_0(esk1_0,X1),k2_relat_1(esk3_0)) ),
    inference(spm,[status(thm)],[c_0_52,c_0_48])).

cnf(c_0_58,negated_conjecture,
    ( X1 = k4_xboole_0(esk1_0,k2_relat_1(esk3_0))
    | ~ r1_tarski(X1,k4_xboole_0(esk1_0,k2_relat_1(esk3_0))) ),
    inference(spm,[status(thm)],[c_0_41,c_0_53])).

cnf(c_0_59,negated_conjecture,
    ( k4_xboole_0(X1,k10_relat_1(esk3_0,k4_xboole_0(esk1_0,esk2_0))) = X1 ),
    inference(spm,[status(thm)],[c_0_54,c_0_55])).

cnf(c_0_60,negated_conjecture,
    ( k9_relat_1(esk3_0,k10_relat_1(esk3_0,k4_xboole_0(esk1_0,X1))) = k4_xboole_0(esk1_0,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_56,c_0_57]),c_0_44]),c_0_45])])).

cnf(c_0_61,negated_conjecture,
    ( k4_xboole_0(esk1_0,k2_relat_1(esk3_0)) = k10_relat_1(esk3_0,k4_xboole_0(esk1_0,esk2_0)) ),
    inference(spm,[status(thm)],[c_0_58,c_0_50])).

cnf(c_0_62,negated_conjecture,
    ( k10_relat_1(esk3_0,k4_xboole_0(X1,k4_xboole_0(esk1_0,esk2_0))) = k10_relat_1(esk3_0,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43,c_0_59]),c_0_44]),c_0_45])])).

cnf(c_0_63,negated_conjecture,
    ( k9_relat_1(esk3_0,k10_relat_1(esk3_0,k10_relat_1(esk3_0,k4_xboole_0(esk1_0,esk2_0)))) = k10_relat_1(esk3_0,k4_xboole_0(esk1_0,esk2_0)) ),
    inference(spm,[status(thm)],[c_0_60,c_0_61])).

cnf(c_0_64,negated_conjecture,
    ( k10_relat_1(esk3_0,k10_relat_1(esk3_0,k4_xboole_0(esk1_0,esk2_0))) = k10_relat_1(esk3_0,k4_xboole_0(esk1_0,esk2_0)) ),
    inference(spm,[status(thm)],[c_0_62,c_0_55])).

cnf(c_0_65,negated_conjecture,
    ( k10_relat_1(esk3_0,k4_xboole_0(esk1_0,esk2_0)) = k4_xboole_0(esk1_0,esk2_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_63,c_0_64]),c_0_60])).

cnf(c_0_66,negated_conjecture,
    ( r1_tarski(k4_xboole_0(esk1_0,esk2_0),X1) ),
    inference(rw,[status(thm)],[c_0_50,c_0_65])).

cnf(c_0_67,negated_conjecture,
    ( r1_tarski(esk1_0,k2_xboole_0(esk2_0,X1)) ),
    inference(spm,[status(thm)],[c_0_32,c_0_66])).

cnf(c_0_68,plain,
    ( k2_xboole_0(X1,X1) = X1 ),
    inference(spm,[status(thm)],[c_0_23,c_0_17])).

cnf(c_0_69,negated_conjecture,
    ( ~ r1_tarski(esk1_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_70,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_67,c_0_68]),c_0_69]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.34  % Computer   : n012.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 09:15:07 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.19/0.49  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S4c
% 0.19/0.49  # and selection function SelectCQPrecWNTNp.
% 0.19/0.49  #
% 0.19/0.49  # Preprocessing time       : 0.039 s
% 0.19/0.49  # Presaturation interreduction done
% 0.19/0.49  
% 0.19/0.49  # Proof found!
% 0.19/0.49  # SZS status Theorem
% 0.19/0.49  # SZS output start CNFRefutation
% 0.19/0.49  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.19/0.49  fof(t11_xboole_1, axiom, ![X1, X2, X3]:(r1_tarski(k2_xboole_0(X1,X2),X3)=>r1_tarski(X1,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t11_xboole_1)).
% 0.19/0.49  fof(t158_funct_1, conjecture, ![X1, X2, X3]:((v1_relat_1(X3)&v1_funct_1(X3))=>((r1_tarski(k10_relat_1(X3,X1),k10_relat_1(X3,X2))&r1_tarski(X1,k2_relat_1(X3)))=>r1_tarski(X1,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t158_funct_1)).
% 0.19/0.49  fof(t1_xboole_1, axiom, ![X1, X2, X3]:((r1_tarski(X1,X2)&r1_tarski(X2,X3))=>r1_tarski(X1,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t1_xboole_1)).
% 0.19/0.49  fof(t12_xboole_1, axiom, ![X1, X2]:(r1_tarski(X1,X2)=>k2_xboole_0(X1,X2)=X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t12_xboole_1)).
% 0.19/0.49  fof(t43_xboole_1, axiom, ![X1, X2, X3]:(r1_tarski(X1,k2_xboole_0(X2,X3))=>r1_tarski(k4_xboole_0(X1,X2),X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t43_xboole_1)).
% 0.19/0.49  fof(t44_xboole_1, axiom, ![X1, X2, X3]:(r1_tarski(k4_xboole_0(X1,X2),X3)=>r1_tarski(X1,k2_xboole_0(X2,X3))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t44_xboole_1)).
% 0.19/0.49  fof(t138_funct_1, axiom, ![X1, X2, X3]:((v1_relat_1(X3)&v1_funct_1(X3))=>k10_relat_1(X3,k6_subset_1(X1,X2))=k6_subset_1(k10_relat_1(X3,X1),k10_relat_1(X3,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t138_funct_1)).
% 0.19/0.49  fof(redefinition_k6_subset_1, axiom, ![X1, X2]:k6_subset_1(X1,X2)=k4_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k6_subset_1)).
% 0.19/0.49  fof(t36_xboole_1, axiom, ![X1, X2]:r1_tarski(k4_xboole_0(X1,X2),X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t36_xboole_1)).
% 0.19/0.49  fof(t147_funct_1, axiom, ![X1, X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(r1_tarski(X1,k2_relat_1(X2))=>k9_relat_1(X2,k10_relat_1(X2,X1))=X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t147_funct_1)).
% 0.19/0.49  fof(c_0_11, plain, ![X4, X5]:(((r1_tarski(X4,X5)|X4!=X5)&(r1_tarski(X5,X4)|X4!=X5))&(~r1_tarski(X4,X5)|~r1_tarski(X5,X4)|X4=X5)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.19/0.49  fof(c_0_12, plain, ![X6, X7, X8]:(~r1_tarski(k2_xboole_0(X6,X7),X8)|r1_tarski(X6,X8)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t11_xboole_1])])).
% 0.19/0.49  cnf(c_0_13, plain, (r1_tarski(X1,X2)|X2!=X1), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.19/0.49  fof(c_0_14, negated_conjecture, ~(![X1, X2, X3]:((v1_relat_1(X3)&v1_funct_1(X3))=>((r1_tarski(k10_relat_1(X3,X1),k10_relat_1(X3,X2))&r1_tarski(X1,k2_relat_1(X3)))=>r1_tarski(X1,X2)))), inference(assume_negation,[status(cth)],[t158_funct_1])).
% 0.19/0.49  fof(c_0_15, plain, ![X11, X12, X13]:(~r1_tarski(X11,X12)|~r1_tarski(X12,X13)|r1_tarski(X11,X13)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_xboole_1])])).
% 0.19/0.49  cnf(c_0_16, plain, (r1_tarski(X1,X3)|~r1_tarski(k2_xboole_0(X1,X2),X3)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.19/0.49  cnf(c_0_17, plain, (r1_tarski(X1,X1)), inference(er,[status(thm)],[c_0_13])).
% 0.19/0.49  fof(c_0_18, plain, ![X9, X10]:(~r1_tarski(X9,X10)|k2_xboole_0(X9,X10)=X10), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t12_xboole_1])])).
% 0.19/0.49  fof(c_0_19, negated_conjecture, ((v1_relat_1(esk3_0)&v1_funct_1(esk3_0))&((r1_tarski(k10_relat_1(esk3_0,esk1_0),k10_relat_1(esk3_0,esk2_0))&r1_tarski(esk1_0,k2_relat_1(esk3_0)))&~r1_tarski(esk1_0,esk2_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_14])])])).
% 0.19/0.49  fof(c_0_20, plain, ![X16, X17, X18]:(~r1_tarski(X16,k2_xboole_0(X17,X18))|r1_tarski(k4_xboole_0(X16,X17),X18)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t43_xboole_1])])).
% 0.19/0.49  cnf(c_0_21, plain, (r1_tarski(X1,X3)|~r1_tarski(X1,X2)|~r1_tarski(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.49  cnf(c_0_22, plain, (r1_tarski(X1,k2_xboole_0(X1,X2))), inference(spm,[status(thm)],[c_0_16, c_0_17])).
% 0.19/0.49  cnf(c_0_23, plain, (k2_xboole_0(X1,X2)=X2|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.19/0.49  cnf(c_0_24, negated_conjecture, (r1_tarski(esk1_0,k2_relat_1(esk3_0))), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.19/0.49  fof(c_0_25, plain, ![X19, X20, X21]:(~r1_tarski(k4_xboole_0(X19,X20),X21)|r1_tarski(X19,k2_xboole_0(X20,X21))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t44_xboole_1])])).
% 0.19/0.49  cnf(c_0_26, plain, (r1_tarski(k4_xboole_0(X1,X2),X3)|~r1_tarski(X1,k2_xboole_0(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.19/0.49  cnf(c_0_27, plain, (r1_tarski(X1,k2_xboole_0(X2,X3))|~r1_tarski(X1,X2)), inference(spm,[status(thm)],[c_0_21, c_0_22])).
% 0.19/0.49  cnf(c_0_28, negated_conjecture, (r1_tarski(k10_relat_1(esk3_0,esk1_0),k10_relat_1(esk3_0,esk2_0))), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.19/0.49  fof(c_0_29, plain, ![X24, X25, X26]:(~v1_relat_1(X26)|~v1_funct_1(X26)|k10_relat_1(X26,k6_subset_1(X24,X25))=k6_subset_1(k10_relat_1(X26,X24),k10_relat_1(X26,X25))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t138_funct_1])])).
% 0.19/0.49  fof(c_0_30, plain, ![X22, X23]:k6_subset_1(X22,X23)=k4_xboole_0(X22,X23), inference(variable_rename,[status(thm)],[redefinition_k6_subset_1])).
% 0.19/0.49  cnf(c_0_31, negated_conjecture, (k2_xboole_0(esk1_0,k2_relat_1(esk3_0))=k2_relat_1(esk3_0)), inference(spm,[status(thm)],[c_0_23, c_0_24])).
% 0.19/0.49  cnf(c_0_32, plain, (r1_tarski(X1,k2_xboole_0(X2,X3))|~r1_tarski(k4_xboole_0(X1,X2),X3)), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.19/0.49  cnf(c_0_33, plain, (r1_tarski(k4_xboole_0(X1,X1),X2)), inference(spm,[status(thm)],[c_0_26, c_0_22])).
% 0.19/0.49  cnf(c_0_34, negated_conjecture, (r1_tarski(k10_relat_1(esk3_0,esk1_0),k2_xboole_0(k10_relat_1(esk3_0,esk2_0),X1))), inference(spm,[status(thm)],[c_0_27, c_0_28])).
% 0.19/0.49  cnf(c_0_35, plain, (k10_relat_1(X1,k6_subset_1(X2,X3))=k6_subset_1(k10_relat_1(X1,X2),k10_relat_1(X1,X3))|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.19/0.49  cnf(c_0_36, plain, (k6_subset_1(X1,X2)=k4_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.19/0.49  cnf(c_0_37, negated_conjecture, (r1_tarski(esk1_0,X1)|~r1_tarski(k2_relat_1(esk3_0),X1)), inference(spm,[status(thm)],[c_0_16, c_0_31])).
% 0.19/0.49  cnf(c_0_38, plain, (r1_tarski(X1,k2_xboole_0(X2,k4_xboole_0(X1,X2)))), inference(spm,[status(thm)],[c_0_32, c_0_17])).
% 0.19/0.49  cnf(c_0_39, plain, (k2_xboole_0(k4_xboole_0(X1,X1),X2)=X2), inference(spm,[status(thm)],[c_0_23, c_0_33])).
% 0.19/0.49  fof(c_0_40, plain, ![X14, X15]:r1_tarski(k4_xboole_0(X14,X15),X14), inference(variable_rename,[status(thm)],[t36_xboole_1])).
% 0.19/0.49  cnf(c_0_41, plain, (X1=X2|~r1_tarski(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.19/0.49  cnf(c_0_42, negated_conjecture, (r1_tarski(k4_xboole_0(k10_relat_1(esk3_0,esk1_0),k10_relat_1(esk3_0,esk2_0)),X1)), inference(spm,[status(thm)],[c_0_26, c_0_34])).
% 0.19/0.49  cnf(c_0_43, plain, (k10_relat_1(X1,k4_xboole_0(X2,X3))=k4_xboole_0(k10_relat_1(X1,X2),k10_relat_1(X1,X3))|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_35, c_0_36]), c_0_36])).
% 0.19/0.49  cnf(c_0_44, negated_conjecture, (v1_funct_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.19/0.49  cnf(c_0_45, negated_conjecture, (v1_relat_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.19/0.49  cnf(c_0_46, negated_conjecture, (r1_tarski(esk1_0,k2_xboole_0(k2_relat_1(esk3_0),X1))), inference(spm,[status(thm)],[c_0_37, c_0_22])).
% 0.19/0.49  cnf(c_0_47, plain, (r1_tarski(X1,k4_xboole_0(X1,k4_xboole_0(X2,X2)))), inference(spm,[status(thm)],[c_0_38, c_0_39])).
% 0.19/0.49  cnf(c_0_48, plain, (r1_tarski(k4_xboole_0(X1,X2),X1)), inference(split_conjunct,[status(thm)],[c_0_40])).
% 0.19/0.49  cnf(c_0_49, plain, (X1=k4_xboole_0(X2,X2)|~r1_tarski(X1,k4_xboole_0(X2,X2))), inference(spm,[status(thm)],[c_0_41, c_0_33])).
% 0.19/0.49  cnf(c_0_50, negated_conjecture, (r1_tarski(k10_relat_1(esk3_0,k4_xboole_0(esk1_0,esk2_0)),X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_42, c_0_43]), c_0_44]), c_0_45])])).
% 0.19/0.49  fof(c_0_51, plain, ![X27, X28]:(~v1_relat_1(X28)|~v1_funct_1(X28)|(~r1_tarski(X27,k2_relat_1(X28))|k9_relat_1(X28,k10_relat_1(X28,X27))=X27)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t147_funct_1])])).
% 0.19/0.49  cnf(c_0_52, negated_conjecture, (r1_tarski(X1,k2_relat_1(esk3_0))|~r1_tarski(X1,esk1_0)), inference(spm,[status(thm)],[c_0_21, c_0_24])).
% 0.19/0.49  cnf(c_0_53, negated_conjecture, (r1_tarski(k4_xboole_0(esk1_0,k2_relat_1(esk3_0)),X1)), inference(spm,[status(thm)],[c_0_26, c_0_46])).
% 0.19/0.49  cnf(c_0_54, plain, (k4_xboole_0(X1,k4_xboole_0(X2,X2))=X1), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41, c_0_47]), c_0_48])])).
% 0.19/0.49  cnf(c_0_55, negated_conjecture, (k10_relat_1(esk3_0,k4_xboole_0(esk1_0,esk2_0))=k4_xboole_0(X1,X1)), inference(spm,[status(thm)],[c_0_49, c_0_50])).
% 0.19/0.49  cnf(c_0_56, plain, (k9_relat_1(X1,k10_relat_1(X1,X2))=X2|~v1_relat_1(X1)|~v1_funct_1(X1)|~r1_tarski(X2,k2_relat_1(X1))), inference(split_conjunct,[status(thm)],[c_0_51])).
% 0.19/0.49  cnf(c_0_57, negated_conjecture, (r1_tarski(k4_xboole_0(esk1_0,X1),k2_relat_1(esk3_0))), inference(spm,[status(thm)],[c_0_52, c_0_48])).
% 0.19/0.49  cnf(c_0_58, negated_conjecture, (X1=k4_xboole_0(esk1_0,k2_relat_1(esk3_0))|~r1_tarski(X1,k4_xboole_0(esk1_0,k2_relat_1(esk3_0)))), inference(spm,[status(thm)],[c_0_41, c_0_53])).
% 0.19/0.49  cnf(c_0_59, negated_conjecture, (k4_xboole_0(X1,k10_relat_1(esk3_0,k4_xboole_0(esk1_0,esk2_0)))=X1), inference(spm,[status(thm)],[c_0_54, c_0_55])).
% 0.19/0.49  cnf(c_0_60, negated_conjecture, (k9_relat_1(esk3_0,k10_relat_1(esk3_0,k4_xboole_0(esk1_0,X1)))=k4_xboole_0(esk1_0,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_56, c_0_57]), c_0_44]), c_0_45])])).
% 0.19/0.49  cnf(c_0_61, negated_conjecture, (k4_xboole_0(esk1_0,k2_relat_1(esk3_0))=k10_relat_1(esk3_0,k4_xboole_0(esk1_0,esk2_0))), inference(spm,[status(thm)],[c_0_58, c_0_50])).
% 0.19/0.49  cnf(c_0_62, negated_conjecture, (k10_relat_1(esk3_0,k4_xboole_0(X1,k4_xboole_0(esk1_0,esk2_0)))=k10_relat_1(esk3_0,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43, c_0_59]), c_0_44]), c_0_45])])).
% 0.19/0.49  cnf(c_0_63, negated_conjecture, (k9_relat_1(esk3_0,k10_relat_1(esk3_0,k10_relat_1(esk3_0,k4_xboole_0(esk1_0,esk2_0))))=k10_relat_1(esk3_0,k4_xboole_0(esk1_0,esk2_0))), inference(spm,[status(thm)],[c_0_60, c_0_61])).
% 0.19/0.49  cnf(c_0_64, negated_conjecture, (k10_relat_1(esk3_0,k10_relat_1(esk3_0,k4_xboole_0(esk1_0,esk2_0)))=k10_relat_1(esk3_0,k4_xboole_0(esk1_0,esk2_0))), inference(spm,[status(thm)],[c_0_62, c_0_55])).
% 0.19/0.49  cnf(c_0_65, negated_conjecture, (k10_relat_1(esk3_0,k4_xboole_0(esk1_0,esk2_0))=k4_xboole_0(esk1_0,esk2_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_63, c_0_64]), c_0_60])).
% 0.19/0.49  cnf(c_0_66, negated_conjecture, (r1_tarski(k4_xboole_0(esk1_0,esk2_0),X1)), inference(rw,[status(thm)],[c_0_50, c_0_65])).
% 0.19/0.49  cnf(c_0_67, negated_conjecture, (r1_tarski(esk1_0,k2_xboole_0(esk2_0,X1))), inference(spm,[status(thm)],[c_0_32, c_0_66])).
% 0.19/0.49  cnf(c_0_68, plain, (k2_xboole_0(X1,X1)=X1), inference(spm,[status(thm)],[c_0_23, c_0_17])).
% 0.19/0.49  cnf(c_0_69, negated_conjecture, (~r1_tarski(esk1_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.19/0.49  cnf(c_0_70, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_67, c_0_68]), c_0_69]), ['proof']).
% 0.19/0.49  # SZS output end CNFRefutation
% 0.19/0.49  # Proof object total steps             : 71
% 0.19/0.49  # Proof object clause steps            : 48
% 0.19/0.49  # Proof object formula steps           : 23
% 0.19/0.49  # Proof object conjectures             : 29
% 0.19/0.49  # Proof object clause conjectures      : 26
% 0.19/0.49  # Proof object formula conjectures     : 3
% 0.19/0.49  # Proof object initial clauses used    : 16
% 0.19/0.49  # Proof object initial formulas used   : 11
% 0.19/0.49  # Proof object generating inferences   : 28
% 0.19/0.49  # Proof object simplifying inferences  : 18
% 0.19/0.49  # Training examples: 0 positive, 0 negative
% 0.19/0.49  # Parsed axioms                        : 11
% 0.19/0.49  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.49  # Initial clauses                      : 17
% 0.19/0.49  # Removed in clause preprocessing      : 1
% 0.19/0.49  # Initial clauses in saturation        : 16
% 0.19/0.49  # Processed clauses                    : 854
% 0.19/0.49  # ...of these trivial                  : 66
% 0.19/0.49  # ...subsumed                          : 476
% 0.19/0.49  # ...remaining for further processing  : 312
% 0.19/0.49  # Other redundant clauses eliminated   : 2
% 0.19/0.49  # Clauses deleted for lack of memory   : 0
% 0.19/0.49  # Backward-subsumed                    : 7
% 0.19/0.49  # Backward-rewritten                   : 70
% 0.19/0.49  # Generated clauses                    : 5975
% 0.19/0.49  # ...of the previous two non-trivial   : 3998
% 0.19/0.49  # Contextual simplify-reflections      : 0
% 0.19/0.49  # Paramodulations                      : 5973
% 0.19/0.49  # Factorizations                       : 0
% 0.19/0.49  # Equation resolutions                 : 2
% 0.19/0.49  # Propositional unsat checks           : 0
% 0.19/0.49  #    Propositional check models        : 0
% 0.19/0.49  #    Propositional check unsatisfiable : 0
% 0.19/0.49  #    Propositional clauses             : 0
% 0.19/0.49  #    Propositional clauses after purity: 0
% 0.19/0.49  #    Propositional unsat core size     : 0
% 0.19/0.49  #    Propositional preprocessing time  : 0.000
% 0.19/0.49  #    Propositional encoding time       : 0.000
% 0.19/0.49  #    Propositional solver time         : 0.000
% 0.19/0.49  #    Success case prop preproc time    : 0.000
% 0.19/0.49  #    Success case prop encoding time   : 0.000
% 0.19/0.49  #    Success case prop solver time     : 0.000
% 0.19/0.49  # Current number of processed clauses  : 218
% 0.19/0.49  #    Positive orientable unit clauses  : 110
% 0.19/0.49  #    Positive unorientable unit clauses: 1
% 0.19/0.49  #    Negative unit clauses             : 1
% 0.19/0.49  #    Non-unit-clauses                  : 106
% 0.19/0.49  # Current number of unprocessed clauses: 3091
% 0.19/0.49  # ...number of literals in the above   : 4374
% 0.19/0.49  # Current number of archived formulas  : 0
% 0.19/0.49  # Current number of archived clauses   : 93
% 0.19/0.49  # Clause-clause subsumption calls (NU) : 5662
% 0.19/0.49  # Rec. Clause-clause subsumption calls : 4344
% 0.19/0.49  # Non-unit clause-clause subsumptions  : 462
% 0.19/0.49  # Unit Clause-clause subsumption calls : 70
% 0.19/0.49  # Rewrite failures with RHS unbound    : 40
% 0.19/0.49  # BW rewrite match attempts            : 240
% 0.19/0.49  # BW rewrite match successes           : 38
% 0.19/0.49  # Condensation attempts                : 0
% 0.19/0.49  # Condensation successes               : 0
% 0.19/0.49  # Termbank termtop insertions          : 66401
% 0.19/0.49  
% 0.19/0.49  # -------------------------------------------------
% 0.19/0.49  # User time                : 0.139 s
% 0.19/0.49  # System time              : 0.012 s
% 0.19/0.49  # Total time               : 0.151 s
% 0.19/0.49  # Maximum resident set size: 1576 pages
%------------------------------------------------------------------------------
