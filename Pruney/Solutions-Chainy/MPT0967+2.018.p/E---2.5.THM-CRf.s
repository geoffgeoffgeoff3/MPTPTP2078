%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n002.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:01:23 EST 2020

% Result     : Theorem 0.55s
% Output     : CNFRefutation 0.55s
% Verified   : 
% Statistics : Number of formulae       :  101 (2387 expanded)
%              Number of clauses        :   74 ( 992 expanded)
%              Number of leaves         :   13 ( 571 expanded)
%              Depth                    :   15
%              Number of atoms          :  296 (11957 expanded)
%              Number of equality atoms :   89 (3053 expanded)
%              Maximal formula depth    :   14 (   4 average)
%              Maximal clause size      :   26 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t9_funct_2,conjecture,(
    ! [X1,X2,X3,X4] :
      ( ( v1_funct_1(X4)
        & v1_funct_2(X4,X1,X2)
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => ( r1_tarski(X2,X3)
       => ( ( X2 = k1_xboole_0
            & X1 != k1_xboole_0 )
          | ( v1_funct_1(X4)
            & v1_funct_2(X4,X1,X3)
            & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X3))) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t9_funct_2)).

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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_funct_2)).

fof(redefinition_k1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k1_relset_1(X1,X2,X3) = k1_relat_1(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k1_relset_1)).

fof(t3_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X2))
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_subset)).

fof(t11_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( v1_relat_1(X3)
     => ( ( r1_tarski(k1_relat_1(X3),X1)
          & r1_tarski(k2_relat_1(X3),X2) )
       => m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t11_relset_1)).

fof(cc1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => v1_relat_1(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc1_relset_1)).

fof(t1_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( ( r1_tarski(X1,X2)
        & r1_tarski(X2,X3) )
     => r1_tarski(X1,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t1_xboole_1)).

fof(t113_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( k2_zfmisc_1(X1,X2) = k1_xboole_0
    <=> ( X1 = k1_xboole_0
        | X2 = k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t113_zfmisc_1)).

fof(cc2_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ( v4_relat_1(X3,X1)
        & v5_relat_1(X3,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc2_relset_1)).

fof(d18_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( v4_relat_1(X2,X1)
      <=> r1_tarski(k1_relat_1(X2),X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d18_relat_1)).

fof(d19_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( v5_relat_1(X2,X1)
      <=> r1_tarski(k2_relat_1(X2),X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d19_relat_1)).

fof(t3_xboole_1,axiom,(
    ! [X1] :
      ( r1_tarski(X1,k1_xboole_0)
     => X1 = k1_xboole_0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_xboole_1)).

fof(t4_subset_1,axiom,(
    ! [X1] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t4_subset_1)).

fof(c_0_13,negated_conjecture,(
    ~ ! [X1,X2,X3,X4] :
        ( ( v1_funct_1(X4)
          & v1_funct_2(X4,X1,X2)
          & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
       => ( r1_tarski(X2,X3)
         => ( ( X2 = k1_xboole_0
              & X1 != k1_xboole_0 )
            | ( v1_funct_1(X4)
              & v1_funct_2(X4,X1,X3)
              & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X3))) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t9_funct_2])).

fof(c_0_14,plain,(
    ! [X33,X34,X35] :
      ( ( ~ v1_funct_2(X35,X33,X34)
        | X33 = k1_relset_1(X33,X34,X35)
        | X34 = k1_xboole_0
        | ~ m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X33,X34))) )
      & ( X33 != k1_relset_1(X33,X34,X35)
        | v1_funct_2(X35,X33,X34)
        | X34 = k1_xboole_0
        | ~ m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X33,X34))) )
      & ( ~ v1_funct_2(X35,X33,X34)
        | X33 = k1_relset_1(X33,X34,X35)
        | X33 != k1_xboole_0
        | ~ m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X33,X34))) )
      & ( X33 != k1_relset_1(X33,X34,X35)
        | v1_funct_2(X35,X33,X34)
        | X33 != k1_xboole_0
        | ~ m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X33,X34))) )
      & ( ~ v1_funct_2(X35,X33,X34)
        | X35 = k1_xboole_0
        | X33 = k1_xboole_0
        | X34 != k1_xboole_0
        | ~ m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X33,X34))) )
      & ( X35 != k1_xboole_0
        | v1_funct_2(X35,X33,X34)
        | X33 = k1_xboole_0
        | X34 != k1_xboole_0
        | ~ m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X33,X34))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).

fof(c_0_15,negated_conjecture,
    ( v1_funct_1(esk4_0)
    & v1_funct_2(esk4_0,esk1_0,esk2_0)
    & m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0)))
    & r1_tarski(esk2_0,esk3_0)
    & ( esk2_0 != k1_xboole_0
      | esk1_0 = k1_xboole_0 )
    & ( ~ v1_funct_1(esk4_0)
      | ~ v1_funct_2(esk4_0,esk1_0,esk3_0)
      | ~ m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk3_0))) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_13])])])).

