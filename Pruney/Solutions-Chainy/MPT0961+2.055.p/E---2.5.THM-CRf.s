%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n017.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:00:59 EST 2020

% Result     : Theorem 0.20s
% Output     : CNFRefutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   80 ( 974 expanded)
%              Number of clauses        :   61 ( 449 expanded)
%              Number of leaves         :    9 ( 246 expanded)
%              Depth                    :   16
%              Number of atoms          :  224 (3606 expanded)
%              Number of equality atoms :   73 ( 746 expanded)
%              Maximal formula depth    :   14 (   3 average)
%              Maximal clause size      :   26 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t3_xboole_1,axiom,(
    ! [X1] :
      ( r1_tarski(X1,k1_xboole_0)
     => X1 = k1_xboole_0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_xboole_1)).

fof(d18_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( v4_relat_1(X2,X1)
      <=> r1_tarski(k1_relat_1(X2),X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d18_relat_1)).

fof(t3_funct_2,conjecture,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v1_funct_1(X1)
        & v1_funct_2(X1,k1_relat_1(X1),k2_relat_1(X1))
        & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1)))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_funct_2)).

fof(t64_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ( ( k1_relat_1(X1) = k1_xboole_0
          | k2_relat_1(X1) = k1_xboole_0 )
       => X1 = k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t64_relat_1)).

fof(redefinition_k1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k1_relset_1(X1,X2,X3) = k1_relat_1(X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k1_relset_1)).

fof(rc1_funct_2,axiom,(
    ! [X1,X2] :
    ? [X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
      & v1_relat_1(X3)
      & v4_relat_1(X3,X1)
      & v5_relat_1(X3,X2)
      & v1_funct_1(X3)
      & v1_funct_2(X3,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',rc1_funct_2)).

fof(t3_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X2))
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_subset)).

fof(d1_funct_2,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ( ( ( X2 = k1_xboole_0
           => X1 = k1_xboole_0 )
         => ( v1_funct_2(X3,X1,X2)
          <=> X1 = k1_relset_1(X1,X2,X3) ) )
        & ( X2 = k1_xboole_0
         => ( X1 = k1_xboole_0
            | ( v1_funct_2(X3,X1,X2)
            <=> X3 = k1_xboole_0 ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_funct_2)).

fof(t21_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => r1_tarski(X1,k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1))) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t21_relat_1)).

fof(c_0_9,plain,(
    ! [X4] :
      ( ~ r1_tarski(X4,k1_xboole_0)
      | X4 = k1_xboole_0 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_xboole_1])])).

fof(c_0_10,plain,(
    ! [X7,X8] :
      ( ( ~ v4_relat_1(X8,X7)
        | r1_tarski(k1_relat_1(X8),X7)
        | ~ v1_relat_1(X8) )
      & ( ~ r1_tarski(k1_relat_1(X8),X7)
        | v4_relat_1(X8,X7)
        | ~ v1_relat_1(X8) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d18_relat_1])])])).

fof(c_0_11,negated_conjecture,(
    ~ ! [X1] :
        ( ( v1_relat_1(X1)
          & v1_funct_1(X1) )
       => ( v1_funct_1(X1)
          & v1_funct_2(X1,k1_relat_1(X1),k2_relat_1(X1))
          & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1)))) ) ) ),
    inference(assume_negation,[status(cth)],[t3_funct_2])).

fof(c_0_12,plain,(
    ! [X10] :
      ( ( k1_relat_1(X10) != k1_xboole_0
        | X10 = k1_xboole_0
        | ~ v1_relat_1(X10) )
      & ( k2_relat_1(X10) != k1_xboole_0
        | X10 = k1_xboole_0
        | ~ v1_relat_1(X10) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t64_relat_1])])])).

cnf(c_0_13,plain,
    ( X1 = k1_xboole_0
    | ~ r1_tarski(X1,k1_xboole_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_14,plain,
    ( r1_tarski(k1_relat_1(X1),X2)
    | ~ v4_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

fof(c_0_15,negated_conjecture,
    ( v1_relat_1(esk2_0)
    & v1_funct_1(esk2_0)
    & ( ~ v1_funct_1(esk2_0)
      | ~ v1_funct_2(esk2_0,k1_relat_1(esk2_0),k2_relat_1(esk2_0))
      | ~ m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(esk2_0),k2_relat_1(esk2_0)))) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_11])])])).

