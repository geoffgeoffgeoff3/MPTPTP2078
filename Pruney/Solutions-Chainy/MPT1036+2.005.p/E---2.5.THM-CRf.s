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
% DateTime   : Thu Dec  3 11:07:04 EST 2020

% Result     : Theorem 0.14s
% Output     : CNFRefutation 0.14s
% Verified   : 
% Statistics : Number of formulae       :   50 ( 579 expanded)
%              Number of clauses        :   35 ( 222 expanded)
%              Number of leaves         :    7 ( 139 expanded)
%              Depth                    :   11
%              Number of atoms          :  166 (3057 expanded)
%              Number of equality atoms :   25 ( 456 expanded)
%              Maximal formula depth    :   13 (   4 average)
%              Maximal clause size      :   22 (   2 average)
%              Maximal term depth       :    3 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t146_funct_2,conjecture,(
    ! [X1,X2] :
      ( ( v1_funct_1(X2)
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) )
     => ! [X3] :
          ( ( v1_funct_1(X3)
            & v1_funct_2(X3,X1,X1)
            & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) )
         => ( r1_partfun1(X2,X3)
          <=> ! [X4] :
                ( r2_hidden(X4,k1_relset_1(X1,X1,X2))
               => k1_funct_1(X2,X4) = k1_funct_1(X3,X4) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t146_funct_2)).

fof(t67_funct_2,axiom,(
    ! [X1,X2] :
      ( ( v1_funct_1(X2)
        & v1_funct_2(X2,X1,X1)
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) )
     => k1_relset_1(X1,X1,X2) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t67_funct_2)).

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

fof(cc1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => v1_relat_1(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc1_relset_1)).

fof(t132_partfun1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ! [X2] :
          ( ( v1_relat_1(X2)
            & v1_funct_1(X2) )
         => ( r1_tarski(k1_relat_1(X1),k1_relat_1(X2))
           => ( r1_partfun1(X1,X2)
            <=> ! [X3] :
                  ( r2_hidden(X3,k1_relat_1(X1))
                 => k1_funct_1(X1,X3) = k1_funct_1(X2,X3) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t132_partfun1)).

fof(t3_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X2))
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_subset)).

fof(c_0_7,negated_conjecture,(
    ~ ! [X1,X2] :
        ( ( v1_funct_1(X2)
          & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) )
       => ! [X3] :
            ( ( v1_funct_1(X3)
              & v1_funct_2(X3,X1,X1)
              & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) )
           => ( r1_partfun1(X2,X3)
            <=> ! [X4] :
                  ( r2_hidden(X4,k1_relset_1(X1,X1,X2))
                 => k1_funct_1(X2,X4) = k1_funct_1(X3,X4) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t146_funct_2])).

fof(c_0_8,plain,(
    ! [X20,X21] :
      ( ~ v1_funct_1(X21)
      | ~ v1_funct_2(X21,X20,X20)
      | ~ m1_subset_1(X21,k1_zfmisc_1(k2_zfmisc_1(X20,X20)))
      | k1_relset_1(X20,X20,X21) = X20 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t67_funct_2])])).

fof(c_0_9,negated_conjecture,(
    ! [X26] :
      ( v1_funct_1(esk3_0)
      & m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk2_0)))
      & v1_funct_1(esk4_0)
      & v1_funct_2(esk4_0,esk2_0,esk2_0)
      & m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk2_0)))
      & ( r2_hidden(esk5_0,k1_relset_1(esk2_0,esk2_0,esk3_0))
        | ~ r1_partfun1(esk3_0,esk4_0) )
      & ( k1_funct_1(esk3_0,esk5_0) != k1_funct_1(esk4_0,esk5_0)
        | ~ r1_partfun1(esk3_0,esk4_0) )
      & ( r1_partfun1(esk3_0,esk4_0)
        | ~ r2_hidden(X26,k1_relset_1(esk2_0,esk2_0,esk3_0))
        | k1_funct_1(esk3_0,X26) = k1_funct_1(esk4_0,X26) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_7])])])])])).

