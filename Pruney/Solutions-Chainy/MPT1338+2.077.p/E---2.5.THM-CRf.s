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
% DateTime   : Thu Dec  3 11:13:42 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   73 ( 491 expanded)
%              Number of clauses        :   44 ( 175 expanded)
%              Number of leaves         :   14 ( 125 expanded)
%              Depth                    :   13
%              Number of atoms          :  224 (2694 expanded)
%              Number of equality atoms :   53 ( 729 expanded)
%              Maximal formula depth    :   11 (   4 average)
%              Maximal clause size      :   10 (   2 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t62_tops_2,conjecture,(
    ! [X1] :
      ( l1_struct_0(X1)
     => ! [X2] :
          ( ( ~ v2_struct_0(X2)
            & l1_struct_0(X2) )
         => ! [X3] :
              ( ( v1_funct_1(X3)
                & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2))
                & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2)))) )
             => ( ( k2_relset_1(u1_struct_0(X1),u1_struct_0(X2),X3) = k2_struct_0(X2)
                  & v2_funct_1(X3) )
               => ( k1_relset_1(u1_struct_0(X2),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X2),X3)) = k2_struct_0(X2)
                  & k2_relset_1(u1_struct_0(X2),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X2),X3)) = k2_struct_0(X1) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t62_tops_2)).

fof(d3_struct_0,axiom,(
    ! [X1] :
      ( l1_struct_0(X1)
     => k2_struct_0(X1) = u1_struct_0(X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_struct_0)).

fof(fc5_struct_0,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & l1_struct_0(X1) )
     => ~ v1_xboole_0(k2_struct_0(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc5_struct_0)).

fof(cc5_funct_2,axiom,(
    ! [X1,X2] :
      ( ~ v1_xboole_0(X2)
     => ! [X3] :
          ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
         => ( ( v1_funct_1(X3)
              & v1_funct_2(X3,X1,X2) )
           => ( v1_funct_1(X3)
              & v1_partfun1(X3,X1) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc5_funct_2)).

fof(cc2_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ( v4_relat_1(X3,X1)
        & v5_relat_1(X3,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc2_relset_1)).

fof(cc2_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(X1))
         => v1_relat_1(X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc2_relat_1)).

fof(fc6_relat_1,axiom,(
    ! [X1,X2] : v1_relat_1(k2_zfmisc_1(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc6_relat_1)).

fof(t3_funct_2,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v1_funct_1(X1)
        & v1_funct_2(X1,k1_relat_1(X1),k2_relat_1(X1))
        & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1)))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_funct_2)).

fof(t55_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v2_funct_1(X1)
       => ( k2_relat_1(X1) = k1_relat_1(k2_funct_1(X1))
          & k1_relat_1(X1) = k2_relat_1(k2_funct_1(X1)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t55_funct_1)).

fof(dt_k2_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v1_relat_1(k2_funct_1(X1))
        & v1_funct_1(k2_funct_1(X1)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k2_funct_1)).

fof(d4_partfun1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v4_relat_1(X2,X1) )
     => ( v1_partfun1(X2,X1)
      <=> k1_relat_1(X2) = X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d4_partfun1)).

fof(redefinition_k2_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k2_relset_1(X1,X2,X3) = k2_relat_1(X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k2_relset_1)).

fof(d4_tops_2,axiom,(
    ! [X1,X2,X3] :
      ( ( v1_funct_1(X3)
        & v1_funct_2(X3,X1,X2)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => ( ( k2_relset_1(X1,X2,X3) = X2
          & v2_funct_1(X3) )
       => k2_tops_2(X1,X2,X3) = k2_funct_1(X3) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d4_tops_2)).

fof(redefinition_k1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k1_relset_1(X1,X2,X3) = k1_relat_1(X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k1_relset_1)).

fof(c_0_14,negated_conjecture,(
    ~ ! [X1] :
        ( l1_struct_0(X1)
       => ! [X2] :
            ( ( ~ v2_struct_0(X2)
              & l1_struct_0(X2) )
           => ! [X3] :
                ( ( v1_funct_1(X3)
                  & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2))
                  & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2)))) )
               => ( ( k2_relset_1(u1_struct_0(X1),u1_struct_0(X2),X3) = k2_struct_0(X2)
                    & v2_funct_1(X3) )
                 => ( k1_relset_1(u1_struct_0(X2),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X2),X3)) = k2_struct_0(X2)
                    & k2_relset_1(u1_struct_0(X2),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X2),X3)) = k2_struct_0(X1) ) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t62_tops_2])).

fof(c_0_15,plain,(
    ! [X25] :
      ( ~ l1_struct_0(X25)
      | k2_struct_0(X25) = u1_struct_0(X25) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_struct_0])])).

