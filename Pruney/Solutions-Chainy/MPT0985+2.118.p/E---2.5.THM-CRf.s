%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n022.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:02:49 EST 2020

% Result     : Theorem 7.70s
% Output     : CNFRefutation 7.70s
% Verified   : 
% Statistics : Number of formulae       :  160 (62403 expanded)
%              Number of clauses        :  135 (26332 expanded)
%              Number of leaves         :   12 (15048 expanded)
%              Depth                    :   40
%              Number of atoms          :  553 (296507 expanded)
%              Number of equality atoms :   72 (50696 expanded)
%              Maximal formula depth    :   14 (   4 average)
%              Maximal clause size      :   26 (   3 average)
%              Maximal term depth       :    5 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t31_funct_2,conjecture,(
    ! [X1,X2,X3] :
      ( ( v1_funct_1(X3)
        & v1_funct_2(X3,X1,X2)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => ( ( v2_funct_1(X3)
          & k2_relset_1(X1,X2,X3) = X2 )
       => ( v1_funct_1(k2_funct_1(X3))
          & v1_funct_2(k2_funct_1(X3),X2,X1)
          & m1_subset_1(k2_funct_1(X3),k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t31_funct_2)).

fof(fc6_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1)
        & v2_funct_1(X1) )
     => ( v1_relat_1(k2_funct_1(X1))
        & v1_funct_1(k2_funct_1(X1))
        & v2_funct_1(k2_funct_1(X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc6_funct_1)).

fof(cc1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => v1_relat_1(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc1_relset_1)).

fof(t3_funct_2,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v1_funct_1(X1)
        & v1_funct_2(X1,k1_relat_1(X1),k2_relat_1(X1))
        & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1)))) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_funct_2)).

fof(redefinition_k2_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k2_relset_1(X1,X2,X3) = k2_relat_1(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k2_relset_1)).

fof(t55_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v2_funct_1(X1)
       => ( k2_relat_1(X1) = k1_relat_1(k2_funct_1(X1))
          & k1_relat_1(X1) = k2_relat_1(k2_funct_1(X1)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t55_funct_1)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d10_xboole_0)).

fof(t3_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X2))
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_subset)).

fof(dt_k1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => m1_subset_1(k1_relset_1(X1,X2,X3),k1_zfmisc_1(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k1_relset_1)).

fof(redefinition_k1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k1_relset_1(X1,X2,X3) = k1_relat_1(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k1_relset_1)).

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

fof(t4_funct_2,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v1_funct_1(X2) )
     => ( r1_tarski(k2_relat_1(X2),X1)
       => ( v1_funct_1(X2)
          & v1_funct_2(X2,k1_relat_1(X2),X1)
          & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X2),X1))) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t4_funct_2)).

fof(c_0_12,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( ( v1_funct_1(X3)
          & v1_funct_2(X3,X1,X2)
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
       => ( ( v2_funct_1(X3)
            & k2_relset_1(X1,X2,X3) = X2 )
         => ( v1_funct_1(k2_funct_1(X3))
            & v1_funct_2(k2_funct_1(X3),X2,X1)
            & m1_subset_1(k2_funct_1(X3),k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ) ) ) ),
    inference(assume_negation,[status(cth)],[t31_funct_2])).

fof(c_0_13,plain,(
    ! [X8] :
      ( ( v1_relat_1(k2_funct_1(X8))
        | ~ v1_relat_1(X8)
        | ~ v1_funct_1(X8)
        | ~ v2_funct_1(X8) )
      & ( v1_funct_1(k2_funct_1(X8))
        | ~ v1_relat_1(X8)
        | ~ v1_funct_1(X8)
        | ~ v2_funct_1(X8) )
      & ( v2_funct_1(k2_funct_1(X8))
        | ~ v1_relat_1(X8)
        | ~ v1_funct_1(X8)
        | ~ v2_funct_1(X8) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[fc6_funct_1])])])).

fof(c_0_14,negated_conjecture,
    ( v1_funct_1(esk3_0)
    & v1_funct_2(esk3_0,esk1_0,esk2_0)
    & m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0)))
    & v2_funct_1(esk3_0)
    & k2_relset_1(esk1_0,esk2_0,esk3_0) = esk2_0
    & ( ~ v1_funct_1(k2_funct_1(esk3_0))
      | ~ v1_funct_2(k2_funct_1(esk3_0),esk2_0,esk1_0)
      | ~ m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk1_0))) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_12])])])).

cnf(c_0_15,plain,
    ( v1_funct_1(k2_funct_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v2_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_16,negated_conjecture,
    ( v2_funct_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_17,negated_conjecture,
    ( v1_funct_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

fof(c_0_18,plain,(
    ! [X10,X11,X12] :
      ( ~ m1_subset_1(X12,k1_zfmisc_1(k2_zfmisc_1(X10,X11)))
      | v1_relat_1(X12) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).

fof(c_0_19,plain,(
    ! [X25] :
      ( ( v1_funct_1(X25)
        | ~ v1_relat_1(X25)
        | ~ v1_funct_1(X25) )
      & ( v1_funct_2(X25,k1_relat_1(X25),k2_relat_1(X25))
        | ~ v1_relat_1(X25)
        | ~ v1_funct_1(X25) )
      & ( m1_subset_1(X25,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X25),k2_relat_1(X25))))
        | ~ v1_relat_1(X25)
        | ~ v1_funct_1(X25) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_funct_2])])])).

cnf(c_0_20,negated_conjecture,
    ( v1_funct_1(k2_funct_1(esk3_0))
    | ~ v1_relat_1(esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_15,c_0_16]),c_0_17])])).

cnf(c_0_21,plain,
    ( v1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_22,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1))))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_23,negated_conjecture,
    ( v1_funct_1(k2_funct_1(esk3_0))
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(spm,[status(thm)],[c_0_20,c_0_21])).

cnf(c_0_24,plain,
    ( v1_relat_1(k2_funct_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v2_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_25,negated_conjecture,
    ( m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(k2_funct_1(esk3_0)),k2_relat_1(k2_funct_1(esk3_0)))))
    | ~ v1_relat_1(k2_funct_1(esk3_0))
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(spm,[status(thm)],[c_0_22,c_0_23])).

cnf(c_0_26,negated_conjecture,
    ( v1_relat_1(k2_funct_1(esk3_0))
    | ~ v1_relat_1(esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24,c_0_16]),c_0_17])])).

fof(c_0_27,plain,(
    ! [X19,X20,X21] :
      ( ~ m1_subset_1(X21,k1_zfmisc_1(k2_zfmisc_1(X19,X20)))
      | k2_relset_1(X19,X20,X21) = k2_relat_1(X21) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_relset_1])])).

cnf(c_0_28,negated_conjecture,
    ( m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(k2_funct_1(esk3_0)),k2_relat_1(k2_funct_1(esk3_0)))))
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_25,c_0_26]),c_0_21])).

cnf(c_0_29,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

fof(c_0_30,plain,(
    ! [X9] :
      ( ( k2_relat_1(X9) = k1_relat_1(k2_funct_1(X9))
        | ~ v2_funct_1(X9)
        | ~ v1_relat_1(X9)
        | ~ v1_funct_1(X9) )
      & ( k1_relat_1(X9) = k2_relat_1(k2_funct_1(X9))
        | ~ v2_funct_1(X9)
        | ~ v1_relat_1(X9)
        | ~ v1_funct_1(X9) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t55_funct_1])])])).

cnf(c_0_31,negated_conjecture,
    ( k2_relset_1(esk1_0,esk2_0,esk3_0) = esk2_0 ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_32,plain,
    ( k2_relset_1(X2,X3,X1) = k2_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_33,negated_conjecture,
    ( m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(k2_funct_1(esk3_0)),k2_relat_1(k2_funct_1(esk3_0))))) ),
    inference(spm,[status(thm)],[c_0_28,c_0_29])).

cnf(c_0_34,plain,
    ( k2_relat_1(X1) = k1_relat_1(k2_funct_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_35,negated_conjecture,
    ( k2_relat_1(esk3_0) = esk2_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_32]),c_0_29])])).

cnf(c_0_36,negated_conjecture,
    ( m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,k2_relat_1(k2_funct_1(esk3_0)))))
    | ~ v1_relat_1(esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_34]),c_0_35]),c_0_16]),c_0_17])])).

cnf(c_0_37,negated_conjecture,
    ( m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,k2_relat_1(k2_funct_1(esk3_0)))))
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(spm,[status(thm)],[c_0_36,c_0_21])).

fof(c_0_38,plain,(
    ! [X4,X5] :
      ( ( r1_tarski(X4,X5)
        | X4 != X5 )
      & ( r1_tarski(X5,X4)
        | X4 != X5 )
      & ( ~ r1_tarski(X4,X5)
        | ~ r1_tarski(X5,X4)
        | X4 = X5 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

cnf(c_0_39,negated_conjecture,
    ( m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,k2_relat_1(k2_funct_1(esk3_0))))) ),
    inference(spm,[status(thm)],[c_0_37,c_0_29])).

cnf(c_0_40,plain,
    ( k1_relat_1(X1) = k2_relat_1(k2_funct_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_41,negated_conjecture,
    ( ~ v1_funct_1(k2_funct_1(esk3_0))
    | ~ v1_funct_2(k2_funct_1(esk3_0),esk2_0,esk1_0)
    | ~ m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_42,plain,
    ( X1 = X2
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_38])).

cnf(c_0_43,negated_conjecture,
    ( m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,k1_relat_1(esk3_0))))
    | ~ v1_relat_1(esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39,c_0_40]),c_0_16]),c_0_17])])).

cnf(c_0_44,negated_conjecture,
    ( ~ v1_funct_2(k2_funct_1(esk3_0),esk2_0,X1)
    | ~ v1_funct_1(k2_funct_1(esk3_0))
    | ~ m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,X1)))
    | ~ r1_tarski(X1,esk1_0)
    | ~ r1_tarski(esk1_0,X1) ),
    inference(spm,[status(thm)],[c_0_41,c_0_42])).

cnf(c_0_45,negated_conjecture,
    ( m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,k1_relat_1(esk3_0))))
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(spm,[status(thm)],[c_0_43,c_0_21])).

cnf(c_0_46,plain,
    ( r1_tarski(X1,X2)
    | X2 != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_38])).

cnf(c_0_47,negated_conjecture,
    ( ~ v1_funct_2(X1,esk2_0,X2)
    | ~ v1_funct_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(esk2_0,X2)))
    | ~ r1_tarski(X1,k2_funct_1(esk3_0))
    | ~ r1_tarski(k2_funct_1(esk3_0),X1)
    | ~ r1_tarski(X2,esk1_0)
    | ~ r1_tarski(esk1_0,X2) ),
    inference(spm,[status(thm)],[c_0_44,c_0_42])).

cnf(c_0_48,negated_conjecture,
    ( m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,k1_relat_1(esk3_0)))) ),
    inference(spm,[status(thm)],[c_0_45,c_0_29])).

cnf(c_0_49,plain,
    ( r1_tarski(X1,X1) ),
    inference(er,[status(thm)],[c_0_46])).

cnf(c_0_50,negated_conjecture,
    ( ~ v1_funct_2(k2_funct_1(esk3_0),esk2_0,k1_relat_1(esk3_0))
    | ~ v1_funct_1(k2_funct_1(esk3_0))
    | ~ r1_tarski(k1_relat_1(esk3_0),esk1_0)
    | ~ r1_tarski(esk1_0,k1_relat_1(esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47,c_0_48]),c_0_49])])).