fof(c_0_10,plain,(
    ! [X10,X11,X12] :
      ( ~ m1_subset_1(X12,k1_zfmisc_1(k2_zfmisc_1(X10,X11)))
      | m1_subset_1(k1_relset_1(X10,X11,X12),k1_zfmisc_1(X10)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k1_relset_1])])).

fof(c_0_11,plain,(
    ! [X13,X14,X15] :
      ( ~ m1_subset_1(X15,k1_zfmisc_1(k2_zfmisc_1(X13,X14)))
      | k1_relset_1(X13,X14,X15) = k1_relat_1(X15) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).

cnf(c_0_12,plain,
    ( k1_relset_1(X2,X2,X1) = X2
    | ~ v1_funct_1(X1)
    | ~ v1_funct_2(X1,X2,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_13,negated_conjecture,
    ( v1_funct_2(esk4_0,esk2_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_14,negated_conjecture,
    ( v1_funct_1(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_15,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk2_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

fof(c_0_16,plain,(
    ! [X7,X8,X9] :
      ( ~ m1_subset_1(X9,k1_zfmisc_1(k2_zfmisc_1(X7,X8)))
      | v1_relat_1(X9) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).

cnf(c_0_17,plain,
    ( m1_subset_1(k1_relset_1(X2,X3,X1),k1_zfmisc_1(X2))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_18,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk2_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_19,plain,
    ( k1_relset_1(X2,X3,X1) = k1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

fof(c_0_20,plain,(
    ! [X16,X17,X18] :
      ( ( ~ r1_partfun1(X16,X17)
        | ~ r2_hidden(X18,k1_relat_1(X16))
        | k1_funct_1(X16,X18) = k1_funct_1(X17,X18)
        | ~ r1_tarski(k1_relat_1(X16),k1_relat_1(X17))
        | ~ v1_relat_1(X17)
        | ~ v1_funct_1(X17)
        | ~ v1_relat_1(X16)
        | ~ v1_funct_1(X16) )
      & ( r2_hidden(esk1_2(X16,X17),k1_relat_1(X16))
        | r1_partfun1(X16,X17)
        | ~ r1_tarski(k1_relat_1(X16),k1_relat_1(X17))
        | ~ v1_relat_1(X17)
        | ~ v1_funct_1(X17)
        | ~ v1_relat_1(X16)
        | ~ v1_funct_1(X16) )
      & ( k1_funct_1(X16,esk1_2(X16,X17)) != k1_funct_1(X17,esk1_2(X16,X17))
        | r1_partfun1(X16,X17)
        | ~ r1_tarski(k1_relat_1(X16),k1_relat_1(X17))
        | ~ v1_relat_1(X17)
        | ~ v1_funct_1(X17)
        | ~ v1_relat_1(X16)
        | ~ v1_funct_1(X16) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t132_partfun1])])])])])).

cnf(c_0_21,negated_conjecture,
    ( k1_relset_1(esk2_0,esk2_0,esk4_0) = esk2_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_12,c_0_13]),c_0_14]),c_0_15])])).