fof(c_0_16,negated_conjecture,
    ( l1_struct_0(esk1_0)
    & ~ v2_struct_0(esk2_0)
    & l1_struct_0(esk2_0)
    & v1_funct_1(esk3_0)
    & v1_funct_2(esk3_0,u1_struct_0(esk1_0),u1_struct_0(esk2_0))
    & m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk1_0),u1_struct_0(esk2_0))))
    & k2_relset_1(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0) = k2_struct_0(esk2_0)
    & v2_funct_1(esk3_0)
    & ( k1_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_tops_2(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0)) != k2_struct_0(esk2_0)
      | k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_tops_2(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0)) != k2_struct_0(esk1_0) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_14])])])])).

fof(c_0_17,plain,(
    ! [X26] :
      ( v2_struct_0(X26)
      | ~ l1_struct_0(X26)
      | ~ v1_xboole_0(k2_struct_0(X26)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc5_struct_0])])])).

cnf(c_0_18,plain,
    ( k2_struct_0(X1) = u1_struct_0(X1)
    | ~ l1_struct_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_19,negated_conjecture,
    ( l1_struct_0(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

fof(c_0_20,plain,(
    ! [X19,X20,X21] :
      ( ( v1_funct_1(X21)
        | ~ v1_funct_1(X21)
        | ~ v1_funct_2(X21,X19,X20)
        | ~ m1_subset_1(X21,k1_zfmisc_1(k2_zfmisc_1(X19,X20)))
        | v1_xboole_0(X20) )
      & ( v1_partfun1(X21,X19)
        | ~ v1_funct_1(X21)
        | ~ v1_funct_2(X21,X19,X20)
        | ~ m1_subset_1(X21,k1_zfmisc_1(k2_zfmisc_1(X19,X20)))
        | v1_xboole_0(X20) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[cc5_funct_2])])])])])).

cnf(c_0_21,plain,
    ( v2_struct_0(X1)
    | ~ l1_struct_0(X1)
    | ~ v1_xboole_0(k2_struct_0(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_22,negated_conjecture,
    ( k2_struct_0(esk2_0) = u1_struct_0(esk2_0) ),
    inference(spm,[status(thm)],[c_0_18,c_0_19])).

cnf(c_0_23,negated_conjecture,
    ( ~ v2_struct_0(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

fof(c_0_24,plain,(
    ! [X10,X11,X12] :
      ( ( v4_relat_1(X12,X10)
        | ~ m1_subset_1(X12,k1_zfmisc_1(k2_zfmisc_1(X10,X11))) )
      & ( v5_relat_1(X12,X11)
        | ~ m1_subset_1(X12,k1_zfmisc_1(k2_zfmisc_1(X10,X11))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).

fof(c_0_25,plain,(
    ! [X4,X5] :
      ( ~ v1_relat_1(X4)
      | ~ m1_subset_1(X5,k1_zfmisc_1(X4))
      | v1_relat_1(X5) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relat_1])])])).

fof(c_0_26,plain,(
    ! [X6,X7] : v1_relat_1(k2_zfmisc_1(X6,X7)) ),
    inference(variable_rename,[status(thm)],[fc6_relat_1])).

fof(c_0_27,plain,(
    ! [X24] :
      ( ( v1_funct_1(X24)
        | ~ v1_relat_1(X24)
        | ~ v1_funct_1(X24) )
      & ( v1_funct_2(X24,k1_relat_1(X24),k2_relat_1(X24))
        | ~ v1_relat_1(X24)
        | ~ v1_funct_1(X24) )
      & ( m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X24),k2_relat_1(X24))))
        | ~ v1_relat_1(X24)
        | ~ v1_funct_1(X24) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_funct_2])])])).

fof(c_0_28,plain,(
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

fof(c_0_29,plain,(
    ! [X8] :
      ( ( v1_relat_1(k2_funct_1(X8))
        | ~ v1_relat_1(X8)
        | ~ v1_funct_1(X8) )
      & ( v1_funct_1(k2_funct_1(X8))
        | ~ v1_relat_1(X8)
        | ~ v1_funct_1(X8) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_funct_1])])])).

fof(c_0_30,plain,(
    ! [X22,X23] :
      ( ( ~ v1_partfun1(X23,X22)
        | k1_relat_1(X23) = X22
        | ~ v1_relat_1(X23)
        | ~ v4_relat_1(X23,X22) )
      & ( k1_relat_1(X23) != X22
        | v1_partfun1(X23,X22)
        | ~ v1_relat_1(X23)
        | ~ v4_relat_1(X23,X22) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d4_partfun1])])])).

cnf(c_0_31,plain,
    ( v1_partfun1(X1,X2)
    | v1_xboole_0(X3)
    | ~ v1_funct_1(X1)
    | ~ v1_funct_2(X1,X2,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_32,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk1_0),u1_struct_0(esk2_0)))) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_33,negated_conjecture,
    ( v1_funct_2(esk3_0,u1_struct_0(esk1_0),u1_struct_0(esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_34,negated_conjecture,
    ( v1_funct_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_35,negated_conjecture,
    ( ~ v1_xboole_0(u1_struct_0(esk2_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_21,c_0_22]),c_0_19])]),c_0_23])).