fof(c_0_16,plain,(
    ! [X27,X28,X29] :
      ( ~ m1_subset_1(X29,k1_zfmisc_1(k2_zfmisc_1(X27,X28)))
      | k1_relset_1(X27,X28,X29) = k1_relat_1(X29) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).

fof(c_0_17,plain,(
    ! [X12,X13] :
      ( ( ~ m1_subset_1(X12,k1_zfmisc_1(X13))
        | r1_tarski(X12,X13) )
      & ( ~ r1_tarski(X12,X13)
        | m1_subset_1(X12,k1_zfmisc_1(X13)) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).

fof(c_0_18,plain,(
    ! [X30,X31,X32] :
      ( ~ v1_relat_1(X32)
      | ~ r1_tarski(k1_relat_1(X32),X30)
      | ~ r1_tarski(k2_relat_1(X32),X31)
      | m1_subset_1(X32,k1_zfmisc_1(k2_zfmisc_1(X30,X31))) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t11_relset_1])])).

cnf(c_0_19,plain,
    ( X2 = k1_relset_1(X2,X3,X1)
    | X3 = k1_xboole_0
    | ~ v1_funct_2(X1,X2,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_20,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_21,negated_conjecture,
    ( v1_funct_2(esk4_0,esk1_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_22,plain,
    ( k1_relset_1(X2,X3,X1) = k1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

fof(c_0_23,plain,(
    ! [X21,X22,X23] :
      ( ~ m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22)))
      | v1_relat_1(X23) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).

cnf(c_0_24,plain,
    ( r1_tarski(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_25,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(k1_relat_1(X1),X2)
    | ~ r1_tarski(k2_relat_1(X1),X3) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_26,negated_conjecture,
    ( k1_relset_1(esk1_0,esk2_0,esk4_0) = esk1_0
    | esk2_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19,c_0_20]),c_0_21])])).

cnf(c_0_27,negated_conjecture,
    ( k1_relset_1(esk1_0,esk2_0,esk4_0) = k1_relat_1(esk4_0) ),
    inference(spm,[status(thm)],[c_0_22,c_0_20])).

cnf(c_0_28,plain,
    ( v1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

fof(c_0_29,plain,(
    ! [X5,X6,X7] :
      ( ~ r1_tarski(X5,X6)
      | ~ r1_tarski(X6,X7)
      | r1_tarski(X5,X7) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_xboole_1])])).

fof(c_0_30,plain,(
    ! [X9,X10] :
      ( ( k2_zfmisc_1(X9,X10) != k1_xboole_0
        | X9 = k1_xboole_0
        | X10 = k1_xboole_0 )
      & ( X9 != k1_xboole_0
        | k2_zfmisc_1(X9,X10) = k1_xboole_0 )
      & ( X10 != k1_xboole_0
        | k2_zfmisc_1(X9,X10) = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t113_zfmisc_1])])])).

cnf(c_0_31,plain,
    ( r1_tarski(X1,k2_zfmisc_1(X2,X3))
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(k1_relat_1(X1),X2)
    | ~ r1_tarski(k2_relat_1(X1),X3) ),
    inference(spm,[status(thm)],[c_0_24,c_0_25])).

cnf(c_0_32,negated_conjecture,
    ( k1_relat_1(esk4_0) = esk1_0
    | esk2_0 = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_26,c_0_27])).

cnf(c_0_33,negated_conjecture,
    ( v1_relat_1(esk4_0) ),
    inference(spm,[status(thm)],[c_0_28,c_0_20])).

cnf(c_0_34,plain,
    ( r1_tarski(X1,X3)
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_35,negated_conjecture,
    ( r1_tarski(esk2_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

fof(c_0_36,plain,(
    ! [X24,X25,X26] :
      ( ( v4_relat_1(X26,X24)
        | ~ m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X24,X25))) )
      & ( v5_relat_1(X26,X25)
        | ~ m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X24,X25))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).

fof(c_0_37,plain,(
    ! [X17,X18] :
      ( ( ~ v4_relat_1(X18,X17)
        | r1_tarski(k1_relat_1(X18),X17)
        | ~ v1_relat_1(X18) )
      & ( ~ r1_tarski(k1_relat_1(X18),X17)
        | v4_relat_1(X18,X17)
        | ~ v1_relat_1(X18) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d18_relat_1])])])).

cnf(c_0_38,plain,
    ( k2_zfmisc_1(X1,X2) = k1_xboole_0
    | X1 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_39,negated_conjecture,
    ( esk2_0 = k1_xboole_0
    | r1_tarski(esk4_0,k2_zfmisc_1(X1,X2))
    | ~ r1_tarski(k2_relat_1(esk4_0),X2)
    | ~ r1_tarski(esk1_0,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_32]),c_0_33])])).

cnf(c_0_40,negated_conjecture,
    ( r1_tarski(X1,esk3_0)
    | ~ r1_tarski(X1,esk2_0) ),
    inference(spm,[status(thm)],[c_0_34,c_0_35])).

fof(c_0_41,plain,(
    ! [X19,X20] :
      ( ( ~ v5_relat_1(X20,X19)
        | r1_tarski(k2_relat_1(X20),X19)
        | ~ v1_relat_1(X20) )
      & ( ~ r1_tarski(k2_relat_1(X20),X19)
        | v5_relat_1(X20,X19)
        | ~ v1_relat_1(X20) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d19_relat_1])])])).

cnf(c_0_42,plain,
    ( v5_relat_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

cnf(c_0_43,plain,
    ( k1_relset_1(X1,X2,X3) = k1_relat_1(X3)
    | ~ v1_relat_1(X3)
    | ~ r1_tarski(k1_relat_1(X3),X1)
    | ~ r1_tarski(k2_relat_1(X3),X2) ),
    inference(spm,[status(thm)],[c_0_22,c_0_25])).

cnf(c_0_44,negated_conjecture,
    ( ~ v1_funct_1(esk4_0)
    | ~ v1_funct_2(esk4_0,esk1_0,esk3_0)
    | ~ m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk3_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_45,negated_conjecture,
    ( v1_funct_1(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_46,plain,
    ( r1_tarski(k1_relat_1(X1),X2)
    | ~ v4_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_47,plain,
    ( v4_relat_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

cnf(c_0_48,plain,
    ( k2_zfmisc_1(k1_xboole_0,X1) = k1_xboole_0 ),
    inference(er,[status(thm)],[c_0_38])).

cnf(c_0_49,plain,
    ( v1_funct_2(X3,X1,X2)
    | X2 = k1_xboole_0
    | X1 != k1_relset_1(X1,X2,X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_50,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_51,negated_conjecture,
    ( esk2_0 = k1_xboole_0
    | r1_tarski(esk4_0,k2_zfmisc_1(X1,esk3_0))
    | ~ r1_tarski(k2_relat_1(esk4_0),esk2_0)
    | ~ r1_tarski(esk1_0,X1) ),
    inference(spm,[status(thm)],[c_0_39,c_0_40])).

cnf(c_0_52,plain,
    ( r1_tarski(k2_relat_1(X1),X2)
    | ~ v5_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_41])).

cnf(c_0_53,negated_conjecture,
    ( v5_relat_1(esk4_0,esk2_0) ),
    inference(spm,[status(thm)],[c_0_42,c_0_20])).

cnf(c_0_54,negated_conjecture,
    ( k1_relset_1(X1,X2,esk4_0) = esk1_0
    | esk2_0 = k1_xboole_0
    | ~ r1_tarski(k2_relat_1(esk4_0),X2)
    | ~ r1_tarski(esk1_0,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43,c_0_32]),c_0_33])])).

cnf(c_0_55,negated_conjecture,
    ( ~ v1_funct_2(esk4_0,esk1_0,esk3_0)
    | ~ m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk3_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_44,c_0_45])])).

cnf(c_0_56,negated_conjecture,
    ( esk2_0 = k1_xboole_0
    | r1_tarski(esk1_0,X1)
    | ~ v4_relat_1(esk4_0,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_46,c_0_32]),c_0_33])])).

