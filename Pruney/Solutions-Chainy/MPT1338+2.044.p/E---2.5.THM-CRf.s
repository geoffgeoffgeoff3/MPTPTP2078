%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n014.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:13:37 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   67 ( 193 expanded)
%              Number of clauses        :   41 (  71 expanded)
%              Number of leaves         :   13 (  48 expanded)
%              Depth                    :   12
%              Number of atoms          :  214 (1077 expanded)
%              Number of equality atoms :   84 ( 344 expanded)
%              Maximal formula depth    :   14 (   4 average)
%              Maximal clause size      :   26 (   2 average)
%              Maximal term depth       :    4 (   2 average)

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

fof(d4_tops_2,axiom,(
    ! [X1,X2,X3] :
      ( ( v1_funct_1(X3)
        & v1_funct_2(X3,X1,X2)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => ( ( k2_relset_1(X1,X2,X3) = X2
          & v2_funct_1(X3) )
       => k2_tops_2(X1,X2,X3) = k2_funct_1(X3) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d4_tops_2)).

fof(redefinition_k2_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k2_relset_1(X1,X2,X3) = k2_relat_1(X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k2_relset_1)).

fof(d3_struct_0,axiom,(
    ! [X1] :
      ( l1_struct_0(X1)
     => k2_struct_0(X1) = u1_struct_0(X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_struct_0)).

fof(redefinition_k1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k1_relset_1(X1,X2,X3) = k1_relat_1(X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k1_relset_1)).

fof(cc1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => v1_relat_1(X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc1_relset_1)).

fof(t55_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v2_funct_1(X1)
       => ( k2_relat_1(X1) = k1_relat_1(k2_funct_1(X1))
          & k1_relat_1(X1) = k2_relat_1(k2_funct_1(X1)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t55_funct_1)).

fof(dt_k3_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => m1_subset_1(k3_relset_1(X1,X2,X3),k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k3_relset_1)).

fof(redefinition_k3_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k3_relset_1(X1,X2,X3) = k4_relat_1(X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k3_relset_1)).

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

fof(d9_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v2_funct_1(X1)
       => k2_funct_1(X1) = k4_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d9_funct_1)).

fof(fc5_struct_0,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & l1_struct_0(X1) )
     => ~ v1_xboole_0(k2_struct_0(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc5_struct_0)).

fof(fc1_xboole_0,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc1_xboole_0)).

fof(c_0_13,negated_conjecture,(
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

fof(c_0_14,negated_conjecture,
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
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_13])])])])).

fof(c_0_15,plain,(
    ! [X26,X27,X28] :
      ( ~ v1_funct_1(X28)
      | ~ v1_funct_2(X28,X26,X27)
      | ~ m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27)))
      | k2_relset_1(X26,X27,X28) != X27
      | ~ v2_funct_1(X28)
      | k2_tops_2(X26,X27,X28) = k2_funct_1(X28) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d4_tops_2])])).

cnf(c_0_16,negated_conjecture,
    ( k1_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_tops_2(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0)) != k2_struct_0(esk2_0)
    | k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_tops_2(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0)) != k2_struct_0(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_17,plain,
    ( k2_tops_2(X2,X3,X1) = k2_funct_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_funct_2(X1,X2,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | k2_relset_1(X2,X3,X1) != X3
    | ~ v2_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_18,negated_conjecture,
    ( k2_relset_1(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0) = k2_struct_0(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_19,negated_conjecture,
    ( v1_funct_2(esk3_0,u1_struct_0(esk1_0),u1_struct_0(esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_20,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk1_0),u1_struct_0(esk2_0)))) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_21,negated_conjecture,
    ( v2_funct_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_22,negated_conjecture,
    ( v1_funct_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

fof(c_0_23,plain,(
    ! [X15,X16,X17] :
      ( ~ m1_subset_1(X17,k1_zfmisc_1(k2_zfmisc_1(X15,X16)))
      | k2_relset_1(X15,X16,X17) = k2_relat_1(X17) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_relset_1])])).

fof(c_0_24,plain,(
    ! [X24] :
      ( ~ l1_struct_0(X24)
      | k2_struct_0(X24) = u1_struct_0(X24) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_struct_0])])).

cnf(c_0_25,negated_conjecture,
    ( k1_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_funct_1(esk3_0)) != k2_struct_0(esk2_0)
    | k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_funct_1(esk3_0)) != k2_struct_0(esk1_0)
    | k2_struct_0(esk2_0) != u1_struct_0(esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_16,c_0_17]),c_0_18]),c_0_19]),c_0_20]),c_0_21]),c_0_22])])).

