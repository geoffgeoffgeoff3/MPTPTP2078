%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n010.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:13:29 EST 2020

% Result     : Theorem 0.20s
% Output     : CNFRefutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   59 ( 228 expanded)
%              Number of clauses        :   34 (  88 expanded)
%              Number of leaves         :   12 (  56 expanded)
%              Depth                    :   11
%              Number of atoms          :  149 ( 969 expanded)
%              Number of equality atoms :   50 ( 343 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal clause size      :   10 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t52_tops_2,conjecture,(
    ! [X1] :
      ( l1_struct_0(X1)
     => ! [X2] :
          ( l1_struct_0(X2)
         => ! [X3] :
              ( ( v1_funct_1(X3)
                & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2))
                & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2)))) )
             => ( ( k2_struct_0(X2) = k1_xboole_0
                 => k2_struct_0(X1) = k1_xboole_0 )
               => k8_relset_1(u1_struct_0(X1),u1_struct_0(X2),X3,k2_struct_0(X2)) = k2_struct_0(X1) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t52_tops_2)).

fof(d3_struct_0,axiom,(
    ! [X1] :
      ( l1_struct_0(X1)
     => k2_struct_0(X1) = u1_struct_0(X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_struct_0)).

fof(cc5_funct_2,axiom,(
    ! [X1,X2] :
      ( ~ v1_xboole_0(X2)
     => ! [X3] :
          ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
         => ( ( v1_funct_1(X3)
              & v1_funct_2(X3,X1,X2) )
           => ( v1_funct_1(X3)
              & v1_partfun1(X3,X1) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc5_funct_2)).

fof(t38_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ( k7_relset_1(X1,X2,X3,X1) = k2_relset_1(X1,X2,X3)
        & k8_relset_1(X1,X2,X3,X2) = k1_relset_1(X1,X2,X3) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t38_relset_1)).

fof(l13_xboole_0,axiom,(
    ! [X1] :
      ( v1_xboole_0(X1)
     => X1 = k1_xboole_0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l13_xboole_0)).

fof(cc2_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ( v4_relat_1(X3,X1)
        & v5_relat_1(X3,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc2_relset_1)).

fof(cc2_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(X1))
         => v1_relat_1(X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc2_relat_1)).

fof(fc6_relat_1,axiom,(
    ! [X1,X2] : v1_relat_1(k2_zfmisc_1(X1,X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc6_relat_1)).

fof(redefinition_k1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k1_relset_1(X1,X2,X3) = k1_relat_1(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k1_relset_1)).

fof(d4_partfun1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v4_relat_1(X2,X1) )
     => ( v1_partfun1(X2,X1)
      <=> k1_relat_1(X2) = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d4_partfun1)).

fof(redefinition_k8_relset_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k8_relset_1(X1,X2,X3,X4) = k10_relat_1(X3,X4) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k8_relset_1)).

fof(t171_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => k10_relat_1(X1,k1_xboole_0) = k1_xboole_0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t171_relat_1)).

fof(c_0_12,negated_conjecture,(
    ~ ! [X1] :
        ( l1_struct_0(X1)
       => ! [X2] :
            ( l1_struct_0(X2)
           => ! [X3] :
                ( ( v1_funct_1(X3)
                  & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2))
                  & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2)))) )
               => ( ( k2_struct_0(X2) = k1_xboole_0
                   => k2_struct_0(X1) = k1_xboole_0 )
                 => k8_relset_1(u1_struct_0(X1),u1_struct_0(X2),X3,k2_struct_0(X2)) = k2_struct_0(X1) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t52_tops_2])).

fof(c_0_13,plain,(
    ! [X29] :
      ( ~ l1_struct_0(X29)
      | k2_struct_0(X29) = u1_struct_0(X29) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_struct_0])])).

fof(c_0_14,negated_conjecture,
    ( l1_struct_0(esk1_0)
    & l1_struct_0(esk2_0)
    & v1_funct_1(esk3_0)
    & v1_funct_2(esk3_0,u1_struct_0(esk1_0),u1_struct_0(esk2_0))
    & m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk1_0),u1_struct_0(esk2_0))))
    & ( k2_struct_0(esk2_0) != k1_xboole_0
      | k2_struct_0(esk1_0) = k1_xboole_0 )
    & k8_relset_1(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0,k2_struct_0(esk2_0)) != k2_struct_0(esk1_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_12])])])).