fof(c_0_51,plain,(
    ! [X6,X7] :
      ( ( ~ m1_subset_1(X6,k1_zfmisc_1(X7))
        | r1_tarski(X6,X7) )
      & ( ~ r1_tarski(X6,X7)
        | m1_subset_1(X6,k1_zfmisc_1(X7)) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).

fof(c_0_52,plain,(
    ! [X13,X14,X15] :
      ( ~ m1_subset_1(X15,k1_zfmisc_1(k2_zfmisc_1(X13,X14)))
      | m1_subset_1(k1_relset_1(X13,X14,X15),k1_zfmisc_1(X13)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k1_relset_1])])).

fof(c_0_53,plain,(
    ! [X16,X17,X18] :
      ( ~ m1_subset_1(X18,k1_zfmisc_1(k2_zfmisc_1(X16,X17)))
      | k1_relset_1(X16,X17,X18) = k1_relat_1(X18) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).

cnf(c_0_54,negated_conjecture,
    ( ~ v1_funct_2(k2_funct_1(esk3_0),X1,k1_relat_1(esk3_0))
    | ~ v1_funct_1(k2_funct_1(esk3_0))
    | ~ r1_tarski(k1_relat_1(esk3_0),esk1_0)
    | ~ r1_tarski(esk1_0,k1_relat_1(esk3_0))
    | ~ r1_tarski(X1,esk2_0)
    | ~ r1_tarski(esk2_0,X1) ),
    inference(spm,[status(thm)],[c_0_50,c_0_42])).

cnf(c_0_55,plain,
    ( r1_tarski(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_51])).

cnf(c_0_56,negated_conjecture,
    ( v1_funct_1(k2_funct_1(X1))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ r1_tarski(X1,esk3_0)
    | ~ r1_tarski(esk3_0,X1) ),
    inference(spm,[status(thm)],[c_0_23,c_0_42])).

cnf(c_0_57,plain,
    ( m1_subset_1(k1_relset_1(X2,X3,X1),k1_zfmisc_1(X2))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_52])).

cnf(c_0_58,plain,
    ( k1_relset_1(X2,X3,X1) = k1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_53])).

cnf(c_0_59,negated_conjecture,
    ( ~ v1_funct_2(k2_funct_1(esk3_0),X1,k1_relat_1(esk3_0))
    | ~ v1_funct_1(k2_funct_1(esk3_0))
    | ~ m1_subset_1(k1_relat_1(esk3_0),k1_zfmisc_1(esk1_0))
    | ~ r1_tarski(esk1_0,k1_relat_1(esk3_0))
    | ~ r1_tarski(X1,esk2_0)
    | ~ r1_tarski(esk2_0,X1) ),
    inference(spm,[status(thm)],[c_0_54,c_0_55])).

cnf(c_0_60,negated_conjecture,
    ( v1_funct_1(k2_funct_1(esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_56,c_0_29]),c_0_49])])).

cnf(c_0_61,plain,
    ( m1_subset_1(k1_relat_1(X1),k1_zfmisc_1(X2))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(spm,[status(thm)],[c_0_57,c_0_58])).

cnf(c_0_62,negated_conjecture,
    ( ~ v1_funct_2(k2_funct_1(esk3_0),X1,k1_relat_1(esk3_0))
    | ~ m1_subset_1(k1_relat_1(esk3_0),k1_zfmisc_1(esk1_0))
    | ~ r1_tarski(esk1_0,k1_relat_1(esk3_0))
    | ~ r1_tarski(X1,esk2_0)
    | ~ r1_tarski(esk2_0,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_59,c_0_60])])).

cnf(c_0_63,negated_conjecture,
    ( m1_subset_1(k1_relat_1(esk3_0),k1_zfmisc_1(esk1_0)) ),
    inference(spm,[status(thm)],[c_0_61,c_0_29])).

cnf(c_0_64,plain,
    ( v1_funct_2(X1,k1_relat_1(X1),k2_relat_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_65,negated_conjecture,
    ( ~ v1_funct_2(k2_funct_1(esk3_0),X1,k1_relat_1(esk3_0))
    | ~ r1_tarski(esk1_0,k1_relat_1(esk3_0))
    | ~ r1_tarski(X1,esk2_0)
    | ~ r1_tarski(esk2_0,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_62,c_0_63])])).

cnf(c_0_66,plain,
    ( v1_funct_2(k2_funct_1(X1),k1_relat_1(k2_funct_1(X1)),k1_relat_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_64,c_0_40]),c_0_24]),c_0_15])).

cnf(c_0_67,negated_conjecture,
    ( ~ v1_funct_2(k2_funct_1(X1),X2,k1_relat_1(X1))
    | ~ r1_tarski(esk1_0,k1_relat_1(X1))
    | ~ r1_tarski(X2,esk2_0)
    | ~ r1_tarski(esk2_0,X2)
    | ~ r1_tarski(X1,esk3_0)
    | ~ r1_tarski(esk3_0,X1) ),
    inference(spm,[status(thm)],[c_0_65,c_0_42])).

cnf(c_0_68,negated_conjecture,
    ( v1_funct_2(k2_funct_1(esk3_0),k1_relat_1(k2_funct_1(esk3_0)),k1_relat_1(esk3_0))
    | ~ v1_relat_1(esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_66,c_0_16]),c_0_17])])).

cnf(c_0_69,plain,
    ( k1_relat_1(X1) = k2_relat_1(X2)
    | ~ v2_funct_1(X2)
    | ~ v1_funct_1(X2)
    | ~ v1_relat_1(X2)
    | ~ r1_tarski(X1,k2_funct_1(X2))
    | ~ r1_tarski(k2_funct_1(X2),X1) ),
    inference(spm,[status(thm)],[c_0_34,c_0_42])).

cnf(c_0_70,negated_conjecture,
    ( ~ v1_relat_1(esk3_0)
    | ~ r1_tarski(k1_relat_1(k2_funct_1(esk3_0)),esk2_0)
    | ~ r1_tarski(esk2_0,k1_relat_1(k2_funct_1(esk3_0)))
    | ~ r1_tarski(esk1_0,k1_relat_1(esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_67,c_0_68]),c_0_49])])).

cnf(c_0_71,negated_conjecture,
    ( k1_relat_1(X1) = esk2_0
    | ~ v1_relat_1(esk3_0)
    | ~ r1_tarski(X1,k2_funct_1(esk3_0))
    | ~ r1_tarski(k2_funct_1(esk3_0),X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35,c_0_69]),c_0_16]),c_0_17])])).

fof(c_0_72,plain,(
    ! [X22,X23,X24] :
      ( ( ~ v1_funct_2(X24,X22,X23)
        | X22 = k1_relset_1(X22,X23,X24)
        | X23 = k1_xboole_0
        | ~ m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X22,X23))) )
      & ( X22 != k1_relset_1(X22,X23,X24)
        | v1_funct_2(X24,X22,X23)
        | X23 = k1_xboole_0
        | ~ m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X22,X23))) )
      & ( ~ v1_funct_2(X24,X22,X23)
        | X22 = k1_relset_1(X22,X23,X24)
        | X22 != k1_xboole_0
        | ~ m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X22,X23))) )
      & ( X22 != k1_relset_1(X22,X23,X24)
        | v1_funct_2(X24,X22,X23)
        | X22 != k1_xboole_0
        | ~ m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X22,X23))) )
      & ( ~ v1_funct_2(X24,X22,X23)
        | X24 = k1_xboole_0
        | X22 = k1_xboole_0
        | X23 != k1_xboole_0
        | ~ m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X22,X23))) )
      & ( X24 != k1_xboole_0
        | v1_funct_2(X24,X22,X23)
        | X22 = k1_xboole_0
        | X23 != k1_xboole_0
        | ~ m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X22,X23))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).

cnf(c_0_73,negated_conjecture,
    ( ~ v1_relat_1(esk3_0)
    | ~ r1_tarski(esk1_0,k1_relat_1(esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_70,c_0_71]),c_0_49]),c_0_49])])).

cnf(c_0_74,plain,
    ( X2 = k1_relset_1(X2,X3,X1)
    | ~ v1_funct_2(X1,X2,X3)
    | X2 != k1_xboole_0
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_72])).

cnf(c_0_75,negated_conjecture,
    ( ~ v1_relat_1(esk3_0)
    | ~ r1_tarski(X1,k1_relat_1(esk3_0))
    | ~ r1_tarski(X1,esk1_0)
    | ~ r1_tarski(esk1_0,X1) ),
    inference(spm,[status(thm)],[c_0_73,c_0_42])).

cnf(c_0_76,plain,
    ( k1_relset_1(k1_xboole_0,X1,X2) = k1_xboole_0
    | ~ v1_funct_2(X2,k1_xboole_0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1))) ),
    inference(er,[status(thm)],[c_0_74])).

cnf(c_0_77,negated_conjecture,
    ( ~ m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r1_tarski(X3,k1_relat_1(esk3_0))
    | ~ r1_tarski(X3,esk1_0)
    | ~ r1_tarski(esk1_0,X3) ),
    inference(spm,[status(thm)],[c_0_75,c_0_21])).

cnf(c_0_78,plain,
    ( k1_relat_1(X1) = k1_xboole_0
    | ~ v1_funct_2(X1,k1_xboole_0,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X2))) ),
    inference(spm,[status(thm)],[c_0_58,c_0_76])).

cnf(c_0_79,plain,
    ( X1 = k1_xboole_0
    | X2 = k1_xboole_0
    | ~ v1_funct_2(X1,X2,X3)
    | X3 != k1_xboole_0
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_72])).

cnf(c_0_80,negated_conjecture,
    ( ~ r1_tarski(X1,k1_relat_1(esk3_0))
    | ~ r1_tarski(X1,esk1_0)
    | ~ r1_tarski(esk1_0,X1) ),
    inference(spm,[status(thm)],[c_0_77,c_0_29])).

cnf(c_0_81,negated_conjecture,
    ( ~ v1_funct_2(esk3_0,k1_xboole_0,X1)
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))
    | ~ r1_tarski(esk1_0,k1_xboole_0) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_73,c_0_78]),c_0_21])).

cnf(c_0_82,plain,
    ( X1 = k1_xboole_0
    | X2 = k1_xboole_0
    | ~ v1_funct_2(X2,X1,k1_xboole_0)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,k1_xboole_0))) ),
    inference(er,[status(thm)],[c_0_79])).

cnf(c_0_83,negated_conjecture,
    ( ~ r1_tarski(k1_relat_1(esk3_0),esk1_0)
    | ~ r1_tarski(esk1_0,k1_relat_1(esk3_0)) ),
    inference(spm,[status(thm)],[c_0_80,c_0_49])).

cnf(c_0_84,plain,
    ( X2 = k1_relset_1(X2,X3,X1)
    | X3 = k1_xboole_0
    | ~ v1_funct_2(X1,X2,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_72])).

cnf(c_0_85,negated_conjecture,
    ( ~ v1_funct_2(esk3_0,X1,X2)
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r1_tarski(esk1_0,X1)
    | ~ r1_tarski(X1,k1_xboole_0)
    | ~ r1_tarski(k1_xboole_0,X1) ),
    inference(spm,[status(thm)],[c_0_81,c_0_42])).

cnf(c_0_86,negated_conjecture,
    ( v1_funct_2(esk3_0,esk1_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_87,plain,
    ( X1 = X2
    | X3 = X2
    | ~ v1_funct_2(X3,X1,X2)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r1_tarski(X2,k1_xboole_0)
    | ~ r1_tarski(k1_xboole_0,X2) ),
    inference(spm,[status(thm)],[c_0_82,c_0_42])).

cnf(c_0_88,negated_conjecture,
    ( ~ r1_tarski(esk1_0,k1_relat_1(esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_83,c_0_55]),c_0_63])])).

cnf(c_0_89,plain,
    ( X1 = k1_relat_1(X2)
    | X3 = k1_xboole_0
    | ~ v1_funct_2(X2,X1,X3)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X3))) ),
    inference(spm,[status(thm)],[c_0_58,c_0_84])).

cnf(c_0_90,negated_conjecture,
    ( ~ r1_tarski(esk1_0,k1_xboole_0)
    | ~ r1_tarski(k1_xboole_0,esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_85,c_0_29]),c_0_86]),c_0_49])])).