cnf(c_0_26,plain,
    ( k2_relset_1(X2,X3,X1) = k2_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_27,plain,
    ( k2_struct_0(X1) = u1_struct_0(X1)
    | ~ l1_struct_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_28,negated_conjecture,
    ( l1_struct_0(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_29,negated_conjecture,
    ( l1_struct_0(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_30,negated_conjecture,
    ( k1_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_funct_1(esk3_0)) != k2_struct_0(esk2_0)
    | k2_relat_1(k2_funct_1(esk3_0)) != k2_struct_0(esk1_0)
    | k2_struct_0(esk2_0) != u1_struct_0(esk2_0)
    | ~ m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0)))) ),
    inference(spm,[status(thm)],[c_0_25,c_0_26])).

cnf(c_0_31,negated_conjecture,
    ( k2_struct_0(esk2_0) = u1_struct_0(esk2_0) ),
    inference(spm,[status(thm)],[c_0_27,c_0_28])).

cnf(c_0_32,negated_conjecture,
    ( k2_struct_0(esk1_0) = u1_struct_0(esk1_0) ),
    inference(spm,[status(thm)],[c_0_27,c_0_29])).

fof(c_0_33,plain,(
    ! [X12,X13,X14] :
      ( ~ m1_subset_1(X14,k1_zfmisc_1(k2_zfmisc_1(X12,X13)))
      | k1_relset_1(X12,X13,X14) = k1_relat_1(X14) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).

fof(c_0_34,plain,(
    ! [X6,X7,X8] :
      ( ~ m1_subset_1(X8,k1_zfmisc_1(k2_zfmisc_1(X6,X7)))
      | v1_relat_1(X8) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).

cnf(c_0_35,negated_conjecture,
    ( k1_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_funct_1(esk3_0)) != u1_struct_0(esk2_0)
    | k2_relat_1(k2_funct_1(esk3_0)) != u1_struct_0(esk1_0)
    | ~ m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0)))) ),
    inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_30,c_0_31]),c_0_31])]),c_0_32])).

cnf(c_0_36,plain,
    ( k1_relset_1(X2,X3,X1) = k1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

fof(c_0_37,plain,(
    ! [X5] :
      ( ( k2_relat_1(X5) = k1_relat_1(k2_funct_1(X5))
        | ~ v2_funct_1(X5)
        | ~ v1_relat_1(X5)
        | ~ v1_funct_1(X5) )
      & ( k1_relat_1(X5) = k2_relat_1(k2_funct_1(X5))
        | ~ v2_funct_1(X5)
        | ~ v1_relat_1(X5)
        | ~ v1_funct_1(X5) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t55_funct_1])])])).

cnf(c_0_38,plain,
    ( v1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

fof(c_0_39,plain,(
    ! [X9,X10,X11] :
      ( ~ m1_subset_1(X11,k1_zfmisc_1(k2_zfmisc_1(X9,X10)))
      | m1_subset_1(k3_relset_1(X9,X10,X11),k1_zfmisc_1(k2_zfmisc_1(X10,X9))) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k3_relset_1])])).

fof(c_0_40,plain,(
    ! [X18,X19,X20] :
      ( ~ m1_subset_1(X20,k1_zfmisc_1(k2_zfmisc_1(X18,X19)))
      | k3_relset_1(X18,X19,X20) = k4_relat_1(X20) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k3_relset_1])])).

fof(c_0_41,plain,(
    ! [X21,X22,X23] :
      ( ( ~ v1_funct_2(X23,X21,X22)
        | X21 = k1_relset_1(X21,X22,X23)
        | X22 = k1_xboole_0
        | ~ m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22))) )
      & ( X21 != k1_relset_1(X21,X22,X23)
        | v1_funct_2(X23,X21,X22)
        | X22 = k1_xboole_0
        | ~ m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22))) )
      & ( ~ v1_funct_2(X23,X21,X22)
        | X21 = k1_relset_1(X21,X22,X23)
        | X21 != k1_xboole_0
        | ~ m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22))) )
      & ( X21 != k1_relset_1(X21,X22,X23)
        | v1_funct_2(X23,X21,X22)
        | X21 != k1_xboole_0
        | ~ m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22))) )
      & ( ~ v1_funct_2(X23,X21,X22)
        | X23 = k1_xboole_0
        | X21 = k1_xboole_0
        | X22 != k1_xboole_0
        | ~ m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22))) )
      & ( X23 != k1_xboole_0
        | v1_funct_2(X23,X21,X22)
        | X21 = k1_xboole_0
        | X22 != k1_xboole_0
        | ~ m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).