cnf(c_0_57,negated_conjecture,
    ( v4_relat_1(esk4_0,esk1_0) ),
    inference(spm,[status(thm)],[c_0_47,c_0_20])).

cnf(c_0_58,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(k1_xboole_0))
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(k1_relat_1(X1),k1_xboole_0)
    | ~ r1_tarski(k2_relat_1(X1),X2) ),
    inference(spm,[status(thm)],[c_0_25,c_0_48])).

cnf(c_0_59,plain,
    ( X1 = k1_xboole_0
    | v1_funct_2(X2,X3,X1)
    | k1_relset_1(X3,X1,X2) != X3
    | ~ r1_tarski(X2,k2_zfmisc_1(X3,X1)) ),
    inference(spm,[status(thm)],[c_0_49,c_0_50])).

cnf(c_0_60,negated_conjecture,
    ( esk2_0 = k1_xboole_0
    | r1_tarski(esk4_0,k2_zfmisc_1(X1,esk3_0))
    | ~ r1_tarski(esk1_0,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51,c_0_52]),c_0_53]),c_0_33])])).

cnf(c_0_61,negated_conjecture,
    ( k1_relset_1(X1,esk3_0,esk4_0) = esk1_0
    | esk2_0 = k1_xboole_0
    | ~ r1_tarski(k2_relat_1(esk4_0),esk2_0)
    | ~ r1_tarski(esk1_0,X1) ),
    inference(spm,[status(thm)],[c_0_54,c_0_40])).

cnf(c_0_62,negated_conjecture,
    ( ~ v1_funct_2(esk4_0,esk1_0,esk3_0)
    | ~ r1_tarski(esk4_0,k2_zfmisc_1(esk1_0,esk3_0)) ),
    inference(spm,[status(thm)],[c_0_55,c_0_50])).

cnf(c_0_63,negated_conjecture,
    ( esk2_0 = k1_xboole_0
    | r1_tarski(esk1_0,esk1_0) ),
    inference(spm,[status(thm)],[c_0_56,c_0_57])).

fof(c_0_64,plain,(
    ! [X8] :
      ( ~ r1_tarski(X8,k1_xboole_0)
      | X8 = k1_xboole_0 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_xboole_1])])).

fof(c_0_65,plain,(
    ! [X11] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X11)) ),
    inference(variable_rename,[status(thm)],[t4_subset_1])).

cnf(c_0_66,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(k1_xboole_0))
    | ~ v5_relat_1(X1,X2)
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(k1_relat_1(X1),k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_58,c_0_52])).

cnf(c_0_67,negated_conjecture,
    ( esk2_0 = k1_xboole_0
    | esk3_0 = k1_xboole_0
    | v1_funct_2(esk4_0,X1,esk3_0)
    | k1_relset_1(X1,esk3_0,esk4_0) != X1
    | ~ r1_tarski(esk1_0,X1) ),
    inference(spm,[status(thm)],[c_0_59,c_0_60])).

cnf(c_0_68,negated_conjecture,
    ( k1_relset_1(X1,esk3_0,esk4_0) = esk1_0
    | esk2_0 = k1_xboole_0
    | ~ r1_tarski(esk1_0,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_61,c_0_52]),c_0_53]),c_0_33])])).

cnf(c_0_69,negated_conjecture,
    ( esk2_0 = k1_xboole_0
    | ~ v1_funct_2(esk4_0,esk1_0,esk3_0) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_62,c_0_60]),c_0_63])).

cnf(c_0_70,plain,
    ( X1 = k1_xboole_0
    | ~ r1_tarski(X1,k1_xboole_0) ),
    inference(split_conjunct,[status(thm)],[c_0_64])).

cnf(c_0_71,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_65])).

cnf(c_0_72,plain,
    ( v5_relat_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k1_xboole_0)) ),
    inference(spm,[status(thm)],[c_0_42,c_0_48])).

cnf(c_0_73,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k1_xboole_0))
    | ~ r1_tarski(k1_relat_1(esk4_0),k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_66,c_0_53]),c_0_33])])).

cnf(c_0_74,negated_conjecture,
    ( esk3_0 = k1_xboole_0
    | esk2_0 = k1_xboole_0 ),
    inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(er,[status(thm)],[inference(spm,[status(thm)],[c_0_67,c_0_68])]),c_0_63]),c_0_69])).

cnf(c_0_75,plain,
    ( k1_relat_1(X1) = k1_xboole_0
    | ~ v4_relat_1(X1,k1_xboole_0)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_70,c_0_46])).

cnf(c_0_76,plain,
    ( v4_relat_1(k1_xboole_0,X1) ),
    inference(spm,[status(thm)],[c_0_47,c_0_71])).

cnf(c_0_77,plain,
    ( v1_relat_1(k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_28,c_0_71])).

cnf(c_0_78,plain,
    ( r1_tarski(X1,k2_zfmisc_1(X2,X3))
    | ~ v4_relat_1(X1,X2)
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(k2_relat_1(X1),X3) ),
    inference(spm,[status(thm)],[c_0_31,c_0_46])).

cnf(c_0_79,negated_conjecture,
    ( v5_relat_1(esk4_0,X1)
    | ~ r1_tarski(k1_relat_1(esk4_0),k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_72,c_0_73])).

cnf(c_0_80,negated_conjecture,
    ( esk1_0 = k1_xboole_0
    | esk2_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_81,negated_conjecture,
    ( esk2_0 = k1_xboole_0 ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_35,c_0_74]),c_0_70])).