cnf(c_0_91,negated_conjecture,
    ( esk2_0 = esk3_0
    | esk1_0 = esk2_0
    | ~ r1_tarski(esk2_0,k1_xboole_0)
    | ~ r1_tarski(k1_xboole_0,esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_87,c_0_29]),c_0_86])])).

cnf(c_0_92,negated_conjecture,
    ( ~ r1_tarski(esk1_0,k1_relat_1(X1))
    | ~ r1_tarski(X1,esk3_0)
    | ~ r1_tarski(esk3_0,X1) ),
    inference(spm,[status(thm)],[c_0_88,c_0_42])).

cnf(c_0_93,negated_conjecture,
    ( k1_relat_1(esk3_0) = esk1_0
    | esk2_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_89,c_0_29]),c_0_86])])).

fof(c_0_94,plain,(
    ! [X26,X27] :
      ( ( v1_funct_1(X27)
        | ~ r1_tarski(k2_relat_1(X27),X26)
        | ~ v1_relat_1(X27)
        | ~ v1_funct_1(X27) )
      & ( v1_funct_2(X27,k1_relat_1(X27),X26)
        | ~ r1_tarski(k2_relat_1(X27),X26)
        | ~ v1_relat_1(X27)
        | ~ v1_funct_1(X27) )
      & ( m1_subset_1(X27,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X27),X26)))
        | ~ r1_tarski(k2_relat_1(X27),X26)
        | ~ v1_relat_1(X27)
        | ~ v1_funct_1(X27) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t4_funct_2])])])).

cnf(c_0_95,negated_conjecture,
    ( esk2_0 = esk3_0
    | ~ r1_tarski(esk2_0,k1_xboole_0)
    | ~ r1_tarski(k1_xboole_0,esk2_0) ),
    inference(spm,[status(thm)],[c_0_90,c_0_91])).

cnf(c_0_96,negated_conjecture,
    ( esk2_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_92,c_0_93]),c_0_49]),c_0_49])])).

cnf(c_0_97,negated_conjecture,
    ( v1_funct_2(X1,esk1_0,esk2_0)
    | ~ r1_tarski(esk3_0,X1)
    | ~ r1_tarski(X1,esk3_0) ),
    inference(spm,[status(thm)],[c_0_86,c_0_42])).

cnf(c_0_98,negated_conjecture,
    ( ~ v1_funct_2(k2_funct_1(esk3_0),esk2_0,esk1_0)
    | ~ v1_funct_1(k2_funct_1(esk3_0))
    | ~ m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(X1))
    | ~ r1_tarski(X1,k2_zfmisc_1(esk2_0,esk1_0))
    | ~ r1_tarski(k2_zfmisc_1(esk2_0,esk1_0),X1) ),
    inference(spm,[status(thm)],[c_0_41,c_0_42])).

cnf(c_0_99,plain,
    ( v1_funct_2(X1,k1_relat_1(X1),X2)
    | ~ r1_tarski(k2_relat_1(X1),X2)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_94])).

cnf(c_0_100,negated_conjecture,
    ( esk3_0 = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_95,c_0_96]),c_0_49]),c_0_96]),c_0_49])]),c_0_96])).

cnf(c_0_101,negated_conjecture,
    ( v1_funct_2(X1,esk1_0,esk2_0)
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X1,esk3_0) ),
    inference(spm,[status(thm)],[c_0_97,c_0_55])).

cnf(c_0_102,negated_conjecture,
    ( ~ v1_funct_2(k2_funct_1(esk3_0),X1,esk1_0)
    | ~ v1_funct_1(k2_funct_1(esk3_0))
    | ~ m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(X2))
    | ~ r1_tarski(X2,k2_zfmisc_1(X1,esk1_0))
    | ~ r1_tarski(k2_zfmisc_1(X1,esk1_0),X2)
    | ~ r1_tarski(X1,esk2_0)
    | ~ r1_tarski(esk2_0,X1) ),
    inference(spm,[status(thm)],[c_0_98,c_0_42])).

cnf(c_0_103,plain,
    ( v1_funct_2(X1,k1_relat_1(X1),X2)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ m1_subset_1(k2_relat_1(X1),k1_zfmisc_1(X2)) ),
    inference(spm,[status(thm)],[c_0_99,c_0_55])).

cnf(c_0_104,plain,
    ( m1_subset_1(k2_relat_1(X1),k1_zfmisc_1(X2))
    | ~ v2_funct_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ m1_subset_1(k2_funct_1(X1),k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(spm,[status(thm)],[c_0_61,c_0_34])).

cnf(c_0_105,negated_conjecture,
    ( m1_subset_1(k2_funct_1(k1_xboole_0),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(k2_funct_1(k1_xboole_0)),k2_relat_1(k2_funct_1(k1_xboole_0))))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_33,c_0_100]),c_0_100]),c_0_100])).

cnf(c_0_106,negated_conjecture,
    ( k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_35,c_0_96]),c_0_100])).

cnf(c_0_107,negated_conjecture,
    ( v2_funct_1(k1_xboole_0) ),
    inference(rw,[status(thm)],[c_0_16,c_0_100])).

cnf(c_0_108,negated_conjecture,
    ( v1_funct_1(k1_xboole_0) ),
    inference(rw,[status(thm)],[c_0_17,c_0_100])).

cnf(c_0_109,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk3_0)))
    | ~ r1_tarski(esk2_0,k1_xboole_0)
    | ~ r1_tarski(k1_xboole_0,esk2_0) ),
    inference(spm,[status(thm)],[c_0_29,c_0_95])).

cnf(c_0_110,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_51])).

cnf(c_0_111,negated_conjecture,
    ( v1_funct_2(X1,esk1_0,esk3_0)
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(X1))
    | ~ r1_tarski(esk2_0,k1_xboole_0)
    | ~ r1_tarski(k1_xboole_0,esk2_0)
    | ~ r1_tarski(X1,esk3_0) ),
    inference(spm,[status(thm)],[c_0_101,c_0_95])).

cnf(c_0_112,negated_conjecture,
    ( ~ v1_funct_2(k2_funct_1(esk3_0),X1,esk1_0)
    | ~ m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(X2))
    | ~ r1_tarski(X2,k2_zfmisc_1(X1,esk1_0))
    | ~ r1_tarski(k2_zfmisc_1(X1,esk1_0),X2)
    | ~ r1_tarski(X1,esk2_0)
    | ~ r1_tarski(esk2_0,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_102,c_0_60])])).

cnf(c_0_113,plain,
    ( v1_funct_2(k2_funct_1(X1),k2_relat_1(X1),X2)
    | ~ v2_funct_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ m1_subset_1(k2_relat_1(k2_funct_1(X1)),k1_zfmisc_1(X2)) ),
    inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_103,c_0_34]),c_0_24]),c_0_15])).

cnf(c_0_114,negated_conjecture,
    ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0)))
    | ~ r1_tarski(esk3_0,X1)
    | ~ r1_tarski(X1,esk3_0) ),
    inference(spm,[status(thm)],[c_0_29,c_0_42])).

cnf(c_0_115,negated_conjecture,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_relat_1(k2_funct_1(k1_xboole_0))))
    | ~ v1_relat_1(k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_104,c_0_105]),c_0_106]),c_0_107]),c_0_108])])).

cnf(c_0_116,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk3_0)))
    | ~ m1_subset_1(esk2_0,k1_zfmisc_1(k1_xboole_0))
    | ~ r1_tarski(k1_xboole_0,esk2_0) ),
    inference(spm,[status(thm)],[c_0_109,c_0_55])).

cnf(c_0_117,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_110,c_0_49])).

cnf(c_0_118,negated_conjecture,
    ( m1_subset_1(k1_relat_1(k2_funct_1(esk3_0)),k1_zfmisc_1(esk2_0)) ),
    inference(spm,[status(thm)],[c_0_61,c_0_48])).

cnf(c_0_119,negated_conjecture,
    ( v1_funct_2(X1,esk1_0,esk3_0)
    | ~ m1_subset_1(esk2_0,k1_zfmisc_1(k1_xboole_0))
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(X1))
    | ~ r1_tarski(k1_xboole_0,esk2_0)
    | ~ r1_tarski(X1,esk3_0) ),
    inference(spm,[status(thm)],[c_0_111,c_0_55])).

cnf(c_0_120,negated_conjecture,
    ( ~ v1_funct_2(k2_funct_1(k1_xboole_0),X1,esk1_0)
    | ~ m1_subset_1(k2_funct_1(k1_xboole_0),k1_zfmisc_1(X2))
    | ~ r1_tarski(X2,k2_zfmisc_1(X1,esk1_0))
    | ~ r1_tarski(k2_zfmisc_1(X1,esk1_0),X2)
    | ~ r1_tarski(X1,k1_xboole_0)
    | ~ r1_tarski(k1_xboole_0,X1) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_112,c_0_96]),c_0_96]),c_0_100]),c_0_100])).

cnf(c_0_121,negated_conjecture,
    ( v1_funct_2(k2_funct_1(k1_xboole_0),k1_xboole_0,X1)
    | ~ v1_relat_1(k1_xboole_0)
    | ~ m1_subset_1(k2_relat_1(k2_funct_1(k1_xboole_0)),k1_zfmisc_1(X1)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_113,c_0_106]),c_0_107]),c_0_108])])).

cnf(c_0_122,negated_conjecture,
    ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0)))
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X1,esk3_0) ),
    inference(spm,[status(thm)],[c_0_114,c_0_55])).

cnf(c_0_123,negated_conjecture,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_relat_1(k2_funct_1(k1_xboole_0))))
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(spm,[status(thm)],[c_0_115,c_0_21])).

cnf(c_0_124,negated_conjecture,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,k1_xboole_0))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_116,c_0_96]),c_0_117]),c_0_96]),c_0_49])]),c_0_100]),c_0_100])).

cnf(c_0_125,negated_conjecture,
    ( m1_subset_1(k1_relat_1(k2_funct_1(esk3_0)),k1_zfmisc_1(esk3_0))
    | ~ r1_tarski(esk2_0,k1_xboole_0)
    | ~ r1_tarski(k1_xboole_0,esk2_0) ),
    inference(spm,[status(thm)],[c_0_118,c_0_95])).

cnf(c_0_126,negated_conjecture,
    ( v1_funct_2(X1,esk1_0,k1_xboole_0)
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X1,k1_xboole_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_119,c_0_96]),c_0_117]),c_0_96]),c_0_49])]),c_0_100]),c_0_100]),c_0_100])).

cnf(c_0_127,negated_conjecture,
    ( v1_relat_1(X1)
    | ~ v1_relat_1(esk3_0)
    | ~ r1_tarski(X1,k2_funct_1(esk3_0))
    | ~ r1_tarski(k2_funct_1(esk3_0),X1) ),
    inference(spm,[status(thm)],[c_0_26,c_0_42])).

cnf(c_0_128,negated_conjecture,
    ( ~ v1_relat_1(k1_xboole_0)
    | ~ m1_subset_1(k2_relat_1(k2_funct_1(k1_xboole_0)),k1_zfmisc_1(esk1_0))
    | ~ m1_subset_1(k2_funct_1(k1_xboole_0),k1_zfmisc_1(X1))
    | ~ r1_tarski(X1,k2_zfmisc_1(k1_xboole_0,esk1_0))
    | ~ r1_tarski(k2_zfmisc_1(k1_xboole_0,esk1_0),X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_120,c_0_121]),c_0_49])])).

cnf(c_0_129,negated_conjecture,
    ( m1_subset_1(k1_relat_1(k1_xboole_0),k1_zfmisc_1(esk1_0)) ),
    inference(rw,[status(thm)],[c_0_63,c_0_100])).

cnf(c_0_130,negated_conjecture,
    ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(esk1_0,k1_xboole_0)))
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X1,k1_xboole_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_122,c_0_96]),c_0_100]),c_0_100])).

cnf(c_0_131,negated_conjecture,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_relat_1(k2_funct_1(k1_xboole_0)))) ),
    inference(spm,[status(thm)],[c_0_123,c_0_124])).