fof(c_0_16,plain,(
    ! [X11,X12,X13] :
      ( ~ m1_subset_1(X13,k1_zfmisc_1(k2_zfmisc_1(X11,X12)))
      | k1_relset_1(X11,X12,X13) = k1_relat_1(X13) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).

fof(c_0_17,plain,(
    ! [X17,X18] :
      ( m1_subset_1(esk1_2(X17,X18),k1_zfmisc_1(k2_zfmisc_1(X17,X18)))
      & v1_relat_1(esk1_2(X17,X18))
      & v4_relat_1(esk1_2(X17,X18),X17)
      & v5_relat_1(esk1_2(X17,X18),X18)
      & v1_funct_1(esk1_2(X17,X18))
      & v1_funct_2(esk1_2(X17,X18),X17,X18) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[rc1_funct_2])])).

cnf(c_0_18,plain,
    ( X1 = k1_xboole_0
    | k1_relat_1(X1) != k1_xboole_0
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_19,plain,
    ( k1_relat_1(X1) = k1_xboole_0
    | ~ v4_relat_1(X1,k1_xboole_0)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_13,c_0_14])).

cnf(c_0_20,negated_conjecture,
    ( ~ v1_funct_1(esk2_0)
    | ~ v1_funct_2(esk2_0,k1_relat_1(esk2_0),k2_relat_1(esk2_0))
    | ~ m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(esk2_0),k2_relat_1(esk2_0)))) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_21,negated_conjecture,
    ( v1_funct_1(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

fof(c_0_22,plain,(
    ! [X5,X6] :
      ( ( ~ m1_subset_1(X5,k1_zfmisc_1(X6))
        | r1_tarski(X5,X6) )
      & ( ~ r1_tarski(X5,X6)
        | m1_subset_1(X5,k1_zfmisc_1(X6)) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).

cnf(c_0_23,plain,
    ( k1_relset_1(X2,X3,X1) = k1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_24,plain,
    ( m1_subset_1(esk1_2(X1,X2),k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

fof(c_0_25,plain,(
    ! [X14,X15,X16] :
      ( ( ~ v1_funct_2(X16,X14,X15)
        | X14 = k1_relset_1(X14,X15,X16)
        | X15 = k1_xboole_0
        | ~ m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))) )
      & ( X14 != k1_relset_1(X14,X15,X16)
        | v1_funct_2(X16,X14,X15)
        | X15 = k1_xboole_0
        | ~ m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))) )
      & ( ~ v1_funct_2(X16,X14,X15)
        | X14 = k1_relset_1(X14,X15,X16)
        | X14 != k1_xboole_0
        | ~ m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))) )
      & ( X14 != k1_relset_1(X14,X15,X16)
        | v1_funct_2(X16,X14,X15)
        | X14 != k1_xboole_0
        | ~ m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))) )
      & ( ~ v1_funct_2(X16,X14,X15)
        | X16 = k1_xboole_0
        | X14 = k1_xboole_0
        | X15 != k1_xboole_0
        | ~ m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))) )
      & ( X16 != k1_xboole_0
        | v1_funct_2(X16,X14,X15)
        | X14 = k1_xboole_0
        | X15 != k1_xboole_0
        | ~ m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).

cnf(c_0_26,plain,
    ( X1 = k1_xboole_0
    | ~ v4_relat_1(X1,k1_xboole_0)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_18,c_0_19])).

cnf(c_0_27,plain,
    ( v1_relat_1(esk1_2(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

fof(c_0_28,plain,(
    ! [X9] :
      ( ~ v1_relat_1(X9)
      | r1_tarski(X9,k2_zfmisc_1(k1_relat_1(X9),k2_relat_1(X9))) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t21_relat_1])])).

cnf(c_0_29,negated_conjecture,
    ( ~ v1_funct_2(esk2_0,k1_relat_1(esk2_0),k2_relat_1(esk2_0))
    | ~ m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(esk2_0),k2_relat_1(esk2_0)))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_20,c_0_21])])).

cnf(c_0_30,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_31,plain,
    ( v4_relat_1(X1,X2)
    | ~ r1_tarski(k1_relat_1(X1),X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_32,plain,
    ( k1_relat_1(esk1_2(X1,X2)) = k1_relset_1(X1,X2,esk1_2(X1,X2)) ),
    inference(spm,[status(thm)],[c_0_23,c_0_24])).

cnf(c_0_33,plain,
    ( X2 = k1_relset_1(X2,X3,X1)
    | X3 = k1_xboole_0
    | ~ v1_funct_2(X1,X2,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_34,plain,
    ( v1_funct_2(esk1_2(X1,X2),X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_35,plain,
    ( esk1_2(X1,X2) = k1_xboole_0
    | ~ v4_relat_1(esk1_2(X1,X2),k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_26,c_0_27])).

cnf(c_0_36,plain,
    ( v4_relat_1(esk1_2(X1,X2),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_37,plain,
    ( r1_tarski(X1,k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1)))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_38,plain,
    ( v1_funct_2(X3,X1,X2)
    | X1 != k1_relset_1(X1,X2,X3)
    | X1 != k1_xboole_0
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_39,negated_conjecture,
    ( ~ v1_funct_2(esk2_0,k1_relat_1(esk2_0),k2_relat_1(esk2_0))
    | ~ r1_tarski(esk2_0,k2_zfmisc_1(k1_relat_1(esk2_0),k2_relat_1(esk2_0))) ),
    inference(spm,[status(thm)],[c_0_29,c_0_30])).

cnf(c_0_40,negated_conjecture,
    ( v1_relat_1(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_41,plain,
    ( v4_relat_1(esk1_2(X1,X2),X3)
    | ~ r1_tarski(k1_relset_1(X1,X2,esk1_2(X1,X2)),X3) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_32]),c_0_27])])).

cnf(c_0_42,plain,
    ( k1_relset_1(X1,X2,esk1_2(X1,X2)) = X1
    | X2 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_24]),c_0_34])])).

cnf(c_0_43,plain,
    ( X2 = k1_relset_1(X2,X3,X1)
    | ~ v1_funct_2(X1,X2,X3)
    | X2 != k1_xboole_0
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_44,plain,
    ( esk1_2(k1_xboole_0,X1) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_35,c_0_36])).