cnf(c_0_36,plain,
    ( v4_relat_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_37,plain,
    ( v1_relat_1(X2)
    | ~ v1_relat_1(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_38,plain,
    ( v1_relat_1(k2_zfmisc_1(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_39,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1))))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_40,plain,
    ( k1_relat_1(X1) = k2_relat_1(k2_funct_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_41,plain,
    ( v1_relat_1(k2_funct_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_42,plain,
    ( v1_funct_1(k2_funct_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_43,plain,
    ( k1_relat_1(X1) = X2
    | ~ v1_partfun1(X1,X2)
    | ~ v1_relat_1(X1)
    | ~ v4_relat_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_44,negated_conjecture,
    ( v1_partfun1(esk3_0,u1_struct_0(esk1_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_32]),c_0_33]),c_0_34])]),c_0_35])).

cnf(c_0_45,negated_conjecture,
    ( v4_relat_1(esk3_0,u1_struct_0(esk1_0)) ),
    inference(spm,[status(thm)],[c_0_36,c_0_32])).

cnf(c_0_46,negated_conjecture,
    ( v1_relat_1(esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_32]),c_0_38])])).

fof(c_0_47,plain,(
    ! [X16,X17,X18] :
      ( ~ m1_subset_1(X18,k1_zfmisc_1(k2_zfmisc_1(X16,X17)))
      | k2_relset_1(X16,X17,X18) = k2_relat_1(X18) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_relset_1])])).

cnf(c_0_48,negated_conjecture,
    ( k1_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_tops_2(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0)) != k2_struct_0(esk2_0)
    | k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_tops_2(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0)) != k2_struct_0(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_49,negated_conjecture,
    ( l1_struct_0(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

fof(c_0_50,plain,(
    ! [X27,X28,X29] :
      ( ~ v1_funct_1(X29)
      | ~ v1_funct_2(X29,X27,X28)
      | ~ m1_subset_1(X29,k1_zfmisc_1(k2_zfmisc_1(X27,X28)))
      | k2_relset_1(X27,X28,X29) != X28
      | ~ v2_funct_1(X29)
      | k2_tops_2(X27,X28,X29) = k2_funct_1(X29) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d4_tops_2])])).

cnf(c_0_51,plain,
    ( m1_subset_1(k2_funct_1(X1),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(k2_funct_1(X1)),k1_relat_1(X1))))
    | ~ v2_funct_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_39,c_0_40]),c_0_41]),c_0_42])).

cnf(c_0_52,negated_conjecture,
    ( k1_relat_1(esk3_0) = u1_struct_0(esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43,c_0_44]),c_0_45]),c_0_46])])).

cnf(c_0_53,negated_conjecture,
    ( v2_funct_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_54,plain,
    ( k2_relset_1(X2,X3,X1) = k2_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_47])).

cnf(c_0_55,negated_conjecture,
    ( k2_relset_1(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0) = k2_struct_0(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_56,negated_conjecture,
    ( k1_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_tops_2(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0)) != u1_struct_0(esk2_0)
    | k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_tops_2(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0)) != k2_struct_0(esk1_0) ),
    inference(rw,[status(thm)],[c_0_48,c_0_22])).

cnf(c_0_57,negated_conjecture,
    ( k2_struct_0(esk1_0) = u1_struct_0(esk1_0) ),
    inference(spm,[status(thm)],[c_0_18,c_0_49])).

cnf(c_0_58,plain,
    ( k2_tops_2(X2,X3,X1) = k2_funct_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_funct_2(X1,X2,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | k2_relset_1(X2,X3,X1) != X3
    | ~ v2_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_50])).

fof(c_0_59,plain,(
    ! [X13,X14,X15] :
      ( ~ m1_subset_1(X15,k1_zfmisc_1(k2_zfmisc_1(X13,X14)))
      | k1_relset_1(X13,X14,X15) = k1_relat_1(X15) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).

cnf(c_0_60,negated_conjecture,
    ( m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(k2_funct_1(esk3_0)),u1_struct_0(esk1_0)))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51,c_0_52]),c_0_53]),c_0_34]),c_0_46])])).

cnf(c_0_61,plain,
    ( k2_relat_1(X1) = k1_relat_1(k2_funct_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_62,negated_conjecture,
    ( k2_relat_1(esk3_0) = u1_struct_0(esk2_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_54,c_0_32]),c_0_55]),c_0_22])).