cnf(c_0_15,plain,
    ( k2_struct_0(X1) = u1_struct_0(X1)
    | ~ l1_struct_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_16,negated_conjecture,
    ( l1_struct_0(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_17,negated_conjecture,
    ( l1_struct_0(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

fof(c_0_18,plain,(
    ! [X24,X25,X26] :
      ( ( v1_funct_1(X26)
        | ~ v1_funct_1(X26)
        | ~ v1_funct_2(X26,X24,X25)
        | ~ m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X24,X25)))
        | v1_xboole_0(X25) )
      & ( v1_partfun1(X26,X24)
        | ~ v1_funct_1(X26)
        | ~ v1_funct_2(X26,X24,X25)
        | ~ m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X24,X25)))
        | v1_xboole_0(X25) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[cc5_funct_2])])])])])).

cnf(c_0_19,negated_conjecture,
    ( k8_relset_1(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0,k2_struct_0(esk2_0)) != k2_struct_0(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_20,negated_conjecture,
    ( k2_struct_0(esk2_0) = u1_struct_0(esk2_0) ),
    inference(spm,[status(thm)],[c_0_15,c_0_16])).

cnf(c_0_21,negated_conjecture,
    ( k2_struct_0(esk1_0) = u1_struct_0(esk1_0) ),
    inference(spm,[status(thm)],[c_0_15,c_0_17])).

fof(c_0_22,plain,(
    ! [X21,X22,X23] :
      ( ( k7_relset_1(X21,X22,X23,X21) = k2_relset_1(X21,X22,X23)
        | ~ m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22))) )
      & ( k8_relset_1(X21,X22,X23,X22) = k1_relset_1(X21,X22,X23)
        | ~ m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t38_relset_1])])])).

fof(c_0_23,plain,(
    ! [X5] :
      ( ~ v1_xboole_0(X5)
      | X5 = k1_xboole_0 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l13_xboole_0])])).

cnf(c_0_24,plain,
    ( v1_partfun1(X1,X2)
    | v1_xboole_0(X3)
    | ~ v1_funct_1(X1)
    | ~ v1_funct_2(X1,X2,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_25,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk1_0),u1_struct_0(esk2_0)))) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_26,negated_conjecture,
    ( v1_funct_2(esk3_0,u1_struct_0(esk1_0),u1_struct_0(esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_27,negated_conjecture,
    ( v1_funct_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

fof(c_0_28,plain,(
    ! [X11,X12,X13] :
      ( ( v4_relat_1(X13,X11)
        | ~ m1_subset_1(X13,k1_zfmisc_1(k2_zfmisc_1(X11,X12))) )
      & ( v5_relat_1(X13,X12)
        | ~ m1_subset_1(X13,k1_zfmisc_1(k2_zfmisc_1(X11,X12))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).

fof(c_0_29,plain,(
    ! [X6,X7] :
      ( ~ v1_relat_1(X6)
      | ~ m1_subset_1(X7,k1_zfmisc_1(X6))
      | v1_relat_1(X7) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relat_1])])])).

fof(c_0_30,plain,(
    ! [X8,X9] : v1_relat_1(k2_zfmisc_1(X8,X9)) ),
    inference(variable_rename,[status(thm)],[fc6_relat_1])).

cnf(c_0_31,negated_conjecture,
    ( k8_relset_1(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0,u1_struct_0(esk2_0)) != u1_struct_0(esk1_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_19,c_0_20]),c_0_21])).

cnf(c_0_32,plain,
    ( k8_relset_1(X1,X2,X3,X2) = k1_relset_1(X1,X2,X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

fof(c_0_33,plain,(
    ! [X14,X15,X16] :
      ( ~ m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15)))
      | k1_relset_1(X14,X15,X16) = k1_relat_1(X16) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).

cnf(c_0_34,negated_conjecture,
    ( k2_struct_0(esk1_0) = k1_xboole_0
    | k2_struct_0(esk2_0) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

fof(c_0_35,plain,(
    ! [X27,X28] :
      ( ( ~ v1_partfun1(X28,X27)
        | k1_relat_1(X28) = X27
        | ~ v1_relat_1(X28)
        | ~ v4_relat_1(X28,X27) )
      & ( k1_relat_1(X28) != X27
        | v1_partfun1(X28,X27)
        | ~ v1_relat_1(X28)
        | ~ v4_relat_1(X28,X27) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d4_partfun1])])])).

cnf(c_0_36,plain,
    ( X1 = k1_xboole_0
    | ~ v1_xboole_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_37,negated_conjecture,
    ( v1_partfun1(esk3_0,u1_struct_0(esk1_0))
    | v1_xboole_0(u1_struct_0(esk2_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24,c_0_25]),c_0_26]),c_0_27])])).

