%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n020.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:01:02 EST 2020

% Result     : Theorem 0.40s
% Output     : CNFRefutation 0.40s
% Verified   : 
% Statistics : Number of formulae       :   97 (3517 expanded)
%              Number of clauses        :   75 (1539 expanded)
%              Number of leaves         :   11 ( 824 expanded)
%              Depth                    :   20
%              Number of atoms          :  292 (14280 expanded)
%              Number of equality atoms :   65 (2461 expanded)
%              Maximal formula depth    :   14 (   4 average)
%              Maximal clause size      :   26 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t4_funct_2,conjecture,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v1_funct_1(X2) )
     => ( r1_tarski(k2_relat_1(X2),X1)
       => ( v1_funct_1(X2)
          & v1_funct_2(X2,k1_relat_1(X2),X1)
          & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X2),X1))) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t4_funct_2)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).

fof(t11_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( v1_relat_1(X3)
     => ( ( r1_tarski(k1_relat_1(X3),X1)
          & r1_tarski(k2_relat_1(X3),X2) )
       => m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t11_relset_1)).

fof(d18_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( v4_relat_1(X2,X1)
      <=> r1_tarski(k1_relat_1(X2),X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d18_relat_1)).

fof(cc2_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ( v4_relat_1(X3,X1)
        & v5_relat_1(X3,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc2_relset_1)).

fof(cc1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => v1_relat_1(X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc1_relset_1)).

fof(t113_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( k2_zfmisc_1(X1,X2) = k1_xboole_0
    <=> ( X1 = k1_xboole_0
        | X2 = k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t113_zfmisc_1)).

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

fof(redefinition_k1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k1_relset_1(X1,X2,X3) = k1_relat_1(X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k1_relset_1)).

fof(t60_relat_1,axiom,
    ( k1_relat_1(k1_xboole_0) = k1_xboole_0
    & k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t60_relat_1)).

fof(c_0_11,negated_conjecture,(
    ~ ! [X1,X2] :
        ( ( v1_relat_1(X2)
          & v1_funct_1(X2) )
       => ( r1_tarski(k2_relat_1(X2),X1)
         => ( v1_funct_1(X2)
            & v1_funct_2(X2,k1_relat_1(X2),X1)
            & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X2),X1))) ) ) ) ),
    inference(assume_negation,[status(cth)],[t4_funct_2])).

fof(c_0_12,plain,(
    ! [X4,X5] :
      ( ( r1_tarski(X4,X5)
        | X4 != X5 )
      & ( r1_tarski(X5,X4)
        | X4 != X5 )
      & ( ~ r1_tarski(X4,X5)
        | ~ r1_tarski(X5,X4)
        | X4 = X5 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

fof(c_0_13,negated_conjecture,
    ( v1_relat_1(esk2_0)
    & v1_funct_1(esk2_0)
    & r1_tarski(k2_relat_1(esk2_0),esk1_0)
    & ( ~ v1_funct_1(esk2_0)
      | ~ v1_funct_2(esk2_0,k1_relat_1(esk2_0),esk1_0)
      | ~ m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(esk2_0),esk1_0))) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_11])])])).

fof(c_0_14,plain,(
    ! [X21,X22,X23] :
      ( ~ v1_relat_1(X23)
      | ~ r1_tarski(k1_relat_1(X23),X21)
      | ~ r1_tarski(k2_relat_1(X23),X22)
      | m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22))) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t11_relset_1])])).

cnf(c_0_15,plain,
    ( r1_tarski(X1,X2)
    | X2 != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_16,negated_conjecture,
    ( ~ v1_funct_1(esk2_0)
    | ~ v1_funct_2(esk2_0,k1_relat_1(esk2_0),esk1_0)
    | ~ m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(esk2_0),esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_17,negated_conjecture,
    ( v1_funct_1(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

fof(c_0_18,plain,(
    ! [X10,X11] :
      ( ( ~ v4_relat_1(X11,X10)
        | r1_tarski(k1_relat_1(X11),X10)
        | ~ v1_relat_1(X11) )
      & ( ~ r1_tarski(k1_relat_1(X11),X10)
        | v4_relat_1(X11,X10)
        | ~ v1_relat_1(X11) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d18_relat_1])])])).

fof(c_0_19,plain,(
    ! [X15,X16,X17] :
      ( ( v4_relat_1(X17,X15)
        | ~ m1_subset_1(X17,k1_zfmisc_1(k2_zfmisc_1(X15,X16))) )
      & ( v5_relat_1(X17,X16)
        | ~ m1_subset_1(X17,k1_zfmisc_1(k2_zfmisc_1(X15,X16))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).

fof(c_0_20,plain,(
    ! [X12,X13,X14] :
      ( ~ m1_subset_1(X14,k1_zfmisc_1(k2_zfmisc_1(X12,X13)))
      | v1_relat_1(X14) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).

cnf(c_0_21,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(k1_relat_1(X1),X2)
    | ~ r1_tarski(k2_relat_1(X1),X3) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_22,plain,
    ( r1_tarski(X1,X1) ),
    inference(er,[status(thm)],[c_0_15])).

fof(c_0_23,plain,(
    ! [X6,X7] :
      ( ( k2_zfmisc_1(X6,X7) != k1_xboole_0
        | X6 = k1_xboole_0
        | X7 = k1_xboole_0 )
      & ( X6 != k1_xboole_0
        | k2_zfmisc_1(X6,X7) = k1_xboole_0 )
      & ( X7 != k1_xboole_0
        | k2_zfmisc_1(X6,X7) = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t113_zfmisc_1])])])).

cnf(c_0_24,negated_conjecture,
    ( ~ v1_funct_2(esk2_0,k1_relat_1(esk2_0),esk1_0)
    | ~ m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(esk2_0),esk1_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_16,c_0_17])])).

cnf(c_0_25,plain,
    ( X1 = X2
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_26,plain,
    ( r1_tarski(k1_relat_1(X1),X2)
    | ~ v4_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_27,plain,
    ( v4_relat_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_28,plain,
    ( v1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

fof(c_0_29,plain,(
    ! [X8,X9] :
      ( ( ~ m1_subset_1(X8,k1_zfmisc_1(X9))
        | r1_tarski(X8,X9) )
      & ( ~ r1_tarski(X8,X9)
        | m1_subset_1(X8,k1_zfmisc_1(X9)) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).

cnf(c_0_30,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X2)))
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(k2_relat_1(X1),X2) ),
    inference(spm,[status(thm)],[c_0_21,c_0_22])).

cnf(c_0_31,negated_conjecture,
    ( r1_tarski(k2_relat_1(esk2_0),esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_32,negated_conjecture,
    ( v1_relat_1(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_33,plain,
    ( k2_zfmisc_1(X2,X1) = k1_xboole_0
    | X1 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_34,negated_conjecture,
    ( ~ v1_funct_2(X1,k1_relat_1(X1),esk1_0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),esk1_0)))
    | ~ r1_tarski(esk2_0,X1)
    | ~ r1_tarski(X1,esk2_0) ),
    inference(spm,[status(thm)],[c_0_24,c_0_25])).

cnf(c_0_35,plain,
    ( r1_tarski(k1_relat_1(X1),X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_26,c_0_27]),c_0_28])).

cnf(c_0_36,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

fof(c_0_37,plain,(
    ! [X24,X25,X26] :
      ( ( ~ v1_funct_2(X26,X24,X25)
        | X24 = k1_relset_1(X24,X25,X26)
        | X25 = k1_xboole_0
        | ~ m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X24,X25))) )
      & ( X24 != k1_relset_1(X24,X25,X26)
        | v1_funct_2(X26,X24,X25)
        | X25 = k1_xboole_0
        | ~ m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X24,X25))) )
      & ( ~ v1_funct_2(X26,X24,X25)
        | X24 = k1_relset_1(X24,X25,X26)
        | X24 != k1_xboole_0
        | ~ m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X24,X25))) )
      & ( X24 != k1_relset_1(X24,X25,X26)
        | v1_funct_2(X26,X24,X25)
        | X24 != k1_xboole_0
        | ~ m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X24,X25))) )
      & ( ~ v1_funct_2(X26,X24,X25)
        | X26 = k1_xboole_0
        | X24 = k1_xboole_0
        | X25 != k1_xboole_0
        | ~ m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X24,X25))) )
      & ( X26 != k1_xboole_0
        | v1_funct_2(X26,X24,X25)
        | X24 = k1_xboole_0
        | X25 != k1_xboole_0
        | ~ m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X24,X25))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).