cnf(c_0_42,negated_conjecture,
    ( k1_relat_1(k2_funct_1(esk3_0)) != u1_struct_0(esk2_0)
    | k2_relat_1(k2_funct_1(esk3_0)) != u1_struct_0(esk1_0)
    | ~ m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0)))) ),
    inference(spm,[status(thm)],[c_0_35,c_0_36])).

cnf(c_0_43,plain,
    ( k1_relat_1(X1) = k2_relat_1(k2_funct_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_44,negated_conjecture,
    ( v1_relat_1(esk3_0) ),
    inference(spm,[status(thm)],[c_0_38,c_0_20])).

cnf(c_0_45,negated_conjecture,
    ( k2_relset_1(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0) = u1_struct_0(esk2_0) ),
    inference(rw,[status(thm)],[c_0_18,c_0_31])).

cnf(c_0_46,plain,
    ( m1_subset_1(k3_relset_1(X2,X3,X1),k1_zfmisc_1(k2_zfmisc_1(X3,X2)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_47,plain,
    ( k3_relset_1(X2,X3,X1) = k4_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_40])).

fof(c_0_48,plain,(
    ! [X4] :
      ( ~ v1_relat_1(X4)
      | ~ v1_funct_1(X4)
      | ~ v2_funct_1(X4)
      | k2_funct_1(X4) = k4_relat_1(X4) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d9_funct_1])])).

cnf(c_0_49,plain,
    ( X2 = k1_relset_1(X2,X3,X1)
    | X3 = k1_xboole_0
    | ~ v1_funct_2(X1,X2,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_41])).

cnf(c_0_50,negated_conjecture,
    ( k1_relat_1(k2_funct_1(esk3_0)) != u1_struct_0(esk2_0)
    | k1_relat_1(esk3_0) != u1_struct_0(esk1_0)
    | ~ m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0)))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_42,c_0_43]),c_0_21]),c_0_22]),c_0_44])])).

cnf(c_0_51,plain,
    ( k2_relat_1(X1) = k1_relat_1(k2_funct_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_52,negated_conjecture,
    ( k2_relat_1(esk3_0) = u1_struct_0(esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26,c_0_45]),c_0_20])])).

cnf(c_0_53,plain,
    ( m1_subset_1(k4_relat_1(X1),k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2))) ),
    inference(spm,[status(thm)],[c_0_46,c_0_47])).

cnf(c_0_54,plain,
    ( k2_funct_1(X1) = k4_relat_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v2_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_48])).

fof(c_0_55,plain,(
    ! [X25] :
      ( v2_struct_0(X25)
      | ~ l1_struct_0(X25)
      | ~ v1_xboole_0(k2_struct_0(X25)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc5_struct_0])])])).

cnf(c_0_56,negated_conjecture,
    ( k1_relset_1(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0) = u1_struct_0(esk1_0)
    | u1_struct_0(esk2_0) = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49,c_0_20]),c_0_19])])).

cnf(c_0_57,negated_conjecture,
    ( k1_relat_1(esk3_0) != u1_struct_0(esk1_0)
    | ~ m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0)))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50,c_0_51]),c_0_52]),c_0_21]),c_0_22]),c_0_44])])).

cnf(c_0_58,plain,
    ( m1_subset_1(k2_funct_1(X1),k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))
    | ~ v2_funct_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_53,c_0_54]),c_0_38])).

cnf(c_0_59,plain,
    ( v2_struct_0(X1)
    | ~ l1_struct_0(X1)
    | ~ v1_xboole_0(k2_struct_0(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_55])).

cnf(c_0_60,negated_conjecture,
    ( ~ v2_struct_0(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_61,negated_conjecture,
    ( k1_relat_1(esk3_0) = u1_struct_0(esk1_0)
    | u1_struct_0(esk2_0) = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_36,c_0_56]),c_0_20])])).

cnf(c_0_62,negated_conjecture,
    ( k1_relat_1(esk3_0) != u1_struct_0(esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57,c_0_58]),c_0_20]),c_0_21]),c_0_22])])).