cnf(c_0_45,plain,
    ( r1_tarski(X1,k2_zfmisc_1(k1_xboole_0,k2_relat_1(X1)))
    | ~ v4_relat_1(X1,k1_xboole_0)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_37,c_0_19])).

cnf(c_0_46,plain,
    ( v1_funct_2(X1,k1_xboole_0,X2)
    | k1_relset_1(k1_xboole_0,X2,X1) != k1_xboole_0
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X2))) ),
    inference(er,[status(thm)],[c_0_38])).

cnf(c_0_47,negated_conjecture,
    ( ~ v1_funct_2(esk2_0,k1_relat_1(esk2_0),k2_relat_1(esk2_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39,c_0_37]),c_0_40])])).

cnf(c_0_48,plain,
    ( X1 = k1_xboole_0
    | v4_relat_1(esk1_2(X2,X1),X3)
    | ~ r1_tarski(X2,X3) ),
    inference(spm,[status(thm)],[c_0_41,c_0_42])).

cnf(c_0_49,plain,
    ( r1_tarski(k1_relset_1(X1,X2,esk1_2(X1,X2)),X3)
    | ~ v4_relat_1(esk1_2(X1,X2),X3) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_14,c_0_32]),c_0_27])])).

cnf(c_0_50,plain,
    ( k1_relset_1(k1_xboole_0,X1,X2) = k1_xboole_0
    | ~ v1_funct_2(X2,k1_xboole_0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1))) ),
    inference(er,[status(thm)],[c_0_43])).

cnf(c_0_51,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1))) ),
    inference(spm,[status(thm)],[c_0_24,c_0_44])).

cnf(c_0_52,plain,
    ( v1_funct_2(k1_xboole_0,k1_xboole_0,X1) ),
    inference(spm,[status(thm)],[c_0_34,c_0_44])).

cnf(c_0_53,plain,
    ( k1_relset_1(X1,X2,X3) = k1_relat_1(X3)
    | ~ r1_tarski(X3,k2_zfmisc_1(X1,X2)) ),
    inference(spm,[status(thm)],[c_0_23,c_0_30])).

cnf(c_0_54,negated_conjecture,
    ( r1_tarski(esk2_0,k2_zfmisc_1(k1_xboole_0,k2_relat_1(esk2_0)))
    | ~ v4_relat_1(esk2_0,k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_45,c_0_40])).

cnf(c_0_55,plain,
    ( v1_funct_2(X1,k1_xboole_0,X2)
    | k1_relset_1(k1_xboole_0,X2,X1) != k1_xboole_0
    | ~ r1_tarski(X1,k2_zfmisc_1(k1_xboole_0,X2)) ),
    inference(spm,[status(thm)],[c_0_46,c_0_30])).

cnf(c_0_56,negated_conjecture,
    ( ~ v1_funct_2(esk2_0,k1_xboole_0,k2_relat_1(esk2_0))
    | ~ v4_relat_1(esk2_0,k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47,c_0_19]),c_0_40])])).

cnf(c_0_57,plain,
    ( X1 = k1_xboole_0
    | v4_relat_1(esk1_2(X2,X1),k2_zfmisc_1(k1_relat_1(X2),k2_relat_1(X2)))
    | ~ v1_relat_1(X2) ),
    inference(spm,[status(thm)],[c_0_48,c_0_37])).

cnf(c_0_58,plain,
    ( X1 = k1_xboole_0
    | r1_tarski(X2,X3)
    | ~ v4_relat_1(esk1_2(X2,X1),X3) ),
    inference(spm,[status(thm)],[c_0_49,c_0_42])).

cnf(c_0_59,plain,
    ( k1_relset_1(k1_xboole_0,X1,k1_xboole_0) = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50,c_0_51]),c_0_52])])).

cnf(c_0_60,negated_conjecture,
    ( k1_relat_1(esk2_0) = k1_relset_1(k1_xboole_0,k2_relat_1(esk2_0),esk2_0)
    | ~ v4_relat_1(esk2_0,k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_53,c_0_54])).

cnf(c_0_61,negated_conjecture,
    ( k1_relset_1(k1_xboole_0,k2_relat_1(esk2_0),esk2_0) != k1_xboole_0
    | ~ v4_relat_1(esk2_0,k1_xboole_0) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_55,c_0_54]),c_0_56])).

cnf(c_0_62,negated_conjecture,
    ( X1 = k1_xboole_0
    | v4_relat_1(esk1_2(esk2_0,X1),k2_zfmisc_1(k1_relat_1(esk2_0),k2_relat_1(esk2_0))) ),
    inference(spm,[status(thm)],[c_0_57,c_0_40])).

cnf(c_0_63,plain,
    ( X1 = k1_xboole_0
    | r1_tarski(X2,X2) ),
    inference(spm,[status(thm)],[c_0_58,c_0_36])).

cnf(c_0_64,plain,
    ( k1_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_23,c_0_51]),c_0_59])).

cnf(c_0_65,negated_conjecture,
    ( ~ v4_relat_1(esk2_0,k1_xboole_0) ),
    inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19,c_0_60]),c_0_40])]),c_0_61])).