cnf(c_0_38,negated_conjecture,
    ( m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(esk2_0),esk1_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_30,c_0_31]),c_0_32])])).

cnf(c_0_39,plain,
    ( k2_zfmisc_1(X1,k1_xboole_0) = k1_xboole_0 ),
    inference(er,[status(thm)],[c_0_33])).

cnf(c_0_40,negated_conjecture,
    ( ~ v1_funct_2(X1,X2,esk1_0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,esk1_0)))
    | ~ r1_tarski(X2,k1_relat_1(X1))
    | ~ r1_tarski(esk2_0,X1)
    | ~ r1_tarski(X1,esk2_0) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_34,c_0_25]),c_0_35])).

cnf(c_0_41,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_36,c_0_22])).

cnf(c_0_42,plain,
    ( v1_funct_2(X3,X1,X2)
    | X2 = k1_xboole_0
    | X1 != k1_relset_1(X1,X2,X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_43,negated_conjecture,
    ( ~ v1_funct_2(esk2_0,k1_relat_1(esk2_0),esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_24,c_0_38])])).

fof(c_0_44,plain,(
    ! [X18,X19,X20] :
      ( ~ m1_subset_1(X20,k1_zfmisc_1(k2_zfmisc_1(X18,X19)))
      | k1_relset_1(X18,X19,X20) = k1_relat_1(X20) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).

cnf(c_0_45,plain,
    ( k2_zfmisc_1(X1,X2) = X2
    | ~ r1_tarski(X2,k1_xboole_0)
    | ~ r1_tarski(k1_xboole_0,X2) ),
    inference(spm,[status(thm)],[c_0_39,c_0_25])).

cnf(c_0_46,plain,
    ( k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[t60_relat_1])).

cnf(c_0_47,negated_conjecture,
    ( ~ v1_funct_2(k2_zfmisc_1(X1,esk1_0),X1,esk1_0)
    | ~ r1_tarski(X1,k1_relat_1(k2_zfmisc_1(X1,esk1_0)))
    | ~ r1_tarski(esk2_0,k2_zfmisc_1(X1,esk1_0))
    | ~ r1_tarski(k2_zfmisc_1(X1,esk1_0),esk2_0) ),
    inference(spm,[status(thm)],[c_0_40,c_0_41])).

cnf(c_0_48,negated_conjecture,
    ( esk1_0 = k1_xboole_0
    | k1_relset_1(k1_relat_1(esk2_0),esk1_0,esk2_0) != k1_relat_1(esk2_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_42,c_0_38]),c_0_43])).

cnf(c_0_49,plain,
    ( k1_relset_1(X2,X3,X1) = k1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_44])).

cnf(c_0_50,negated_conjecture,
    ( m1_subset_1(esk2_0,k1_zfmisc_1(esk1_0))
    | ~ r1_tarski(esk1_0,k1_xboole_0)
    | ~ r1_tarski(k1_xboole_0,esk1_0) ),
    inference(spm,[status(thm)],[c_0_38,c_0_45])).

cnf(c_0_51,plain,
    ( r1_tarski(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_52,negated_conjecture,
    ( m1_subset_1(k2_relat_1(esk2_0),k1_zfmisc_1(esk1_0)) ),
    inference(spm,[status(thm)],[c_0_36,c_0_31])).

cnf(c_0_53,plain,
    ( k2_relat_1(X1) = X1
    | ~ r1_tarski(k1_xboole_0,X1)
    | ~ r1_tarski(X1,k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_46,c_0_25])).

cnf(c_0_54,negated_conjecture,
    ( ~ v1_funct_2(esk1_0,X1,esk1_0)
    | ~ r1_tarski(X1,k1_relat_1(esk1_0))
    | ~ r1_tarski(esk2_0,esk1_0)
    | ~ r1_tarski(esk1_0,esk2_0)
    | ~ r1_tarski(esk1_0,k1_xboole_0)
    | ~ r1_tarski(k1_xboole_0,esk1_0) ),
    inference(spm,[status(thm)],[c_0_47,c_0_45])).

cnf(c_0_55,negated_conjecture,
    ( esk1_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48,c_0_49]),c_0_38])])).

cnf(c_0_56,plain,
    ( k1_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[t60_relat_1])).

cnf(c_0_57,negated_conjecture,
    ( m1_subset_1(esk2_0,k1_zfmisc_1(esk1_0))
    | ~ m1_subset_1(esk1_0,k1_zfmisc_1(k1_xboole_0))
    | ~ r1_tarski(k1_xboole_0,esk1_0) ),
    inference(spm,[status(thm)],[c_0_50,c_0_51])).