cnf(c_0_22,plain,
    ( v1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

fof(c_0_23,plain,(
    ! [X5,X6] :
      ( ( ~ m1_subset_1(X5,k1_zfmisc_1(X6))
        | r1_tarski(X5,X6) )
      & ( ~ r1_tarski(X5,X6)
        | m1_subset_1(X5,k1_zfmisc_1(X6)) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).

cnf(c_0_24,negated_conjecture,
    ( m1_subset_1(k1_relset_1(esk2_0,esk2_0,esk3_0),k1_zfmisc_1(esk2_0)) ),
    inference(spm,[status(thm)],[c_0_17,c_0_18])).

cnf(c_0_25,negated_conjecture,
    ( k1_relset_1(esk2_0,esk2_0,esk3_0) = k1_relat_1(esk3_0) ),
    inference(spm,[status(thm)],[c_0_19,c_0_18])).

cnf(c_0_26,plain,
    ( r2_hidden(esk1_2(X1,X2),k1_relat_1(X1))
    | r1_partfun1(X1,X2)
    | ~ r1_tarski(k1_relat_1(X1),k1_relat_1(X2))
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_27,negated_conjecture,
    ( k1_relat_1(esk4_0) = esk2_0 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19,c_0_15]),c_0_21])).

cnf(c_0_28,negated_conjecture,
    ( v1_relat_1(esk4_0) ),
    inference(spm,[status(thm)],[c_0_22,c_0_15])).

cnf(c_0_29,plain,
    ( r1_tarski(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_30,negated_conjecture,
    ( m1_subset_1(k1_relat_1(esk3_0),k1_zfmisc_1(esk2_0)) ),
    inference(rw,[status(thm)],[c_0_24,c_0_25])).

cnf(c_0_31,plain,
    ( r1_partfun1(X1,X2)
    | k1_funct_1(X1,esk1_2(X1,X2)) != k1_funct_1(X2,esk1_2(X1,X2))
    | ~ r1_tarski(k1_relat_1(X1),k1_relat_1(X2))
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_32,negated_conjecture,
    ( r1_partfun1(esk3_0,esk4_0)
    | k1_funct_1(esk3_0,X1) = k1_funct_1(esk4_0,X1)
    | ~ r2_hidden(X1,k1_relset_1(esk2_0,esk2_0,esk3_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_33,negated_conjecture,
    ( r2_hidden(esk1_2(X1,esk4_0),k1_relat_1(X1))
    | r1_partfun1(X1,esk4_0)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(k1_relat_1(X1),esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26,c_0_27]),c_0_14]),c_0_28])])).

cnf(c_0_34,negated_conjecture,
    ( r1_tarski(k1_relat_1(esk3_0),esk2_0) ),
    inference(spm,[status(thm)],[c_0_29,c_0_30])).

cnf(c_0_35,negated_conjecture,
    ( v1_funct_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_36,negated_conjecture,
    ( v1_relat_1(esk3_0) ),
    inference(spm,[status(thm)],[c_0_22,c_0_18])).

cnf(c_0_37,negated_conjecture,
    ( r1_partfun1(X1,esk4_0)
    | k1_funct_1(X1,esk1_2(X1,esk4_0)) != k1_funct_1(esk4_0,esk1_2(X1,esk4_0))
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(k1_relat_1(X1),esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_27]),c_0_14]),c_0_28])])).

cnf(c_0_38,negated_conjecture,
    ( r2_hidden(esk5_0,k1_relset_1(esk2_0,esk2_0,esk3_0))
    | ~ r1_partfun1(esk3_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_39,negated_conjecture,
    ( k1_funct_1(esk4_0,X1) = k1_funct_1(esk3_0,X1)
    | r1_partfun1(esk3_0,esk4_0)
    | ~ r2_hidden(X1,k1_relat_1(esk3_0)) ),
    inference(rw,[status(thm)],[c_0_32,c_0_25])).

cnf(c_0_40,negated_conjecture,
    ( r2_hidden(esk1_2(esk3_0,esk4_0),k1_relat_1(esk3_0))
    | r1_partfun1(esk3_0,esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_34]),c_0_35]),c_0_36])])).

cnf(c_0_41,negated_conjecture,
    ( r1_partfun1(esk3_0,esk4_0)
    | k1_funct_1(esk4_0,esk1_2(esk3_0,esk4_0)) != k1_funct_1(esk3_0,esk1_2(esk3_0,esk4_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_34]),c_0_35]),c_0_36])])).

cnf(c_0_42,negated_conjecture,
    ( r2_hidden(esk5_0,k1_relat_1(esk3_0))
    | ~ r1_partfun1(esk3_0,esk4_0) ),
    inference(rw,[status(thm)],[c_0_38,c_0_25])).