cnf(c_0_66,negated_conjecture,
    ( X1 = k1_xboole_0
    | r1_tarski(esk2_0,k2_zfmisc_1(k1_relat_1(esk2_0),k2_relat_1(esk2_0))) ),
    inference(spm,[status(thm)],[c_0_58,c_0_62])).

cnf(c_0_67,negated_conjecture,
    ( r1_tarski(X1,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29,c_0_63]),c_0_64]),c_0_52]),c_0_64]),c_0_51])])).

cnf(c_0_68,negated_conjecture,
    ( r1_tarski(esk2_0,k2_zfmisc_1(k1_relat_1(esk2_0),k2_relat_1(esk2_0)))
    | ~ v4_relat_1(esk2_0,X1) ),
    inference(spm,[status(thm)],[c_0_65,c_0_66])).

cnf(c_0_69,negated_conjecture,
    ( v4_relat_1(X1,k1_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_31,c_0_67])).

cnf(c_0_70,plain,
    ( v1_funct_2(X3,X1,X2)
    | X2 = k1_xboole_0
    | X1 != k1_relset_1(X1,X2,X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_71,negated_conjecture,
    ( r1_tarski(esk2_0,k2_zfmisc_1(k1_relat_1(esk2_0),k2_relat_1(esk2_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_68,c_0_69]),c_0_40])])).

cnf(c_0_72,plain,
    ( X1 = k1_xboole_0
    | k2_relat_1(X1) != k1_xboole_0
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_73,plain,
    ( X1 = k1_xboole_0
    | v1_funct_2(X2,X3,X1)
    | k1_relset_1(X3,X1,X2) != X3
    | ~ r1_tarski(X2,k2_zfmisc_1(X3,X1)) ),
    inference(spm,[status(thm)],[c_0_70,c_0_30])).

cnf(c_0_74,negated_conjecture,
    ( k1_relset_1(k1_relat_1(esk2_0),k2_relat_1(esk2_0),esk2_0) = k1_relat_1(esk2_0) ),
    inference(spm,[status(thm)],[c_0_53,c_0_71])).

cnf(c_0_75,negated_conjecture,
    ( esk2_0 = k1_xboole_0
    | k2_relat_1(esk2_0) != k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_72,c_0_40])).

cnf(c_0_76,negated_conjecture,
    ( k2_relat_1(esk2_0) = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_73,c_0_71]),c_0_47]),c_0_74])])).

cnf(c_0_77,negated_conjecture,
    ( esk2_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_75,c_0_76])])).

cnf(c_0_78,plain,
    ( v4_relat_1(k1_xboole_0,k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_36,c_0_44])).