cnf(c_0_132,negated_conjecture,
    ( m1_subset_1(k1_relat_1(k2_funct_1(esk3_0)),k1_zfmisc_1(esk3_0))
    | ~ m1_subset_1(esk2_0,k1_zfmisc_1(k1_xboole_0))
    | ~ r1_tarski(k1_xboole_0,esk2_0) ),
    inference(spm,[status(thm)],[c_0_125,c_0_55])).

cnf(c_0_133,negated_conjecture,
    ( v1_funct_2(X1,esk1_0,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ r1_tarski(X2,k1_xboole_0)
    | ~ r1_tarski(k1_xboole_0,X2)
    | ~ r1_tarski(X1,X2) ),
    inference(spm,[status(thm)],[c_0_126,c_0_42])).

cnf(c_0_134,negated_conjecture,
    ( v1_relat_1(X1)
    | ~ v1_relat_1(k1_xboole_0)
    | ~ r1_tarski(X1,k2_funct_1(k1_xboole_0))
    | ~ r1_tarski(k2_funct_1(k1_xboole_0),X1) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_127,c_0_100]),c_0_100]),c_0_100])).

cnf(c_0_135,negated_conjecture,
    ( ~ v1_relat_1(k1_xboole_0)
    | ~ m1_subset_1(k2_funct_1(k1_xboole_0),k1_zfmisc_1(X1))
    | ~ r1_tarski(X1,k2_zfmisc_1(k1_xboole_0,esk1_0))
    | ~ r1_tarski(k2_zfmisc_1(k1_xboole_0,esk1_0),X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_128,c_0_40]),c_0_129]),c_0_107]),c_0_108])])).

cnf(c_0_136,negated_conjecture,
    ( m1_subset_1(k1_relat_1(k2_funct_1(k1_xboole_0)),k1_zfmisc_1(k2_zfmisc_1(esk1_0,k1_xboole_0)))
    | ~ r1_tarski(k1_relat_1(k2_funct_1(k1_xboole_0)),k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_130,c_0_131])).

cnf(c_0_137,negated_conjecture,
    ( m1_subset_1(k1_relat_1(k2_funct_1(k1_xboole_0)),k1_zfmisc_1(k1_xboole_0)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_132,c_0_96]),c_0_117]),c_0_96]),c_0_49])]),c_0_100]),c_0_100])).

cnf(c_0_138,negated_conjecture,
    ( v1_funct_2(k1_relat_1(k2_funct_1(k1_xboole_0)),esk1_0,k1_xboole_0)
    | ~ r1_tarski(k1_relat_1(k2_funct_1(k1_xboole_0)),k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_133,c_0_131]),c_0_49])])).

cnf(c_0_139,negated_conjecture,
    ( v1_relat_1(X1)
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ r1_tarski(X1,k2_funct_1(k1_xboole_0))
    | ~ r1_tarski(k2_funct_1(k1_xboole_0),X1) ),
    inference(spm,[status(thm)],[c_0_134,c_0_21])).

cnf(c_0_140,negated_conjecture,
    ( ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(k2_funct_1(k1_xboole_0),k1_zfmisc_1(X3))
    | ~ r1_tarski(X3,k2_zfmisc_1(k1_xboole_0,esk1_0))
    | ~ r1_tarski(k2_zfmisc_1(k1_xboole_0,esk1_0),X3) ),
    inference(spm,[status(thm)],[c_0_135,c_0_21])).

cnf(c_0_141,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X2)))
    | ~ r1_tarski(k2_relat_1(X1),X2)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_94])).

cnf(c_0_142,negated_conjecture,
    ( m1_subset_1(k1_relat_1(k2_funct_1(k1_xboole_0)),k1_zfmisc_1(k2_zfmisc_1(esk1_0,k1_xboole_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_136,c_0_55]),c_0_137])])).

cnf(c_0_143,negated_conjecture,
    ( v1_funct_2(k1_relat_1(k2_funct_1(k1_xboole_0)),esk1_0,k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_138,c_0_55]),c_0_137])])).

cnf(c_0_144,negated_conjecture,
    ( v1_relat_1(X1)
    | ~ r1_tarski(X1,k2_funct_1(k1_xboole_0))
    | ~ r1_tarski(k2_funct_1(k1_xboole_0),X1) ),
    inference(spm,[status(thm)],[c_0_139,c_0_124])).

cnf(c_0_145,plain,
    ( k2_relat_1(X1) = k1_relat_1(X2)
    | ~ v2_funct_1(X2)
    | ~ v1_funct_1(X2)
    | ~ v1_relat_1(X2)
    | ~ r1_tarski(X1,k2_funct_1(X2))
    | ~ r1_tarski(k2_funct_1(X2),X1) ),
    inference(spm,[status(thm)],[c_0_40,c_0_42])).

cnf(c_0_146,negated_conjecture,
    ( ~ m1_subset_1(k2_funct_1(k1_xboole_0),k1_zfmisc_1(X1))
    | ~ r1_tarski(X1,k2_zfmisc_1(k1_xboole_0,esk1_0))
    | ~ r1_tarski(k2_zfmisc_1(k1_xboole_0,esk1_0),X1) ),
    inference(spm,[status(thm)],[c_0_140,c_0_124])).

cnf(c_0_147,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X2)))
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ m1_subset_1(k2_relat_1(X1),k1_zfmisc_1(X2)) ),
    inference(spm,[status(thm)],[c_0_141,c_0_55])).

cnf(c_0_148,negated_conjecture,
    ( k1_relat_1(k2_funct_1(k1_xboole_0)) = k1_xboole_0
    | esk1_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_87,c_0_142]),c_0_143]),c_0_49])])).

cnf(c_0_149,negated_conjecture,
    ( v1_funct_1(k2_funct_1(k1_xboole_0)) ),
    inference(rw,[status(thm)],[c_0_60,c_0_100])).

cnf(c_0_150,negated_conjecture,
    ( v1_relat_1(k2_funct_1(k1_xboole_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_144,c_0_49]),c_0_49])])).

cnf(c_0_151,plain,
    ( m1_subset_1(k2_relat_1(X1),k1_zfmisc_1(X2))
    | ~ v2_funct_1(X3)
    | ~ v1_funct_1(X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X4)))
    | ~ r1_tarski(X1,k2_funct_1(X3))
    | ~ r1_tarski(k2_funct_1(X3),X1) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_61,c_0_145]),c_0_21])).

cnf(c_0_152,negated_conjecture,
    ( ~ m1_subset_1(k2_funct_1(k1_xboole_0),X1)
    | ~ r1_tarski(X2,k2_zfmisc_1(k1_xboole_0,esk1_0))
    | ~ r1_tarski(k2_zfmisc_1(k1_xboole_0,esk1_0),X2)
    | ~ r1_tarski(X1,k1_zfmisc_1(X2))
    | ~ r1_tarski(k1_zfmisc_1(X2),X1) ),
    inference(spm,[status(thm)],[c_0_146,c_0_42])).

cnf(c_0_153,negated_conjecture,
    ( esk1_0 = k1_xboole_0
    | m1_subset_1(k2_funct_1(k1_xboole_0),k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))
    | ~ m1_subset_1(k2_relat_1(k2_funct_1(k1_xboole_0)),k1_zfmisc_1(X1)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_147,c_0_148]),c_0_149]),c_0_150])])).

cnf(c_0_154,negated_conjecture,
    ( m1_subset_1(k2_relat_1(X1),k1_zfmisc_1(esk1_0))
    | ~ r1_tarski(X1,k2_funct_1(k1_xboole_0))
    | ~ r1_tarski(k2_funct_1(k1_xboole_0),X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_151,c_0_124]),c_0_107]),c_0_108])])).

cnf(c_0_155,negated_conjecture,
    ( ~ m1_subset_1(k2_funct_1(k1_xboole_0),X1)
    | ~ r1_tarski(X1,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,esk1_0)))
    | ~ r1_tarski(k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,esk1_0)),X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_152,c_0_49]),c_0_49])])).

cnf(c_0_156,negated_conjecture,
    ( m1_subset_1(k2_funct_1(k1_xboole_0),k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))
    | ~ m1_subset_1(k2_relat_1(k2_funct_1(k1_xboole_0)),k1_zfmisc_1(X1)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_90,c_0_153]),c_0_49])])).

cnf(c_0_157,negated_conjecture,
    ( m1_subset_1(k2_relat_1(k2_funct_1(k1_xboole_0)),k1_zfmisc_1(esk1_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_154,c_0_49]),c_0_49])])).

cnf(c_0_158,negated_conjecture,
    ( ~ m1_subset_1(k2_funct_1(k1_xboole_0),k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,esk1_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_155,c_0_49]),c_0_49])])).