cnf(c_0_38,plain,
    ( v4_relat_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_39,plain,
    ( v1_relat_1(X2)
    | ~ v1_relat_1(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_40,plain,
    ( v1_relat_1(k2_zfmisc_1(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_41,negated_conjecture,
    ( k1_relset_1(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0) != u1_struct_0(esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_32]),c_0_25])])).

cnf(c_0_42,plain,
    ( k1_relset_1(X2,X3,X1) = k1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

fof(c_0_43,plain,(
    ! [X17,X18,X19,X20] :
      ( ~ m1_subset_1(X19,k1_zfmisc_1(k2_zfmisc_1(X17,X18)))
      | k8_relset_1(X17,X18,X19,X20) = k10_relat_1(X19,X20) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k8_relset_1])])).

cnf(c_0_44,negated_conjecture,
    ( k2_struct_0(esk1_0) = k1_xboole_0
    | u1_struct_0(esk2_0) != k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_34,c_0_20])).

cnf(c_0_45,plain,
    ( k1_relat_1(X1) = X2
    | ~ v1_partfun1(X1,X2)
    | ~ v1_relat_1(X1)
    | ~ v4_relat_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

cnf(c_0_46,negated_conjecture,
    ( u1_struct_0(esk2_0) = k1_xboole_0
    | v1_partfun1(esk3_0,u1_struct_0(esk1_0)) ),
    inference(spm,[status(thm)],[c_0_36,c_0_37])).

cnf(c_0_47,negated_conjecture,
    ( v4_relat_1(esk3_0,u1_struct_0(esk1_0)) ),
    inference(spm,[status(thm)],[c_0_38,c_0_25])).

cnf(c_0_48,negated_conjecture,
    ( v1_relat_1(esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39,c_0_25]),c_0_40])])).

cnf(c_0_49,negated_conjecture,
    ( k1_relat_1(esk3_0) != u1_struct_0(esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41,c_0_42]),c_0_25])])).

cnf(c_0_50,plain,
    ( k8_relset_1(X2,X3,X1,X4) = k10_relat_1(X1,X4)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_43])).

cnf(c_0_51,negated_conjecture,
    ( u1_struct_0(esk1_0) = k1_xboole_0
    | u1_struct_0(esk2_0) != k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_21,c_0_44])).

cnf(c_0_52,negated_conjecture,
    ( u1_struct_0(esk2_0) = k1_xboole_0 ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45,c_0_46]),c_0_47]),c_0_48])]),c_0_49])).

cnf(c_0_53,negated_conjecture,
    ( k10_relat_1(esk3_0,u1_struct_0(esk2_0)) != u1_struct_0(esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_50]),c_0_25])])).

cnf(c_0_54,negated_conjecture,
    ( u1_struct_0(esk1_0) = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_51,c_0_52])])).

fof(c_0_55,plain,(
    ! [X10] :
      ( ~ v1_relat_1(X10)
      | k10_relat_1(X10,k1_xboole_0) = k1_xboole_0 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t171_relat_1])])).

cnf(c_0_56,negated_conjecture,
    ( k10_relat_1(esk3_0,k1_xboole_0) != k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_53,c_0_52]),c_0_54])).

cnf(c_0_57,plain,
    ( k10_relat_1(X1,k1_xboole_0) = k1_xboole_0
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_55])).