cnf(c_0_63,negated_conjecture,
    ( k1_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_tops_2(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0)) != u1_struct_0(esk2_0)
    | k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_tops_2(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0)) != u1_struct_0(esk1_0) ),
    inference(rw,[status(thm)],[c_0_56,c_0_57])).

cnf(c_0_64,negated_conjecture,
    ( k2_tops_2(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0) = k2_funct_1(esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_58,c_0_32]),c_0_55]),c_0_33]),c_0_53]),c_0_34])]),c_0_22])])).

cnf(c_0_65,plain,
    ( k1_relset_1(X2,X3,X1) = k1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_59])).

cnf(c_0_66,negated_conjecture,
    ( m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0)))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_60,c_0_61]),c_0_62]),c_0_53]),c_0_34]),c_0_46])])).

cnf(c_0_67,negated_conjecture,
    ( k1_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_funct_1(esk3_0)) != u1_struct_0(esk2_0)
    | k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_funct_1(esk3_0)) != u1_struct_0(esk1_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_63,c_0_64]),c_0_64])).

cnf(c_0_68,negated_conjecture,
    ( k1_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_funct_1(esk3_0)) = k1_relat_1(k2_funct_1(esk3_0)) ),
    inference(spm,[status(thm)],[c_0_65,c_0_66])).

cnf(c_0_69,negated_conjecture,
    ( k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_funct_1(esk3_0)) = k2_relat_1(k2_funct_1(esk3_0)) ),
    inference(spm,[status(thm)],[c_0_54,c_0_66])).

cnf(c_0_70,negated_conjecture,
    ( k1_relat_1(k2_funct_1(esk3_0)) != u1_struct_0(esk2_0)
    | k2_relat_1(k2_funct_1(esk3_0)) != u1_struct_0(esk1_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_67,c_0_68]),c_0_69])).

cnf(c_0_71,negated_conjecture,
    ( k1_relat_1(k2_funct_1(esk3_0)) != u1_struct_0(esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_70,c_0_40]),c_0_52]),c_0_53]),c_0_34]),c_0_46])])).