cnf(c_0_82,plain,
    ( k2_zfmisc_1(X2,X1) = k1_xboole_0
    | X1 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_83,plain,
    ( v1_funct_2(X3,X1,X2)
    | X1 != k1_relset_1(X1,X2,X3)
    | X1 != k1_xboole_0
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_84,plain,
    ( k1_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_75,c_0_76]),c_0_77])])).

cnf(c_0_85,plain,
    ( r1_tarski(X1,k2_zfmisc_1(X2,X3))
    | ~ v5_relat_1(X1,X3)
    | ~ v4_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_78,c_0_52])).

cnf(c_0_86,negated_conjecture,
    ( v5_relat_1(esk4_0,X1)
    | ~ v4_relat_1(esk4_0,k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_79,c_0_46]),c_0_33])])).

cnf(c_0_87,negated_conjecture,
    ( k1_xboole_0 = esk1_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_80,c_0_81])])).

cnf(c_0_88,negated_conjecture,
    ( r1_tarski(esk4_0,k2_zfmisc_1(esk1_0,esk2_0)) ),
    inference(spm,[status(thm)],[c_0_24,c_0_20])).

cnf(c_0_89,plain,
    ( k2_zfmisc_1(X1,k1_xboole_0) = k1_xboole_0 ),
    inference(er,[status(thm)],[c_0_82])).

cnf(c_0_90,plain,
    ( v1_funct_2(X1,k1_xboole_0,X2)
    | k1_relset_1(k1_xboole_0,X2,X1) != k1_xboole_0
    | ~ m1_subset_1(X1,k1_zfmisc_1(k1_xboole_0)) ),
    inference(rw,[status(thm)],[inference(er,[status(thm)],[c_0_83]),c_0_48])).

cnf(c_0_91,plain,
    ( k1_relset_1(X1,X2,k1_xboole_0) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22,c_0_71]),c_0_84])).

cnf(c_0_92,negated_conjecture,
    ( ~ v1_funct_2(esk4_0,esk1_0,esk3_0)
    | ~ v5_relat_1(esk4_0,esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_62,c_0_85]),c_0_57]),c_0_33])])).

cnf(c_0_93,negated_conjecture,
    ( v5_relat_1(esk4_0,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_86,c_0_87]),c_0_57])])).

cnf(c_0_94,plain,
    ( X1 = esk1_0
    | ~ r1_tarski(X1,esk1_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_70,c_0_87]),c_0_87])).

cnf(c_0_95,negated_conjecture,
    ( r1_tarski(esk4_0,esk1_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_88,c_0_81]),c_0_89]),c_0_87])).

cnf(c_0_96,plain,
    ( v1_funct_2(k1_xboole_0,k1_xboole_0,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_90,c_0_71]),c_0_91])])).

cnf(c_0_97,negated_conjecture,
    ( ~ v1_funct_2(esk4_0,esk1_0,esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_92,c_0_93])])).

cnf(c_0_98,negated_conjecture,
    ( esk4_0 = esk1_0 ),
    inference(spm,[status(thm)],[c_0_94,c_0_95])).

cnf(c_0_99,plain,
    ( v1_funct_2(esk1_0,esk1_0,X1) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_96,c_0_87]),c_0_87])).