cnf(c_0_43,negated_conjecture,
    ( r1_partfun1(esk3_0,esk4_0) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_39,c_0_40]),c_0_41])).

cnf(c_0_44,plain,
    ( k1_funct_1(X1,X3) = k1_funct_1(X2,X3)
    | ~ r1_partfun1(X1,X2)
    | ~ r2_hidden(X3,k1_relat_1(X1))
    | ~ r1_tarski(k1_relat_1(X1),k1_relat_1(X2))
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_45,negated_conjecture,
    ( r2_hidden(esk5_0,k1_relat_1(esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_42,c_0_43])])).

cnf(c_0_46,negated_conjecture,
    ( k1_funct_1(esk3_0,esk5_0) != k1_funct_1(esk4_0,esk5_0)
    | ~ r1_partfun1(esk3_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_47,negated_conjecture,
    ( k1_funct_1(esk3_0,esk5_0) = k1_funct_1(X1,esk5_0)
    | ~ r1_partfun1(esk3_0,X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(k1_relat_1(esk3_0),k1_relat_1(X1)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44,c_0_45]),c_0_35]),c_0_36])])).

cnf(c_0_48,negated_conjecture,
    ( k1_funct_1(esk4_0,esk5_0) != k1_funct_1(esk3_0,esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_46,c_0_43])])).