cnf(c_0_72,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_71,c_0_61]),c_0_62]),c_0_53]),c_0_34]),c_0_46])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n020.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 20:39:37 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.13/0.39  # AutoSched0-Mode selected heuristic G_E___302_C18_F1_URBAN_RG_S04BN
% 0.13/0.39  # and selection function PSelectComplexExceptUniqMaxHorn.
% 0.13/0.39  #
% 0.13/0.39  # Preprocessing time       : 0.034 s
% 0.13/0.39  
% 0.13/0.39  # Proof found!
% 0.13/0.39  # SZS status Theorem
% 0.13/0.39  # SZS output start CNFRefutation
% 0.13/0.39  fof(t62_tops_2, conjecture, ![X1]:(l1_struct_0(X1)=>![X2]:((~(v2_struct_0(X2))&l1_struct_0(X2))=>![X3]:(((v1_funct_1(X3)&v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2)))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2)))))=>((k2_relset_1(u1_struct_0(X1),u1_struct_0(X2),X3)=k2_struct_0(X2)&v2_funct_1(X3))=>(k1_relset_1(u1_struct_0(X2),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X2),X3))=k2_struct_0(X2)&k2_relset_1(u1_struct_0(X2),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X2),X3))=k2_struct_0(X1)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t62_tops_2)).
% 0.13/0.39  fof(d3_struct_0, axiom, ![X1]:(l1_struct_0(X1)=>k2_struct_0(X1)=u1_struct_0(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d3_struct_0)).
% 0.13/0.39  fof(fc5_struct_0, axiom, ![X1]:((~(v2_struct_0(X1))&l1_struct_0(X1))=>~(v1_xboole_0(k2_struct_0(X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc5_struct_0)).
% 0.13/0.39  fof(cc5_funct_2, axiom, ![X1, X2]:(~(v1_xboole_0(X2))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>((v1_funct_1(X3)&v1_funct_2(X3,X1,X2))=>(v1_funct_1(X3)&v1_partfun1(X3,X1))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc5_funct_2)).
% 0.13/0.39  fof(cc2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(v4_relat_1(X3,X1)&v5_relat_1(X3,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc2_relset_1)).
% 0.13/0.39  fof(cc2_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>v1_relat_1(X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc2_relat_1)).
% 0.13/0.39  fof(fc6_relat_1, axiom, ![X1, X2]:v1_relat_1(k2_zfmisc_1(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc6_relat_1)).
% 0.13/0.39  fof(t3_funct_2, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>((v1_funct_1(X1)&v1_funct_2(X1,k1_relat_1(X1),k2_relat_1(X1)))&m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_funct_2)).
% 0.13/0.39  fof(t55_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v2_funct_1(X1)=>(k2_relat_1(X1)=k1_relat_1(k2_funct_1(X1))&k1_relat_1(X1)=k2_relat_1(k2_funct_1(X1))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t55_funct_1)).
% 0.13/0.39  fof(dt_k2_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v1_relat_1(k2_funct_1(X1))&v1_funct_1(k2_funct_1(X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k2_funct_1)).
% 0.13/0.39  fof(d4_partfun1, axiom, ![X1, X2]:((v1_relat_1(X2)&v4_relat_1(X2,X1))=>(v1_partfun1(X2,X1)<=>k1_relat_1(X2)=X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d4_partfun1)).
% 0.13/0.39  fof(redefinition_k2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k2_relset_1(X1,X2,X3)=k2_relat_1(X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k2_relset_1)).
% 0.13/0.39  fof(d4_tops_2, axiom, ![X1, X2, X3]:(((v1_funct_1(X3)&v1_funct_2(X3,X1,X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>((k2_relset_1(X1,X2,X3)=X2&v2_funct_1(X3))=>k2_tops_2(X1,X2,X3)=k2_funct_1(X3))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d4_tops_2)).
% 0.13/0.39  fof(redefinition_k1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k1_relset_1(X1,X2,X3)=k1_relat_1(X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k1_relset_1)).
% 0.13/0.39  fof(c_0_14, negated_conjecture, ~(![X1]:(l1_struct_0(X1)=>![X2]:((~(v2_struct_0(X2))&l1_struct_0(X2))=>![X3]:(((v1_funct_1(X3)&v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2)))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2)))))=>((k2_relset_1(u1_struct_0(X1),u1_struct_0(X2),X3)=k2_struct_0(X2)&v2_funct_1(X3))=>(k1_relset_1(u1_struct_0(X2),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X2),X3))=k2_struct_0(X2)&k2_relset_1(u1_struct_0(X2),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X2),X3))=k2_struct_0(X1))))))), inference(assume_negation,[status(cth)],[t62_tops_2])).
% 0.13/0.39  fof(c_0_15, plain, ![X25]:(~l1_struct_0(X25)|k2_struct_0(X25)=u1_struct_0(X25)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_struct_0])])).
% 0.13/0.39  fof(c_0_16, negated_conjecture, (l1_struct_0(esk1_0)&((~v2_struct_0(esk2_0)&l1_struct_0(esk2_0))&(((v1_funct_1(esk3_0)&v1_funct_2(esk3_0,u1_struct_0(esk1_0),u1_struct_0(esk2_0)))&m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk1_0),u1_struct_0(esk2_0)))))&((k2_relset_1(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0)=k2_struct_0(esk2_0)&v2_funct_1(esk3_0))&(k1_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_tops_2(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0))!=k2_struct_0(esk2_0)|k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_tops_2(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0))!=k2_struct_0(esk1_0)))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_14])])])])).
% 0.13/0.39  fof(c_0_17, plain, ![X26]:(v2_struct_0(X26)|~l1_struct_0(X26)|~v1_xboole_0(k2_struct_0(X26))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc5_struct_0])])])).
% 0.13/0.39  cnf(c_0_18, plain, (k2_struct_0(X1)=u1_struct_0(X1)|~l1_struct_0(X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.13/0.39  cnf(c_0_19, negated_conjecture, (l1_struct_0(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.13/0.39  fof(c_0_20, plain, ![X19, X20, X21]:((v1_funct_1(X21)|(~v1_funct_1(X21)|~v1_funct_2(X21,X19,X20))|~m1_subset_1(X21,k1_zfmisc_1(k2_zfmisc_1(X19,X20)))|v1_xboole_0(X20))&(v1_partfun1(X21,X19)|(~v1_funct_1(X21)|~v1_funct_2(X21,X19,X20))|~m1_subset_1(X21,k1_zfmisc_1(k2_zfmisc_1(X19,X20)))|v1_xboole_0(X20))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[cc5_funct_2])])])])])).
% 0.13/0.39  cnf(c_0_21, plain, (v2_struct_0(X1)|~l1_struct_0(X1)|~v1_xboole_0(k2_struct_0(X1))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.13/0.39  cnf(c_0_22, negated_conjecture, (k2_struct_0(esk2_0)=u1_struct_0(esk2_0)), inference(spm,[status(thm)],[c_0_18, c_0_19])).
% 0.13/0.39  cnf(c_0_23, negated_conjecture, (~v2_struct_0(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.13/0.39  fof(c_0_24, plain, ![X10, X11, X12]:((v4_relat_1(X12,X10)|~m1_subset_1(X12,k1_zfmisc_1(k2_zfmisc_1(X10,X11))))&(v5_relat_1(X12,X11)|~m1_subset_1(X12,k1_zfmisc_1(k2_zfmisc_1(X10,X11))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).
% 0.13/0.39  fof(c_0_25, plain, ![X4, X5]:(~v1_relat_1(X4)|(~m1_subset_1(X5,k1_zfmisc_1(X4))|v1_relat_1(X5))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relat_1])])])).
% 0.13/0.39  fof(c_0_26, plain, ![X6, X7]:v1_relat_1(k2_zfmisc_1(X6,X7)), inference(variable_rename,[status(thm)],[fc6_relat_1])).
% 0.13/0.39  fof(c_0_27, plain, ![X24]:(((v1_funct_1(X24)|(~v1_relat_1(X24)|~v1_funct_1(X24)))&(v1_funct_2(X24,k1_relat_1(X24),k2_relat_1(X24))|(~v1_relat_1(X24)|~v1_funct_1(X24))))&(m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X24),k2_relat_1(X24))))|(~v1_relat_1(X24)|~v1_funct_1(X24)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_funct_2])])])).
% 0.13/0.39  fof(c_0_28, plain, ![X9]:((k2_relat_1(X9)=k1_relat_1(k2_funct_1(X9))|~v2_funct_1(X9)|(~v1_relat_1(X9)|~v1_funct_1(X9)))&(k1_relat_1(X9)=k2_relat_1(k2_funct_1(X9))|~v2_funct_1(X9)|(~v1_relat_1(X9)|~v1_funct_1(X9)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t55_funct_1])])])).
% 0.13/0.39  fof(c_0_29, plain, ![X8]:((v1_relat_1(k2_funct_1(X8))|(~v1_relat_1(X8)|~v1_funct_1(X8)))&(v1_funct_1(k2_funct_1(X8))|(~v1_relat_1(X8)|~v1_funct_1(X8)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_funct_1])])])).
% 0.13/0.39  fof(c_0_30, plain, ![X22, X23]:((~v1_partfun1(X23,X22)|k1_relat_1(X23)=X22|(~v1_relat_1(X23)|~v4_relat_1(X23,X22)))&(k1_relat_1(X23)!=X22|v1_partfun1(X23,X22)|(~v1_relat_1(X23)|~v4_relat_1(X23,X22)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d4_partfun1])])])).
% 0.13/0.39  cnf(c_0_31, plain, (v1_partfun1(X1,X2)|v1_xboole_0(X3)|~v1_funct_1(X1)|~v1_funct_2(X1,X2,X3)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.13/0.39  cnf(c_0_32, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk1_0),u1_struct_0(esk2_0))))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.13/0.39  cnf(c_0_33, negated_conjecture, (v1_funct_2(esk3_0,u1_struct_0(esk1_0),u1_struct_0(esk2_0))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.13/0.39  cnf(c_0_34, negated_conjecture, (v1_funct_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.13/0.39  cnf(c_0_35, negated_conjecture, (~v1_xboole_0(u1_struct_0(esk2_0))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_21, c_0_22]), c_0_19])]), c_0_23])).
% 0.13/0.39  cnf(c_0_36, plain, (v4_relat_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.13/0.39  cnf(c_0_37, plain, (v1_relat_1(X2)|~v1_relat_1(X1)|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.13/0.39  cnf(c_0_38, plain, (v1_relat_1(k2_zfmisc_1(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.13/0.39  cnf(c_0_39, plain, (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1))))|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.13/0.39  cnf(c_0_40, plain, (k1_relat_1(X1)=k2_relat_1(k2_funct_1(X1))|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.13/0.39  cnf(c_0_41, plain, (v1_relat_1(k2_funct_1(X1))|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.13/0.39  cnf(c_0_42, plain, (v1_funct_1(k2_funct_1(X1))|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.13/0.39  cnf(c_0_43, plain, (k1_relat_1(X1)=X2|~v1_partfun1(X1,X2)|~v1_relat_1(X1)|~v4_relat_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.13/0.39  cnf(c_0_44, negated_conjecture, (v1_partfun1(esk3_0,u1_struct_0(esk1_0))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_32]), c_0_33]), c_0_34])]), c_0_35])).
% 0.13/0.39  cnf(c_0_45, negated_conjecture, (v4_relat_1(esk3_0,u1_struct_0(esk1_0))), inference(spm,[status(thm)],[c_0_36, c_0_32])).
% 0.13/0.39  cnf(c_0_46, negated_conjecture, (v1_relat_1(esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_32]), c_0_38])])).
% 0.13/0.39  fof(c_0_47, plain, ![X16, X17, X18]:(~m1_subset_1(X18,k1_zfmisc_1(k2_zfmisc_1(X16,X17)))|k2_relset_1(X16,X17,X18)=k2_relat_1(X18)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_relset_1])])).
% 0.13/0.39  cnf(c_0_48, negated_conjecture, (k1_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_tops_2(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0))!=k2_struct_0(esk2_0)|k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_tops_2(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0))!=k2_struct_0(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.13/0.39  cnf(c_0_49, negated_conjecture, (l1_struct_0(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.13/0.39  fof(c_0_50, plain, ![X27, X28, X29]:(~v1_funct_1(X29)|~v1_funct_2(X29,X27,X28)|~m1_subset_1(X29,k1_zfmisc_1(k2_zfmisc_1(X27,X28)))|(k2_relset_1(X27,X28,X29)!=X28|~v2_funct_1(X29)|k2_tops_2(X27,X28,X29)=k2_funct_1(X29))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d4_tops_2])])).
% 0.13/0.39  cnf(c_0_51, plain, (m1_subset_1(k2_funct_1(X1),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(k2_funct_1(X1)),k1_relat_1(X1))))|~v2_funct_1(X1)|~v1_funct_1(X1)|~v1_relat_1(X1)), inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_39, c_0_40]), c_0_41]), c_0_42])).
% 0.13/0.39  cnf(c_0_52, negated_conjecture, (k1_relat_1(esk3_0)=u1_struct_0(esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43, c_0_44]), c_0_45]), c_0_46])])).
% 0.13/0.39  cnf(c_0_53, negated_conjecture, (v2_funct_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.13/0.39  cnf(c_0_54, plain, (k2_relset_1(X2,X3,X1)=k2_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_47])).
% 0.13/0.39  cnf(c_0_55, negated_conjecture, (k2_relset_1(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0)=k2_struct_0(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.13/0.39  cnf(c_0_56, negated_conjecture, (k1_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_tops_2(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0))!=u1_struct_0(esk2_0)|k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_tops_2(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0))!=k2_struct_0(esk1_0)), inference(rw,[status(thm)],[c_0_48, c_0_22])).
% 0.13/0.39  cnf(c_0_57, negated_conjecture, (k2_struct_0(esk1_0)=u1_struct_0(esk1_0)), inference(spm,[status(thm)],[c_0_18, c_0_49])).
% 0.13/0.39  cnf(c_0_58, plain, (k2_tops_2(X2,X3,X1)=k2_funct_1(X1)|~v1_funct_1(X1)|~v1_funct_2(X1,X2,X3)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|k2_relset_1(X2,X3,X1)!=X3|~v2_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_50])).
% 0.13/0.39  fof(c_0_59, plain, ![X13, X14, X15]:(~m1_subset_1(X15,k1_zfmisc_1(k2_zfmisc_1(X13,X14)))|k1_relset_1(X13,X14,X15)=k1_relat_1(X15)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).
% 0.13/0.39  cnf(c_0_60, negated_conjecture, (m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(k2_funct_1(esk3_0)),u1_struct_0(esk1_0))))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51, c_0_52]), c_0_53]), c_0_34]), c_0_46])])).
% 0.13/0.39  cnf(c_0_61, plain, (k2_relat_1(X1)=k1_relat_1(k2_funct_1(X1))|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.13/0.39  cnf(c_0_62, negated_conjecture, (k2_relat_1(esk3_0)=u1_struct_0(esk2_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_54, c_0_32]), c_0_55]), c_0_22])).
% 0.13/0.39  cnf(c_0_63, negated_conjecture, (k1_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_tops_2(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0))!=u1_struct_0(esk2_0)|k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_tops_2(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0))!=u1_struct_0(esk1_0)), inference(rw,[status(thm)],[c_0_56, c_0_57])).
% 0.13/0.39  cnf(c_0_64, negated_conjecture, (k2_tops_2(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0)=k2_funct_1(esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_58, c_0_32]), c_0_55]), c_0_33]), c_0_53]), c_0_34])]), c_0_22])])).
% 0.13/0.39  cnf(c_0_65, plain, (k1_relset_1(X2,X3,X1)=k1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_59])).
% 0.13/0.39  cnf(c_0_66, negated_conjecture, (m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0))))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_60, c_0_61]), c_0_62]), c_0_53]), c_0_34]), c_0_46])])).
% 0.13/0.39  cnf(c_0_67, negated_conjecture, (k1_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_funct_1(esk3_0))!=u1_struct_0(esk2_0)|k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_funct_1(esk3_0))!=u1_struct_0(esk1_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_63, c_0_64]), c_0_64])).
% 0.13/0.39  cnf(c_0_68, negated_conjecture, (k1_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_funct_1(esk3_0))=k1_relat_1(k2_funct_1(esk3_0))), inference(spm,[status(thm)],[c_0_65, c_0_66])).
% 0.13/0.39  cnf(c_0_69, negated_conjecture, (k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_funct_1(esk3_0))=k2_relat_1(k2_funct_1(esk3_0))), inference(spm,[status(thm)],[c_0_54, c_0_66])).
% 0.13/0.39  cnf(c_0_70, negated_conjecture, (k1_relat_1(k2_funct_1(esk3_0))!=u1_struct_0(esk2_0)|k2_relat_1(k2_funct_1(esk3_0))!=u1_struct_0(esk1_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_67, c_0_68]), c_0_69])).
% 0.13/0.39  cnf(c_0_71, negated_conjecture, (k1_relat_1(k2_funct_1(esk3_0))!=u1_struct_0(esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_70, c_0_40]), c_0_52]), c_0_53]), c_0_34]), c_0_46])])).
% 0.13/0.39  cnf(c_0_72, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_71, c_0_61]), c_0_62]), c_0_53]), c_0_34]), c_0_46])]), ['proof']).
% 0.13/0.39  # SZS output end CNFRefutation
% 0.13/0.39  # Proof object total steps             : 73
% 0.13/0.39  # Proof object clause steps            : 44
% 0.13/0.39  # Proof object formula steps           : 29
% 0.13/0.39  # Proof object conjectures             : 31
% 0.13/0.39  # Proof object clause conjectures      : 28
% 0.13/0.39  # Proof object formula conjectures     : 3
% 0.13/0.39  # Proof object initial clauses used    : 24
% 0.13/0.39  # Proof object initial formulas used   : 14
% 0.13/0.39  # Proof object generating inferences   : 16
% 0.13/0.39  # Proof object simplifying inferences  : 48
% 0.13/0.39  # Training examples: 0 positive, 0 negative
% 0.13/0.39  # Parsed axioms                        : 14
% 0.13/0.39  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.39  # Initial clauses                      : 29
% 0.13/0.39  # Removed in clause preprocessing      : 2
% 0.13/0.39  # Initial clauses in saturation        : 27
% 0.13/0.39  # Processed clauses                    : 75
% 0.13/0.39  # ...of these trivial                  : 2
% 0.13/0.39  # ...subsumed                          : 3
% 0.13/0.39  # ...remaining for further processing  : 70
% 0.13/0.39  # Other redundant clauses eliminated   : 0
% 0.13/0.39  # Clauses deleted for lack of memory   : 0
% 0.13/0.39  # Backward-subsumed                    : 0
% 0.13/0.39  # Backward-rewritten                   : 6
% 0.13/0.39  # Generated clauses                    : 101
% 0.13/0.39  # ...of the previous two non-trivial   : 85
% 0.13/0.39  # Contextual simplify-reflections      : 13
% 0.13/0.39  # Paramodulations                      : 101
% 0.13/0.39  # Factorizations                       : 0
% 0.13/0.39  # Equation resolutions                 : 0
% 0.13/0.39  # Propositional unsat checks           : 0
% 0.13/0.39  #    Propositional check models        : 0
% 0.13/0.39  #    Propositional check unsatisfiable : 0
% 0.13/0.39  #    Propositional clauses             : 0
% 0.13/0.39  #    Propositional clauses after purity: 0
% 0.13/0.39  #    Propositional unsat core size     : 0
% 0.13/0.39  #    Propositional preprocessing time  : 0.000
% 0.13/0.39  #    Propositional encoding time       : 0.000
% 0.13/0.39  #    Propositional solver time         : 0.000
% 0.13/0.39  #    Success case prop preproc time    : 0.000
% 0.13/0.39  #    Success case prop encoding time   : 0.000
% 0.13/0.39  #    Success case prop solver time     : 0.000
% 0.13/0.39  # Current number of processed clauses  : 64
% 0.13/0.39  #    Positive orientable unit clauses  : 29
% 0.13/0.39  #    Positive unorientable unit clauses: 0
% 0.13/0.39  #    Negative unit clauses             : 3
% 0.13/0.39  #    Non-unit-clauses                  : 32
% 0.13/0.39  # Current number of unprocessed clauses: 37
% 0.13/0.39  # ...number of literals in the above   : 191
% 0.13/0.39  # Current number of archived formulas  : 0
% 0.13/0.39  # Current number of archived clauses   : 6
% 0.13/0.39  # Clause-clause subsumption calls (NU) : 272
% 0.13/0.39  # Rec. Clause-clause subsumption calls : 74
% 0.13/0.39  # Non-unit clause-clause subsumptions  : 16
% 0.13/0.39  # Unit Clause-clause subsumption calls : 3
% 0.13/0.39  # Rewrite failures with RHS unbound    : 0
% 0.13/0.39  # BW rewrite match attempts            : 7
% 0.13/0.39  # BW rewrite match successes           : 5
% 0.13/0.39  # Condensation attempts                : 0
% 0.13/0.39  # Condensation successes               : 0
% 0.13/0.39  # Termbank termtop insertions          : 3949
% 0.13/0.39  
% 0.13/0.39  # -------------------------------------------------
% 0.13/0.39  # User time                : 0.039 s
% 0.13/0.39  # System time              : 0.004 s
% 0.13/0.39  # Total time               : 0.043 s
% 0.13/0.39  # Maximum resident set size: 1588 pages
%------------------------------------------------------------------------------