cnf(c_0_58,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_56,c_0_57]),c_0_48])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.14  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.35  % Computer   : n010.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % WCLimit    : 600
% 0.14/0.35  % DateTime   : Tue Dec  1 11:03:14 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  # Version: 2.5pre002
% 0.14/0.35  # No SInE strategy applied
% 0.14/0.35  # Trying AutoSched0 for 299 seconds
% 0.20/0.38  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.20/0.38  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.20/0.38  #
% 0.20/0.38  # Preprocessing time       : 0.027 s
% 0.20/0.38  # Presaturation interreduction done
% 0.20/0.38  
% 0.20/0.38  # Proof found!
% 0.20/0.38  # SZS status Theorem
% 0.20/0.38  # SZS output start CNFRefutation
% 0.20/0.38  fof(t52_tops_2, conjecture, ![X1]:(l1_struct_0(X1)=>![X2]:(l1_struct_0(X2)=>![X3]:(((v1_funct_1(X3)&v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2)))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2)))))=>((k2_struct_0(X2)=k1_xboole_0=>k2_struct_0(X1)=k1_xboole_0)=>k8_relset_1(u1_struct_0(X1),u1_struct_0(X2),X3,k2_struct_0(X2))=k2_struct_0(X1))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t52_tops_2)).
% 0.20/0.38  fof(d3_struct_0, axiom, ![X1]:(l1_struct_0(X1)=>k2_struct_0(X1)=u1_struct_0(X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d3_struct_0)).
% 0.20/0.38  fof(cc5_funct_2, axiom, ![X1, X2]:(~(v1_xboole_0(X2))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>((v1_funct_1(X3)&v1_funct_2(X3,X1,X2))=>(v1_funct_1(X3)&v1_partfun1(X3,X1))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc5_funct_2)).
% 0.20/0.38  fof(t38_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(k7_relset_1(X1,X2,X3,X1)=k2_relset_1(X1,X2,X3)&k8_relset_1(X1,X2,X3,X2)=k1_relset_1(X1,X2,X3))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t38_relset_1)).
% 0.20/0.38  fof(l13_xboole_0, axiom, ![X1]:(v1_xboole_0(X1)=>X1=k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l13_xboole_0)).
% 0.20/0.38  fof(cc2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(v4_relat_1(X3,X1)&v5_relat_1(X3,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc2_relset_1)).
% 0.20/0.38  fof(cc2_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>v1_relat_1(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc2_relat_1)).
% 0.20/0.38  fof(fc6_relat_1, axiom, ![X1, X2]:v1_relat_1(k2_zfmisc_1(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc6_relat_1)).
% 0.20/0.38  fof(redefinition_k1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k1_relset_1(X1,X2,X3)=k1_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k1_relset_1)).
% 0.20/0.38  fof(d4_partfun1, axiom, ![X1, X2]:((v1_relat_1(X2)&v4_relat_1(X2,X1))=>(v1_partfun1(X2,X1)<=>k1_relat_1(X2)=X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d4_partfun1)).
% 0.20/0.38  fof(redefinition_k8_relset_1, axiom, ![X1, X2, X3, X4]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k8_relset_1(X1,X2,X3,X4)=k10_relat_1(X3,X4)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k8_relset_1)).
% 0.20/0.38  fof(t171_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>k10_relat_1(X1,k1_xboole_0)=k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t171_relat_1)).
% 0.20/0.38  fof(c_0_12, negated_conjecture, ~(![X1]:(l1_struct_0(X1)=>![X2]:(l1_struct_0(X2)=>![X3]:(((v1_funct_1(X3)&v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2)))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2)))))=>((k2_struct_0(X2)=k1_xboole_0=>k2_struct_0(X1)=k1_xboole_0)=>k8_relset_1(u1_struct_0(X1),u1_struct_0(X2),X3,k2_struct_0(X2))=k2_struct_0(X1)))))), inference(assume_negation,[status(cth)],[t52_tops_2])).
% 0.20/0.38  fof(c_0_13, plain, ![X29]:(~l1_struct_0(X29)|k2_struct_0(X29)=u1_struct_0(X29)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_struct_0])])).
% 0.20/0.38  fof(c_0_14, negated_conjecture, (l1_struct_0(esk1_0)&(l1_struct_0(esk2_0)&(((v1_funct_1(esk3_0)&v1_funct_2(esk3_0,u1_struct_0(esk1_0),u1_struct_0(esk2_0)))&m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk1_0),u1_struct_0(esk2_0)))))&((k2_struct_0(esk2_0)!=k1_xboole_0|k2_struct_0(esk1_0)=k1_xboole_0)&k8_relset_1(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0,k2_struct_0(esk2_0))!=k2_struct_0(esk1_0))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_12])])])).
% 0.20/0.38  cnf(c_0_15, plain, (k2_struct_0(X1)=u1_struct_0(X1)|~l1_struct_0(X1)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.20/0.38  cnf(c_0_16, negated_conjecture, (l1_struct_0(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.20/0.38  cnf(c_0_17, negated_conjecture, (l1_struct_0(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.20/0.38  fof(c_0_18, plain, ![X24, X25, X26]:((v1_funct_1(X26)|(~v1_funct_1(X26)|~v1_funct_2(X26,X24,X25))|~m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X24,X25)))|v1_xboole_0(X25))&(v1_partfun1(X26,X24)|(~v1_funct_1(X26)|~v1_funct_2(X26,X24,X25))|~m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X24,X25)))|v1_xboole_0(X25))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[cc5_funct_2])])])])])).
% 0.20/0.38  cnf(c_0_19, negated_conjecture, (k8_relset_1(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0,k2_struct_0(esk2_0))!=k2_struct_0(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.20/0.38  cnf(c_0_20, negated_conjecture, (k2_struct_0(esk2_0)=u1_struct_0(esk2_0)), inference(spm,[status(thm)],[c_0_15, c_0_16])).
% 0.20/0.38  cnf(c_0_21, negated_conjecture, (k2_struct_0(esk1_0)=u1_struct_0(esk1_0)), inference(spm,[status(thm)],[c_0_15, c_0_17])).
% 0.20/0.38  fof(c_0_22, plain, ![X21, X22, X23]:((k7_relset_1(X21,X22,X23,X21)=k2_relset_1(X21,X22,X23)|~m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22))))&(k8_relset_1(X21,X22,X23,X22)=k1_relset_1(X21,X22,X23)|~m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t38_relset_1])])])).
% 0.20/0.38  fof(c_0_23, plain, ![X5]:(~v1_xboole_0(X5)|X5=k1_xboole_0), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l13_xboole_0])])).
% 0.20/0.38  cnf(c_0_24, plain, (v1_partfun1(X1,X2)|v1_xboole_0(X3)|~v1_funct_1(X1)|~v1_funct_2(X1,X2,X3)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.20/0.38  cnf(c_0_25, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk1_0),u1_struct_0(esk2_0))))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.20/0.38  cnf(c_0_26, negated_conjecture, (v1_funct_2(esk3_0,u1_struct_0(esk1_0),u1_struct_0(esk2_0))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.20/0.38  cnf(c_0_27, negated_conjecture, (v1_funct_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.20/0.38  fof(c_0_28, plain, ![X11, X12, X13]:((v4_relat_1(X13,X11)|~m1_subset_1(X13,k1_zfmisc_1(k2_zfmisc_1(X11,X12))))&(v5_relat_1(X13,X12)|~m1_subset_1(X13,k1_zfmisc_1(k2_zfmisc_1(X11,X12))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).
% 0.20/0.38  fof(c_0_29, plain, ![X6, X7]:(~v1_relat_1(X6)|(~m1_subset_1(X7,k1_zfmisc_1(X6))|v1_relat_1(X7))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relat_1])])])).
% 0.20/0.38  fof(c_0_30, plain, ![X8, X9]:v1_relat_1(k2_zfmisc_1(X8,X9)), inference(variable_rename,[status(thm)],[fc6_relat_1])).
% 0.20/0.38  cnf(c_0_31, negated_conjecture, (k8_relset_1(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0,u1_struct_0(esk2_0))!=u1_struct_0(esk1_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_19, c_0_20]), c_0_21])).
% 0.20/0.38  cnf(c_0_32, plain, (k8_relset_1(X1,X2,X3,X2)=k1_relset_1(X1,X2,X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.20/0.38  fof(c_0_33, plain, ![X14, X15, X16]:(~m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15)))|k1_relset_1(X14,X15,X16)=k1_relat_1(X16)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).
% 0.20/0.38  cnf(c_0_34, negated_conjecture, (k2_struct_0(esk1_0)=k1_xboole_0|k2_struct_0(esk2_0)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.20/0.38  fof(c_0_35, plain, ![X27, X28]:((~v1_partfun1(X28,X27)|k1_relat_1(X28)=X27|(~v1_relat_1(X28)|~v4_relat_1(X28,X27)))&(k1_relat_1(X28)!=X27|v1_partfun1(X28,X27)|(~v1_relat_1(X28)|~v4_relat_1(X28,X27)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d4_partfun1])])])).
% 0.20/0.38  cnf(c_0_36, plain, (X1=k1_xboole_0|~v1_xboole_0(X1)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.20/0.38  cnf(c_0_37, negated_conjecture, (v1_partfun1(esk3_0,u1_struct_0(esk1_0))|v1_xboole_0(u1_struct_0(esk2_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24, c_0_25]), c_0_26]), c_0_27])])).
% 0.20/0.38  cnf(c_0_38, plain, (v4_relat_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.20/0.38  cnf(c_0_39, plain, (v1_relat_1(X2)|~v1_relat_1(X1)|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.20/0.38  cnf(c_0_40, plain, (v1_relat_1(k2_zfmisc_1(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.20/0.38  cnf(c_0_41, negated_conjecture, (k1_relset_1(u1_struct_0(esk1_0),u1_struct_0(esk2_0),esk3_0)!=u1_struct_0(esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_32]), c_0_25])])).
% 0.20/0.38  cnf(c_0_42, plain, (k1_relset_1(X2,X3,X1)=k1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.20/0.38  fof(c_0_43, plain, ![X17, X18, X19, X20]:(~m1_subset_1(X19,k1_zfmisc_1(k2_zfmisc_1(X17,X18)))|k8_relset_1(X17,X18,X19,X20)=k10_relat_1(X19,X20)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k8_relset_1])])).
% 0.20/0.38  cnf(c_0_44, negated_conjecture, (k2_struct_0(esk1_0)=k1_xboole_0|u1_struct_0(esk2_0)!=k1_xboole_0), inference(rw,[status(thm)],[c_0_34, c_0_20])).
% 0.20/0.38  cnf(c_0_45, plain, (k1_relat_1(X1)=X2|~v1_partfun1(X1,X2)|~v1_relat_1(X1)|~v4_relat_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.20/0.38  cnf(c_0_46, negated_conjecture, (u1_struct_0(esk2_0)=k1_xboole_0|v1_partfun1(esk3_0,u1_struct_0(esk1_0))), inference(spm,[status(thm)],[c_0_36, c_0_37])).
% 0.20/0.38  cnf(c_0_47, negated_conjecture, (v4_relat_1(esk3_0,u1_struct_0(esk1_0))), inference(spm,[status(thm)],[c_0_38, c_0_25])).
% 0.20/0.38  cnf(c_0_48, negated_conjecture, (v1_relat_1(esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39, c_0_25]), c_0_40])])).
% 0.20/0.38  cnf(c_0_49, negated_conjecture, (k1_relat_1(esk3_0)!=u1_struct_0(esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41, c_0_42]), c_0_25])])).
% 0.20/0.38  cnf(c_0_50, plain, (k8_relset_1(X2,X3,X1,X4)=k10_relat_1(X1,X4)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_43])).
% 0.20/0.38  cnf(c_0_51, negated_conjecture, (u1_struct_0(esk1_0)=k1_xboole_0|u1_struct_0(esk2_0)!=k1_xboole_0), inference(spm,[status(thm)],[c_0_21, c_0_44])).
% 0.20/0.38  cnf(c_0_52, negated_conjecture, (u1_struct_0(esk2_0)=k1_xboole_0), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45, c_0_46]), c_0_47]), c_0_48])]), c_0_49])).
% 0.20/0.38  cnf(c_0_53, negated_conjecture, (k10_relat_1(esk3_0,u1_struct_0(esk2_0))!=u1_struct_0(esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_50]), c_0_25])])).
% 0.20/0.38  cnf(c_0_54, negated_conjecture, (u1_struct_0(esk1_0)=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_51, c_0_52])])).
% 0.20/0.38  fof(c_0_55, plain, ![X10]:(~v1_relat_1(X10)|k10_relat_1(X10,k1_xboole_0)=k1_xboole_0), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t171_relat_1])])).
% 0.20/0.38  cnf(c_0_56, negated_conjecture, (k10_relat_1(esk3_0,k1_xboole_0)!=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_53, c_0_52]), c_0_54])).
% 0.20/0.38  cnf(c_0_57, plain, (k10_relat_1(X1,k1_xboole_0)=k1_xboole_0|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_55])).
% 0.20/0.38  cnf(c_0_58, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_56, c_0_57]), c_0_48])]), ['proof']).
% 0.20/0.38  # SZS output end CNFRefutation
% 0.20/0.38  # Proof object total steps             : 59
% 0.20/0.38  # Proof object clause steps            : 34
% 0.20/0.38  # Proof object formula steps           : 25
% 0.20/0.38  # Proof object conjectures             : 26
% 0.20/0.38  # Proof object clause conjectures      : 23
% 0.20/0.38  # Proof object formula conjectures     : 3
% 0.20/0.38  # Proof object initial clauses used    : 18
% 0.20/0.38  # Proof object initial formulas used   : 12
% 0.20/0.38  # Proof object generating inferences   : 12
% 0.20/0.38  # Proof object simplifying inferences  : 24
% 0.20/0.38  # Training examples: 0 positive, 0 negative
% 0.20/0.38  # Parsed axioms                        : 12
% 0.20/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.20/0.38  # Initial clauses                      : 22
% 0.20/0.38  # Removed in clause preprocessing      : 1
% 0.20/0.38  # Initial clauses in saturation        : 21
% 0.20/0.38  # Processed clauses                    : 64
% 0.20/0.38  # ...of these trivial                  : 1
% 0.20/0.38  # ...subsumed                          : 0
% 0.20/0.38  # ...remaining for further processing  : 63
% 0.20/0.38  # Other redundant clauses eliminated   : 1
% 0.20/0.38  # Clauses deleted for lack of memory   : 0
% 0.20/0.38  # Backward-subsumed                    : 0
% 0.20/0.38  # Backward-rewritten                   : 16
% 0.20/0.38  # Generated clauses                    : 18
% 0.20/0.38  # ...of the previous two non-trivial   : 32
% 0.20/0.38  # Contextual simplify-reflections      : 0
% 0.20/0.38  # Paramodulations                      : 17
% 0.20/0.38  # Factorizations                       : 0
% 0.20/0.38  # Equation resolutions                 : 1
% 0.20/0.38  # Propositional unsat checks           : 0
% 0.20/0.38  #    Propositional check models        : 0
% 0.20/0.38  #    Propositional check unsatisfiable : 0
% 0.20/0.38  #    Propositional clauses             : 0
% 0.20/0.38  #    Propositional clauses after purity: 0
% 0.20/0.38  #    Propositional unsat core size     : 0
% 0.20/0.38  #    Propositional preprocessing time  : 0.000
% 0.20/0.38  #    Propositional encoding time       : 0.000
% 0.20/0.38  #    Propositional solver time         : 0.000
% 0.20/0.38  #    Success case prop preproc time    : 0.000
% 0.20/0.38  #    Success case prop encoding time   : 0.000
% 0.20/0.38  #    Success case prop solver time     : 0.000
% 0.20/0.38  # Current number of processed clauses  : 25
% 0.20/0.38  #    Positive orientable unit clauses  : 9
% 0.20/0.38  #    Positive unorientable unit clauses: 0
% 0.20/0.38  #    Negative unit clauses             : 3
% 0.20/0.38  #    Non-unit-clauses                  : 13
% 0.20/0.38  # Current number of unprocessed clauses: 10
% 0.20/0.38  # ...number of literals in the above   : 15
% 0.20/0.38  # Current number of archived formulas  : 0
% 0.20/0.38  # Current number of archived clauses   : 37
% 0.20/0.38  # Clause-clause subsumption calls (NU) : 105
% 0.20/0.38  # Rec. Clause-clause subsumption calls : 62
% 0.20/0.38  # Non-unit clause-clause subsumptions  : 0
% 0.20/0.38  # Unit Clause-clause subsumption calls : 16
% 0.20/0.38  # Rewrite failures with RHS unbound    : 0
% 0.20/0.38  # BW rewrite match attempts            : 3
% 0.20/0.38  # BW rewrite match successes           : 3
% 0.20/0.38  # Condensation attempts                : 0
% 0.20/0.38  # Condensation successes               : 0
% 0.20/0.38  # Termbank termtop insertions          : 1808
% 0.20/0.38  
% 0.20/0.38  # -------------------------------------------------
% 0.20/0.38  # User time                : 0.028 s
% 0.20/0.38  # System time              : 0.005 s
% 0.20/0.38  # Total time               : 0.034 s
% 0.20/0.38  # Maximum resident set size: 1584 pages
%------------------------------------------------------------------------------