cnf(c_0_58,negated_conjecture,
    ( m1_subset_1(k2_relat_1(esk2_0),k1_zfmisc_1(X1))
    | ~ r1_tarski(X1,esk1_0)
    | ~ r1_tarski(esk1_0,X1) ),
    inference(spm,[status(thm)],[c_0_52,c_0_25])).

cnf(c_0_59,negated_conjecture,
    ( r1_tarski(esk2_0,esk1_0)
    | ~ r1_tarski(k1_xboole_0,esk2_0)
    | ~ r1_tarski(esk2_0,k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_31,c_0_53])).

cnf(c_0_60,negated_conjecture,
    ( ~ v1_funct_2(k1_xboole_0,X1,k1_xboole_0)
    | ~ r1_tarski(esk2_0,k1_xboole_0)
    | ~ r1_tarski(k1_xboole_0,esk2_0)
    | ~ r1_tarski(X1,k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_54,c_0_55]),c_0_55]),c_0_55]),c_0_56]),c_0_55]),c_0_55]),c_0_55]),c_0_22]),c_0_55]),c_0_22])])).

cnf(c_0_61,negated_conjecture,
    ( m1_subset_1(esk2_0,k1_zfmisc_1(k1_xboole_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_57,c_0_55]),c_0_55]),c_0_41]),c_0_55]),c_0_22])])).

cnf(c_0_62,negated_conjecture,
    ( m1_subset_1(k2_relat_1(esk2_0),k1_zfmisc_1(esk2_0))
    | ~ r1_tarski(esk1_0,esk2_0)
    | ~ r1_tarski(k1_xboole_0,esk2_0)
    | ~ r1_tarski(esk2_0,k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_58,c_0_59])).

cnf(c_0_63,negated_conjecture,
    ( ~ v1_funct_2(k1_xboole_0,X1,k1_xboole_0)
    | ~ r1_tarski(k1_xboole_0,esk2_0)
    | ~ r1_tarski(X1,k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_60,c_0_51]),c_0_61])])).

cnf(c_0_64,plain,
    ( r1_tarski(k1_xboole_0,X1)
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(spm,[status(thm)],[c_0_35,c_0_56])).

cnf(c_0_65,plain,
    ( v1_funct_2(X1,X2,X3)
    | X2 = k1_xboole_0
    | X1 != k1_xboole_0
    | X3 != k1_xboole_0
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_66,negated_conjecture,
    ( m1_subset_1(k2_relat_1(esk2_0),k1_zfmisc_1(esk2_0))
    | ~ r1_tarski(k1_xboole_0,esk2_0)
    | ~ r1_tarski(esk2_0,k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_62,c_0_55])])).

cnf(c_0_67,negated_conjecture,
    ( ~ v1_funct_2(k1_xboole_0,X1,k1_xboole_0)
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,X2)))
    | ~ r1_tarski(X1,k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_63,c_0_64])).

cnf(c_0_68,plain,
    ( X1 = k1_xboole_0
    | v1_funct_2(k1_xboole_0,X1,k1_xboole_0)
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) ),
    inference(rw,[status(thm)],[inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_65])]),c_0_39])).

cnf(c_0_69,negated_conjecture,
    ( m1_subset_1(k2_relat_1(esk2_0),k1_zfmisc_1(esk2_0))
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,X1)))
    | ~ r1_tarski(esk2_0,k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_66,c_0_64])).

cnf(c_0_70,negated_conjecture,
    ( ~ v1_funct_2(k1_xboole_0,X1,k1_xboole_0)
    | ~ r1_tarski(X1,k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_67,c_0_39]),c_0_41])])).

cnf(c_0_71,negated_conjecture,
    ( r1_tarski(k2_relat_1(esk2_0),k1_xboole_0) ),
    inference(rw,[status(thm)],[c_0_31,c_0_55])).

cnf(c_0_72,plain,
    ( X1 = k1_xboole_0
    | v1_funct_2(k1_xboole_0,X1,k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_68,c_0_41])])).

cnf(c_0_73,negated_conjecture,
    ( m1_subset_1(k2_relat_1(esk2_0),k1_zfmisc_1(esk2_0))
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,X1))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_69,c_0_51]),c_0_61])])).

cnf(c_0_74,negated_conjecture,
    ( ~ v1_funct_2(X1,X2,X1)
    | ~ r1_tarski(X1,k1_xboole_0)
    | ~ r1_tarski(k1_xboole_0,X1)
    | ~ r1_tarski(X2,X1) ),
    inference(spm,[status(thm)],[c_0_70,c_0_25])).

cnf(c_0_75,negated_conjecture,
    ( v1_funct_2(k1_xboole_0,X1,k1_xboole_0)
    | r1_tarski(k2_relat_1(esk2_0),X1) ),
    inference(spm,[status(thm)],[c_0_71,c_0_72])).

cnf(c_0_76,negated_conjecture,
    ( m1_subset_1(k2_relat_1(esk2_0),k1_zfmisc_1(esk2_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_73,c_0_39]),c_0_41])])).

cnf(c_0_77,negated_conjecture,
    ( r1_tarski(k2_relat_1(esk2_0),X1)
    | ~ r1_tarski(X1,k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_74,c_0_75]),c_0_22])])).

cnf(c_0_78,negated_conjecture,
    ( v1_funct_2(k1_xboole_0,k2_relat_1(esk2_0),k1_xboole_0)
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(esk2_0)) ),
    inference(spm,[status(thm)],[c_0_76,c_0_72])).

cnf(c_0_79,negated_conjecture,
    ( ~ v1_funct_2(esk2_0,k1_relat_1(esk2_0),X1)
    | ~ m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(esk2_0),X1)))
    | ~ r1_tarski(esk1_0,X1)
    | ~ r1_tarski(X1,esk1_0) ),
    inference(spm,[status(thm)],[c_0_24,c_0_25])).

cnf(c_0_80,negated_conjecture,
    ( r1_tarski(esk2_0,X1)
    | ~ r1_tarski(k1_xboole_0,esk2_0)
    | ~ r1_tarski(esk2_0,k1_xboole_0)
    | ~ r1_tarski(X1,k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_77,c_0_53])).

cnf(c_0_81,negated_conjecture,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(esk2_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_74,c_0_78]),c_0_22]),c_0_71])])).