cnf(c_0_63,negated_conjecture,
    ( ~ v1_xboole_0(u1_struct_0(esk2_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_59,c_0_31]),c_0_28])]),c_0_60])).

cnf(c_0_64,negated_conjecture,
    ( u1_struct_0(esk2_0) = k1_xboole_0 ),
    inference(sr,[status(thm)],[c_0_61,c_0_62])).

cnf(c_0_65,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(split_conjunct,[status(thm)],[fc1_xboole_0])).

cnf(c_0_66,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_63,c_0_64]),c_0_65])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.13/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n014.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 09:15:37 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.19/0.34  # Version: 2.5pre002
% 0.19/0.34  # No SInE strategy applied
% 0.19/0.34  # Trying AutoSched0 for 299 seconds
% 0.19/0.39  # AutoSched0-Mode selected heuristic G_E___302_C18_F1_URBAN_RG_S04BN
% 0.19/0.39  # and selection function PSelectComplexExceptUniqMaxHorn.
% 0.19/0.39  #
% 0.19/0.39  # Preprocessing time       : 0.034 s
% 0.19/0.39  
% 0.19/0.39  # Proof found!
% 0.19/0.39  # SZS status Theorem
% 0.19/0.39  # SZS output start CNFRefutation
% 0.19/0.39  fof(t62_tops_2, conjecture, ![X1]:(l1_struct_0(X1)=>![X2]:((~(v2_struct_0(X2))&l1_struct_0(X2))=>![X3]:(((v1_funct_1(X3)&v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2)))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2)))))=>((k2_relset_1(u1_struct_0(X1),u1_struct_0(X2),X3)=k2_struct_0(X2)&v2_funct_1(X3))=>(k1_relset_1(u1_struct_0(X2),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X2),X3))=k2_struct_0(X2)&k2_relset_1(u1_struct_0(X2),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X2),X3))=k2_struct_0(X1)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t62_tops_2)).
% 0.19/0.39  fof(d4_tops_2, axiom, ![X1, X2, X3]:(((v1_funct_1(X3)&v1_funct_2(X3,X1,X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>((k2_relset_1(X1,X2,X3)=X2&v2_funct_1(X3))=>k2_tops_2(X1,X2,X3)=k2_funct_1(X3))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d4_tops_2)).
% 0.19/0.39  fof(redefinition_k2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k2_relset_1(X1,X2,X3)=k2_relat_1(X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k2_relset_1)).
% 0.19/0.39  fof(d3_struct_0, axiom, ![X1]:(l1_struct_0(X1)=>k2_struct_0(X1)=u1_struct_0(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d3_struct_0)).
% 0.19/0.39  fof(redefinition_k1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k1_relset_1(X1,X2,X3)=k1_relat_1(X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k1_relset_1)).
% 0.19/0.39  fof(cc1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>v1_relat_1(X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc1_relset_1)).
% 0.19/0.39  fof(t55_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v2_funct_1(X1)=>(k2_relat_1(X1)=k1_relat_1(k2_funct_1(X1))&k1_relat_1(X1)=k2_relat_1(k2_funct_1(X1))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t55_funct_1)).
% 0.19/0.39  fof(dt_k3_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>m1_subset_1(k3_relset_1(X1,X2,X3),k1_zfmisc_1(k2_zfmisc_1(X2,X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k3_relset_1)).
% 0.19/0.39  fof(redefinition_k3_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k3_relset_1(X1,X2,X3)=k4_relat_1(X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k3_relset_1)).
% 0.19/0.39  fof(d1_funct_2, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(((X2=k1_xboole_0=>X1=k1_xboole_0)=>(v1_funct_2(X3,X1,X2)<=>X1=k1_relset_1(X1,X2,X3)))&(X2=k1_xboole_0=>(X1=k1_xboole_0|(v1_funct_2(X3,X1,X2)<=>X3=k1_xboole_0))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_funct_2)).
% 0.19/0.39  fof(d9_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v2_funct_1(X1)=>k2_funct_1(X1)=k4_relat_1(X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d9_funct_1)).
% 0.19/0.39  fof(fc5_struct_0, axiom, ![X1]:((~(v2_struct_0(X1))&l1_struct_0(X1))=>~(v1_xboole_0(k2_struct_0(X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc5_struct_0)).
% 0.19/0.39  fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc1_xboole_0)).
% 0.19/0.39  fof(c_0_13, negated_conjecture, ~(![X1]:(l1_struct_0(X1)=>![X2]:((~(v2_struct_0(X2))&l1_struct_0(X2))=>![X3]:(((v1_funct_1(X3)&v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2)))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2)))))=>((k2_relset_1(u1_struct_0(X1),u1_struct_0(X2),X3)=k2_struct_0(X2)&v2_funct_1(X3))=>(k1_relset_1(u1_struct_0(X2),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X2),X3))=k2_struct_0(X2)&k2_relset_1(u1_struct_0(X2),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X2),X3))=k2_struct_0(X1))))))), inference(assume_negation,[status(cth)],[t62_tops_2])).
% 0.19/0.39  fof(c_0_14, negated_conjecture, (l1_struct_0(esk1_0)&((~v2_struct_0(esk2_0)&l1_struct_0(esk2_0))&(((v1_funct_1(esk3_0)&v1_funct_2(esk3_0,u1_struct_0(esk1_0),u1_struct_0(esk2_0)))&m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk1_0),u1_struct_0(esk2_0)))))&((k2_relset_1(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0)=k2_struct_0(esk2_0)&v2_funct_1(esk3_0))&(k1_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_tops_2(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0))!=k2_struct_0(esk2_0)|k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_tops_2(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0))!=k2_struct_0(esk1_0)))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_13])])])])).
% 0.19/0.39  fof(c_0_15, plain, ![X26, X27, X28]:(~v1_funct_1(X28)|~v1_funct_2(X28,X26,X27)|~m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27)))|(k2_relset_1(X26,X27,X28)!=X27|~v2_funct_1(X28)|k2_tops_2(X26,X27,X28)=k2_funct_1(X28))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d4_tops_2])])).
% 0.19/0.39  cnf(c_0_16, negated_conjecture, (k1_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_tops_2(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0))!=k2_struct_0(esk2_0)|k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_tops_2(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0))!=k2_struct_0(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.19/0.39  cnf(c_0_17, plain, (k2_tops_2(X2,X3,X1)=k2_funct_1(X1)|~v1_funct_1(X1)|~v1_funct_2(X1,X2,X3)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|k2_relset_1(X2,X3,X1)!=X3|~v2_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.39  cnf(c_0_18, negated_conjecture, (k2_relset_1(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0)=k2_struct_0(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.19/0.39  cnf(c_0_19, negated_conjecture, (v1_funct_2(esk3_0,u1_struct_0(esk1_0),u1_struct_0(esk2_0))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.19/0.39  cnf(c_0_20, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk1_0),u1_struct_0(esk2_0))))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.19/0.39  cnf(c_0_21, negated_conjecture, (v2_funct_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.19/0.39  cnf(c_0_22, negated_conjecture, (v1_funct_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.19/0.39  fof(c_0_23, plain, ![X15, X16, X17]:(~m1_subset_1(X17,k1_zfmisc_1(k2_zfmisc_1(X15,X16)))|k2_relset_1(X15,X16,X17)=k2_relat_1(X17)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_relset_1])])).
% 0.19/0.39  fof(c_0_24, plain, ![X24]:(~l1_struct_0(X24)|k2_struct_0(X24)=u1_struct_0(X24)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_struct_0])])).
% 0.19/0.39  cnf(c_0_25, negated_conjecture, (k1_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_funct_1(esk3_0))!=k2_struct_0(esk2_0)|k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_funct_1(esk3_0))!=k2_struct_0(esk1_0)|k2_struct_0(esk2_0)!=u1_struct_0(esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_16, c_0_17]), c_0_18]), c_0_19]), c_0_20]), c_0_21]), c_0_22])])).
% 0.19/0.39  cnf(c_0_26, plain, (k2_relset_1(X2,X3,X1)=k2_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.19/0.39  cnf(c_0_27, plain, (k2_struct_0(X1)=u1_struct_0(X1)|~l1_struct_0(X1)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.19/0.39  cnf(c_0_28, negated_conjecture, (l1_struct_0(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.19/0.39  cnf(c_0_29, negated_conjecture, (l1_struct_0(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.19/0.39  cnf(c_0_30, negated_conjecture, (k1_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_funct_1(esk3_0))!=k2_struct_0(esk2_0)|k2_relat_1(k2_funct_1(esk3_0))!=k2_struct_0(esk1_0)|k2_struct_0(esk2_0)!=u1_struct_0(esk2_0)|~m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0))))), inference(spm,[status(thm)],[c_0_25, c_0_26])).
% 0.19/0.39  cnf(c_0_31, negated_conjecture, (k2_struct_0(esk2_0)=u1_struct_0(esk2_0)), inference(spm,[status(thm)],[c_0_27, c_0_28])).
% 0.19/0.39  cnf(c_0_32, negated_conjecture, (k2_struct_0(esk1_0)=u1_struct_0(esk1_0)), inference(spm,[status(thm)],[c_0_27, c_0_29])).
% 0.19/0.39  fof(c_0_33, plain, ![X12, X13, X14]:(~m1_subset_1(X14,k1_zfmisc_1(k2_zfmisc_1(X12,X13)))|k1_relset_1(X12,X13,X14)=k1_relat_1(X14)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).
% 0.19/0.39  fof(c_0_34, plain, ![X6, X7, X8]:(~m1_subset_1(X8,k1_zfmisc_1(k2_zfmisc_1(X6,X7)))|v1_relat_1(X8)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).
% 0.19/0.39  cnf(c_0_35, negated_conjecture, (k1_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0),k2_funct_1(esk3_0))!=u1_struct_0(esk2_0)|k2_relat_1(k2_funct_1(esk3_0))!=u1_struct_0(esk1_0)|~m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0))))), inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_30, c_0_31]), c_0_31])]), c_0_32])).
% 0.19/0.39  cnf(c_0_36, plain, (k1_relset_1(X2,X3,X1)=k1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.19/0.39  fof(c_0_37, plain, ![X5]:((k2_relat_1(X5)=k1_relat_1(k2_funct_1(X5))|~v2_funct_1(X5)|(~v1_relat_1(X5)|~v1_funct_1(X5)))&(k1_relat_1(X5)=k2_relat_1(k2_funct_1(X5))|~v2_funct_1(X5)|(~v1_relat_1(X5)|~v1_funct_1(X5)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t55_funct_1])])])).
% 0.19/0.39  cnf(c_0_38, plain, (v1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.19/0.39  fof(c_0_39, plain, ![X9, X10, X11]:(~m1_subset_1(X11,k1_zfmisc_1(k2_zfmisc_1(X9,X10)))|m1_subset_1(k3_relset_1(X9,X10,X11),k1_zfmisc_1(k2_zfmisc_1(X10,X9)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k3_relset_1])])).
% 0.19/0.39  fof(c_0_40, plain, ![X18, X19, X20]:(~m1_subset_1(X20,k1_zfmisc_1(k2_zfmisc_1(X18,X19)))|k3_relset_1(X18,X19,X20)=k4_relat_1(X20)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k3_relset_1])])).
% 0.19/0.39  fof(c_0_41, plain, ![X21, X22, X23]:((((~v1_funct_2(X23,X21,X22)|X21=k1_relset_1(X21,X22,X23)|X22=k1_xboole_0|~m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22))))&(X21!=k1_relset_1(X21,X22,X23)|v1_funct_2(X23,X21,X22)|X22=k1_xboole_0|~m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22)))))&((~v1_funct_2(X23,X21,X22)|X21=k1_relset_1(X21,X22,X23)|X21!=k1_xboole_0|~m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22))))&(X21!=k1_relset_1(X21,X22,X23)|v1_funct_2(X23,X21,X22)|X21!=k1_xboole_0|~m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22))))))&((~v1_funct_2(X23,X21,X22)|X23=k1_xboole_0|X21=k1_xboole_0|X22!=k1_xboole_0|~m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22))))&(X23!=k1_xboole_0|v1_funct_2(X23,X21,X22)|X21=k1_xboole_0|X22!=k1_xboole_0|~m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).
% 0.19/0.39  cnf(c_0_42, negated_conjecture, (k1_relat_1(k2_funct_1(esk3_0))!=u1_struct_0(esk2_0)|k2_relat_1(k2_funct_1(esk3_0))!=u1_struct_0(esk1_0)|~m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0))))), inference(spm,[status(thm)],[c_0_35, c_0_36])).
% 0.19/0.39  cnf(c_0_43, plain, (k1_relat_1(X1)=k2_relat_1(k2_funct_1(X1))|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_37])).
% 0.19/0.39  cnf(c_0_44, negated_conjecture, (v1_relat_1(esk3_0)), inference(spm,[status(thm)],[c_0_38, c_0_20])).
% 0.19/0.39  cnf(c_0_45, negated_conjecture, (k2_relset_1(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0)=u1_struct_0(esk2_0)), inference(rw,[status(thm)],[c_0_18, c_0_31])).
% 0.19/0.39  cnf(c_0_46, plain, (m1_subset_1(k3_relset_1(X2,X3,X1),k1_zfmisc_1(k2_zfmisc_1(X3,X2)))|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.19/0.39  cnf(c_0_47, plain, (k3_relset_1(X2,X3,X1)=k4_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_40])).
% 0.19/0.39  fof(c_0_48, plain, ![X4]:(~v1_relat_1(X4)|~v1_funct_1(X4)|(~v2_funct_1(X4)|k2_funct_1(X4)=k4_relat_1(X4))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d9_funct_1])])).
% 0.19/0.39  cnf(c_0_49, plain, (X2=k1_relset_1(X2,X3,X1)|X3=k1_xboole_0|~v1_funct_2(X1,X2,X3)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_41])).
% 0.19/0.39  cnf(c_0_50, negated_conjecture, (k1_relat_1(k2_funct_1(esk3_0))!=u1_struct_0(esk2_0)|k1_relat_1(esk3_0)!=u1_struct_0(esk1_0)|~m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0))))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_42, c_0_43]), c_0_21]), c_0_22]), c_0_44])])).
% 0.19/0.39  cnf(c_0_51, plain, (k2_relat_1(X1)=k1_relat_1(k2_funct_1(X1))|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_37])).
% 0.19/0.39  cnf(c_0_52, negated_conjecture, (k2_relat_1(esk3_0)=u1_struct_0(esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26, c_0_45]), c_0_20])])).
% 0.19/0.39  cnf(c_0_53, plain, (m1_subset_1(k4_relat_1(X1),k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))), inference(spm,[status(thm)],[c_0_46, c_0_47])).
% 0.19/0.39  cnf(c_0_54, plain, (k2_funct_1(X1)=k4_relat_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)|~v2_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_48])).
% 0.19/0.39  fof(c_0_55, plain, ![X25]:(v2_struct_0(X25)|~l1_struct_0(X25)|~v1_xboole_0(k2_struct_0(X25))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc5_struct_0])])])).
% 0.19/0.39  cnf(c_0_56, negated_conjecture, (k1_relset_1(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0)=u1_struct_0(esk1_0)|u1_struct_0(esk2_0)=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49, c_0_20]), c_0_19])])).
% 0.19/0.39  cnf(c_0_57, negated_conjecture, (k1_relat_1(esk3_0)!=u1_struct_0(esk1_0)|~m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk2_0),u1_struct_0(esk1_0))))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50, c_0_51]), c_0_52]), c_0_21]), c_0_22]), c_0_44])])).
% 0.19/0.39  cnf(c_0_58, plain, (m1_subset_1(k2_funct_1(X1),k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))|~v2_funct_1(X1)|~v1_funct_1(X1)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_53, c_0_54]), c_0_38])).
% 0.19/0.39  cnf(c_0_59, plain, (v2_struct_0(X1)|~l1_struct_0(X1)|~v1_xboole_0(k2_struct_0(X1))), inference(split_conjunct,[status(thm)],[c_0_55])).
% 0.19/0.39  cnf(c_0_60, negated_conjecture, (~v2_struct_0(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.19/0.39  cnf(c_0_61, negated_conjecture, (k1_relat_1(esk3_0)=u1_struct_0(esk1_0)|u1_struct_0(esk2_0)=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_36, c_0_56]), c_0_20])])).
% 0.19/0.39  cnf(c_0_62, negated_conjecture, (k1_relat_1(esk3_0)!=u1_struct_0(esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57, c_0_58]), c_0_20]), c_0_21]), c_0_22])])).
% 0.19/0.39  cnf(c_0_63, negated_conjecture, (~v1_xboole_0(u1_struct_0(esk2_0))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_59, c_0_31]), c_0_28])]), c_0_60])).
% 0.19/0.39  cnf(c_0_64, negated_conjecture, (u1_struct_0(esk2_0)=k1_xboole_0), inference(sr,[status(thm)],[c_0_61, c_0_62])).
% 0.19/0.39  cnf(c_0_65, plain, (v1_xboole_0(k1_xboole_0)), inference(split_conjunct,[status(thm)],[fc1_xboole_0])).
% 0.19/0.39  cnf(c_0_66, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_63, c_0_64]), c_0_65])]), ['proof']).
% 0.19/0.39  # SZS output end CNFRefutation
% 0.19/0.39  # Proof object total steps             : 67
% 0.19/0.39  # Proof object clause steps            : 41
% 0.19/0.39  # Proof object formula steps           : 26
% 0.19/0.39  # Proof object conjectures             : 29
% 0.19/0.39  # Proof object clause conjectures      : 26
% 0.19/0.39  # Proof object formula conjectures     : 3
% 0.19/0.39  # Proof object initial clauses used    : 22
% 0.19/0.39  # Proof object initial formulas used   : 13
% 0.19/0.39  # Proof object generating inferences   : 15
% 0.19/0.39  # Proof object simplifying inferences  : 38
% 0.19/0.39  # Training examples: 0 positive, 0 negative
% 0.19/0.39  # Parsed axioms                        : 13
% 0.19/0.39  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.39  # Initial clauses                      : 27
% 0.19/0.39  # Removed in clause preprocessing      : 0
% 0.19/0.39  # Initial clauses in saturation        : 27
% 0.19/0.39  # Processed clauses                    : 123
% 0.19/0.39  # ...of these trivial                  : 2
% 0.19/0.39  # ...subsumed                          : 29
% 0.19/0.39  # ...remaining for further processing  : 92
% 0.19/0.39  # Other redundant clauses eliminated   : 2
% 0.19/0.39  # Clauses deleted for lack of memory   : 0
% 0.19/0.39  # Backward-subsumed                    : 4
% 0.19/0.39  # Backward-rewritten                   : 27
% 0.19/0.39  # Generated clauses                    : 180
% 0.19/0.39  # ...of the previous two non-trivial   : 178
% 0.19/0.39  # Contextual simplify-reflections      : 2
% 0.19/0.39  # Paramodulations                      : 165
% 0.19/0.39  # Factorizations                       : 12
% 0.19/0.39  # Equation resolutions                 : 2
% 0.19/0.39  # Propositional unsat checks           : 0
% 0.19/0.39  #    Propositional check models        : 0
% 0.19/0.39  #    Propositional check unsatisfiable : 0
% 0.19/0.39  #    Propositional clauses             : 0
% 0.19/0.39  #    Propositional clauses after purity: 0
% 0.19/0.39  #    Propositional unsat core size     : 0
% 0.19/0.39  #    Propositional preprocessing time  : 0.000
% 0.19/0.39  #    Propositional encoding time       : 0.000
% 0.19/0.39  #    Propositional solver time         : 0.000
% 0.19/0.39  #    Success case prop preproc time    : 0.000
% 0.19/0.39  #    Success case prop encoding time   : 0.000
% 0.19/0.39  #    Success case prop solver time     : 0.000
% 0.19/0.39  # Current number of processed clauses  : 60
% 0.19/0.39  #    Positive orientable unit clauses  : 12
% 0.19/0.39  #    Positive unorientable unit clauses: 0
% 0.19/0.39  #    Negative unit clauses             : 2
% 0.19/0.39  #    Non-unit-clauses                  : 46
% 0.19/0.39  # Current number of unprocessed clauses: 67
% 0.19/0.39  # ...number of literals in the above   : 326
% 0.19/0.39  # Current number of archived formulas  : 0
% 0.19/0.39  # Current number of archived clauses   : 32
% 0.19/0.39  # Clause-clause subsumption calls (NU) : 1389
% 0.19/0.39  # Rec. Clause-clause subsumption calls : 354
% 0.19/0.39  # Non-unit clause-clause subsumptions  : 35
% 0.19/0.39  # Unit Clause-clause subsumption calls : 19
% 0.19/0.39  # Rewrite failures with RHS unbound    : 0
% 0.19/0.39  # BW rewrite match attempts            : 4
% 0.19/0.39  # BW rewrite match successes           : 3
% 0.19/0.39  # Condensation attempts                : 0
% 0.19/0.39  # Condensation successes               : 0
% 0.19/0.39  # Termbank termtop insertions          : 5438
% 0.19/0.39  
% 0.19/0.39  # -------------------------------------------------
% 0.19/0.39  # User time                : 0.044 s
% 0.19/0.39  # System time              : 0.004 s
% 0.19/0.39  # Total time               : 0.048 s
% 0.19/0.39  # Maximum resident set size: 1588 pages
%------------------------------------------------------------------------------