cnf(c_0_159,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_156,c_0_157]),c_0_158]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.34  % Computer   : n022.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 13:24:26 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 7.70/7.88  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S039A
% 7.70/7.88  # and selection function PSelectUnlessUniqMaxPos.
% 7.70/7.88  #
% 7.70/7.88  # Preprocessing time       : 0.028 s
% 7.70/7.88  # Presaturation interreduction done
% 7.70/7.88  
% 7.70/7.88  # Proof found!
% 7.70/7.88  # SZS status Theorem
% 7.70/7.88  # SZS output start CNFRefutation
% 7.70/7.88  fof(t31_funct_2, conjecture, ![X1, X2, X3]:(((v1_funct_1(X3)&v1_funct_2(X3,X1,X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>((v2_funct_1(X3)&k2_relset_1(X1,X2,X3)=X2)=>((v1_funct_1(k2_funct_1(X3))&v1_funct_2(k2_funct_1(X3),X2,X1))&m1_subset_1(k2_funct_1(X3),k1_zfmisc_1(k2_zfmisc_1(X2,X1)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t31_funct_2)).
% 7.70/7.88  fof(fc6_funct_1, axiom, ![X1]:(((v1_relat_1(X1)&v1_funct_1(X1))&v2_funct_1(X1))=>((v1_relat_1(k2_funct_1(X1))&v1_funct_1(k2_funct_1(X1)))&v2_funct_1(k2_funct_1(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc6_funct_1)).
% 7.70/7.88  fof(cc1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>v1_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc1_relset_1)).
% 7.70/7.88  fof(t3_funct_2, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>((v1_funct_1(X1)&v1_funct_2(X1,k1_relat_1(X1),k2_relat_1(X1)))&m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t3_funct_2)).
% 7.70/7.88  fof(redefinition_k2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k2_relset_1(X1,X2,X3)=k2_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k2_relset_1)).
% 7.70/7.88  fof(t55_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v2_funct_1(X1)=>(k2_relat_1(X1)=k1_relat_1(k2_funct_1(X1))&k1_relat_1(X1)=k2_relat_1(k2_funct_1(X1))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t55_funct_1)).
% 7.70/7.88  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d10_xboole_0)).
% 7.70/7.88  fof(t3_subset, axiom, ![X1, X2]:(m1_subset_1(X1,k1_zfmisc_1(X2))<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t3_subset)).
% 7.70/7.88  fof(dt_k1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>m1_subset_1(k1_relset_1(X1,X2,X3),k1_zfmisc_1(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k1_relset_1)).
% 7.70/7.88  fof(redefinition_k1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k1_relset_1(X1,X2,X3)=k1_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k1_relset_1)).
% 7.70/7.88  fof(d1_funct_2, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(((X2=k1_xboole_0=>X1=k1_xboole_0)=>(v1_funct_2(X3,X1,X2)<=>X1=k1_relset_1(X1,X2,X3)))&(X2=k1_xboole_0=>(X1=k1_xboole_0|(v1_funct_2(X3,X1,X2)<=>X3=k1_xboole_0))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d1_funct_2)).
% 7.70/7.88  fof(t4_funct_2, axiom, ![X1, X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(r1_tarski(k2_relat_1(X2),X1)=>((v1_funct_1(X2)&v1_funct_2(X2,k1_relat_1(X2),X1))&m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X2),X1)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t4_funct_2)).
% 7.70/7.88  fof(c_0_12, negated_conjecture, ~(![X1, X2, X3]:(((v1_funct_1(X3)&v1_funct_2(X3,X1,X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>((v2_funct_1(X3)&k2_relset_1(X1,X2,X3)=X2)=>((v1_funct_1(k2_funct_1(X3))&v1_funct_2(k2_funct_1(X3),X2,X1))&m1_subset_1(k2_funct_1(X3),k1_zfmisc_1(k2_zfmisc_1(X2,X1))))))), inference(assume_negation,[status(cth)],[t31_funct_2])).
% 7.70/7.88  fof(c_0_13, plain, ![X8]:(((v1_relat_1(k2_funct_1(X8))|(~v1_relat_1(X8)|~v1_funct_1(X8)|~v2_funct_1(X8)))&(v1_funct_1(k2_funct_1(X8))|(~v1_relat_1(X8)|~v1_funct_1(X8)|~v2_funct_1(X8))))&(v2_funct_1(k2_funct_1(X8))|(~v1_relat_1(X8)|~v1_funct_1(X8)|~v2_funct_1(X8)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[fc6_funct_1])])])).
% 7.70/7.88  fof(c_0_14, negated_conjecture, (((v1_funct_1(esk3_0)&v1_funct_2(esk3_0,esk1_0,esk2_0))&m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0))))&((v2_funct_1(esk3_0)&k2_relset_1(esk1_0,esk2_0,esk3_0)=esk2_0)&(~v1_funct_1(k2_funct_1(esk3_0))|~v1_funct_2(k2_funct_1(esk3_0),esk2_0,esk1_0)|~m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk1_0)))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_12])])])).
% 7.70/7.88  cnf(c_0_15, plain, (v1_funct_1(k2_funct_1(X1))|~v1_relat_1(X1)|~v1_funct_1(X1)|~v2_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 7.70/7.88  cnf(c_0_16, negated_conjecture, (v2_funct_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 7.70/7.88  cnf(c_0_17, negated_conjecture, (v1_funct_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 7.70/7.88  fof(c_0_18, plain, ![X10, X11, X12]:(~m1_subset_1(X12,k1_zfmisc_1(k2_zfmisc_1(X10,X11)))|v1_relat_1(X12)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).
% 7.70/7.88  fof(c_0_19, plain, ![X25]:(((v1_funct_1(X25)|(~v1_relat_1(X25)|~v1_funct_1(X25)))&(v1_funct_2(X25,k1_relat_1(X25),k2_relat_1(X25))|(~v1_relat_1(X25)|~v1_funct_1(X25))))&(m1_subset_1(X25,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X25),k2_relat_1(X25))))|(~v1_relat_1(X25)|~v1_funct_1(X25)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_funct_2])])])).
% 7.70/7.88  cnf(c_0_20, negated_conjecture, (v1_funct_1(k2_funct_1(esk3_0))|~v1_relat_1(esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_15, c_0_16]), c_0_17])])).
% 7.70/7.88  cnf(c_0_21, plain, (v1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_18])).
% 7.70/7.88  cnf(c_0_22, plain, (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1))))|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 7.70/7.88  cnf(c_0_23, negated_conjecture, (v1_funct_1(k2_funct_1(esk3_0))|~m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(spm,[status(thm)],[c_0_20, c_0_21])).
% 7.70/7.88  cnf(c_0_24, plain, (v1_relat_1(k2_funct_1(X1))|~v1_relat_1(X1)|~v1_funct_1(X1)|~v2_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 7.70/7.88  cnf(c_0_25, negated_conjecture, (m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(k2_funct_1(esk3_0)),k2_relat_1(k2_funct_1(esk3_0)))))|~v1_relat_1(k2_funct_1(esk3_0))|~m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(spm,[status(thm)],[c_0_22, c_0_23])).
% 7.70/7.88  cnf(c_0_26, negated_conjecture, (v1_relat_1(k2_funct_1(esk3_0))|~v1_relat_1(esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24, c_0_16]), c_0_17])])).
% 7.70/7.88  fof(c_0_27, plain, ![X19, X20, X21]:(~m1_subset_1(X21,k1_zfmisc_1(k2_zfmisc_1(X19,X20)))|k2_relset_1(X19,X20,X21)=k2_relat_1(X21)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_relset_1])])).
% 7.70/7.88  cnf(c_0_28, negated_conjecture, (m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(k2_funct_1(esk3_0)),k2_relat_1(k2_funct_1(esk3_0)))))|~m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_25, c_0_26]), c_0_21])).
% 7.70/7.88  cnf(c_0_29, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0)))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 7.70/7.88  fof(c_0_30, plain, ![X9]:((k2_relat_1(X9)=k1_relat_1(k2_funct_1(X9))|~v2_funct_1(X9)|(~v1_relat_1(X9)|~v1_funct_1(X9)))&(k1_relat_1(X9)=k2_relat_1(k2_funct_1(X9))|~v2_funct_1(X9)|(~v1_relat_1(X9)|~v1_funct_1(X9)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t55_funct_1])])])).
% 7.70/7.88  cnf(c_0_31, negated_conjecture, (k2_relset_1(esk1_0,esk2_0,esk3_0)=esk2_0), inference(split_conjunct,[status(thm)],[c_0_14])).
% 7.70/7.88  cnf(c_0_32, plain, (k2_relset_1(X2,X3,X1)=k2_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_27])).
% 7.70/7.88  cnf(c_0_33, negated_conjecture, (m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(k2_funct_1(esk3_0)),k2_relat_1(k2_funct_1(esk3_0)))))), inference(spm,[status(thm)],[c_0_28, c_0_29])).
% 7.70/7.88  cnf(c_0_34, plain, (k2_relat_1(X1)=k1_relat_1(k2_funct_1(X1))|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_30])).
% 7.70/7.88  cnf(c_0_35, negated_conjecture, (k2_relat_1(esk3_0)=esk2_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_32]), c_0_29])])).
% 7.70/7.88  cnf(c_0_36, negated_conjecture, (m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,k2_relat_1(k2_funct_1(esk3_0)))))|~v1_relat_1(esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33, c_0_34]), c_0_35]), c_0_16]), c_0_17])])).
% 7.70/7.88  cnf(c_0_37, negated_conjecture, (m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,k2_relat_1(k2_funct_1(esk3_0)))))|~m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(spm,[status(thm)],[c_0_36, c_0_21])).
% 7.70/7.88  fof(c_0_38, plain, ![X4, X5]:(((r1_tarski(X4,X5)|X4!=X5)&(r1_tarski(X5,X4)|X4!=X5))&(~r1_tarski(X4,X5)|~r1_tarski(X5,X4)|X4=X5)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 7.70/7.88  cnf(c_0_39, negated_conjecture, (m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,k2_relat_1(k2_funct_1(esk3_0)))))), inference(spm,[status(thm)],[c_0_37, c_0_29])).
% 7.70/7.88  cnf(c_0_40, plain, (k1_relat_1(X1)=k2_relat_1(k2_funct_1(X1))|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_30])).
% 7.70/7.88  cnf(c_0_41, negated_conjecture, (~v1_funct_1(k2_funct_1(esk3_0))|~v1_funct_2(k2_funct_1(esk3_0),esk2_0,esk1_0)|~m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 7.70/7.88  cnf(c_0_42, plain, (X1=X2|~r1_tarski(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_38])).
% 7.70/7.88  cnf(c_0_43, negated_conjecture, (m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,k1_relat_1(esk3_0))))|~v1_relat_1(esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39, c_0_40]), c_0_16]), c_0_17])])).
% 7.70/7.88  cnf(c_0_44, negated_conjecture, (~v1_funct_2(k2_funct_1(esk3_0),esk2_0,X1)|~v1_funct_1(k2_funct_1(esk3_0))|~m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,X1)))|~r1_tarski(X1,esk1_0)|~r1_tarski(esk1_0,X1)), inference(spm,[status(thm)],[c_0_41, c_0_42])).
% 7.70/7.88  cnf(c_0_45, negated_conjecture, (m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,k1_relat_1(esk3_0))))|~m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(spm,[status(thm)],[c_0_43, c_0_21])).
% 7.70/7.88  cnf(c_0_46, plain, (r1_tarski(X1,X2)|X2!=X1), inference(split_conjunct,[status(thm)],[c_0_38])).
% 7.70/7.88  cnf(c_0_47, negated_conjecture, (~v1_funct_2(X1,esk2_0,X2)|~v1_funct_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(esk2_0,X2)))|~r1_tarski(X1,k2_funct_1(esk3_0))|~r1_tarski(k2_funct_1(esk3_0),X1)|~r1_tarski(X2,esk1_0)|~r1_tarski(esk1_0,X2)), inference(spm,[status(thm)],[c_0_44, c_0_42])).
% 7.70/7.88  cnf(c_0_48, negated_conjecture, (m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,k1_relat_1(esk3_0))))), inference(spm,[status(thm)],[c_0_45, c_0_29])).
% 7.70/7.88  cnf(c_0_49, plain, (r1_tarski(X1,X1)), inference(er,[status(thm)],[c_0_46])).
% 7.70/7.88  cnf(c_0_50, negated_conjecture, (~v1_funct_2(k2_funct_1(esk3_0),esk2_0,k1_relat_1(esk3_0))|~v1_funct_1(k2_funct_1(esk3_0))|~r1_tarski(k1_relat_1(esk3_0),esk1_0)|~r1_tarski(esk1_0,k1_relat_1(esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47, c_0_48]), c_0_49])])).
% 7.70/7.88  fof(c_0_51, plain, ![X6, X7]:((~m1_subset_1(X6,k1_zfmisc_1(X7))|r1_tarski(X6,X7))&(~r1_tarski(X6,X7)|m1_subset_1(X6,k1_zfmisc_1(X7)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).
% 7.70/7.88  fof(c_0_52, plain, ![X13, X14, X15]:(~m1_subset_1(X15,k1_zfmisc_1(k2_zfmisc_1(X13,X14)))|m1_subset_1(k1_relset_1(X13,X14,X15),k1_zfmisc_1(X13))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k1_relset_1])])).
% 7.70/7.88  fof(c_0_53, plain, ![X16, X17, X18]:(~m1_subset_1(X18,k1_zfmisc_1(k2_zfmisc_1(X16,X17)))|k1_relset_1(X16,X17,X18)=k1_relat_1(X18)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).
% 7.70/7.88  cnf(c_0_54, negated_conjecture, (~v1_funct_2(k2_funct_1(esk3_0),X1,k1_relat_1(esk3_0))|~v1_funct_1(k2_funct_1(esk3_0))|~r1_tarski(k1_relat_1(esk3_0),esk1_0)|~r1_tarski(esk1_0,k1_relat_1(esk3_0))|~r1_tarski(X1,esk2_0)|~r1_tarski(esk2_0,X1)), inference(spm,[status(thm)],[c_0_50, c_0_42])).
% 7.70/7.88  cnf(c_0_55, plain, (r1_tarski(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_51])).
% 7.70/7.88  cnf(c_0_56, negated_conjecture, (v1_funct_1(k2_funct_1(X1))|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~r1_tarski(X1,esk3_0)|~r1_tarski(esk3_0,X1)), inference(spm,[status(thm)],[c_0_23, c_0_42])).
% 7.70/7.88  cnf(c_0_57, plain, (m1_subset_1(k1_relset_1(X2,X3,X1),k1_zfmisc_1(X2))|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_52])).
% 7.70/7.88  cnf(c_0_58, plain, (k1_relset_1(X2,X3,X1)=k1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_53])).
% 7.70/7.88  cnf(c_0_59, negated_conjecture, (~v1_funct_2(k2_funct_1(esk3_0),X1,k1_relat_1(esk3_0))|~v1_funct_1(k2_funct_1(esk3_0))|~m1_subset_1(k1_relat_1(esk3_0),k1_zfmisc_1(esk1_0))|~r1_tarski(esk1_0,k1_relat_1(esk3_0))|~r1_tarski(X1,esk2_0)|~r1_tarski(esk2_0,X1)), inference(spm,[status(thm)],[c_0_54, c_0_55])).
% 7.70/7.88  cnf(c_0_60, negated_conjecture, (v1_funct_1(k2_funct_1(esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_56, c_0_29]), c_0_49])])).
% 7.70/7.88  cnf(c_0_61, plain, (m1_subset_1(k1_relat_1(X1),k1_zfmisc_1(X2))|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(spm,[status(thm)],[c_0_57, c_0_58])).
% 7.70/7.88  cnf(c_0_62, negated_conjecture, (~v1_funct_2(k2_funct_1(esk3_0),X1,k1_relat_1(esk3_0))|~m1_subset_1(k1_relat_1(esk3_0),k1_zfmisc_1(esk1_0))|~r1_tarski(esk1_0,k1_relat_1(esk3_0))|~r1_tarski(X1,esk2_0)|~r1_tarski(esk2_0,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_59, c_0_60])])).
% 7.70/7.88  cnf(c_0_63, negated_conjecture, (m1_subset_1(k1_relat_1(esk3_0),k1_zfmisc_1(esk1_0))), inference(spm,[status(thm)],[c_0_61, c_0_29])).
% 7.70/7.88  cnf(c_0_64, plain, (v1_funct_2(X1,k1_relat_1(X1),k2_relat_1(X1))|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 7.70/7.88  cnf(c_0_65, negated_conjecture, (~v1_funct_2(k2_funct_1(esk3_0),X1,k1_relat_1(esk3_0))|~r1_tarski(esk1_0,k1_relat_1(esk3_0))|~r1_tarski(X1,esk2_0)|~r1_tarski(esk2_0,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_62, c_0_63])])).
% 7.70/7.88  cnf(c_0_66, plain, (v1_funct_2(k2_funct_1(X1),k1_relat_1(k2_funct_1(X1)),k1_relat_1(X1))|~v2_funct_1(X1)|~v1_funct_1(X1)|~v1_relat_1(X1)), inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_64, c_0_40]), c_0_24]), c_0_15])).
% 7.70/7.88  cnf(c_0_67, negated_conjecture, (~v1_funct_2(k2_funct_1(X1),X2,k1_relat_1(X1))|~r1_tarski(esk1_0,k1_relat_1(X1))|~r1_tarski(X2,esk2_0)|~r1_tarski(esk2_0,X2)|~r1_tarski(X1,esk3_0)|~r1_tarski(esk3_0,X1)), inference(spm,[status(thm)],[c_0_65, c_0_42])).
% 7.70/7.88  cnf(c_0_68, negated_conjecture, (v1_funct_2(k2_funct_1(esk3_0),k1_relat_1(k2_funct_1(esk3_0)),k1_relat_1(esk3_0))|~v1_relat_1(esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_66, c_0_16]), c_0_17])])).
% 7.70/7.88  cnf(c_0_69, plain, (k1_relat_1(X1)=k2_relat_1(X2)|~v2_funct_1(X2)|~v1_funct_1(X2)|~v1_relat_1(X2)|~r1_tarski(X1,k2_funct_1(X2))|~r1_tarski(k2_funct_1(X2),X1)), inference(spm,[status(thm)],[c_0_34, c_0_42])).
% 7.70/7.88  cnf(c_0_70, negated_conjecture, (~v1_relat_1(esk3_0)|~r1_tarski(k1_relat_1(k2_funct_1(esk3_0)),esk2_0)|~r1_tarski(esk2_0,k1_relat_1(k2_funct_1(esk3_0)))|~r1_tarski(esk1_0,k1_relat_1(esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_67, c_0_68]), c_0_49])])).
% 7.70/7.88  cnf(c_0_71, negated_conjecture, (k1_relat_1(X1)=esk2_0|~v1_relat_1(esk3_0)|~r1_tarski(X1,k2_funct_1(esk3_0))|~r1_tarski(k2_funct_1(esk3_0),X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35, c_0_69]), c_0_16]), c_0_17])])).
% 7.70/7.88  fof(c_0_72, plain, ![X22, X23, X24]:((((~v1_funct_2(X24,X22,X23)|X22=k1_relset_1(X22,X23,X24)|X23=k1_xboole_0|~m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X22,X23))))&(X22!=k1_relset_1(X22,X23,X24)|v1_funct_2(X24,X22,X23)|X23=k1_xboole_0|~m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X22,X23)))))&((~v1_funct_2(X24,X22,X23)|X22=k1_relset_1(X22,X23,X24)|X22!=k1_xboole_0|~m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X22,X23))))&(X22!=k1_relset_1(X22,X23,X24)|v1_funct_2(X24,X22,X23)|X22!=k1_xboole_0|~m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X22,X23))))))&((~v1_funct_2(X24,X22,X23)|X24=k1_xboole_0|X22=k1_xboole_0|X23!=k1_xboole_0|~m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X22,X23))))&(X24!=k1_xboole_0|v1_funct_2(X24,X22,X23)|X22=k1_xboole_0|X23!=k1_xboole_0|~m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X22,X23)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).
% 7.70/7.88  cnf(c_0_73, negated_conjecture, (~v1_relat_1(esk3_0)|~r1_tarski(esk1_0,k1_relat_1(esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_70, c_0_71]), c_0_49]), c_0_49])])).
% 7.70/7.88  cnf(c_0_74, plain, (X2=k1_relset_1(X2,X3,X1)|~v1_funct_2(X1,X2,X3)|X2!=k1_xboole_0|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_72])).
% 7.70/7.88  cnf(c_0_75, negated_conjecture, (~v1_relat_1(esk3_0)|~r1_tarski(X1,k1_relat_1(esk3_0))|~r1_tarski(X1,esk1_0)|~r1_tarski(esk1_0,X1)), inference(spm,[status(thm)],[c_0_73, c_0_42])).
% 7.70/7.88  cnf(c_0_76, plain, (k1_relset_1(k1_xboole_0,X1,X2)=k1_xboole_0|~v1_funct_2(X2,k1_xboole_0,X1)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))), inference(er,[status(thm)],[c_0_74])).
% 7.70/7.88  cnf(c_0_77, negated_conjecture, (~m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~r1_tarski(X3,k1_relat_1(esk3_0))|~r1_tarski(X3,esk1_0)|~r1_tarski(esk1_0,X3)), inference(spm,[status(thm)],[c_0_75, c_0_21])).
% 7.70/7.88  cnf(c_0_78, plain, (k1_relat_1(X1)=k1_xboole_0|~v1_funct_2(X1,k1_xboole_0,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X2)))), inference(spm,[status(thm)],[c_0_58, c_0_76])).
% 7.70/7.88  cnf(c_0_79, plain, (X1=k1_xboole_0|X2=k1_xboole_0|~v1_funct_2(X1,X2,X3)|X3!=k1_xboole_0|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_72])).
% 7.70/7.88  cnf(c_0_80, negated_conjecture, (~r1_tarski(X1,k1_relat_1(esk3_0))|~r1_tarski(X1,esk1_0)|~r1_tarski(esk1_0,X1)), inference(spm,[status(thm)],[c_0_77, c_0_29])).
% 7.70/7.88  cnf(c_0_81, negated_conjecture, (~v1_funct_2(esk3_0,k1_xboole_0,X1)|~m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))|~r1_tarski(esk1_0,k1_xboole_0)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_73, c_0_78]), c_0_21])).
% 7.70/7.88  cnf(c_0_82, plain, (X1=k1_xboole_0|X2=k1_xboole_0|~v1_funct_2(X2,X1,k1_xboole_0)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,k1_xboole_0)))), inference(er,[status(thm)],[c_0_79])).
% 7.70/7.88  cnf(c_0_83, negated_conjecture, (~r1_tarski(k1_relat_1(esk3_0),esk1_0)|~r1_tarski(esk1_0,k1_relat_1(esk3_0))), inference(spm,[status(thm)],[c_0_80, c_0_49])).
% 7.70/7.88  cnf(c_0_84, plain, (X2=k1_relset_1(X2,X3,X1)|X3=k1_xboole_0|~v1_funct_2(X1,X2,X3)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_72])).
% 7.70/7.88  cnf(c_0_85, negated_conjecture, (~v1_funct_2(esk3_0,X1,X2)|~m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~r1_tarski(esk1_0,X1)|~r1_tarski(X1,k1_xboole_0)|~r1_tarski(k1_xboole_0,X1)), inference(spm,[status(thm)],[c_0_81, c_0_42])).
% 7.70/7.88  cnf(c_0_86, negated_conjecture, (v1_funct_2(esk3_0,esk1_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 7.70/7.88  cnf(c_0_87, plain, (X1=X2|X3=X2|~v1_funct_2(X3,X1,X2)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~r1_tarski(X2,k1_xboole_0)|~r1_tarski(k1_xboole_0,X2)), inference(spm,[status(thm)],[c_0_82, c_0_42])).
% 7.70/7.88  cnf(c_0_88, negated_conjecture, (~r1_tarski(esk1_0,k1_relat_1(esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_83, c_0_55]), c_0_63])])).
% 7.70/7.88  cnf(c_0_89, plain, (X1=k1_relat_1(X2)|X3=k1_xboole_0|~v1_funct_2(X2,X1,X3)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))), inference(spm,[status(thm)],[c_0_58, c_0_84])).
% 7.70/7.88  cnf(c_0_90, negated_conjecture, (~r1_tarski(esk1_0,k1_xboole_0)|~r1_tarski(k1_xboole_0,esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_85, c_0_29]), c_0_86]), c_0_49])])).
% 7.70/7.88  cnf(c_0_91, negated_conjecture, (esk2_0=esk3_0|esk1_0=esk2_0|~r1_tarski(esk2_0,k1_xboole_0)|~r1_tarski(k1_xboole_0,esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_87, c_0_29]), c_0_86])])).
% 7.70/7.88  cnf(c_0_92, negated_conjecture, (~r1_tarski(esk1_0,k1_relat_1(X1))|~r1_tarski(X1,esk3_0)|~r1_tarski(esk3_0,X1)), inference(spm,[status(thm)],[c_0_88, c_0_42])).
% 7.70/7.88  cnf(c_0_93, negated_conjecture, (k1_relat_1(esk3_0)=esk1_0|esk2_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_89, c_0_29]), c_0_86])])).
% 7.70/7.88  fof(c_0_94, plain, ![X26, X27]:(((v1_funct_1(X27)|~r1_tarski(k2_relat_1(X27),X26)|(~v1_relat_1(X27)|~v1_funct_1(X27)))&(v1_funct_2(X27,k1_relat_1(X27),X26)|~r1_tarski(k2_relat_1(X27),X26)|(~v1_relat_1(X27)|~v1_funct_1(X27))))&(m1_subset_1(X27,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X27),X26)))|~r1_tarski(k2_relat_1(X27),X26)|(~v1_relat_1(X27)|~v1_funct_1(X27)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t4_funct_2])])])).
% 7.70/7.88  cnf(c_0_95, negated_conjecture, (esk2_0=esk3_0|~r1_tarski(esk2_0,k1_xboole_0)|~r1_tarski(k1_xboole_0,esk2_0)), inference(spm,[status(thm)],[c_0_90, c_0_91])).
% 7.70/7.88  cnf(c_0_96, negated_conjecture, (esk2_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_92, c_0_93]), c_0_49]), c_0_49])])).
% 7.70/7.88  cnf(c_0_97, negated_conjecture, (v1_funct_2(X1,esk1_0,esk2_0)|~r1_tarski(esk3_0,X1)|~r1_tarski(X1,esk3_0)), inference(spm,[status(thm)],[c_0_86, c_0_42])).
% 7.70/7.88  cnf(c_0_98, negated_conjecture, (~v1_funct_2(k2_funct_1(esk3_0),esk2_0,esk1_0)|~v1_funct_1(k2_funct_1(esk3_0))|~m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(X1))|~r1_tarski(X1,k2_zfmisc_1(esk2_0,esk1_0))|~r1_tarski(k2_zfmisc_1(esk2_0,esk1_0),X1)), inference(spm,[status(thm)],[c_0_41, c_0_42])).
% 7.70/7.88  cnf(c_0_99, plain, (v1_funct_2(X1,k1_relat_1(X1),X2)|~r1_tarski(k2_relat_1(X1),X2)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_94])).
% 7.70/7.88  cnf(c_0_100, negated_conjecture, (esk3_0=k1_xboole_0), inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_95, c_0_96]), c_0_49]), c_0_96]), c_0_49])]), c_0_96])).
% 7.70/7.88  cnf(c_0_101, negated_conjecture, (v1_funct_2(X1,esk1_0,esk2_0)|~m1_subset_1(esk3_0,k1_zfmisc_1(X1))|~r1_tarski(X1,esk3_0)), inference(spm,[status(thm)],[c_0_97, c_0_55])).
% 7.70/7.88  cnf(c_0_102, negated_conjecture, (~v1_funct_2(k2_funct_1(esk3_0),X1,esk1_0)|~v1_funct_1(k2_funct_1(esk3_0))|~m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(X2))|~r1_tarski(X2,k2_zfmisc_1(X1,esk1_0))|~r1_tarski(k2_zfmisc_1(X1,esk1_0),X2)|~r1_tarski(X1,esk2_0)|~r1_tarski(esk2_0,X1)), inference(spm,[status(thm)],[c_0_98, c_0_42])).
% 7.70/7.88  cnf(c_0_103, plain, (v1_funct_2(X1,k1_relat_1(X1),X2)|~v1_funct_1(X1)|~v1_relat_1(X1)|~m1_subset_1(k2_relat_1(X1),k1_zfmisc_1(X2))), inference(spm,[status(thm)],[c_0_99, c_0_55])).
% 7.70/7.88  cnf(c_0_104, plain, (m1_subset_1(k2_relat_1(X1),k1_zfmisc_1(X2))|~v2_funct_1(X1)|~v1_funct_1(X1)|~v1_relat_1(X1)|~m1_subset_1(k2_funct_1(X1),k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(spm,[status(thm)],[c_0_61, c_0_34])).
% 7.70/7.88  cnf(c_0_105, negated_conjecture, (m1_subset_1(k2_funct_1(k1_xboole_0),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(k2_funct_1(k1_xboole_0)),k2_relat_1(k2_funct_1(k1_xboole_0)))))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_33, c_0_100]), c_0_100]), c_0_100])).
% 7.70/7.88  cnf(c_0_106, negated_conjecture, (k2_relat_1(k1_xboole_0)=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_35, c_0_96]), c_0_100])).
% 7.70/7.88  cnf(c_0_107, negated_conjecture, (v2_funct_1(k1_xboole_0)), inference(rw,[status(thm)],[c_0_16, c_0_100])).
% 7.70/7.88  cnf(c_0_108, negated_conjecture, (v1_funct_1(k1_xboole_0)), inference(rw,[status(thm)],[c_0_17, c_0_100])).
% 7.70/7.88  cnf(c_0_109, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk3_0)))|~r1_tarski(esk2_0,k1_xboole_0)|~r1_tarski(k1_xboole_0,esk2_0)), inference(spm,[status(thm)],[c_0_29, c_0_95])).
% 7.70/7.88  cnf(c_0_110, plain, (m1_subset_1(X1,k1_zfmisc_1(X2))|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_51])).
% 7.70/7.88  cnf(c_0_111, negated_conjecture, (v1_funct_2(X1,esk1_0,esk3_0)|~m1_subset_1(esk3_0,k1_zfmisc_1(X1))|~r1_tarski(esk2_0,k1_xboole_0)|~r1_tarski(k1_xboole_0,esk2_0)|~r1_tarski(X1,esk3_0)), inference(spm,[status(thm)],[c_0_101, c_0_95])).
% 7.70/7.88  cnf(c_0_112, negated_conjecture, (~v1_funct_2(k2_funct_1(esk3_0),X1,esk1_0)|~m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(X2))|~r1_tarski(X2,k2_zfmisc_1(X1,esk1_0))|~r1_tarski(k2_zfmisc_1(X1,esk1_0),X2)|~r1_tarski(X1,esk2_0)|~r1_tarski(esk2_0,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_102, c_0_60])])).
% 7.70/7.88  cnf(c_0_113, plain, (v1_funct_2(k2_funct_1(X1),k2_relat_1(X1),X2)|~v2_funct_1(X1)|~v1_funct_1(X1)|~v1_relat_1(X1)|~m1_subset_1(k2_relat_1(k2_funct_1(X1)),k1_zfmisc_1(X2))), inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_103, c_0_34]), c_0_24]), c_0_15])).
% 7.70/7.88  cnf(c_0_114, negated_conjecture, (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0)))|~r1_tarski(esk3_0,X1)|~r1_tarski(X1,esk3_0)), inference(spm,[status(thm)],[c_0_29, c_0_42])).
% 7.70/7.88  cnf(c_0_115, negated_conjecture, (m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_relat_1(k2_funct_1(k1_xboole_0))))|~v1_relat_1(k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_104, c_0_105]), c_0_106]), c_0_107]), c_0_108])])).
% 7.70/7.88  cnf(c_0_116, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk3_0)))|~m1_subset_1(esk2_0,k1_zfmisc_1(k1_xboole_0))|~r1_tarski(k1_xboole_0,esk2_0)), inference(spm,[status(thm)],[c_0_109, c_0_55])).
% 7.70/7.88  cnf(c_0_117, plain, (m1_subset_1(X1,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_110, c_0_49])).
% 7.70/7.88  cnf(c_0_118, negated_conjecture, (m1_subset_1(k1_relat_1(k2_funct_1(esk3_0)),k1_zfmisc_1(esk2_0))), inference(spm,[status(thm)],[c_0_61, c_0_48])).
% 7.70/7.88  cnf(c_0_119, negated_conjecture, (v1_funct_2(X1,esk1_0,esk3_0)|~m1_subset_1(esk2_0,k1_zfmisc_1(k1_xboole_0))|~m1_subset_1(esk3_0,k1_zfmisc_1(X1))|~r1_tarski(k1_xboole_0,esk2_0)|~r1_tarski(X1,esk3_0)), inference(spm,[status(thm)],[c_0_111, c_0_55])).
% 7.70/7.88  cnf(c_0_120, negated_conjecture, (~v1_funct_2(k2_funct_1(k1_xboole_0),X1,esk1_0)|~m1_subset_1(k2_funct_1(k1_xboole_0),k1_zfmisc_1(X2))|~r1_tarski(X2,k2_zfmisc_1(X1,esk1_0))|~r1_tarski(k2_zfmisc_1(X1,esk1_0),X2)|~r1_tarski(X1,k1_xboole_0)|~r1_tarski(k1_xboole_0,X1)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_112, c_0_96]), c_0_96]), c_0_100]), c_0_100])).
% 7.70/7.88  cnf(c_0_121, negated_conjecture, (v1_funct_2(k2_funct_1(k1_xboole_0),k1_xboole_0,X1)|~v1_relat_1(k1_xboole_0)|~m1_subset_1(k2_relat_1(k2_funct_1(k1_xboole_0)),k1_zfmisc_1(X1))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_113, c_0_106]), c_0_107]), c_0_108])])).
% 7.70/7.88  cnf(c_0_122, negated_conjecture, (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0)))|~m1_subset_1(esk3_0,k1_zfmisc_1(X1))|~r1_tarski(X1,esk3_0)), inference(spm,[status(thm)],[c_0_114, c_0_55])).
% 7.70/7.88  cnf(c_0_123, negated_conjecture, (m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_relat_1(k2_funct_1(k1_xboole_0))))|~m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(spm,[status(thm)],[c_0_115, c_0_21])).
% 7.70/7.88  cnf(c_0_124, negated_conjecture, (m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,k1_xboole_0)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_116, c_0_96]), c_0_117]), c_0_96]), c_0_49])]), c_0_100]), c_0_100])).
% 7.70/7.88  cnf(c_0_125, negated_conjecture, (m1_subset_1(k1_relat_1(k2_funct_1(esk3_0)),k1_zfmisc_1(esk3_0))|~r1_tarski(esk2_0,k1_xboole_0)|~r1_tarski(k1_xboole_0,esk2_0)), inference(spm,[status(thm)],[c_0_118, c_0_95])).
% 7.70/7.88  cnf(c_0_126, negated_conjecture, (v1_funct_2(X1,esk1_0,k1_xboole_0)|~m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1))|~r1_tarski(X1,k1_xboole_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_119, c_0_96]), c_0_117]), c_0_96]), c_0_49])]), c_0_100]), c_0_100]), c_0_100])).
% 7.70/7.88  cnf(c_0_127, negated_conjecture, (v1_relat_1(X1)|~v1_relat_1(esk3_0)|~r1_tarski(X1,k2_funct_1(esk3_0))|~r1_tarski(k2_funct_1(esk3_0),X1)), inference(spm,[status(thm)],[c_0_26, c_0_42])).
% 7.70/7.88  cnf(c_0_128, negated_conjecture, (~v1_relat_1(k1_xboole_0)|~m1_subset_1(k2_relat_1(k2_funct_1(k1_xboole_0)),k1_zfmisc_1(esk1_0))|~m1_subset_1(k2_funct_1(k1_xboole_0),k1_zfmisc_1(X1))|~r1_tarski(X1,k2_zfmisc_1(k1_xboole_0,esk1_0))|~r1_tarski(k2_zfmisc_1(k1_xboole_0,esk1_0),X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_120, c_0_121]), c_0_49])])).
% 7.70/7.88  cnf(c_0_129, negated_conjecture, (m1_subset_1(k1_relat_1(k1_xboole_0),k1_zfmisc_1(esk1_0))), inference(rw,[status(thm)],[c_0_63, c_0_100])).
% 7.70/7.88  cnf(c_0_130, negated_conjecture, (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(esk1_0,k1_xboole_0)))|~m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1))|~r1_tarski(X1,k1_xboole_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_122, c_0_96]), c_0_100]), c_0_100])).
% 7.70/7.88  cnf(c_0_131, negated_conjecture, (m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_relat_1(k2_funct_1(k1_xboole_0))))), inference(spm,[status(thm)],[c_0_123, c_0_124])).
% 7.70/7.88  cnf(c_0_132, negated_conjecture, (m1_subset_1(k1_relat_1(k2_funct_1(esk3_0)),k1_zfmisc_1(esk3_0))|~m1_subset_1(esk2_0,k1_zfmisc_1(k1_xboole_0))|~r1_tarski(k1_xboole_0,esk2_0)), inference(spm,[status(thm)],[c_0_125, c_0_55])).
% 7.70/7.88  cnf(c_0_133, negated_conjecture, (v1_funct_2(X1,esk1_0,X2)|~m1_subset_1(X2,k1_zfmisc_1(X1))|~r1_tarski(X2,k1_xboole_0)|~r1_tarski(k1_xboole_0,X2)|~r1_tarski(X1,X2)), inference(spm,[status(thm)],[c_0_126, c_0_42])).
% 7.70/7.88  cnf(c_0_134, negated_conjecture, (v1_relat_1(X1)|~v1_relat_1(k1_xboole_0)|~r1_tarski(X1,k2_funct_1(k1_xboole_0))|~r1_tarski(k2_funct_1(k1_xboole_0),X1)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_127, c_0_100]), c_0_100]), c_0_100])).
% 7.70/7.88  cnf(c_0_135, negated_conjecture, (~v1_relat_1(k1_xboole_0)|~m1_subset_1(k2_funct_1(k1_xboole_0),k1_zfmisc_1(X1))|~r1_tarski(X1,k2_zfmisc_1(k1_xboole_0,esk1_0))|~r1_tarski(k2_zfmisc_1(k1_xboole_0,esk1_0),X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_128, c_0_40]), c_0_129]), c_0_107]), c_0_108])])).
% 7.70/7.88  cnf(c_0_136, negated_conjecture, (m1_subset_1(k1_relat_1(k2_funct_1(k1_xboole_0)),k1_zfmisc_1(k2_zfmisc_1(esk1_0,k1_xboole_0)))|~r1_tarski(k1_relat_1(k2_funct_1(k1_xboole_0)),k1_xboole_0)), inference(spm,[status(thm)],[c_0_130, c_0_131])).
% 7.70/7.88  cnf(c_0_137, negated_conjecture, (m1_subset_1(k1_relat_1(k2_funct_1(k1_xboole_0)),k1_zfmisc_1(k1_xboole_0))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_132, c_0_96]), c_0_117]), c_0_96]), c_0_49])]), c_0_100]), c_0_100])).
% 7.70/7.88  cnf(c_0_138, negated_conjecture, (v1_funct_2(k1_relat_1(k2_funct_1(k1_xboole_0)),esk1_0,k1_xboole_0)|~r1_tarski(k1_relat_1(k2_funct_1(k1_xboole_0)),k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_133, c_0_131]), c_0_49])])).
% 7.70/7.88  cnf(c_0_139, negated_conjecture, (v1_relat_1(X1)|~m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~r1_tarski(X1,k2_funct_1(k1_xboole_0))|~r1_tarski(k2_funct_1(k1_xboole_0),X1)), inference(spm,[status(thm)],[c_0_134, c_0_21])).
% 7.70/7.88  cnf(c_0_140, negated_conjecture, (~m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~m1_subset_1(k2_funct_1(k1_xboole_0),k1_zfmisc_1(X3))|~r1_tarski(X3,k2_zfmisc_1(k1_xboole_0,esk1_0))|~r1_tarski(k2_zfmisc_1(k1_xboole_0,esk1_0),X3)), inference(spm,[status(thm)],[c_0_135, c_0_21])).
% 7.70/7.88  cnf(c_0_141, plain, (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X2)))|~r1_tarski(k2_relat_1(X1),X2)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_94])).
% 7.70/7.88  cnf(c_0_142, negated_conjecture, (m1_subset_1(k1_relat_1(k2_funct_1(k1_xboole_0)),k1_zfmisc_1(k2_zfmisc_1(esk1_0,k1_xboole_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_136, c_0_55]), c_0_137])])).
% 7.70/7.88  cnf(c_0_143, negated_conjecture, (v1_funct_2(k1_relat_1(k2_funct_1(k1_xboole_0)),esk1_0,k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_138, c_0_55]), c_0_137])])).
% 7.70/7.88  cnf(c_0_144, negated_conjecture, (v1_relat_1(X1)|~r1_tarski(X1,k2_funct_1(k1_xboole_0))|~r1_tarski(k2_funct_1(k1_xboole_0),X1)), inference(spm,[status(thm)],[c_0_139, c_0_124])).
% 7.70/7.88  cnf(c_0_145, plain, (k2_relat_1(X1)=k1_relat_1(X2)|~v2_funct_1(X2)|~v1_funct_1(X2)|~v1_relat_1(X2)|~r1_tarski(X1,k2_funct_1(X2))|~r1_tarski(k2_funct_1(X2),X1)), inference(spm,[status(thm)],[c_0_40, c_0_42])).
% 7.70/7.88  cnf(c_0_146, negated_conjecture, (~m1_subset_1(k2_funct_1(k1_xboole_0),k1_zfmisc_1(X1))|~r1_tarski(X1,k2_zfmisc_1(k1_xboole_0,esk1_0))|~r1_tarski(k2_zfmisc_1(k1_xboole_0,esk1_0),X1)), inference(spm,[status(thm)],[c_0_140, c_0_124])).
% 7.70/7.88  cnf(c_0_147, plain, (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X2)))|~v1_funct_1(X1)|~v1_relat_1(X1)|~m1_subset_1(k2_relat_1(X1),k1_zfmisc_1(X2))), inference(spm,[status(thm)],[c_0_141, c_0_55])).
% 7.70/7.88  cnf(c_0_148, negated_conjecture, (k1_relat_1(k2_funct_1(k1_xboole_0))=k1_xboole_0|esk1_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_87, c_0_142]), c_0_143]), c_0_49])])).
% 7.70/7.88  cnf(c_0_149, negated_conjecture, (v1_funct_1(k2_funct_1(k1_xboole_0))), inference(rw,[status(thm)],[c_0_60, c_0_100])).
% 7.70/7.88  cnf(c_0_150, negated_conjecture, (v1_relat_1(k2_funct_1(k1_xboole_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_144, c_0_49]), c_0_49])])).
% 7.70/7.88  cnf(c_0_151, plain, (m1_subset_1(k2_relat_1(X1),k1_zfmisc_1(X2))|~v2_funct_1(X3)|~v1_funct_1(X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X4)))|~r1_tarski(X1,k2_funct_1(X3))|~r1_tarski(k2_funct_1(X3),X1)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_61, c_0_145]), c_0_21])).
% 7.70/7.88  cnf(c_0_152, negated_conjecture, (~m1_subset_1(k2_funct_1(k1_xboole_0),X1)|~r1_tarski(X2,k2_zfmisc_1(k1_xboole_0,esk1_0))|~r1_tarski(k2_zfmisc_1(k1_xboole_0,esk1_0),X2)|~r1_tarski(X1,k1_zfmisc_1(X2))|~r1_tarski(k1_zfmisc_1(X2),X1)), inference(spm,[status(thm)],[c_0_146, c_0_42])).
% 7.70/7.88  cnf(c_0_153, negated_conjecture, (esk1_0=k1_xboole_0|m1_subset_1(k2_funct_1(k1_xboole_0),k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))|~m1_subset_1(k2_relat_1(k2_funct_1(k1_xboole_0)),k1_zfmisc_1(X1))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_147, c_0_148]), c_0_149]), c_0_150])])).
% 7.70/7.88  cnf(c_0_154, negated_conjecture, (m1_subset_1(k2_relat_1(X1),k1_zfmisc_1(esk1_0))|~r1_tarski(X1,k2_funct_1(k1_xboole_0))|~r1_tarski(k2_funct_1(k1_xboole_0),X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_151, c_0_124]), c_0_107]), c_0_108])])).
% 7.70/7.88  cnf(c_0_155, negated_conjecture, (~m1_subset_1(k2_funct_1(k1_xboole_0),X1)|~r1_tarski(X1,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,esk1_0)))|~r1_tarski(k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,esk1_0)),X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_152, c_0_49]), c_0_49])])).
% 7.70/7.89  cnf(c_0_156, negated_conjecture, (m1_subset_1(k2_funct_1(k1_xboole_0),k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))|~m1_subset_1(k2_relat_1(k2_funct_1(k1_xboole_0)),k1_zfmisc_1(X1))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_90, c_0_153]), c_0_49])])).
% 7.70/7.89  cnf(c_0_157, negated_conjecture, (m1_subset_1(k2_relat_1(k2_funct_1(k1_xboole_0)),k1_zfmisc_1(esk1_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_154, c_0_49]), c_0_49])])).
% 7.70/7.89  cnf(c_0_158, negated_conjecture, (~m1_subset_1(k2_funct_1(k1_xboole_0),k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,esk1_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_155, c_0_49]), c_0_49])])).
% 7.70/7.89  cnf(c_0_159, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_156, c_0_157]), c_0_158]), ['proof']).
% 7.70/7.89  # SZS output end CNFRefutation
% 7.70/7.89  # Proof object total steps             : 160
% 7.70/7.89  # Proof object clause steps            : 135
% 7.70/7.89  # Proof object formula steps           : 25
% 7.70/7.89  # Proof object conjectures             : 103
% 7.70/7.89  # Proof object clause conjectures      : 100
% 7.70/7.89  # Proof object formula conjectures     : 3
% 7.70/7.89  # Proof object initial clauses used    : 25
% 7.70/7.89  # Proof object initial formulas used   : 12
% 7.70/7.89  # Proof object generating inferences   : 91
% 7.70/7.89  # Proof object simplifying inferences  : 141
% 7.70/7.89  # Training examples: 0 positive, 0 negative
% 7.70/7.89  # Parsed axioms                        : 12
% 7.70/7.89  # Removed by relevancy pruning/SinE    : 0
% 7.70/7.89  # Initial clauses                      : 32
% 7.70/7.89  # Removed in clause preprocessing      : 2
% 7.70/7.89  # Initial clauses in saturation        : 30
% 7.70/7.89  # Processed clauses                    : 14990
% 7.70/7.89  # ...of these trivial                  : 219
% 7.70/7.89  # ...subsumed                          : 10173
% 7.70/7.89  # ...remaining for further processing  : 4598
% 7.70/7.89  # Other redundant clauses eliminated   : 684
% 7.70/7.89  # Clauses deleted for lack of memory   : 0
% 7.70/7.89  # Backward-subsumed                    : 946
% 7.70/7.89  # Backward-rewritten                   : 845
% 7.70/7.89  # Generated clauses                    : 791528
% 7.70/7.89  # ...of the previous two non-trivial   : 745232
% 7.70/7.89  # Contextual simplify-reflections      : 276
% 7.70/7.89  # Paramodulations                      : 790631
% 7.70/7.89  # Factorizations                       : 214
% 7.70/7.89  # Equation resolutions                 : 684
% 7.70/7.89  # Propositional unsat checks           : 0
% 7.70/7.89  #    Propositional check models        : 0
% 7.70/7.89  #    Propositional check unsatisfiable : 0
% 7.70/7.89  #    Propositional clauses             : 0
% 7.70/7.89  #    Propositional clauses after purity: 0
% 7.70/7.89  #    Propositional unsat core size     : 0
% 7.70/7.89  #    Propositional preprocessing time  : 0.000
% 7.70/7.89  #    Propositional encoding time       : 0.000
% 7.70/7.89  #    Propositional solver time         : 0.000
% 7.70/7.89  #    Success case prop preproc time    : 0.000
% 7.70/7.89  #    Success case prop encoding time   : 0.000
% 7.70/7.89  #    Success case prop solver time     : 0.000
% 7.70/7.89  # Current number of processed clauses  : 2772
% 7.70/7.89  #    Positive orientable unit clauses  : 62
% 7.70/7.89  #    Positive unorientable unit clauses: 0
% 7.70/7.89  #    Negative unit clauses             : 9
% 7.70/7.89  #    Non-unit-clauses                  : 2701
% 7.70/7.89  # Current number of unprocessed clauses: 711252
% 7.70/7.89  # ...number of literals in the above   : 5899310
% 7.70/7.89  # Current number of archived formulas  : 0
% 7.70/7.89  # Current number of archived clauses   : 1820
% 7.70/7.89  # Clause-clause subsumption calls (NU) : 1240099
% 7.70/7.89  # Rec. Clause-clause subsumption calls : 170471
% 7.70/7.89  # Non-unit clause-clause subsumptions  : 11026
% 7.70/7.89  # Unit Clause-clause subsumption calls : 12707
% 7.70/7.89  # Rewrite failures with RHS unbound    : 0
% 7.70/7.89  # BW rewrite match attempts            : 794
% 7.70/7.89  # BW rewrite match successes           : 51
% 7.70/7.89  # Condensation attempts                : 0
% 7.70/7.89  # Condensation successes               : 0
% 7.70/7.89  # Termbank termtop insertions          : 21898987
% 7.72/7.92  
% 7.72/7.92  # -------------------------------------------------
% 7.72/7.92  # User time                : 7.223 s
% 7.72/7.92  # System time              : 0.342 s
% 7.72/7.92  # Total time               : 7.565 s
% 7.72/7.92  # Maximum resident set size: 1588 pages
%------------------------------------------------------------------------------