cnf(c_0_82,plain,
    ( k2_zfmisc_1(X1,X2) = k1_xboole_0
    | X1 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_83,negated_conjecture,
    ( ~ v1_funct_2(esk2_0,k1_relat_1(esk2_0),k1_xboole_0)
    | ~ m1_subset_1(esk2_0,k1_zfmisc_1(k1_xboole_0))
    | ~ r1_tarski(esk1_0,k1_xboole_0)
    | ~ r1_tarski(k1_xboole_0,esk1_0) ),
    inference(spm,[status(thm)],[c_0_79,c_0_39])).

cnf(c_0_84,negated_conjecture,
    ( v1_funct_2(k1_xboole_0,esk2_0,k1_xboole_0)
    | r1_tarski(k1_xboole_0,esk1_0) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_72]),c_0_46])).

cnf(c_0_85,negated_conjecture,
    ( r1_tarski(esk2_0,X1)
    | ~ r1_tarski(esk2_0,k1_xboole_0)
    | ~ r1_tarski(X1,k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_80,c_0_51]),c_0_81])])).

cnf(c_0_86,plain,
    ( v1_funct_2(X3,X1,X2)
    | X1 != k1_relset_1(X1,X2,X3)
    | X1 != k1_xboole_0
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_87,plain,
    ( k2_zfmisc_1(k1_xboole_0,X1) = k1_xboole_0 ),
    inference(er,[status(thm)],[c_0_82])).

cnf(c_0_88,negated_conjecture,
    ( v1_funct_2(k1_xboole_0,esk2_0,k1_xboole_0)
    | ~ v1_funct_2(k1_xboole_0,k1_xboole_0,k1_xboole_0)
    | ~ r1_tarski(esk1_0,k1_xboole_0) ),
    inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_83,c_0_72]),c_0_56]),c_0_41])]),c_0_84])).

cnf(c_0_89,negated_conjecture,
    ( r1_tarski(esk2_0,X1)
    | ~ r1_tarski(X1,k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_85,c_0_51]),c_0_61])])).

cnf(c_0_90,plain,
    ( v1_funct_2(X1,k1_xboole_0,X2)
    | k1_relset_1(k1_xboole_0,X2,X1) != k1_xboole_0
    | ~ m1_subset_1(X1,k1_zfmisc_1(k1_xboole_0)) ),
    inference(rw,[status(thm)],[inference(er,[status(thm)],[c_0_86]),c_0_87])).

cnf(c_0_91,negated_conjecture,
    ( v1_funct_2(k1_xboole_0,esk2_0,k1_xboole_0)
    | ~ v1_funct_2(k1_xboole_0,k1_xboole_0,k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_88,c_0_55]),c_0_22])])).

cnf(c_0_92,negated_conjecture,
    ( r1_tarski(esk2_0,k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_89,c_0_64]),c_0_87]),c_0_41])])).

cnf(c_0_93,plain,
    ( v1_funct_2(k1_xboole_0,k1_xboole_0,X1)
    | k1_relset_1(k1_xboole_0,X1,k1_xboole_0) != k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_90,c_0_41])).

cnf(c_0_94,negated_conjecture,
    ( ~ v1_funct_2(k1_xboole_0,k1_xboole_0,k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_74,c_0_91]),c_0_22]),c_0_92])])).

cnf(c_0_95,plain,
    ( v1_funct_2(k1_xboole_0,k1_xboole_0,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_93,c_0_49]),c_0_56]),c_0_87]),c_0_41])])).