cnf(c_0_79,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_65,c_0_77]),c_0_78])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n017.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 19:14:46 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.20/0.39  # AutoSched0-Mode selected heuristic G_E___208_B01_00_F1_SE_CS_SP_PS_S04AN
% 0.20/0.39  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.20/0.39  #
% 0.20/0.39  # Preprocessing time       : 0.027 s
% 0.20/0.39  # Presaturation interreduction done
% 0.20/0.39  
% 0.20/0.39  # Proof found!
% 0.20/0.39  # SZS status Theorem
% 0.20/0.39  # SZS output start CNFRefutation
% 0.20/0.39  fof(t3_xboole_1, axiom, ![X1]:(r1_tarski(X1,k1_xboole_0)=>X1=k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_xboole_1)).
% 0.20/0.39  fof(d18_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(v4_relat_1(X2,X1)<=>r1_tarski(k1_relat_1(X2),X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d18_relat_1)).
% 0.20/0.39  fof(t3_funct_2, conjecture, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>((v1_funct_1(X1)&v1_funct_2(X1,k1_relat_1(X1),k2_relat_1(X1)))&m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_funct_2)).
% 0.20/0.39  fof(t64_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>((k1_relat_1(X1)=k1_xboole_0|k2_relat_1(X1)=k1_xboole_0)=>X1=k1_xboole_0)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t64_relat_1)).
% 0.20/0.39  fof(redefinition_k1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k1_relset_1(X1,X2,X3)=k1_relat_1(X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k1_relset_1)).
% 0.20/0.39  fof(rc1_funct_2, axiom, ![X1, X2]:?[X3]:(((((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))&v1_relat_1(X3))&v4_relat_1(X3,X1))&v5_relat_1(X3,X2))&v1_funct_1(X3))&v1_funct_2(X3,X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', rc1_funct_2)).
% 0.20/0.39  fof(t3_subset, axiom, ![X1, X2]:(m1_subset_1(X1,k1_zfmisc_1(X2))<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_subset)).
% 0.20/0.39  fof(d1_funct_2, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(((X2=k1_xboole_0=>X1=k1_xboole_0)=>(v1_funct_2(X3,X1,X2)<=>X1=k1_relset_1(X1,X2,X3)))&(X2=k1_xboole_0=>(X1=k1_xboole_0|(v1_funct_2(X3,X1,X2)<=>X3=k1_xboole_0))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_funct_2)).
% 0.20/0.39  fof(t21_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>r1_tarski(X1,k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t21_relat_1)).
% 0.20/0.39  fof(c_0_9, plain, ![X4]:(~r1_tarski(X4,k1_xboole_0)|X4=k1_xboole_0), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_xboole_1])])).
% 0.20/0.39  fof(c_0_10, plain, ![X7, X8]:((~v4_relat_1(X8,X7)|r1_tarski(k1_relat_1(X8),X7)|~v1_relat_1(X8))&(~r1_tarski(k1_relat_1(X8),X7)|v4_relat_1(X8,X7)|~v1_relat_1(X8))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d18_relat_1])])])).
% 0.20/0.39  fof(c_0_11, negated_conjecture, ~(![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>((v1_funct_1(X1)&v1_funct_2(X1,k1_relat_1(X1),k2_relat_1(X1)))&m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1))))))), inference(assume_negation,[status(cth)],[t3_funct_2])).
% 0.20/0.39  fof(c_0_12, plain, ![X10]:((k1_relat_1(X10)!=k1_xboole_0|X10=k1_xboole_0|~v1_relat_1(X10))&(k2_relat_1(X10)!=k1_xboole_0|X10=k1_xboole_0|~v1_relat_1(X10))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t64_relat_1])])])).
% 0.20/0.39  cnf(c_0_13, plain, (X1=k1_xboole_0|~r1_tarski(X1,k1_xboole_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.20/0.39  cnf(c_0_14, plain, (r1_tarski(k1_relat_1(X1),X2)|~v4_relat_1(X1,X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.20/0.39  fof(c_0_15, negated_conjecture, ((v1_relat_1(esk2_0)&v1_funct_1(esk2_0))&(~v1_funct_1(esk2_0)|~v1_funct_2(esk2_0,k1_relat_1(esk2_0),k2_relat_1(esk2_0))|~m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(esk2_0),k2_relat_1(esk2_0)))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_11])])])).
% 0.20/0.39  fof(c_0_16, plain, ![X11, X12, X13]:(~m1_subset_1(X13,k1_zfmisc_1(k2_zfmisc_1(X11,X12)))|k1_relset_1(X11,X12,X13)=k1_relat_1(X13)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).
% 0.20/0.39  fof(c_0_17, plain, ![X17, X18]:(((((m1_subset_1(esk1_2(X17,X18),k1_zfmisc_1(k2_zfmisc_1(X17,X18)))&v1_relat_1(esk1_2(X17,X18)))&v4_relat_1(esk1_2(X17,X18),X17))&v5_relat_1(esk1_2(X17,X18),X18))&v1_funct_1(esk1_2(X17,X18)))&v1_funct_2(esk1_2(X17,X18),X17,X18)), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[rc1_funct_2])])).
% 0.20/0.39  cnf(c_0_18, plain, (X1=k1_xboole_0|k1_relat_1(X1)!=k1_xboole_0|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.20/0.39  cnf(c_0_19, plain, (k1_relat_1(X1)=k1_xboole_0|~v4_relat_1(X1,k1_xboole_0)|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_13, c_0_14])).
% 0.20/0.39  cnf(c_0_20, negated_conjecture, (~v1_funct_1(esk2_0)|~v1_funct_2(esk2_0,k1_relat_1(esk2_0),k2_relat_1(esk2_0))|~m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(esk2_0),k2_relat_1(esk2_0))))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.39  cnf(c_0_21, negated_conjecture, (v1_funct_1(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.39  fof(c_0_22, plain, ![X5, X6]:((~m1_subset_1(X5,k1_zfmisc_1(X6))|r1_tarski(X5,X6))&(~r1_tarski(X5,X6)|m1_subset_1(X5,k1_zfmisc_1(X6)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).
% 0.20/0.39  cnf(c_0_23, plain, (k1_relset_1(X2,X3,X1)=k1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.20/0.39  cnf(c_0_24, plain, (m1_subset_1(esk1_2(X1,X2),k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.20/0.39  fof(c_0_25, plain, ![X14, X15, X16]:((((~v1_funct_2(X16,X14,X15)|X14=k1_relset_1(X14,X15,X16)|X15=k1_xboole_0|~m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))))&(X14!=k1_relset_1(X14,X15,X16)|v1_funct_2(X16,X14,X15)|X15=k1_xboole_0|~m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15)))))&((~v1_funct_2(X16,X14,X15)|X14=k1_relset_1(X14,X15,X16)|X14!=k1_xboole_0|~m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))))&(X14!=k1_relset_1(X14,X15,X16)|v1_funct_2(X16,X14,X15)|X14!=k1_xboole_0|~m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))))))&((~v1_funct_2(X16,X14,X15)|X16=k1_xboole_0|X14=k1_xboole_0|X15!=k1_xboole_0|~m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))))&(X16!=k1_xboole_0|v1_funct_2(X16,X14,X15)|X14=k1_xboole_0|X15!=k1_xboole_0|~m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).
% 0.20/0.39  cnf(c_0_26, plain, (X1=k1_xboole_0|~v4_relat_1(X1,k1_xboole_0)|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_18, c_0_19])).
% 0.20/0.39  cnf(c_0_27, plain, (v1_relat_1(esk1_2(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.20/0.39  fof(c_0_28, plain, ![X9]:(~v1_relat_1(X9)|r1_tarski(X9,k2_zfmisc_1(k1_relat_1(X9),k2_relat_1(X9)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t21_relat_1])])).
% 0.20/0.39  cnf(c_0_29, negated_conjecture, (~v1_funct_2(esk2_0,k1_relat_1(esk2_0),k2_relat_1(esk2_0))|~m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(esk2_0),k2_relat_1(esk2_0))))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_20, c_0_21])])).
% 0.20/0.39  cnf(c_0_30, plain, (m1_subset_1(X1,k1_zfmisc_1(X2))|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.20/0.39  cnf(c_0_31, plain, (v4_relat_1(X1,X2)|~r1_tarski(k1_relat_1(X1),X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.20/0.39  cnf(c_0_32, plain, (k1_relat_1(esk1_2(X1,X2))=k1_relset_1(X1,X2,esk1_2(X1,X2))), inference(spm,[status(thm)],[c_0_23, c_0_24])).
% 0.20/0.39  cnf(c_0_33, plain, (X2=k1_relset_1(X2,X3,X1)|X3=k1_xboole_0|~v1_funct_2(X1,X2,X3)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.20/0.39  cnf(c_0_34, plain, (v1_funct_2(esk1_2(X1,X2),X1,X2)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.20/0.39  cnf(c_0_35, plain, (esk1_2(X1,X2)=k1_xboole_0|~v4_relat_1(esk1_2(X1,X2),k1_xboole_0)), inference(spm,[status(thm)],[c_0_26, c_0_27])).
% 0.20/0.39  cnf(c_0_36, plain, (v4_relat_1(esk1_2(X1,X2),X1)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.20/0.39  cnf(c_0_37, plain, (r1_tarski(X1,k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1)))|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.20/0.39  cnf(c_0_38, plain, (v1_funct_2(X3,X1,X2)|X1!=k1_relset_1(X1,X2,X3)|X1!=k1_xboole_0|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.20/0.39  cnf(c_0_39, negated_conjecture, (~v1_funct_2(esk2_0,k1_relat_1(esk2_0),k2_relat_1(esk2_0))|~r1_tarski(esk2_0,k2_zfmisc_1(k1_relat_1(esk2_0),k2_relat_1(esk2_0)))), inference(spm,[status(thm)],[c_0_29, c_0_30])).
% 0.20/0.39  cnf(c_0_40, negated_conjecture, (v1_relat_1(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.39  cnf(c_0_41, plain, (v4_relat_1(esk1_2(X1,X2),X3)|~r1_tarski(k1_relset_1(X1,X2,esk1_2(X1,X2)),X3)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_32]), c_0_27])])).
% 0.20/0.39  cnf(c_0_42, plain, (k1_relset_1(X1,X2,esk1_2(X1,X2))=X1|X2=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33, c_0_24]), c_0_34])])).
% 0.20/0.39  cnf(c_0_43, plain, (X2=k1_relset_1(X2,X3,X1)|~v1_funct_2(X1,X2,X3)|X2!=k1_xboole_0|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.20/0.39  cnf(c_0_44, plain, (esk1_2(k1_xboole_0,X1)=k1_xboole_0), inference(spm,[status(thm)],[c_0_35, c_0_36])).
% 0.20/0.39  cnf(c_0_45, plain, (r1_tarski(X1,k2_zfmisc_1(k1_xboole_0,k2_relat_1(X1)))|~v4_relat_1(X1,k1_xboole_0)|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_37, c_0_19])).
% 0.20/0.39  cnf(c_0_46, plain, (v1_funct_2(X1,k1_xboole_0,X2)|k1_relset_1(k1_xboole_0,X2,X1)!=k1_xboole_0|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X2)))), inference(er,[status(thm)],[c_0_38])).
% 0.20/0.39  cnf(c_0_47, negated_conjecture, (~v1_funct_2(esk2_0,k1_relat_1(esk2_0),k2_relat_1(esk2_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39, c_0_37]), c_0_40])])).
% 0.20/0.39  cnf(c_0_48, plain, (X1=k1_xboole_0|v4_relat_1(esk1_2(X2,X1),X3)|~r1_tarski(X2,X3)), inference(spm,[status(thm)],[c_0_41, c_0_42])).
% 0.20/0.39  cnf(c_0_49, plain, (r1_tarski(k1_relset_1(X1,X2,esk1_2(X1,X2)),X3)|~v4_relat_1(esk1_2(X1,X2),X3)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_14, c_0_32]), c_0_27])])).
% 0.20/0.39  cnf(c_0_50, plain, (k1_relset_1(k1_xboole_0,X1,X2)=k1_xboole_0|~v1_funct_2(X2,k1_xboole_0,X1)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))), inference(er,[status(thm)],[c_0_43])).
% 0.20/0.39  cnf(c_0_51, plain, (m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))), inference(spm,[status(thm)],[c_0_24, c_0_44])).
% 0.20/0.39  cnf(c_0_52, plain, (v1_funct_2(k1_xboole_0,k1_xboole_0,X1)), inference(spm,[status(thm)],[c_0_34, c_0_44])).
% 0.20/0.39  cnf(c_0_53, plain, (k1_relset_1(X1,X2,X3)=k1_relat_1(X3)|~r1_tarski(X3,k2_zfmisc_1(X1,X2))), inference(spm,[status(thm)],[c_0_23, c_0_30])).
% 0.20/0.39  cnf(c_0_54, negated_conjecture, (r1_tarski(esk2_0,k2_zfmisc_1(k1_xboole_0,k2_relat_1(esk2_0)))|~v4_relat_1(esk2_0,k1_xboole_0)), inference(spm,[status(thm)],[c_0_45, c_0_40])).
% 0.20/0.39  cnf(c_0_55, plain, (v1_funct_2(X1,k1_xboole_0,X2)|k1_relset_1(k1_xboole_0,X2,X1)!=k1_xboole_0|~r1_tarski(X1,k2_zfmisc_1(k1_xboole_0,X2))), inference(spm,[status(thm)],[c_0_46, c_0_30])).
% 0.20/0.39  cnf(c_0_56, negated_conjecture, (~v1_funct_2(esk2_0,k1_xboole_0,k2_relat_1(esk2_0))|~v4_relat_1(esk2_0,k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47, c_0_19]), c_0_40])])).
% 0.20/0.39  cnf(c_0_57, plain, (X1=k1_xboole_0|v4_relat_1(esk1_2(X2,X1),k2_zfmisc_1(k1_relat_1(X2),k2_relat_1(X2)))|~v1_relat_1(X2)), inference(spm,[status(thm)],[c_0_48, c_0_37])).
% 0.20/0.39  cnf(c_0_58, plain, (X1=k1_xboole_0|r1_tarski(X2,X3)|~v4_relat_1(esk1_2(X2,X1),X3)), inference(spm,[status(thm)],[c_0_49, c_0_42])).
% 0.20/0.39  cnf(c_0_59, plain, (k1_relset_1(k1_xboole_0,X1,k1_xboole_0)=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50, c_0_51]), c_0_52])])).
% 0.20/0.39  cnf(c_0_60, negated_conjecture, (k1_relat_1(esk2_0)=k1_relset_1(k1_xboole_0,k2_relat_1(esk2_0),esk2_0)|~v4_relat_1(esk2_0,k1_xboole_0)), inference(spm,[status(thm)],[c_0_53, c_0_54])).
% 0.20/0.39  cnf(c_0_61, negated_conjecture, (k1_relset_1(k1_xboole_0,k2_relat_1(esk2_0),esk2_0)!=k1_xboole_0|~v4_relat_1(esk2_0,k1_xboole_0)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_55, c_0_54]), c_0_56])).
% 0.20/0.39  cnf(c_0_62, negated_conjecture, (X1=k1_xboole_0|v4_relat_1(esk1_2(esk2_0,X1),k2_zfmisc_1(k1_relat_1(esk2_0),k2_relat_1(esk2_0)))), inference(spm,[status(thm)],[c_0_57, c_0_40])).
% 0.20/0.39  cnf(c_0_63, plain, (X1=k1_xboole_0|r1_tarski(X2,X2)), inference(spm,[status(thm)],[c_0_58, c_0_36])).
% 0.20/0.39  cnf(c_0_64, plain, (k1_relat_1(k1_xboole_0)=k1_xboole_0), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_23, c_0_51]), c_0_59])).
% 0.20/0.39  cnf(c_0_65, negated_conjecture, (~v4_relat_1(esk2_0,k1_xboole_0)), inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19, c_0_60]), c_0_40])]), c_0_61])).
% 0.20/0.39  cnf(c_0_66, negated_conjecture, (X1=k1_xboole_0|r1_tarski(esk2_0,k2_zfmisc_1(k1_relat_1(esk2_0),k2_relat_1(esk2_0)))), inference(spm,[status(thm)],[c_0_58, c_0_62])).
% 0.20/0.39  cnf(c_0_67, negated_conjecture, (r1_tarski(X1,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29, c_0_63]), c_0_64]), c_0_52]), c_0_64]), c_0_51])])).
% 0.20/0.39  cnf(c_0_68, negated_conjecture, (r1_tarski(esk2_0,k2_zfmisc_1(k1_relat_1(esk2_0),k2_relat_1(esk2_0)))|~v4_relat_1(esk2_0,X1)), inference(spm,[status(thm)],[c_0_65, c_0_66])).
% 0.20/0.39  cnf(c_0_69, negated_conjecture, (v4_relat_1(X1,k1_relat_1(X1))|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_31, c_0_67])).
% 0.20/0.39  cnf(c_0_70, plain, (v1_funct_2(X3,X1,X2)|X2=k1_xboole_0|X1!=k1_relset_1(X1,X2,X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.20/0.39  cnf(c_0_71, negated_conjecture, (r1_tarski(esk2_0,k2_zfmisc_1(k1_relat_1(esk2_0),k2_relat_1(esk2_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_68, c_0_69]), c_0_40])])).
% 0.20/0.39  cnf(c_0_72, plain, (X1=k1_xboole_0|k2_relat_1(X1)!=k1_xboole_0|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.20/0.39  cnf(c_0_73, plain, (X1=k1_xboole_0|v1_funct_2(X2,X3,X1)|k1_relset_1(X3,X1,X2)!=X3|~r1_tarski(X2,k2_zfmisc_1(X3,X1))), inference(spm,[status(thm)],[c_0_70, c_0_30])).
% 0.20/0.39  cnf(c_0_74, negated_conjecture, (k1_relset_1(k1_relat_1(esk2_0),k2_relat_1(esk2_0),esk2_0)=k1_relat_1(esk2_0)), inference(spm,[status(thm)],[c_0_53, c_0_71])).
% 0.20/0.39  cnf(c_0_75, negated_conjecture, (esk2_0=k1_xboole_0|k2_relat_1(esk2_0)!=k1_xboole_0), inference(spm,[status(thm)],[c_0_72, c_0_40])).
% 0.20/0.39  cnf(c_0_76, negated_conjecture, (k2_relat_1(esk2_0)=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_73, c_0_71]), c_0_47]), c_0_74])])).
% 0.20/0.39  cnf(c_0_77, negated_conjecture, (esk2_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_75, c_0_76])])).
% 0.20/0.39  cnf(c_0_78, plain, (v4_relat_1(k1_xboole_0,k1_xboole_0)), inference(spm,[status(thm)],[c_0_36, c_0_44])).
% 0.20/0.39  cnf(c_0_79, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_65, c_0_77]), c_0_78])]), ['proof']).
% 0.20/0.39  # SZS output end CNFRefutation
% 0.20/0.39  # Proof object total steps             : 80
% 0.20/0.39  # Proof object clause steps            : 61
% 0.20/0.39  # Proof object formula steps           : 19
% 0.20/0.39  # Proof object conjectures             : 25
% 0.20/0.39  # Proof object clause conjectures      : 22
% 0.20/0.39  # Proof object formula conjectures     : 3
% 0.20/0.39  # Proof object initial clauses used    : 19
% 0.20/0.39  # Proof object initial formulas used   : 9
% 0.20/0.39  # Proof object generating inferences   : 37
% 0.20/0.39  # Proof object simplifying inferences  : 36
% 0.20/0.39  # Training examples: 0 positive, 0 negative
% 0.20/0.39  # Parsed axioms                        : 9
% 0.20/0.39  # Removed by relevancy pruning/SinE    : 0
% 0.20/0.39  # Initial clauses                      : 24
% 0.20/0.39  # Removed in clause preprocessing      : 0
% 0.20/0.39  # Initial clauses in saturation        : 24
% 0.20/0.39  # Processed clauses                    : 192
% 0.20/0.39  # ...of these trivial                  : 8
% 0.20/0.39  # ...subsumed                          : 42
% 0.20/0.39  # ...remaining for further processing  : 142
% 0.20/0.39  # Other redundant clauses eliminated   : 7
% 0.20/0.39  # Clauses deleted for lack of memory   : 0
% 0.20/0.39  # Backward-subsumed                    : 7
% 0.20/0.39  # Backward-rewritten                   : 26
% 0.20/0.39  # Generated clauses                    : 711
% 0.20/0.39  # ...of the previous two non-trivial   : 627
% 0.20/0.39  # Contextual simplify-reflections      : 2
% 0.20/0.39  # Paramodulations                      : 705
% 0.20/0.39  # Factorizations                       : 0
% 0.20/0.39  # Equation resolutions                 : 7
% 0.20/0.39  # Propositional unsat checks           : 0
% 0.20/0.39  #    Propositional check models        : 0
% 0.20/0.39  #    Propositional check unsatisfiable : 0
% 0.20/0.39  #    Propositional clauses             : 0
% 0.20/0.39  #    Propositional clauses after purity: 0
% 0.20/0.39  #    Propositional unsat core size     : 0
% 0.20/0.39  #    Propositional preprocessing time  : 0.000
% 0.20/0.39  #    Propositional encoding time       : 0.000
% 0.20/0.39  #    Propositional solver time         : 0.000
% 0.20/0.39  #    Success case prop preproc time    : 0.000
% 0.20/0.39  #    Success case prop encoding time   : 0.000
% 0.20/0.39  #    Success case prop solver time     : 0.000
% 0.20/0.39  # Current number of processed clauses  : 81
% 0.20/0.39  #    Positive orientable unit clauses  : 22
% 0.20/0.39  #    Positive unorientable unit clauses: 0
% 0.20/0.39  #    Negative unit clauses             : 0
% 0.20/0.39  #    Non-unit-clauses                  : 59
% 0.20/0.39  # Current number of unprocessed clauses: 319
% 0.20/0.39  # ...number of literals in the above   : 999
% 0.20/0.39  # Current number of archived formulas  : 0
% 0.20/0.39  # Current number of archived clauses   : 57
% 0.20/0.39  # Clause-clause subsumption calls (NU) : 467
% 0.20/0.39  # Rec. Clause-clause subsumption calls : 313
% 0.20/0.39  # Non-unit clause-clause subsumptions  : 29
% 0.20/0.39  # Unit Clause-clause subsumption calls : 171
% 0.20/0.39  # Rewrite failures with RHS unbound    : 0
% 0.20/0.39  # BW rewrite match attempts            : 44
% 0.20/0.39  # BW rewrite match successes           : 12
% 0.20/0.39  # Condensation attempts                : 0
% 0.20/0.39  # Condensation successes               : 0
% 0.20/0.39  # Termbank termtop insertions          : 8841
% 0.20/0.39  
% 0.20/0.39  # -------------------------------------------------
% 0.20/0.39  # User time                : 0.042 s
% 0.20/0.39  # System time              : 0.003 s
% 0.20/0.39  # Total time               : 0.045 s
% 0.20/0.39  # Maximum resident set size: 1576 pages
%------------------------------------------------------------------------------