cnf(c_0_49,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47,c_0_27]),c_0_43]),c_0_14]),c_0_28]),c_0_34])]),c_0_48]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.34  % Computer   : n009.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 13:09:11 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  # Version: 2.5pre002
% 0.14/0.34  # No SInE strategy applied
% 0.14/0.34  # Trying AutoSched0 for 299 seconds
% 0.14/0.37  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S002I
% 0.14/0.37  # and selection function SelectNegativeLiterals.
% 0.14/0.37  #
% 0.14/0.37  # Preprocessing time       : 0.027 s
% 0.14/0.37  # Presaturation interreduction done
% 0.14/0.37  
% 0.14/0.37  # Proof found!
% 0.14/0.37  # SZS status Theorem
% 0.14/0.37  # SZS output start CNFRefutation
% 0.14/0.37  fof(t146_funct_2, conjecture, ![X1, X2]:((v1_funct_1(X2)&m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))))=>![X3]:(((v1_funct_1(X3)&v1_funct_2(X3,X1,X1))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X1))))=>(r1_partfun1(X2,X3)<=>![X4]:(r2_hidden(X4,k1_relset_1(X1,X1,X2))=>k1_funct_1(X2,X4)=k1_funct_1(X3,X4))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t146_funct_2)).
% 0.14/0.37  fof(t67_funct_2, axiom, ![X1, X2]:(((v1_funct_1(X2)&v1_funct_2(X2,X1,X1))&m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))))=>k1_relset_1(X1,X1,X2)=X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t67_funct_2)).
% 0.14/0.37  fof(dt_k1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>m1_subset_1(k1_relset_1(X1,X2,X3),k1_zfmisc_1(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k1_relset_1)).
% 0.14/0.37  fof(redefinition_k1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k1_relset_1(X1,X2,X3)=k1_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k1_relset_1)).
% 0.14/0.37  fof(cc1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>v1_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc1_relset_1)).
% 0.14/0.37  fof(t132_partfun1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>![X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(r1_tarski(k1_relat_1(X1),k1_relat_1(X2))=>(r1_partfun1(X1,X2)<=>![X3]:(r2_hidden(X3,k1_relat_1(X1))=>k1_funct_1(X1,X3)=k1_funct_1(X2,X3)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t132_partfun1)).
% 0.14/0.37  fof(t3_subset, axiom, ![X1, X2]:(m1_subset_1(X1,k1_zfmisc_1(X2))<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t3_subset)).
% 0.14/0.37  fof(c_0_7, negated_conjecture, ~(![X1, X2]:((v1_funct_1(X2)&m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))))=>![X3]:(((v1_funct_1(X3)&v1_funct_2(X3,X1,X1))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X1))))=>(r1_partfun1(X2,X3)<=>![X4]:(r2_hidden(X4,k1_relset_1(X1,X1,X2))=>k1_funct_1(X2,X4)=k1_funct_1(X3,X4)))))), inference(assume_negation,[status(cth)],[t146_funct_2])).
% 0.14/0.37  fof(c_0_8, plain, ![X20, X21]:(~v1_funct_1(X21)|~v1_funct_2(X21,X20,X20)|~m1_subset_1(X21,k1_zfmisc_1(k2_zfmisc_1(X20,X20)))|k1_relset_1(X20,X20,X21)=X20), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t67_funct_2])])).
% 0.14/0.37  fof(c_0_9, negated_conjecture, ![X26]:((v1_funct_1(esk3_0)&m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk2_0))))&(((v1_funct_1(esk4_0)&v1_funct_2(esk4_0,esk2_0,esk2_0))&m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk2_0))))&(((r2_hidden(esk5_0,k1_relset_1(esk2_0,esk2_0,esk3_0))|~r1_partfun1(esk3_0,esk4_0))&(k1_funct_1(esk3_0,esk5_0)!=k1_funct_1(esk4_0,esk5_0)|~r1_partfun1(esk3_0,esk4_0)))&(r1_partfun1(esk3_0,esk4_0)|(~r2_hidden(X26,k1_relset_1(esk2_0,esk2_0,esk3_0))|k1_funct_1(esk3_0,X26)=k1_funct_1(esk4_0,X26)))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_7])])])])])).
% 0.14/0.37  fof(c_0_10, plain, ![X10, X11, X12]:(~m1_subset_1(X12,k1_zfmisc_1(k2_zfmisc_1(X10,X11)))|m1_subset_1(k1_relset_1(X10,X11,X12),k1_zfmisc_1(X10))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k1_relset_1])])).
% 0.14/0.37  fof(c_0_11, plain, ![X13, X14, X15]:(~m1_subset_1(X15,k1_zfmisc_1(k2_zfmisc_1(X13,X14)))|k1_relset_1(X13,X14,X15)=k1_relat_1(X15)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).
% 0.14/0.37  cnf(c_0_12, plain, (k1_relset_1(X2,X2,X1)=X2|~v1_funct_1(X1)|~v1_funct_2(X1,X2,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X2)))), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.14/0.37  cnf(c_0_13, negated_conjecture, (v1_funct_2(esk4_0,esk2_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.14/0.37  cnf(c_0_14, negated_conjecture, (v1_funct_1(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.14/0.37  cnf(c_0_15, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk2_0)))), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.14/0.37  fof(c_0_16, plain, ![X7, X8, X9]:(~m1_subset_1(X9,k1_zfmisc_1(k2_zfmisc_1(X7,X8)))|v1_relat_1(X9)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).
% 0.14/0.37  cnf(c_0_17, plain, (m1_subset_1(k1_relset_1(X2,X3,X1),k1_zfmisc_1(X2))|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.14/0.37  cnf(c_0_18, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk2_0)))), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.14/0.37  cnf(c_0_19, plain, (k1_relset_1(X2,X3,X1)=k1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.14/0.37  fof(c_0_20, plain, ![X16, X17, X18]:((~r1_partfun1(X16,X17)|(~r2_hidden(X18,k1_relat_1(X16))|k1_funct_1(X16,X18)=k1_funct_1(X17,X18))|~r1_tarski(k1_relat_1(X16),k1_relat_1(X17))|(~v1_relat_1(X17)|~v1_funct_1(X17))|(~v1_relat_1(X16)|~v1_funct_1(X16)))&((r2_hidden(esk1_2(X16,X17),k1_relat_1(X16))|r1_partfun1(X16,X17)|~r1_tarski(k1_relat_1(X16),k1_relat_1(X17))|(~v1_relat_1(X17)|~v1_funct_1(X17))|(~v1_relat_1(X16)|~v1_funct_1(X16)))&(k1_funct_1(X16,esk1_2(X16,X17))!=k1_funct_1(X17,esk1_2(X16,X17))|r1_partfun1(X16,X17)|~r1_tarski(k1_relat_1(X16),k1_relat_1(X17))|(~v1_relat_1(X17)|~v1_funct_1(X17))|(~v1_relat_1(X16)|~v1_funct_1(X16))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t132_partfun1])])])])])).
% 0.14/0.37  cnf(c_0_21, negated_conjecture, (k1_relset_1(esk2_0,esk2_0,esk4_0)=esk2_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_12, c_0_13]), c_0_14]), c_0_15])])).
% 0.14/0.37  cnf(c_0_22, plain, (v1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.14/0.37  fof(c_0_23, plain, ![X5, X6]:((~m1_subset_1(X5,k1_zfmisc_1(X6))|r1_tarski(X5,X6))&(~r1_tarski(X5,X6)|m1_subset_1(X5,k1_zfmisc_1(X6)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).
% 0.14/0.37  cnf(c_0_24, negated_conjecture, (m1_subset_1(k1_relset_1(esk2_0,esk2_0,esk3_0),k1_zfmisc_1(esk2_0))), inference(spm,[status(thm)],[c_0_17, c_0_18])).
% 0.14/0.37  cnf(c_0_25, negated_conjecture, (k1_relset_1(esk2_0,esk2_0,esk3_0)=k1_relat_1(esk3_0)), inference(spm,[status(thm)],[c_0_19, c_0_18])).
% 0.14/0.37  cnf(c_0_26, plain, (r2_hidden(esk1_2(X1,X2),k1_relat_1(X1))|r1_partfun1(X1,X2)|~r1_tarski(k1_relat_1(X1),k1_relat_1(X2))|~v1_relat_1(X2)|~v1_funct_1(X2)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.14/0.37  cnf(c_0_27, negated_conjecture, (k1_relat_1(esk4_0)=esk2_0), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19, c_0_15]), c_0_21])).
% 0.14/0.37  cnf(c_0_28, negated_conjecture, (v1_relat_1(esk4_0)), inference(spm,[status(thm)],[c_0_22, c_0_15])).
% 0.14/0.37  cnf(c_0_29, plain, (r1_tarski(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.14/0.37  cnf(c_0_30, negated_conjecture, (m1_subset_1(k1_relat_1(esk3_0),k1_zfmisc_1(esk2_0))), inference(rw,[status(thm)],[c_0_24, c_0_25])).
% 0.14/0.37  cnf(c_0_31, plain, (r1_partfun1(X1,X2)|k1_funct_1(X1,esk1_2(X1,X2))!=k1_funct_1(X2,esk1_2(X1,X2))|~r1_tarski(k1_relat_1(X1),k1_relat_1(X2))|~v1_relat_1(X2)|~v1_funct_1(X2)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.14/0.37  cnf(c_0_32, negated_conjecture, (r1_partfun1(esk3_0,esk4_0)|k1_funct_1(esk3_0,X1)=k1_funct_1(esk4_0,X1)|~r2_hidden(X1,k1_relset_1(esk2_0,esk2_0,esk3_0))), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.14/0.37  cnf(c_0_33, negated_conjecture, (r2_hidden(esk1_2(X1,esk4_0),k1_relat_1(X1))|r1_partfun1(X1,esk4_0)|~v1_funct_1(X1)|~v1_relat_1(X1)|~r1_tarski(k1_relat_1(X1),esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26, c_0_27]), c_0_14]), c_0_28])])).
% 0.14/0.38  cnf(c_0_34, negated_conjecture, (r1_tarski(k1_relat_1(esk3_0),esk2_0)), inference(spm,[status(thm)],[c_0_29, c_0_30])).
% 0.14/0.38  cnf(c_0_35, negated_conjecture, (v1_funct_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.14/0.38  cnf(c_0_36, negated_conjecture, (v1_relat_1(esk3_0)), inference(spm,[status(thm)],[c_0_22, c_0_18])).
% 0.14/0.38  cnf(c_0_37, negated_conjecture, (r1_partfun1(X1,esk4_0)|k1_funct_1(X1,esk1_2(X1,esk4_0))!=k1_funct_1(esk4_0,esk1_2(X1,esk4_0))|~v1_funct_1(X1)|~v1_relat_1(X1)|~r1_tarski(k1_relat_1(X1),esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_27]), c_0_14]), c_0_28])])).
% 0.14/0.38  cnf(c_0_38, negated_conjecture, (r2_hidden(esk5_0,k1_relset_1(esk2_0,esk2_0,esk3_0))|~r1_partfun1(esk3_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.14/0.38  cnf(c_0_39, negated_conjecture, (k1_funct_1(esk4_0,X1)=k1_funct_1(esk3_0,X1)|r1_partfun1(esk3_0,esk4_0)|~r2_hidden(X1,k1_relat_1(esk3_0))), inference(rw,[status(thm)],[c_0_32, c_0_25])).
% 0.14/0.38  cnf(c_0_40, negated_conjecture, (r2_hidden(esk1_2(esk3_0,esk4_0),k1_relat_1(esk3_0))|r1_partfun1(esk3_0,esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33, c_0_34]), c_0_35]), c_0_36])])).
% 0.14/0.38  cnf(c_0_41, negated_conjecture, (r1_partfun1(esk3_0,esk4_0)|k1_funct_1(esk4_0,esk1_2(esk3_0,esk4_0))!=k1_funct_1(esk3_0,esk1_2(esk3_0,esk4_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_34]), c_0_35]), c_0_36])])).
% 0.14/0.38  cnf(c_0_42, negated_conjecture, (r2_hidden(esk5_0,k1_relat_1(esk3_0))|~r1_partfun1(esk3_0,esk4_0)), inference(rw,[status(thm)],[c_0_38, c_0_25])).
% 0.14/0.38  cnf(c_0_43, negated_conjecture, (r1_partfun1(esk3_0,esk4_0)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_39, c_0_40]), c_0_41])).
% 0.14/0.38  cnf(c_0_44, plain, (k1_funct_1(X1,X3)=k1_funct_1(X2,X3)|~r1_partfun1(X1,X2)|~r2_hidden(X3,k1_relat_1(X1))|~r1_tarski(k1_relat_1(X1),k1_relat_1(X2))|~v1_relat_1(X2)|~v1_funct_1(X2)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.14/0.38  cnf(c_0_45, negated_conjecture, (r2_hidden(esk5_0,k1_relat_1(esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_42, c_0_43])])).
% 0.14/0.38  cnf(c_0_46, negated_conjecture, (k1_funct_1(esk3_0,esk5_0)!=k1_funct_1(esk4_0,esk5_0)|~r1_partfun1(esk3_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.14/0.38  cnf(c_0_47, negated_conjecture, (k1_funct_1(esk3_0,esk5_0)=k1_funct_1(X1,esk5_0)|~r1_partfun1(esk3_0,X1)|~v1_funct_1(X1)|~v1_relat_1(X1)|~r1_tarski(k1_relat_1(esk3_0),k1_relat_1(X1))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44, c_0_45]), c_0_35]), c_0_36])])).
% 0.14/0.38  cnf(c_0_48, negated_conjecture, (k1_funct_1(esk4_0,esk5_0)!=k1_funct_1(esk3_0,esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_46, c_0_43])])).
% 0.14/0.38  cnf(c_0_49, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47, c_0_27]), c_0_43]), c_0_14]), c_0_28]), c_0_34])]), c_0_48]), ['proof']).
% 0.14/0.38  # SZS output end CNFRefutation
% 0.14/0.38  # Proof object total steps             : 50
% 0.14/0.38  # Proof object clause steps            : 35
% 0.14/0.38  # Proof object formula steps           : 15
% 0.14/0.38  # Proof object conjectures             : 30
% 0.14/0.38  # Proof object clause conjectures      : 27
% 0.14/0.38  # Proof object formula conjectures     : 3
% 0.14/0.38  # Proof object initial clauses used    : 16
% 0.14/0.38  # Proof object initial formulas used   : 7
% 0.14/0.38  # Proof object generating inferences   : 14
% 0.14/0.38  # Proof object simplifying inferences  : 33
% 0.14/0.38  # Training examples: 0 positive, 0 negative
% 0.14/0.38  # Parsed axioms                        : 7
% 0.14/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.14/0.38  # Initial clauses                      : 17
% 0.14/0.38  # Removed in clause preprocessing      : 0
% 0.14/0.38  # Initial clauses in saturation        : 17
% 0.14/0.38  # Processed clauses                    : 60
% 0.14/0.38  # ...of these trivial                  : 0
% 0.14/0.38  # ...subsumed                          : 1
% 0.14/0.38  # ...remaining for further processing  : 59
% 0.14/0.38  # Other redundant clauses eliminated   : 0
% 0.14/0.38  # Clauses deleted for lack of memory   : 0
% 0.14/0.38  # Backward-subsumed                    : 0
% 0.14/0.38  # Backward-rewritten                   : 9
% 0.14/0.38  # Generated clauses                    : 30
% 0.14/0.38  # ...of the previous two non-trivial   : 30
% 0.14/0.38  # Contextual simplify-reflections      : 1
% 0.14/0.38  # Paramodulations                      : 30
% 0.14/0.38  # Factorizations                       : 0
% 0.14/0.38  # Equation resolutions                 : 0
% 0.14/0.38  # Propositional unsat checks           : 0
% 0.14/0.38  #    Propositional check models        : 0
% 0.14/0.38  #    Propositional check unsatisfiable : 0
% 0.14/0.38  #    Propositional clauses             : 0
% 0.14/0.38  #    Propositional clauses after purity: 0
% 0.14/0.38  #    Propositional unsat core size     : 0
% 0.14/0.38  #    Propositional preprocessing time  : 0.000
% 0.14/0.38  #    Propositional encoding time       : 0.000
% 0.14/0.38  #    Propositional solver time         : 0.000
% 0.14/0.38  #    Success case prop preproc time    : 0.000
% 0.14/0.38  #    Success case prop encoding time   : 0.000
% 0.14/0.38  #    Success case prop solver time     : 0.000
% 0.14/0.38  # Current number of processed clauses  : 33
% 0.14/0.38  #    Positive orientable unit clauses  : 19
% 0.14/0.38  #    Positive unorientable unit clauses: 0
% 0.14/0.38  #    Negative unit clauses             : 1
% 0.14/0.38  #    Non-unit-clauses                  : 13
% 0.14/0.38  # Current number of unprocessed clauses: 3
% 0.14/0.38  # ...number of literals in the above   : 17
% 0.14/0.38  # Current number of archived formulas  : 0
% 0.14/0.38  # Current number of archived clauses   : 26
% 0.14/0.38  # Clause-clause subsumption calls (NU) : 362
% 0.14/0.38  # Rec. Clause-clause subsumption calls : 38
% 0.14/0.38  # Non-unit clause-clause subsumptions  : 2
% 0.14/0.38  # Unit Clause-clause subsumption calls : 6
% 0.14/0.38  # Rewrite failures with RHS unbound    : 0
% 0.14/0.38  # BW rewrite match attempts            : 5
% 0.14/0.38  # BW rewrite match successes           : 3
% 0.14/0.38  # Condensation attempts                : 0
% 0.14/0.38  # Condensation successes               : 0
% 0.14/0.38  # Termbank termtop insertions          : 2194
% 0.14/0.38  
% 0.14/0.38  # -------------------------------------------------
% 0.14/0.38  # User time                : 0.030 s
% 0.14/0.38  # System time              : 0.003 s
% 0.14/0.38  # Total time               : 0.033 s
% 0.14/0.38  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