cnf(c_0_96,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_94,c_0_95])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.34  % Computer   : n020.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 09:21:22 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  # Version: 2.5pre002
% 0.14/0.34  # No SInE strategy applied
% 0.14/0.34  # Trying AutoSched0 for 299 seconds
% 0.40/0.57  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S039A
% 0.40/0.57  # and selection function PSelectUnlessUniqMaxPos.
% 0.40/0.57  #
% 0.40/0.57  # Preprocessing time       : 0.027 s
% 0.40/0.57  # Presaturation interreduction done
% 0.40/0.57  
% 0.40/0.57  # Proof found!
% 0.40/0.57  # SZS status Theorem
% 0.40/0.57  # SZS output start CNFRefutation
% 0.40/0.57  fof(t4_funct_2, conjecture, ![X1, X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(r1_tarski(k2_relat_1(X2),X1)=>((v1_funct_1(X2)&v1_funct_2(X2,k1_relat_1(X2),X1))&m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X2),X1)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t4_funct_2)).
% 0.40/0.57  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.40/0.57  fof(t11_relset_1, axiom, ![X1, X2, X3]:(v1_relat_1(X3)=>((r1_tarski(k1_relat_1(X3),X1)&r1_tarski(k2_relat_1(X3),X2))=>m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t11_relset_1)).
% 0.40/0.57  fof(d18_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(v4_relat_1(X2,X1)<=>r1_tarski(k1_relat_1(X2),X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d18_relat_1)).
% 0.40/0.57  fof(cc2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(v4_relat_1(X3,X1)&v5_relat_1(X3,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc2_relset_1)).
% 0.40/0.57  fof(cc1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>v1_relat_1(X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc1_relset_1)).
% 0.40/0.57  fof(t113_zfmisc_1, axiom, ![X1, X2]:(k2_zfmisc_1(X1,X2)=k1_xboole_0<=>(X1=k1_xboole_0|X2=k1_xboole_0)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t113_zfmisc_1)).
% 0.40/0.57  fof(t3_subset, axiom, ![X1, X2]:(m1_subset_1(X1,k1_zfmisc_1(X2))<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_subset)).
% 0.40/0.57  fof(d1_funct_2, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(((X2=k1_xboole_0=>X1=k1_xboole_0)=>(v1_funct_2(X3,X1,X2)<=>X1=k1_relset_1(X1,X2,X3)))&(X2=k1_xboole_0=>(X1=k1_xboole_0|(v1_funct_2(X3,X1,X2)<=>X3=k1_xboole_0))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_funct_2)).
% 0.40/0.57  fof(redefinition_k1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k1_relset_1(X1,X2,X3)=k1_relat_1(X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k1_relset_1)).
% 0.40/0.57  fof(t60_relat_1, axiom, (k1_relat_1(k1_xboole_0)=k1_xboole_0&k2_relat_1(k1_xboole_0)=k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t60_relat_1)).
% 0.40/0.57  fof(c_0_11, negated_conjecture, ~(![X1, X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(r1_tarski(k2_relat_1(X2),X1)=>((v1_funct_1(X2)&v1_funct_2(X2,k1_relat_1(X2),X1))&m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X2),X1))))))), inference(assume_negation,[status(cth)],[t4_funct_2])).
% 0.40/0.57  fof(c_0_12, plain, ![X4, X5]:(((r1_tarski(X4,X5)|X4!=X5)&(r1_tarski(X5,X4)|X4!=X5))&(~r1_tarski(X4,X5)|~r1_tarski(X5,X4)|X4=X5)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.40/0.57  fof(c_0_13, negated_conjecture, ((v1_relat_1(esk2_0)&v1_funct_1(esk2_0))&(r1_tarski(k2_relat_1(esk2_0),esk1_0)&(~v1_funct_1(esk2_0)|~v1_funct_2(esk2_0,k1_relat_1(esk2_0),esk1_0)|~m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(esk2_0),esk1_0)))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_11])])])).
% 0.40/0.57  fof(c_0_14, plain, ![X21, X22, X23]:(~v1_relat_1(X23)|(~r1_tarski(k1_relat_1(X23),X21)|~r1_tarski(k2_relat_1(X23),X22)|m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22))))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t11_relset_1])])).
% 0.40/0.57  cnf(c_0_15, plain, (r1_tarski(X1,X2)|X2!=X1), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.40/0.57  cnf(c_0_16, negated_conjecture, (~v1_funct_1(esk2_0)|~v1_funct_2(esk2_0,k1_relat_1(esk2_0),esk1_0)|~m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(esk2_0),esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.40/0.57  cnf(c_0_17, negated_conjecture, (v1_funct_1(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.40/0.57  fof(c_0_18, plain, ![X10, X11]:((~v4_relat_1(X11,X10)|r1_tarski(k1_relat_1(X11),X10)|~v1_relat_1(X11))&(~r1_tarski(k1_relat_1(X11),X10)|v4_relat_1(X11,X10)|~v1_relat_1(X11))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d18_relat_1])])])).
% 0.40/0.57  fof(c_0_19, plain, ![X15, X16, X17]:((v4_relat_1(X17,X15)|~m1_subset_1(X17,k1_zfmisc_1(k2_zfmisc_1(X15,X16))))&(v5_relat_1(X17,X16)|~m1_subset_1(X17,k1_zfmisc_1(k2_zfmisc_1(X15,X16))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).
% 0.40/0.57  fof(c_0_20, plain, ![X12, X13, X14]:(~m1_subset_1(X14,k1_zfmisc_1(k2_zfmisc_1(X12,X13)))|v1_relat_1(X14)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).
% 0.40/0.57  cnf(c_0_21, plain, (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~v1_relat_1(X1)|~r1_tarski(k1_relat_1(X1),X2)|~r1_tarski(k2_relat_1(X1),X3)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.40/0.57  cnf(c_0_22, plain, (r1_tarski(X1,X1)), inference(er,[status(thm)],[c_0_15])).
% 0.40/0.57  fof(c_0_23, plain, ![X6, X7]:((k2_zfmisc_1(X6,X7)!=k1_xboole_0|(X6=k1_xboole_0|X7=k1_xboole_0))&((X6!=k1_xboole_0|k2_zfmisc_1(X6,X7)=k1_xboole_0)&(X7!=k1_xboole_0|k2_zfmisc_1(X6,X7)=k1_xboole_0))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t113_zfmisc_1])])])).
% 0.40/0.57  cnf(c_0_24, negated_conjecture, (~v1_funct_2(esk2_0,k1_relat_1(esk2_0),esk1_0)|~m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(esk2_0),esk1_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_16, c_0_17])])).
% 0.40/0.57  cnf(c_0_25, plain, (X1=X2|~r1_tarski(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.40/0.57  cnf(c_0_26, plain, (r1_tarski(k1_relat_1(X1),X2)|~v4_relat_1(X1,X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.40/0.57  cnf(c_0_27, plain, (v4_relat_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.40/0.57  cnf(c_0_28, plain, (v1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.40/0.57  fof(c_0_29, plain, ![X8, X9]:((~m1_subset_1(X8,k1_zfmisc_1(X9))|r1_tarski(X8,X9))&(~r1_tarski(X8,X9)|m1_subset_1(X8,k1_zfmisc_1(X9)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).
% 0.40/0.57  cnf(c_0_30, plain, (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X2)))|~v1_relat_1(X1)|~r1_tarski(k2_relat_1(X1),X2)), inference(spm,[status(thm)],[c_0_21, c_0_22])).
% 0.40/0.57  cnf(c_0_31, negated_conjecture, (r1_tarski(k2_relat_1(esk2_0),esk1_0)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.40/0.57  cnf(c_0_32, negated_conjecture, (v1_relat_1(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.40/0.57  cnf(c_0_33, plain, (k2_zfmisc_1(X2,X1)=k1_xboole_0|X1!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.40/0.57  cnf(c_0_34, negated_conjecture, (~v1_funct_2(X1,k1_relat_1(X1),esk1_0)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),esk1_0)))|~r1_tarski(esk2_0,X1)|~r1_tarski(X1,esk2_0)), inference(spm,[status(thm)],[c_0_24, c_0_25])).
% 0.40/0.57  cnf(c_0_35, plain, (r1_tarski(k1_relat_1(X1),X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_26, c_0_27]), c_0_28])).
% 0.40/0.57  cnf(c_0_36, plain, (m1_subset_1(X1,k1_zfmisc_1(X2))|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.40/0.57  fof(c_0_37, plain, ![X24, X25, X26]:((((~v1_funct_2(X26,X24,X25)|X24=k1_relset_1(X24,X25,X26)|X25=k1_xboole_0|~m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X24,X25))))&(X24!=k1_relset_1(X24,X25,X26)|v1_funct_2(X26,X24,X25)|X25=k1_xboole_0|~m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X24,X25)))))&((~v1_funct_2(X26,X24,X25)|X24=k1_relset_1(X24,X25,X26)|X24!=k1_xboole_0|~m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X24,X25))))&(X24!=k1_relset_1(X24,X25,X26)|v1_funct_2(X26,X24,X25)|X24!=k1_xboole_0|~m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X24,X25))))))&((~v1_funct_2(X26,X24,X25)|X26=k1_xboole_0|X24=k1_xboole_0|X25!=k1_xboole_0|~m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X24,X25))))&(X26!=k1_xboole_0|v1_funct_2(X26,X24,X25)|X24=k1_xboole_0|X25!=k1_xboole_0|~m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X24,X25)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).
% 0.40/0.57  cnf(c_0_38, negated_conjecture, (m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(esk2_0),esk1_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_30, c_0_31]), c_0_32])])).
% 0.40/0.57  cnf(c_0_39, plain, (k2_zfmisc_1(X1,k1_xboole_0)=k1_xboole_0), inference(er,[status(thm)],[c_0_33])).
% 0.40/0.57  cnf(c_0_40, negated_conjecture, (~v1_funct_2(X1,X2,esk1_0)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,esk1_0)))|~r1_tarski(X2,k1_relat_1(X1))|~r1_tarski(esk2_0,X1)|~r1_tarski(X1,esk2_0)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_34, c_0_25]), c_0_35])).
% 0.40/0.57  cnf(c_0_41, plain, (m1_subset_1(X1,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_36, c_0_22])).
% 0.40/0.57  cnf(c_0_42, plain, (v1_funct_2(X3,X1,X2)|X2=k1_xboole_0|X1!=k1_relset_1(X1,X2,X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(split_conjunct,[status(thm)],[c_0_37])).
% 0.40/0.57  cnf(c_0_43, negated_conjecture, (~v1_funct_2(esk2_0,k1_relat_1(esk2_0),esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_24, c_0_38])])).
% 0.40/0.57  fof(c_0_44, plain, ![X18, X19, X20]:(~m1_subset_1(X20,k1_zfmisc_1(k2_zfmisc_1(X18,X19)))|k1_relset_1(X18,X19,X20)=k1_relat_1(X20)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).
% 0.40/0.57  cnf(c_0_45, plain, (k2_zfmisc_1(X1,X2)=X2|~r1_tarski(X2,k1_xboole_0)|~r1_tarski(k1_xboole_0,X2)), inference(spm,[status(thm)],[c_0_39, c_0_25])).
% 0.40/0.57  cnf(c_0_46, plain, (k2_relat_1(k1_xboole_0)=k1_xboole_0), inference(split_conjunct,[status(thm)],[t60_relat_1])).
% 0.40/0.57  cnf(c_0_47, negated_conjecture, (~v1_funct_2(k2_zfmisc_1(X1,esk1_0),X1,esk1_0)|~r1_tarski(X1,k1_relat_1(k2_zfmisc_1(X1,esk1_0)))|~r1_tarski(esk2_0,k2_zfmisc_1(X1,esk1_0))|~r1_tarski(k2_zfmisc_1(X1,esk1_0),esk2_0)), inference(spm,[status(thm)],[c_0_40, c_0_41])).
% 0.40/0.57  cnf(c_0_48, negated_conjecture, (esk1_0=k1_xboole_0|k1_relset_1(k1_relat_1(esk2_0),esk1_0,esk2_0)!=k1_relat_1(esk2_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_42, c_0_38]), c_0_43])).
% 0.40/0.57  cnf(c_0_49, plain, (k1_relset_1(X2,X3,X1)=k1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_44])).
% 0.40/0.57  cnf(c_0_50, negated_conjecture, (m1_subset_1(esk2_0,k1_zfmisc_1(esk1_0))|~r1_tarski(esk1_0,k1_xboole_0)|~r1_tarski(k1_xboole_0,esk1_0)), inference(spm,[status(thm)],[c_0_38, c_0_45])).
% 0.40/0.57  cnf(c_0_51, plain, (r1_tarski(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.40/0.57  cnf(c_0_52, negated_conjecture, (m1_subset_1(k2_relat_1(esk2_0),k1_zfmisc_1(esk1_0))), inference(spm,[status(thm)],[c_0_36, c_0_31])).
% 0.40/0.57  cnf(c_0_53, plain, (k2_relat_1(X1)=X1|~r1_tarski(k1_xboole_0,X1)|~r1_tarski(X1,k1_xboole_0)), inference(spm,[status(thm)],[c_0_46, c_0_25])).
% 0.40/0.57  cnf(c_0_54, negated_conjecture, (~v1_funct_2(esk1_0,X1,esk1_0)|~r1_tarski(X1,k1_relat_1(esk1_0))|~r1_tarski(esk2_0,esk1_0)|~r1_tarski(esk1_0,esk2_0)|~r1_tarski(esk1_0,k1_xboole_0)|~r1_tarski(k1_xboole_0,esk1_0)), inference(spm,[status(thm)],[c_0_47, c_0_45])).
% 0.40/0.57  cnf(c_0_55, negated_conjecture, (esk1_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48, c_0_49]), c_0_38])])).
% 0.40/0.57  cnf(c_0_56, plain, (k1_relat_1(k1_xboole_0)=k1_xboole_0), inference(split_conjunct,[status(thm)],[t60_relat_1])).
% 0.40/0.57  cnf(c_0_57, negated_conjecture, (m1_subset_1(esk2_0,k1_zfmisc_1(esk1_0))|~m1_subset_1(esk1_0,k1_zfmisc_1(k1_xboole_0))|~r1_tarski(k1_xboole_0,esk1_0)), inference(spm,[status(thm)],[c_0_50, c_0_51])).
% 0.40/0.57  cnf(c_0_58, negated_conjecture, (m1_subset_1(k2_relat_1(esk2_0),k1_zfmisc_1(X1))|~r1_tarski(X1,esk1_0)|~r1_tarski(esk1_0,X1)), inference(spm,[status(thm)],[c_0_52, c_0_25])).
% 0.40/0.57  cnf(c_0_59, negated_conjecture, (r1_tarski(esk2_0,esk1_0)|~r1_tarski(k1_xboole_0,esk2_0)|~r1_tarski(esk2_0,k1_xboole_0)), inference(spm,[status(thm)],[c_0_31, c_0_53])).
% 0.40/0.57  cnf(c_0_60, negated_conjecture, (~v1_funct_2(k1_xboole_0,X1,k1_xboole_0)|~r1_tarski(esk2_0,k1_xboole_0)|~r1_tarski(k1_xboole_0,esk2_0)|~r1_tarski(X1,k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_54, c_0_55]), c_0_55]), c_0_55]), c_0_56]), c_0_55]), c_0_55]), c_0_55]), c_0_22]), c_0_55]), c_0_22])])).
% 0.40/0.57  cnf(c_0_61, negated_conjecture, (m1_subset_1(esk2_0,k1_zfmisc_1(k1_xboole_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_57, c_0_55]), c_0_55]), c_0_41]), c_0_55]), c_0_22])])).
% 0.40/0.57  cnf(c_0_62, negated_conjecture, (m1_subset_1(k2_relat_1(esk2_0),k1_zfmisc_1(esk2_0))|~r1_tarski(esk1_0,esk2_0)|~r1_tarski(k1_xboole_0,esk2_0)|~r1_tarski(esk2_0,k1_xboole_0)), inference(spm,[status(thm)],[c_0_58, c_0_59])).
% 0.40/0.57  cnf(c_0_63, negated_conjecture, (~v1_funct_2(k1_xboole_0,X1,k1_xboole_0)|~r1_tarski(k1_xboole_0,esk2_0)|~r1_tarski(X1,k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_60, c_0_51]), c_0_61])])).
% 0.40/0.57  cnf(c_0_64, plain, (r1_tarski(k1_xboole_0,X1)|~m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(spm,[status(thm)],[c_0_35, c_0_56])).
% 0.40/0.57  cnf(c_0_65, plain, (v1_funct_2(X1,X2,X3)|X2=k1_xboole_0|X1!=k1_xboole_0|X3!=k1_xboole_0|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_37])).
% 0.40/0.57  cnf(c_0_66, negated_conjecture, (m1_subset_1(k2_relat_1(esk2_0),k1_zfmisc_1(esk2_0))|~r1_tarski(k1_xboole_0,esk2_0)|~r1_tarski(esk2_0,k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_62, c_0_55])])).
% 0.40/0.57  cnf(c_0_67, negated_conjecture, (~v1_funct_2(k1_xboole_0,X1,k1_xboole_0)|~m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,X2)))|~r1_tarski(X1,k1_xboole_0)), inference(spm,[status(thm)],[c_0_63, c_0_64])).
% 0.40/0.57  cnf(c_0_68, plain, (X1=k1_xboole_0|v1_funct_2(k1_xboole_0,X1,k1_xboole_0)|~m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0))), inference(rw,[status(thm)],[inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_65])]), c_0_39])).
% 0.40/0.57  cnf(c_0_69, negated_conjecture, (m1_subset_1(k2_relat_1(esk2_0),k1_zfmisc_1(esk2_0))|~m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,X1)))|~r1_tarski(esk2_0,k1_xboole_0)), inference(spm,[status(thm)],[c_0_66, c_0_64])).
% 0.40/0.57  cnf(c_0_70, negated_conjecture, (~v1_funct_2(k1_xboole_0,X1,k1_xboole_0)|~r1_tarski(X1,k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_67, c_0_39]), c_0_41])])).
% 0.40/0.57  cnf(c_0_71, negated_conjecture, (r1_tarski(k2_relat_1(esk2_0),k1_xboole_0)), inference(rw,[status(thm)],[c_0_31, c_0_55])).
% 0.40/0.57  cnf(c_0_72, plain, (X1=k1_xboole_0|v1_funct_2(k1_xboole_0,X1,k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_68, c_0_41])])).
% 0.40/0.57  cnf(c_0_73, negated_conjecture, (m1_subset_1(k2_relat_1(esk2_0),k1_zfmisc_1(esk2_0))|~m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,X1)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_69, c_0_51]), c_0_61])])).
% 0.40/0.57  cnf(c_0_74, negated_conjecture, (~v1_funct_2(X1,X2,X1)|~r1_tarski(X1,k1_xboole_0)|~r1_tarski(k1_xboole_0,X1)|~r1_tarski(X2,X1)), inference(spm,[status(thm)],[c_0_70, c_0_25])).
% 0.40/0.57  cnf(c_0_75, negated_conjecture, (v1_funct_2(k1_xboole_0,X1,k1_xboole_0)|r1_tarski(k2_relat_1(esk2_0),X1)), inference(spm,[status(thm)],[c_0_71, c_0_72])).
% 0.40/0.57  cnf(c_0_76, negated_conjecture, (m1_subset_1(k2_relat_1(esk2_0),k1_zfmisc_1(esk2_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_73, c_0_39]), c_0_41])])).
% 0.40/0.57  cnf(c_0_77, negated_conjecture, (r1_tarski(k2_relat_1(esk2_0),X1)|~r1_tarski(X1,k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_74, c_0_75]), c_0_22])])).
% 0.40/0.57  cnf(c_0_78, negated_conjecture, (v1_funct_2(k1_xboole_0,k2_relat_1(esk2_0),k1_xboole_0)|m1_subset_1(k1_xboole_0,k1_zfmisc_1(esk2_0))), inference(spm,[status(thm)],[c_0_76, c_0_72])).
% 0.40/0.57  cnf(c_0_79, negated_conjecture, (~v1_funct_2(esk2_0,k1_relat_1(esk2_0),X1)|~m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(esk2_0),X1)))|~r1_tarski(esk1_0,X1)|~r1_tarski(X1,esk1_0)), inference(spm,[status(thm)],[c_0_24, c_0_25])).
% 0.40/0.57  cnf(c_0_80, negated_conjecture, (r1_tarski(esk2_0,X1)|~r1_tarski(k1_xboole_0,esk2_0)|~r1_tarski(esk2_0,k1_xboole_0)|~r1_tarski(X1,k1_xboole_0)), inference(spm,[status(thm)],[c_0_77, c_0_53])).
% 0.40/0.57  cnf(c_0_81, negated_conjecture, (m1_subset_1(k1_xboole_0,k1_zfmisc_1(esk2_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_74, c_0_78]), c_0_22]), c_0_71])])).
% 0.40/0.57  cnf(c_0_82, plain, (k2_zfmisc_1(X1,X2)=k1_xboole_0|X1!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.40/0.57  cnf(c_0_83, negated_conjecture, (~v1_funct_2(esk2_0,k1_relat_1(esk2_0),k1_xboole_0)|~m1_subset_1(esk2_0,k1_zfmisc_1(k1_xboole_0))|~r1_tarski(esk1_0,k1_xboole_0)|~r1_tarski(k1_xboole_0,esk1_0)), inference(spm,[status(thm)],[c_0_79, c_0_39])).
% 0.40/0.57  cnf(c_0_84, negated_conjecture, (v1_funct_2(k1_xboole_0,esk2_0,k1_xboole_0)|r1_tarski(k1_xboole_0,esk1_0)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_72]), c_0_46])).
% 0.40/0.57  cnf(c_0_85, negated_conjecture, (r1_tarski(esk2_0,X1)|~r1_tarski(esk2_0,k1_xboole_0)|~r1_tarski(X1,k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_80, c_0_51]), c_0_81])])).
% 0.40/0.57  cnf(c_0_86, plain, (v1_funct_2(X3,X1,X2)|X1!=k1_relset_1(X1,X2,X3)|X1!=k1_xboole_0|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(split_conjunct,[status(thm)],[c_0_37])).
% 0.40/0.57  cnf(c_0_87, plain, (k2_zfmisc_1(k1_xboole_0,X1)=k1_xboole_0), inference(er,[status(thm)],[c_0_82])).
% 0.40/0.57  cnf(c_0_88, negated_conjecture, (v1_funct_2(k1_xboole_0,esk2_0,k1_xboole_0)|~v1_funct_2(k1_xboole_0,k1_xboole_0,k1_xboole_0)|~r1_tarski(esk1_0,k1_xboole_0)), inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_83, c_0_72]), c_0_56]), c_0_41])]), c_0_84])).
% 0.40/0.57  cnf(c_0_89, negated_conjecture, (r1_tarski(esk2_0,X1)|~r1_tarski(X1,k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_85, c_0_51]), c_0_61])])).
% 0.40/0.57  cnf(c_0_90, plain, (v1_funct_2(X1,k1_xboole_0,X2)|k1_relset_1(k1_xboole_0,X2,X1)!=k1_xboole_0|~m1_subset_1(X1,k1_zfmisc_1(k1_xboole_0))), inference(rw,[status(thm)],[inference(er,[status(thm)],[c_0_86]), c_0_87])).
% 0.40/0.57  cnf(c_0_91, negated_conjecture, (v1_funct_2(k1_xboole_0,esk2_0,k1_xboole_0)|~v1_funct_2(k1_xboole_0,k1_xboole_0,k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_88, c_0_55]), c_0_22])])).
% 0.40/0.57  cnf(c_0_92, negated_conjecture, (r1_tarski(esk2_0,k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_89, c_0_64]), c_0_87]), c_0_41])])).
% 0.40/0.57  cnf(c_0_93, plain, (v1_funct_2(k1_xboole_0,k1_xboole_0,X1)|k1_relset_1(k1_xboole_0,X1,k1_xboole_0)!=k1_xboole_0), inference(spm,[status(thm)],[c_0_90, c_0_41])).
% 0.40/0.57  cnf(c_0_94, negated_conjecture, (~v1_funct_2(k1_xboole_0,k1_xboole_0,k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_74, c_0_91]), c_0_22]), c_0_92])])).
% 0.40/0.57  cnf(c_0_95, plain, (v1_funct_2(k1_xboole_0,k1_xboole_0,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_93, c_0_49]), c_0_56]), c_0_87]), c_0_41])])).
% 0.40/0.57  cnf(c_0_96, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_94, c_0_95])]), ['proof']).
% 0.40/0.57  # SZS output end CNFRefutation
% 0.40/0.57  # Proof object total steps             : 97
% 0.40/0.57  # Proof object clause steps            : 75
% 0.40/0.57  # Proof object formula steps           : 22
% 0.40/0.57  # Proof object conjectures             : 48
% 0.40/0.57  # Proof object clause conjectures      : 45
% 0.40/0.57  # Proof object formula conjectures     : 3
% 0.40/0.57  # Proof object initial clauses used    : 20
% 0.40/0.57  # Proof object initial formulas used   : 11
% 0.40/0.57  # Proof object generating inferences   : 41
% 0.40/0.57  # Proof object simplifying inferences  : 78
% 0.40/0.57  # Training examples: 0 positive, 0 negative
% 0.40/0.57  # Parsed axioms                        : 11
% 0.40/0.57  # Removed by relevancy pruning/SinE    : 0
% 0.40/0.57  # Initial clauses                      : 27
% 0.40/0.57  # Removed in clause preprocessing      : 0
% 0.40/0.57  # Initial clauses in saturation        : 27
% 0.40/0.57  # Processed clauses                    : 1877
% 0.40/0.57  # ...of these trivial                  : 26
% 0.40/0.57  # ...subsumed                          : 1179
% 0.40/0.57  # ...remaining for further processing  : 672
% 0.40/0.57  # Other redundant clauses eliminated   : 29
% 0.40/0.57  # Clauses deleted for lack of memory   : 0
% 0.40/0.57  # Backward-subsumed                    : 109
% 0.40/0.57  # Backward-rewritten                   : 214
% 0.40/0.57  # Generated clauses                    : 14797
% 0.40/0.57  # ...of the previous two non-trivial   : 11771
% 0.40/0.57  # Contextual simplify-reflections      : 19
% 0.40/0.57  # Paramodulations                      : 14745
% 0.40/0.57  # Factorizations                       : 24
% 0.40/0.57  # Equation resolutions                 : 29
% 0.40/0.57  # Propositional unsat checks           : 0
% 0.40/0.57  #    Propositional check models        : 0
% 0.40/0.57  #    Propositional check unsatisfiable : 0
% 0.40/0.57  #    Propositional clauses             : 0
% 0.40/0.57  #    Propositional clauses after purity: 0
% 0.40/0.57  #    Propositional unsat core size     : 0
% 0.40/0.57  #    Propositional preprocessing time  : 0.000
% 0.40/0.57  #    Propositional encoding time       : 0.000
% 0.40/0.57  #    Propositional solver time         : 0.000
% 0.40/0.57  #    Success case prop preproc time    : 0.000
% 0.40/0.57  #    Success case prop encoding time   : 0.000
% 0.40/0.57  #    Success case prop solver time     : 0.000
% 0.40/0.57  # Current number of processed clauses  : 315
% 0.40/0.57  #    Positive orientable unit clauses  : 43
% 0.40/0.57  #    Positive unorientable unit clauses: 0
% 0.40/0.57  #    Negative unit clauses             : 2
% 0.40/0.57  #    Non-unit-clauses                  : 270
% 0.40/0.57  # Current number of unprocessed clauses: 9691
% 0.40/0.57  # ...number of literals in the above   : 44121
% 0.40/0.57  # Current number of archived formulas  : 0
% 0.40/0.57  # Current number of archived clauses   : 349
% 0.40/0.57  # Clause-clause subsumption calls (NU) : 30440
% 0.40/0.57  # Rec. Clause-clause subsumption calls : 13730
% 0.40/0.57  # Non-unit clause-clause subsumptions  : 1206
% 0.40/0.57  # Unit Clause-clause subsumption calls : 884
% 0.40/0.57  # Rewrite failures with RHS unbound    : 0
% 0.40/0.57  # BW rewrite match attempts            : 80
% 0.40/0.57  # BW rewrite match successes           : 26
% 0.40/0.57  # Condensation attempts                : 0
% 0.40/0.57  # Condensation successes               : 0
% 0.40/0.57  # Termbank termtop insertions          : 229596
% 0.40/0.57  
% 0.40/0.57  # -------------------------------------------------
% 0.40/0.57  # User time                : 0.217 s
% 0.40/0.57  # System time              : 0.010 s
% 0.40/0.57  # Total time               : 0.227 s
% 0.40/0.57  # Maximum resident set size: 1580 pages
%------------------------------------------------------------------------------