cnf(c_0_100,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_97,c_0_98]),c_0_99])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n002.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 19:39:51 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.55/0.75  # AutoSched0-Mode selected heuristic G_E___207_C01_F1_SE_CS_SP_PI_S5PRR_S0Y
% 0.55/0.75  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.55/0.75  #
% 0.55/0.75  # Preprocessing time       : 0.035 s
% 0.55/0.75  
% 0.55/0.75  # Proof found!
% 0.55/0.75  # SZS status Theorem
% 0.55/0.75  # SZS output start CNFRefutation
% 0.55/0.75  fof(t9_funct_2, conjecture, ![X1, X2, X3, X4]:(((v1_funct_1(X4)&v1_funct_2(X4,X1,X2))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>(r1_tarski(X2,X3)=>((X2=k1_xboole_0&X1!=k1_xboole_0)|((v1_funct_1(X4)&v1_funct_2(X4,X1,X3))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X3))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t9_funct_2)).
% 0.55/0.75  fof(d1_funct_2, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(((X2=k1_xboole_0=>X1=k1_xboole_0)=>(v1_funct_2(X3,X1,X2)<=>X1=k1_relset_1(X1,X2,X3)))&(X2=k1_xboole_0=>(X1=k1_xboole_0|(v1_funct_2(X3,X1,X2)<=>X3=k1_xboole_0))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d1_funct_2)).
% 0.55/0.75  fof(redefinition_k1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k1_relset_1(X1,X2,X3)=k1_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k1_relset_1)).
% 0.55/0.75  fof(t3_subset, axiom, ![X1, X2]:(m1_subset_1(X1,k1_zfmisc_1(X2))<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t3_subset)).
% 0.55/0.75  fof(t11_relset_1, axiom, ![X1, X2, X3]:(v1_relat_1(X3)=>((r1_tarski(k1_relat_1(X3),X1)&r1_tarski(k2_relat_1(X3),X2))=>m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t11_relset_1)).
% 0.55/0.75  fof(cc1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>v1_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc1_relset_1)).
% 0.55/0.75  fof(t1_xboole_1, axiom, ![X1, X2, X3]:((r1_tarski(X1,X2)&r1_tarski(X2,X3))=>r1_tarski(X1,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t1_xboole_1)).
% 0.55/0.75  fof(t113_zfmisc_1, axiom, ![X1, X2]:(k2_zfmisc_1(X1,X2)=k1_xboole_0<=>(X1=k1_xboole_0|X2=k1_xboole_0)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t113_zfmisc_1)).
% 0.55/0.75  fof(cc2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(v4_relat_1(X3,X1)&v5_relat_1(X3,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc2_relset_1)).
% 0.55/0.75  fof(d18_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(v4_relat_1(X2,X1)<=>r1_tarski(k1_relat_1(X2),X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d18_relat_1)).
% 0.55/0.75  fof(d19_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(v5_relat_1(X2,X1)<=>r1_tarski(k2_relat_1(X2),X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d19_relat_1)).
% 0.55/0.75  fof(t3_xboole_1, axiom, ![X1]:(r1_tarski(X1,k1_xboole_0)=>X1=k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t3_xboole_1)).
% 0.55/0.75  fof(t4_subset_1, axiom, ![X1]:m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t4_subset_1)).
% 0.55/0.75  fof(c_0_13, negated_conjecture, ~(![X1, X2, X3, X4]:(((v1_funct_1(X4)&v1_funct_2(X4,X1,X2))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>(r1_tarski(X2,X3)=>((X2=k1_xboole_0&X1!=k1_xboole_0)|((v1_funct_1(X4)&v1_funct_2(X4,X1,X3))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))))))), inference(assume_negation,[status(cth)],[t9_funct_2])).
% 0.55/0.75  fof(c_0_14, plain, ![X33, X34, X35]:((((~v1_funct_2(X35,X33,X34)|X33=k1_relset_1(X33,X34,X35)|X34=k1_xboole_0|~m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X33,X34))))&(X33!=k1_relset_1(X33,X34,X35)|v1_funct_2(X35,X33,X34)|X34=k1_xboole_0|~m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X33,X34)))))&((~v1_funct_2(X35,X33,X34)|X33=k1_relset_1(X33,X34,X35)|X33!=k1_xboole_0|~m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X33,X34))))&(X33!=k1_relset_1(X33,X34,X35)|v1_funct_2(X35,X33,X34)|X33!=k1_xboole_0|~m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X33,X34))))))&((~v1_funct_2(X35,X33,X34)|X35=k1_xboole_0|X33=k1_xboole_0|X34!=k1_xboole_0|~m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X33,X34))))&(X35!=k1_xboole_0|v1_funct_2(X35,X33,X34)|X33=k1_xboole_0|X34!=k1_xboole_0|~m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X33,X34)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).
% 0.55/0.75  fof(c_0_15, negated_conjecture, (((v1_funct_1(esk4_0)&v1_funct_2(esk4_0,esk1_0,esk2_0))&m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0))))&(r1_tarski(esk2_0,esk3_0)&((esk2_0!=k1_xboole_0|esk1_0=k1_xboole_0)&(~v1_funct_1(esk4_0)|~v1_funct_2(esk4_0,esk1_0,esk3_0)|~m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk3_0))))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_13])])])).
% 0.55/0.75  fof(c_0_16, plain, ![X27, X28, X29]:(~m1_subset_1(X29,k1_zfmisc_1(k2_zfmisc_1(X27,X28)))|k1_relset_1(X27,X28,X29)=k1_relat_1(X29)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).
% 0.55/0.75  fof(c_0_17, plain, ![X12, X13]:((~m1_subset_1(X12,k1_zfmisc_1(X13))|r1_tarski(X12,X13))&(~r1_tarski(X12,X13)|m1_subset_1(X12,k1_zfmisc_1(X13)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).
% 0.55/0.75  fof(c_0_18, plain, ![X30, X31, X32]:(~v1_relat_1(X32)|(~r1_tarski(k1_relat_1(X32),X30)|~r1_tarski(k2_relat_1(X32),X31)|m1_subset_1(X32,k1_zfmisc_1(k2_zfmisc_1(X30,X31))))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t11_relset_1])])).
% 0.55/0.75  cnf(c_0_19, plain, (X2=k1_relset_1(X2,X3,X1)|X3=k1_xboole_0|~v1_funct_2(X1,X2,X3)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.55/0.75  cnf(c_0_20, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0)))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.55/0.75  cnf(c_0_21, negated_conjecture, (v1_funct_2(esk4_0,esk1_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.55/0.75  cnf(c_0_22, plain, (k1_relset_1(X2,X3,X1)=k1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.55/0.75  fof(c_0_23, plain, ![X21, X22, X23]:(~m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22)))|v1_relat_1(X23)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).
% 0.55/0.75  cnf(c_0_24, plain, (r1_tarski(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.55/0.75  cnf(c_0_25, plain, (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~v1_relat_1(X1)|~r1_tarski(k1_relat_1(X1),X2)|~r1_tarski(k2_relat_1(X1),X3)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.55/0.75  cnf(c_0_26, negated_conjecture, (k1_relset_1(esk1_0,esk2_0,esk4_0)=esk1_0|esk2_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19, c_0_20]), c_0_21])])).
% 0.55/0.75  cnf(c_0_27, negated_conjecture, (k1_relset_1(esk1_0,esk2_0,esk4_0)=k1_relat_1(esk4_0)), inference(spm,[status(thm)],[c_0_22, c_0_20])).
% 0.55/0.75  cnf(c_0_28, plain, (v1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.55/0.75  fof(c_0_29, plain, ![X5, X6, X7]:(~r1_tarski(X5,X6)|~r1_tarski(X6,X7)|r1_tarski(X5,X7)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_xboole_1])])).
% 0.55/0.75  fof(c_0_30, plain, ![X9, X10]:((k2_zfmisc_1(X9,X10)!=k1_xboole_0|(X9=k1_xboole_0|X10=k1_xboole_0))&((X9!=k1_xboole_0|k2_zfmisc_1(X9,X10)=k1_xboole_0)&(X10!=k1_xboole_0|k2_zfmisc_1(X9,X10)=k1_xboole_0))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t113_zfmisc_1])])])).
% 0.55/0.75  cnf(c_0_31, plain, (r1_tarski(X1,k2_zfmisc_1(X2,X3))|~v1_relat_1(X1)|~r1_tarski(k1_relat_1(X1),X2)|~r1_tarski(k2_relat_1(X1),X3)), inference(spm,[status(thm)],[c_0_24, c_0_25])).
% 0.55/0.75  cnf(c_0_32, negated_conjecture, (k1_relat_1(esk4_0)=esk1_0|esk2_0=k1_xboole_0), inference(spm,[status(thm)],[c_0_26, c_0_27])).
% 0.55/0.75  cnf(c_0_33, negated_conjecture, (v1_relat_1(esk4_0)), inference(spm,[status(thm)],[c_0_28, c_0_20])).
% 0.55/0.75  cnf(c_0_34, plain, (r1_tarski(X1,X3)|~r1_tarski(X1,X2)|~r1_tarski(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.55/0.75  cnf(c_0_35, negated_conjecture, (r1_tarski(esk2_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.55/0.75  fof(c_0_36, plain, ![X24, X25, X26]:((v4_relat_1(X26,X24)|~m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X24,X25))))&(v5_relat_1(X26,X25)|~m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X24,X25))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).
% 0.55/0.75  fof(c_0_37, plain, ![X17, X18]:((~v4_relat_1(X18,X17)|r1_tarski(k1_relat_1(X18),X17)|~v1_relat_1(X18))&(~r1_tarski(k1_relat_1(X18),X17)|v4_relat_1(X18,X17)|~v1_relat_1(X18))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d18_relat_1])])])).
% 0.55/0.75  cnf(c_0_38, plain, (k2_zfmisc_1(X1,X2)=k1_xboole_0|X1!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.55/0.75  cnf(c_0_39, negated_conjecture, (esk2_0=k1_xboole_0|r1_tarski(esk4_0,k2_zfmisc_1(X1,X2))|~r1_tarski(k2_relat_1(esk4_0),X2)|~r1_tarski(esk1_0,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_32]), c_0_33])])).
% 0.55/0.75  cnf(c_0_40, negated_conjecture, (r1_tarski(X1,esk3_0)|~r1_tarski(X1,esk2_0)), inference(spm,[status(thm)],[c_0_34, c_0_35])).
% 0.55/0.75  fof(c_0_41, plain, ![X19, X20]:((~v5_relat_1(X20,X19)|r1_tarski(k2_relat_1(X20),X19)|~v1_relat_1(X20))&(~r1_tarski(k2_relat_1(X20),X19)|v5_relat_1(X20,X19)|~v1_relat_1(X20))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d19_relat_1])])])).
% 0.55/0.75  cnf(c_0_42, plain, (v5_relat_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))), inference(split_conjunct,[status(thm)],[c_0_36])).
% 0.55/0.75  cnf(c_0_43, plain, (k1_relset_1(X1,X2,X3)=k1_relat_1(X3)|~v1_relat_1(X3)|~r1_tarski(k1_relat_1(X3),X1)|~r1_tarski(k2_relat_1(X3),X2)), inference(spm,[status(thm)],[c_0_22, c_0_25])).
% 0.55/0.75  cnf(c_0_44, negated_conjecture, (~v1_funct_1(esk4_0)|~v1_funct_2(esk4_0,esk1_0,esk3_0)|~m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk3_0)))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.55/0.75  cnf(c_0_45, negated_conjecture, (v1_funct_1(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.55/0.75  cnf(c_0_46, plain, (r1_tarski(k1_relat_1(X1),X2)|~v4_relat_1(X1,X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_37])).
% 0.55/0.75  cnf(c_0_47, plain, (v4_relat_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_36])).
% 0.55/0.75  cnf(c_0_48, plain, (k2_zfmisc_1(k1_xboole_0,X1)=k1_xboole_0), inference(er,[status(thm)],[c_0_38])).
% 0.55/0.75  cnf(c_0_49, plain, (v1_funct_2(X3,X1,X2)|X2=k1_xboole_0|X1!=k1_relset_1(X1,X2,X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.55/0.75  cnf(c_0_50, plain, (m1_subset_1(X1,k1_zfmisc_1(X2))|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.55/0.75  cnf(c_0_51, negated_conjecture, (esk2_0=k1_xboole_0|r1_tarski(esk4_0,k2_zfmisc_1(X1,esk3_0))|~r1_tarski(k2_relat_1(esk4_0),esk2_0)|~r1_tarski(esk1_0,X1)), inference(spm,[status(thm)],[c_0_39, c_0_40])).
% 0.55/0.75  cnf(c_0_52, plain, (r1_tarski(k2_relat_1(X1),X2)|~v5_relat_1(X1,X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_41])).
% 0.55/0.75  cnf(c_0_53, negated_conjecture, (v5_relat_1(esk4_0,esk2_0)), inference(spm,[status(thm)],[c_0_42, c_0_20])).
% 0.55/0.75  cnf(c_0_54, negated_conjecture, (k1_relset_1(X1,X2,esk4_0)=esk1_0|esk2_0=k1_xboole_0|~r1_tarski(k2_relat_1(esk4_0),X2)|~r1_tarski(esk1_0,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43, c_0_32]), c_0_33])])).
% 0.55/0.75  cnf(c_0_55, negated_conjecture, (~v1_funct_2(esk4_0,esk1_0,esk3_0)|~m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk3_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_44, c_0_45])])).
% 0.55/0.75  cnf(c_0_56, negated_conjecture, (esk2_0=k1_xboole_0|r1_tarski(esk1_0,X1)|~v4_relat_1(esk4_0,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_46, c_0_32]), c_0_33])])).
% 0.55/0.75  cnf(c_0_57, negated_conjecture, (v4_relat_1(esk4_0,esk1_0)), inference(spm,[status(thm)],[c_0_47, c_0_20])).
% 0.55/0.75  cnf(c_0_58, plain, (m1_subset_1(X1,k1_zfmisc_1(k1_xboole_0))|~v1_relat_1(X1)|~r1_tarski(k1_relat_1(X1),k1_xboole_0)|~r1_tarski(k2_relat_1(X1),X2)), inference(spm,[status(thm)],[c_0_25, c_0_48])).
% 0.55/0.75  cnf(c_0_59, plain, (X1=k1_xboole_0|v1_funct_2(X2,X3,X1)|k1_relset_1(X3,X1,X2)!=X3|~r1_tarski(X2,k2_zfmisc_1(X3,X1))), inference(spm,[status(thm)],[c_0_49, c_0_50])).
% 0.55/0.75  cnf(c_0_60, negated_conjecture, (esk2_0=k1_xboole_0|r1_tarski(esk4_0,k2_zfmisc_1(X1,esk3_0))|~r1_tarski(esk1_0,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51, c_0_52]), c_0_53]), c_0_33])])).
% 0.55/0.75  cnf(c_0_61, negated_conjecture, (k1_relset_1(X1,esk3_0,esk4_0)=esk1_0|esk2_0=k1_xboole_0|~r1_tarski(k2_relat_1(esk4_0),esk2_0)|~r1_tarski(esk1_0,X1)), inference(spm,[status(thm)],[c_0_54, c_0_40])).
% 0.55/0.75  cnf(c_0_62, negated_conjecture, (~v1_funct_2(esk4_0,esk1_0,esk3_0)|~r1_tarski(esk4_0,k2_zfmisc_1(esk1_0,esk3_0))), inference(spm,[status(thm)],[c_0_55, c_0_50])).
% 0.55/0.75  cnf(c_0_63, negated_conjecture, (esk2_0=k1_xboole_0|r1_tarski(esk1_0,esk1_0)), inference(spm,[status(thm)],[c_0_56, c_0_57])).
% 0.55/0.75  fof(c_0_64, plain, ![X8]:(~r1_tarski(X8,k1_xboole_0)|X8=k1_xboole_0), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_xboole_1])])).
% 0.55/0.75  fof(c_0_65, plain, ![X11]:m1_subset_1(k1_xboole_0,k1_zfmisc_1(X11)), inference(variable_rename,[status(thm)],[t4_subset_1])).
% 0.55/0.75  cnf(c_0_66, plain, (m1_subset_1(X1,k1_zfmisc_1(k1_xboole_0))|~v5_relat_1(X1,X2)|~v1_relat_1(X1)|~r1_tarski(k1_relat_1(X1),k1_xboole_0)), inference(spm,[status(thm)],[c_0_58, c_0_52])).
% 0.55/0.75  cnf(c_0_67, negated_conjecture, (esk2_0=k1_xboole_0|esk3_0=k1_xboole_0|v1_funct_2(esk4_0,X1,esk3_0)|k1_relset_1(X1,esk3_0,esk4_0)!=X1|~r1_tarski(esk1_0,X1)), inference(spm,[status(thm)],[c_0_59, c_0_60])).
% 0.55/0.75  cnf(c_0_68, negated_conjecture, (k1_relset_1(X1,esk3_0,esk4_0)=esk1_0|esk2_0=k1_xboole_0|~r1_tarski(esk1_0,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_61, c_0_52]), c_0_53]), c_0_33])])).
% 0.55/0.75  cnf(c_0_69, negated_conjecture, (esk2_0=k1_xboole_0|~v1_funct_2(esk4_0,esk1_0,esk3_0)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_62, c_0_60]), c_0_63])).
% 0.55/0.75  cnf(c_0_70, plain, (X1=k1_xboole_0|~r1_tarski(X1,k1_xboole_0)), inference(split_conjunct,[status(thm)],[c_0_64])).
% 0.55/0.75  cnf(c_0_71, plain, (m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_65])).
% 0.55/0.75  cnf(c_0_72, plain, (v5_relat_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(k1_xboole_0))), inference(spm,[status(thm)],[c_0_42, c_0_48])).
% 0.55/0.75  cnf(c_0_73, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(k1_xboole_0))|~r1_tarski(k1_relat_1(esk4_0),k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_66, c_0_53]), c_0_33])])).
% 0.55/0.75  cnf(c_0_74, negated_conjecture, (esk3_0=k1_xboole_0|esk2_0=k1_xboole_0), inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(er,[status(thm)],[inference(spm,[status(thm)],[c_0_67, c_0_68])]), c_0_63]), c_0_69])).
% 0.55/0.75  cnf(c_0_75, plain, (k1_relat_1(X1)=k1_xboole_0|~v4_relat_1(X1,k1_xboole_0)|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_70, c_0_46])).
% 0.55/0.75  cnf(c_0_76, plain, (v4_relat_1(k1_xboole_0,X1)), inference(spm,[status(thm)],[c_0_47, c_0_71])).
% 0.55/0.75  cnf(c_0_77, plain, (v1_relat_1(k1_xboole_0)), inference(spm,[status(thm)],[c_0_28, c_0_71])).
% 0.55/0.75  cnf(c_0_78, plain, (r1_tarski(X1,k2_zfmisc_1(X2,X3))|~v4_relat_1(X1,X2)|~v1_relat_1(X1)|~r1_tarski(k2_relat_1(X1),X3)), inference(spm,[status(thm)],[c_0_31, c_0_46])).
% 0.55/0.75  cnf(c_0_79, negated_conjecture, (v5_relat_1(esk4_0,X1)|~r1_tarski(k1_relat_1(esk4_0),k1_xboole_0)), inference(spm,[status(thm)],[c_0_72, c_0_73])).
% 0.55/0.75  cnf(c_0_80, negated_conjecture, (esk1_0=k1_xboole_0|esk2_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.55/0.75  cnf(c_0_81, negated_conjecture, (esk2_0=k1_xboole_0), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_35, c_0_74]), c_0_70])).
% 0.55/0.75  cnf(c_0_82, plain, (k2_zfmisc_1(X2,X1)=k1_xboole_0|X1!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.55/0.75  cnf(c_0_83, plain, (v1_funct_2(X3,X1,X2)|X1!=k1_relset_1(X1,X2,X3)|X1!=k1_xboole_0|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.55/0.75  cnf(c_0_84, plain, (k1_relat_1(k1_xboole_0)=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_75, c_0_76]), c_0_77])])).
% 0.55/0.75  cnf(c_0_85, plain, (r1_tarski(X1,k2_zfmisc_1(X2,X3))|~v5_relat_1(X1,X3)|~v4_relat_1(X1,X2)|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_78, c_0_52])).
% 0.55/0.75  cnf(c_0_86, negated_conjecture, (v5_relat_1(esk4_0,X1)|~v4_relat_1(esk4_0,k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_79, c_0_46]), c_0_33])])).
% 0.55/0.75  cnf(c_0_87, negated_conjecture, (k1_xboole_0=esk1_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_80, c_0_81])])).
% 0.55/0.75  cnf(c_0_88, negated_conjecture, (r1_tarski(esk4_0,k2_zfmisc_1(esk1_0,esk2_0))), inference(spm,[status(thm)],[c_0_24, c_0_20])).
% 0.55/0.75  cnf(c_0_89, plain, (k2_zfmisc_1(X1,k1_xboole_0)=k1_xboole_0), inference(er,[status(thm)],[c_0_82])).
% 0.55/0.75  cnf(c_0_90, plain, (v1_funct_2(X1,k1_xboole_0,X2)|k1_relset_1(k1_xboole_0,X2,X1)!=k1_xboole_0|~m1_subset_1(X1,k1_zfmisc_1(k1_xboole_0))), inference(rw,[status(thm)],[inference(er,[status(thm)],[c_0_83]), c_0_48])).
% 0.55/0.75  cnf(c_0_91, plain, (k1_relset_1(X1,X2,k1_xboole_0)=k1_xboole_0), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22, c_0_71]), c_0_84])).
% 0.55/0.75  cnf(c_0_92, negated_conjecture, (~v1_funct_2(esk4_0,esk1_0,esk3_0)|~v5_relat_1(esk4_0,esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_62, c_0_85]), c_0_57]), c_0_33])])).
% 0.55/0.75  cnf(c_0_93, negated_conjecture, (v5_relat_1(esk4_0,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_86, c_0_87]), c_0_57])])).
% 0.55/0.75  cnf(c_0_94, plain, (X1=esk1_0|~r1_tarski(X1,esk1_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_70, c_0_87]), c_0_87])).
% 0.55/0.75  cnf(c_0_95, negated_conjecture, (r1_tarski(esk4_0,esk1_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_88, c_0_81]), c_0_89]), c_0_87])).
% 0.55/0.75  cnf(c_0_96, plain, (v1_funct_2(k1_xboole_0,k1_xboole_0,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_90, c_0_71]), c_0_91])])).
% 0.55/0.75  cnf(c_0_97, negated_conjecture, (~v1_funct_2(esk4_0,esk1_0,esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_92, c_0_93])])).
% 0.55/0.75  cnf(c_0_98, negated_conjecture, (esk4_0=esk1_0), inference(spm,[status(thm)],[c_0_94, c_0_95])).
% 0.55/0.75  cnf(c_0_99, plain, (v1_funct_2(esk1_0,esk1_0,X1)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_96, c_0_87]), c_0_87])).
% 0.55/0.75  cnf(c_0_100, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_97, c_0_98]), c_0_99])]), ['proof']).
% 0.55/0.75  # SZS output end CNFRefutation
% 0.55/0.75  # Proof object total steps             : 101
% 0.55/0.75  # Proof object clause steps            : 74
% 0.55/0.75  # Proof object formula steps           : 27
% 0.55/0.75  # Proof object conjectures             : 41
% 0.55/0.75  # Proof object clause conjectures      : 38
% 0.55/0.75  # Proof object formula conjectures     : 3
% 0.55/0.75  # Proof object initial clauses used    : 23
% 0.55/0.75  # Proof object initial formulas used   : 13
% 0.55/0.75  # Proof object generating inferences   : 40
% 0.55/0.75  # Proof object simplifying inferences  : 54
% 0.55/0.75  # Training examples: 0 positive, 0 negative
% 0.55/0.75  # Parsed axioms                        : 14
% 0.55/0.75  # Removed by relevancy pruning/SinE    : 0
% 0.55/0.75  # Initial clauses                      : 30
% 0.55/0.75  # Removed in clause preprocessing      : 0
% 0.55/0.75  # Initial clauses in saturation        : 30
% 0.55/0.75  # Processed clauses                    : 4828
% 0.55/0.75  # ...of these trivial                  : 20
% 0.55/0.75  # ...subsumed                          : 3804
% 0.55/0.75  # ...remaining for further processing  : 1004
% 0.55/0.75  # Other redundant clauses eliminated   : 188
% 0.55/0.75  # Clauses deleted for lack of memory   : 0
% 0.55/0.75  # Backward-subsumed                    : 194
% 0.55/0.75  # Backward-rewritten                   : 723
% 0.55/0.75  # Generated clauses                    : 18248
% 0.55/0.75  # ...of the previous two non-trivial   : 15041
% 0.55/0.75  # Contextual simplify-reflections      : 229
% 0.55/0.75  # Paramodulations                      : 18061
% 0.55/0.75  # Factorizations                       : 0
% 0.55/0.75  # Equation resolutions                 : 188
% 0.55/0.75  # Propositional unsat checks           : 0
% 0.55/0.75  #    Propositional check models        : 0
% 0.55/0.75  #    Propositional check unsatisfiable : 0
% 0.55/0.75  #    Propositional clauses             : 0
% 0.55/0.75  #    Propositional clauses after purity: 0
% 0.55/0.75  #    Propositional unsat core size     : 0
% 0.55/0.75  #    Propositional preprocessing time  : 0.000
% 0.55/0.75  #    Propositional encoding time       : 0.000
% 0.55/0.75  #    Propositional solver time         : 0.000
% 0.55/0.75  #    Success case prop preproc time    : 0.000
% 0.55/0.75  #    Success case prop encoding time   : 0.000
% 0.55/0.75  #    Success case prop solver time     : 0.000
% 0.55/0.75  # Current number of processed clauses  : 80
% 0.55/0.75  #    Positive orientable unit clauses  : 13
% 0.55/0.75  #    Positive unorientable unit clauses: 0
% 0.55/0.75  #    Negative unit clauses             : 0
% 0.55/0.75  #    Non-unit-clauses                  : 67
% 0.55/0.75  # Current number of unprocessed clauses: 9965
% 0.55/0.75  # ...number of literals in the above   : 55665
% 0.55/0.75  # Current number of archived formulas  : 0
% 0.55/0.75  # Current number of archived clauses   : 917
% 0.55/0.75  # Clause-clause subsumption calls (NU) : 449847
% 0.55/0.75  # Rec. Clause-clause subsumption calls : 161482
% 0.55/0.75  # Non-unit clause-clause subsumptions  : 4223
% 0.55/0.75  # Unit Clause-clause subsumption calls : 1639
% 0.55/0.75  # Rewrite failures with RHS unbound    : 0
% 0.55/0.75  # BW rewrite match attempts            : 18
% 0.55/0.75  # BW rewrite match successes           : 12
% 0.55/0.75  # Condensation attempts                : 0
% 0.55/0.75  # Condensation successes               : 0
% 0.55/0.75  # Termbank termtop insertions          : 303086
% 0.55/0.75  
% 0.55/0.75  # -------------------------------------------------
% 0.55/0.75  # User time                : 0.400 s
% 0.55/0.75  # System time              : 0.008 s
% 0.55/0.75  # Total time               : 0.408 s
% 0.55/0.75  # Maximum resident set size: 1584 pages
%------------------------------------------------------------------------------
