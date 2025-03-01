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
% DateTime   : Thu Dec  3 11:03:18 EST 2020

% Result     : Theorem 1.53s
% Output     : CNFRefutation 1.53s
% Verified   : 
% Statistics : Number of formulae       :  170 (27858 expanded)
%              Number of clauses        :  121 (11524 expanded)
%              Number of leaves         :   24 (7183 expanded)
%              Depth                    :   25
%              Number of atoms          :  392 (114482 expanded)
%              Number of equality atoms :  123 (30648 expanded)
%              Maximal formula depth    :   13 (   3 average)
%              Maximal clause size      :   12 (   2 average)
%              Maximal term depth       :    7 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(cc2_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ( v4_relat_1(X3,X1)
        & v5_relat_1(X3,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc2_relset_1)).

fof(t29_relset_1,axiom,(
    ! [X1] : m1_subset_1(k6_relat_1(X1),k1_zfmisc_1(k2_zfmisc_1(X1,X1))) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t29_relset_1)).

fof(d18_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( v4_relat_1(X2,X1)
      <=> r1_tarski(k1_relat_1(X2),X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d18_relat_1)).

fof(t71_relat_1,axiom,(
    ! [X1] :
      ( k1_relat_1(k6_relat_1(X1)) = X1
      & k2_relat_1(k6_relat_1(X1)) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_relat_1)).

fof(fc4_funct_1,axiom,(
    ! [X1] :
      ( v1_relat_1(k6_relat_1(X1))
      & v2_funct_1(k6_relat_1(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc4_funct_1)).

fof(t36_funct_2,conjecture,(
    ! [X1,X2,X3] :
      ( ( v1_funct_1(X3)
        & v1_funct_2(X3,X1,X2)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => ! [X4] :
          ( ( v1_funct_1(X4)
            & v1_funct_2(X4,X2,X1)
            & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) )
         => ( ( k2_relset_1(X1,X2,X3) = X2
              & r2_relset_1(X1,X1,k1_partfun1(X1,X2,X2,X1,X3,X4),k6_partfun1(X1))
              & v2_funct_1(X3) )
           => ( X1 = k1_xboole_0
              | X2 = k1_xboole_0
              | X4 = k2_funct_1(X3) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t36_funct_2)).

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

fof(t148_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => k2_relat_1(k7_relat_1(X2,X1)) = k9_relat_1(X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t148_relat_1)).

fof(t209_relat_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v4_relat_1(X2,X1) )
     => X2 = k7_relat_1(X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t209_relat_1)).

fof(redefinition_k2_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k2_relset_1(X1,X2,X3) = k2_relat_1(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k2_relset_1)).

fof(redefinition_k6_partfun1,axiom,(
    ! [X1] : k6_partfun1(X1) = k6_relat_1(X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k6_partfun1)).

fof(redefinition_k1_partfun1,axiom,(
    ! [X1,X2,X3,X4,X5,X6] :
      ( ( v1_funct_1(X5)
        & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
        & v1_funct_1(X6)
        & m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4))) )
     => k1_partfun1(X1,X2,X3,X4,X5,X6) = k5_relat_1(X5,X6) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k1_partfun1)).

fof(redefinition_r2_relset_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => ( r2_relset_1(X1,X2,X3,X4)
      <=> X3 = X4 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_r2_relset_1)).

fof(dt_k1_partfun1,axiom,(
    ! [X1,X2,X3,X4,X5,X6] :
      ( ( v1_funct_1(X5)
        & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
        & v1_funct_1(X6)
        & m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4))) )
     => ( v1_funct_1(k1_partfun1(X1,X2,X3,X4,X5,X6))
        & m1_subset_1(k1_partfun1(X1,X2,X3,X4,X5,X6),k1_zfmisc_1(k2_zfmisc_1(X1,X4))) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k1_partfun1)).

fof(t182_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( v1_relat_1(X2)
         => k1_relat_1(k5_relat_1(X1,X2)) = k10_relat_1(X1,k1_relat_1(X2)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t182_relat_1)).

fof(t80_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => k5_relat_1(X1,k6_relat_1(k2_relat_1(X1))) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t80_relat_1)).

fof(t55_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v2_funct_1(X1)
       => ( k2_relat_1(X1) = k1_relat_1(k2_funct_1(X1))
          & k1_relat_1(X1) = k2_relat_1(k2_funct_1(X1)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t55_funct_1)).

fof(dt_k2_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v1_relat_1(k2_funct_1(X1))
        & v1_funct_1(k2_funct_1(X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k2_funct_1)).

fof(t147_funct_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v1_funct_1(X2) )
     => ( r1_tarski(X1,k2_relat_1(X2))
       => k9_relat_1(X2,k10_relat_1(X2,X1)) = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t147_funct_1)).

fof(t3_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X2))
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_subset)).

fof(t55_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( v1_relat_1(X2)
         => ! [X3] :
              ( v1_relat_1(X3)
             => k5_relat_1(k5_relat_1(X1,X2),X3) = k5_relat_1(X1,k5_relat_1(X2,X3)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t55_relat_1)).

fof(t78_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => k5_relat_1(k6_relat_1(k1_relat_1(X1)),X1) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t78_relat_1)).

fof(t61_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v2_funct_1(X1)
       => ( k5_relat_1(X1,k2_funct_1(X1)) = k6_relat_1(k1_relat_1(X1))
          & k5_relat_1(k2_funct_1(X1),X1) = k6_relat_1(k2_relat_1(X1)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t61_funct_1)).

fof(c_0_24,plain,(
    ! [X40,X41,X42] :
      ( ( v4_relat_1(X42,X40)
        | ~ m1_subset_1(X42,k1_zfmisc_1(k2_zfmisc_1(X40,X41))) )
      & ( v5_relat_1(X42,X41)
        | ~ m1_subset_1(X42,k1_zfmisc_1(k2_zfmisc_1(X40,X41))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).

fof(c_0_25,plain,(
    ! [X50] : m1_subset_1(k6_relat_1(X50),k1_zfmisc_1(k2_zfmisc_1(X50,X50))) ),
    inference(variable_rename,[status(thm)],[t29_relset_1])).

fof(c_0_26,plain,(
    ! [X11,X12] :
      ( ( ~ v4_relat_1(X12,X11)
        | r1_tarski(k1_relat_1(X12),X11)
        | ~ v1_relat_1(X12) )
      & ( ~ r1_tarski(k1_relat_1(X12),X11)
        | v4_relat_1(X12,X11)
        | ~ v1_relat_1(X12) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d18_relat_1])])])).

cnf(c_0_27,plain,
    ( v4_relat_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_28,plain,
    ( m1_subset_1(k6_relat_1(X1),k1_zfmisc_1(k2_zfmisc_1(X1,X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

fof(c_0_29,plain,(
    ! [X26] :
      ( k1_relat_1(k6_relat_1(X26)) = X26
      & k2_relat_1(k6_relat_1(X26)) = X26 ) ),
    inference(variable_rename,[status(thm)],[t71_relat_1])).

fof(c_0_30,plain,(
    ! [X32] :
      ( v1_relat_1(k6_relat_1(X32))
      & v2_funct_1(k6_relat_1(X32)) ) ),
    inference(variable_rename,[status(thm)],[fc4_funct_1])).

fof(c_0_31,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( ( v1_funct_1(X3)
          & v1_funct_2(X3,X1,X2)
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
       => ! [X4] :
            ( ( v1_funct_1(X4)
              & v1_funct_2(X4,X2,X1)
              & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) )
           => ( ( k2_relset_1(X1,X2,X3) = X2
                & r2_relset_1(X1,X1,k1_partfun1(X1,X2,X2,X1,X3,X4),k6_partfun1(X1))
                & v2_funct_1(X3) )
             => ( X1 = k1_xboole_0
                | X2 = k1_xboole_0
                | X4 = k2_funct_1(X3) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t36_funct_2])).

cnf(c_0_32,plain,
    ( r1_tarski(k1_relat_1(X1),X2)
    | ~ v4_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_33,plain,
    ( v4_relat_1(k6_relat_1(X1),X1) ),
    inference(spm,[status(thm)],[c_0_27,c_0_28])).

cnf(c_0_34,plain,
    ( k1_relat_1(k6_relat_1(X1)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_35,plain,
    ( v1_relat_1(k6_relat_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

fof(c_0_36,plain,(
    ! [X9,X10] :
      ( ~ v1_relat_1(X9)
      | ~ m1_subset_1(X10,k1_zfmisc_1(X9))
      | v1_relat_1(X10) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relat_1])])])).

fof(c_0_37,negated_conjecture,
    ( v1_funct_1(esk3_0)
    & v1_funct_2(esk3_0,esk1_0,esk2_0)
    & m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0)))
    & v1_funct_1(esk4_0)
    & v1_funct_2(esk4_0,esk2_0,esk1_0)
    & m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk1_0)))
    & k2_relset_1(esk1_0,esk2_0,esk3_0) = esk2_0
    & r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,esk2_0,esk2_0,esk1_0,esk3_0,esk4_0),k6_partfun1(esk1_0))
    & v2_funct_1(esk3_0)
    & esk1_0 != k1_xboole_0
    & esk2_0 != k1_xboole_0
    & esk4_0 != k2_funct_1(esk3_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_31])])])).

fof(c_0_38,plain,(
    ! [X15,X16] : v1_relat_1(k2_zfmisc_1(X15,X16)) ),
    inference(variable_rename,[status(thm)],[fc6_relat_1])).

cnf(c_0_39,plain,
    ( v4_relat_1(X1,X2)
    | ~ r1_tarski(k1_relat_1(X1),X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_40,plain,
    ( r1_tarski(X1,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32,c_0_33]),c_0_34]),c_0_35])])).

cnf(c_0_41,plain,
    ( v1_relat_1(X2)
    | ~ v1_relat_1(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

cnf(c_0_42,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_43,plain,
    ( v1_relat_1(k2_zfmisc_1(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_38])).

fof(c_0_44,plain,(
    ! [X17,X18] :
      ( ~ v1_relat_1(X18)
      | k2_relat_1(k7_relat_1(X18,X17)) = k9_relat_1(X18,X17) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t148_relat_1])])).

fof(c_0_45,plain,(
    ! [X21,X22] :
      ( ~ v1_relat_1(X22)
      | ~ v4_relat_1(X22,X21)
      | X22 = k7_relat_1(X22,X21) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t209_relat_1])])).

cnf(c_0_46,plain,
    ( v4_relat_1(X1,k1_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_39,c_0_40])).

cnf(c_0_47,negated_conjecture,
    ( v1_relat_1(esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41,c_0_42]),c_0_43])])).

cnf(c_0_48,plain,
    ( k2_relat_1(k7_relat_1(X1,X2)) = k9_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_44])).

cnf(c_0_49,plain,
    ( X1 = k7_relat_1(X1,X2)
    | ~ v1_relat_1(X1)
    | ~ v4_relat_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_45])).

cnf(c_0_50,negated_conjecture,
    ( v4_relat_1(esk3_0,k1_relat_1(esk3_0)) ),
    inference(spm,[status(thm)],[c_0_46,c_0_47])).

fof(c_0_51,plain,(
    ! [X43,X44,X45] :
      ( ~ m1_subset_1(X45,k1_zfmisc_1(k2_zfmisc_1(X43,X44)))
      | k2_relset_1(X43,X44,X45) = k2_relat_1(X45) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_relset_1])])).

cnf(c_0_52,negated_conjecture,
    ( k2_relat_1(k7_relat_1(esk3_0,X1)) = k9_relat_1(esk3_0,X1) ),
    inference(spm,[status(thm)],[c_0_48,c_0_47])).

cnf(c_0_53,negated_conjecture,
    ( k7_relat_1(esk3_0,k1_relat_1(esk3_0)) = esk3_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49,c_0_50]),c_0_47])])).

cnf(c_0_54,plain,
    ( k2_relset_1(X2,X3,X1) = k2_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_51])).

cnf(c_0_55,negated_conjecture,
    ( k2_relset_1(esk1_0,esk2_0,esk3_0) = esk2_0 ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_56,negated_conjecture,
    ( k2_relat_1(esk3_0) = k9_relat_1(esk3_0,k1_relat_1(esk3_0)) ),
    inference(spm,[status(thm)],[c_0_52,c_0_53])).

fof(c_0_57,plain,(
    ! [X63] : k6_partfun1(X63) = k6_relat_1(X63) ),
    inference(variable_rename,[status(thm)],[redefinition_k6_partfun1])).

fof(c_0_58,plain,(
    ! [X57,X58,X59,X60,X61,X62] :
      ( ~ v1_funct_1(X61)
      | ~ m1_subset_1(X61,k1_zfmisc_1(k2_zfmisc_1(X57,X58)))
      | ~ v1_funct_1(X62)
      | ~ m1_subset_1(X62,k1_zfmisc_1(k2_zfmisc_1(X59,X60)))
      | k1_partfun1(X57,X58,X59,X60,X61,X62) = k5_relat_1(X61,X62) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_partfun1])])).

cnf(c_0_59,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_60,negated_conjecture,
    ( esk2_0 = k9_relat_1(esk3_0,k1_relat_1(esk3_0)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_54,c_0_42]),c_0_55]),c_0_56])).

cnf(c_0_61,negated_conjecture,
    ( r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,esk2_0,esk2_0,esk1_0,esk3_0,esk4_0),k6_partfun1(esk1_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_62,plain,
    ( k6_partfun1(X1) = k6_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_57])).

cnf(c_0_63,plain,
    ( k1_partfun1(X2,X3,X5,X6,X1,X4) = k5_relat_1(X1,X4)
    | ~ v1_funct_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ v1_funct_1(X4)
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X5,X6))) ),
    inference(split_conjunct,[status(thm)],[c_0_58])).

cnf(c_0_64,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(k9_relat_1(esk3_0,k1_relat_1(esk3_0)),esk1_0))) ),
    inference(rw,[status(thm)],[c_0_59,c_0_60])).

cnf(c_0_65,negated_conjecture,
    ( v1_funct_1(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_66,negated_conjecture,
    ( v1_relat_1(esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41,c_0_59]),c_0_43])])).

fof(c_0_67,plain,(
    ! [X46,X47,X48,X49] :
      ( ( ~ r2_relset_1(X46,X47,X48,X49)
        | X48 = X49
        | ~ m1_subset_1(X48,k1_zfmisc_1(k2_zfmisc_1(X46,X47)))
        | ~ m1_subset_1(X49,k1_zfmisc_1(k2_zfmisc_1(X46,X47))) )
      & ( X48 != X49
        | r2_relset_1(X46,X47,X48,X49)
        | ~ m1_subset_1(X48,k1_zfmisc_1(k2_zfmisc_1(X46,X47)))
        | ~ m1_subset_1(X49,k1_zfmisc_1(k2_zfmisc_1(X46,X47))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_r2_relset_1])])])).

cnf(c_0_68,negated_conjecture,
    ( r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,esk2_0,esk2_0,esk1_0,esk3_0,esk4_0),k6_relat_1(esk1_0)) ),
    inference(rw,[status(thm)],[c_0_61,c_0_62])).

cnf(c_0_69,negated_conjecture,
    ( k1_partfun1(X1,X2,k9_relat_1(esk3_0,k1_relat_1(esk3_0)),esk1_0,X3,esk4_0) = k5_relat_1(X3,esk4_0)
    | ~ v1_funct_1(X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_63,c_0_64]),c_0_65])])).

cnf(c_0_70,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,k9_relat_1(esk3_0,k1_relat_1(esk3_0))))) ),
    inference(rw,[status(thm)],[c_0_42,c_0_60])).

cnf(c_0_71,negated_conjecture,
    ( v1_funct_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

fof(c_0_72,plain,(
    ! [X51,X52,X53,X54,X55,X56] :
      ( ( v1_funct_1(k1_partfun1(X51,X52,X53,X54,X55,X56))
        | ~ v1_funct_1(X55)
        | ~ m1_subset_1(X55,k1_zfmisc_1(k2_zfmisc_1(X51,X52)))
        | ~ v1_funct_1(X56)
        | ~ m1_subset_1(X56,k1_zfmisc_1(k2_zfmisc_1(X53,X54))) )
      & ( m1_subset_1(k1_partfun1(X51,X52,X53,X54,X55,X56),k1_zfmisc_1(k2_zfmisc_1(X51,X54)))
        | ~ v1_funct_1(X55)
        | ~ m1_subset_1(X55,k1_zfmisc_1(k2_zfmisc_1(X51,X52)))
        | ~ v1_funct_1(X56)
        | ~ m1_subset_1(X56,k1_zfmisc_1(k2_zfmisc_1(X53,X54))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k1_partfun1])])])).

fof(c_0_73,plain,(
    ! [X19,X20] :
      ( ~ v1_relat_1(X19)
      | ~ v1_relat_1(X20)
      | k1_relat_1(k5_relat_1(X19,X20)) = k10_relat_1(X19,k1_relat_1(X20)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t182_relat_1])])])).

fof(c_0_74,plain,(
    ! [X28] :
      ( ~ v1_relat_1(X28)
      | k5_relat_1(X28,k6_relat_1(k2_relat_1(X28))) = X28 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t80_relat_1])])).

cnf(c_0_75,negated_conjecture,
    ( v4_relat_1(esk4_0,k1_relat_1(esk4_0)) ),
    inference(spm,[status(thm)],[c_0_46,c_0_66])).

cnf(c_0_76,negated_conjecture,
    ( v4_relat_1(esk4_0,esk2_0) ),
    inference(spm,[status(thm)],[c_0_27,c_0_59])).

cnf(c_0_77,plain,
    ( X3 = X4
    | ~ r2_relset_1(X1,X2,X3,X4)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_67])).

cnf(c_0_78,negated_conjecture,
    ( r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,k9_relat_1(esk3_0,k1_relat_1(esk3_0)),k9_relat_1(esk3_0,k1_relat_1(esk3_0)),esk1_0,esk3_0,esk4_0),k6_relat_1(esk1_0)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_68,c_0_60]),c_0_60])).

cnf(c_0_79,negated_conjecture,
    ( k1_partfun1(esk1_0,k9_relat_1(esk3_0,k1_relat_1(esk3_0)),k9_relat_1(esk3_0,k1_relat_1(esk3_0)),esk1_0,esk3_0,esk4_0) = k5_relat_1(esk3_0,esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_69,c_0_70]),c_0_71])])).

cnf(c_0_80,plain,
    ( m1_subset_1(k1_partfun1(X1,X2,X3,X4,X5,X6),k1_zfmisc_1(k2_zfmisc_1(X1,X4)))
    | ~ v1_funct_1(X5)
    | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X6)
    | ~ m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4))) ),
    inference(split_conjunct,[status(thm)],[c_0_72])).

cnf(c_0_81,plain,
    ( k1_relat_1(k5_relat_1(X1,X2)) = k10_relat_1(X1,k1_relat_1(X2))
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_73])).

cnf(c_0_82,plain,
    ( k5_relat_1(X1,k6_relat_1(k2_relat_1(X1))) = X1
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_74])).

cnf(c_0_83,negated_conjecture,
    ( k2_relat_1(k7_relat_1(esk4_0,X1)) = k9_relat_1(esk4_0,X1) ),
    inference(spm,[status(thm)],[c_0_48,c_0_66])).

cnf(c_0_84,negated_conjecture,
    ( k7_relat_1(esk4_0,k1_relat_1(esk4_0)) = esk4_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49,c_0_75]),c_0_66])])).

cnf(c_0_85,negated_conjecture,
    ( k7_relat_1(esk4_0,esk2_0) = esk4_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49,c_0_76]),c_0_66])])).

cnf(c_0_86,plain,
    ( X1 = k6_relat_1(X2)
    | ~ r2_relset_1(X2,X2,X1,k6_relat_1(X2))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X2))) ),
    inference(spm,[status(thm)],[c_0_77,c_0_28])).

cnf(c_0_87,negated_conjecture,
    ( r2_relset_1(esk1_0,esk1_0,k5_relat_1(esk3_0,esk4_0),k6_relat_1(esk1_0)) ),
    inference(rw,[status(thm)],[c_0_78,c_0_79])).

cnf(c_0_88,negated_conjecture,
    ( m1_subset_1(k1_partfun1(X1,X2,k9_relat_1(esk3_0,k1_relat_1(esk3_0)),esk1_0,X3,esk4_0),k1_zfmisc_1(k2_zfmisc_1(X1,esk1_0)))
    | ~ v1_funct_1(X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_80,c_0_64]),c_0_65])])).

cnf(c_0_89,negated_conjecture,
    ( k1_relat_1(k5_relat_1(esk4_0,X1)) = k10_relat_1(esk4_0,k1_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_81,c_0_66])).

cnf(c_0_90,negated_conjecture,
    ( k5_relat_1(esk4_0,k6_relat_1(k2_relat_1(esk4_0))) = esk4_0 ),
    inference(spm,[status(thm)],[c_0_82,c_0_66])).

cnf(c_0_91,negated_conjecture,
    ( k2_relat_1(esk4_0) = k9_relat_1(esk4_0,k1_relat_1(esk4_0)) ),
    inference(spm,[status(thm)],[c_0_83,c_0_84])).

cnf(c_0_92,negated_conjecture,
    ( k9_relat_1(esk4_0,esk2_0) = k2_relat_1(esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48,c_0_85]),c_0_66])])).

fof(c_0_93,plain,(
    ! [X37] :
      ( ( k2_relat_1(X37) = k1_relat_1(k2_funct_1(X37))
        | ~ v2_funct_1(X37)
        | ~ v1_relat_1(X37)
        | ~ v1_funct_1(X37) )
      & ( k1_relat_1(X37) = k2_relat_1(k2_funct_1(X37))
        | ~ v2_funct_1(X37)
        | ~ v1_relat_1(X37)
        | ~ v1_funct_1(X37) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t55_funct_1])])])).

cnf(c_0_94,negated_conjecture,
    ( v4_relat_1(esk3_0,esk1_0) ),
    inference(spm,[status(thm)],[c_0_27,c_0_42])).

cnf(c_0_95,negated_conjecture,
    ( k6_relat_1(esk1_0) = k5_relat_1(esk3_0,esk4_0)
    | ~ m1_subset_1(k5_relat_1(esk3_0,esk4_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0))) ),
    inference(spm,[status(thm)],[c_0_86,c_0_87])).

cnf(c_0_96,negated_conjecture,
    ( m1_subset_1(k5_relat_1(esk3_0,esk4_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_88,c_0_70]),c_0_79]),c_0_71])])).

cnf(c_0_97,negated_conjecture,
    ( k1_relat_1(k5_relat_1(esk4_0,k6_relat_1(X1))) = k10_relat_1(esk4_0,X1) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_89,c_0_35]),c_0_34])).

cnf(c_0_98,negated_conjecture,
    ( k5_relat_1(esk4_0,k6_relat_1(k9_relat_1(esk4_0,k1_relat_1(esk4_0)))) = esk4_0 ),
    inference(rw,[status(thm)],[c_0_90,c_0_91])).

cnf(c_0_99,negated_conjecture,
    ( k9_relat_1(esk4_0,esk2_0) = k9_relat_1(esk4_0,k1_relat_1(esk4_0)) ),
    inference(rw,[status(thm)],[c_0_92,c_0_91])).

cnf(c_0_100,plain,
    ( k2_relat_1(X1) = k1_relat_1(k2_funct_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_93])).

fof(c_0_101,plain,(
    ! [X31] :
      ( ( v1_relat_1(k2_funct_1(X31))
        | ~ v1_relat_1(X31)
        | ~ v1_funct_1(X31) )
      & ( v1_funct_1(k2_funct_1(X31))
        | ~ v1_relat_1(X31)
        | ~ v1_funct_1(X31) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_funct_1])])])).

cnf(c_0_102,negated_conjecture,
    ( k7_relat_1(esk3_0,esk1_0) = esk3_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49,c_0_94]),c_0_47])])).

cnf(c_0_103,plain,
    ( k2_relat_1(k6_relat_1(X1)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_104,negated_conjecture,
    ( k6_relat_1(esk1_0) = k5_relat_1(esk3_0,esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_95,c_0_96])])).

cnf(c_0_105,negated_conjecture,
    ( k1_relat_1(k5_relat_1(esk3_0,X1)) = k10_relat_1(esk3_0,k1_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_81,c_0_47])).

cnf(c_0_106,negated_conjecture,
    ( k10_relat_1(esk4_0,k9_relat_1(esk4_0,k1_relat_1(esk4_0))) = k1_relat_1(esk4_0) ),
    inference(spm,[status(thm)],[c_0_97,c_0_98])).

cnf(c_0_107,negated_conjecture,
    ( k9_relat_1(esk4_0,k1_relat_1(esk4_0)) = k9_relat_1(esk4_0,k9_relat_1(esk3_0,k1_relat_1(esk3_0))) ),
    inference(rw,[status(thm)],[c_0_99,c_0_60])).

fof(c_0_108,plain,(
    ! [X33,X34] :
      ( ~ v1_relat_1(X34)
      | ~ v1_funct_1(X34)
      | ~ r1_tarski(X33,k2_relat_1(X34))
      | k9_relat_1(X34,k10_relat_1(X34,X33)) = X33 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t147_funct_1])])).

cnf(c_0_109,negated_conjecture,
    ( r1_tarski(k1_relat_1(esk4_0),esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32,c_0_76]),c_0_66])])).

cnf(c_0_110,plain,
    ( v4_relat_1(k2_funct_1(X1),X2)
    | ~ v2_funct_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(k2_funct_1(X1))
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(k2_relat_1(X1),X2) ),
    inference(spm,[status(thm)],[c_0_39,c_0_100])).

cnf(c_0_111,plain,
    ( v1_relat_1(k2_funct_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_101])).

fof(c_0_112,plain,(
    ! [X7,X8] :
      ( ( ~ m1_subset_1(X7,k1_zfmisc_1(X8))
        | r1_tarski(X7,X8) )
      & ( ~ r1_tarski(X7,X8)
        | m1_subset_1(X7,k1_zfmisc_1(X8)) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).

cnf(c_0_113,negated_conjecture,
    ( k9_relat_1(esk3_0,esk1_0) = k2_relat_1(esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48,c_0_102]),c_0_47])])).

cnf(c_0_114,negated_conjecture,
    ( esk1_0 = k2_relat_1(k5_relat_1(esk3_0,esk4_0)) ),
    inference(spm,[status(thm)],[c_0_103,c_0_104])).

cnf(c_0_115,negated_conjecture,
    ( k1_relat_1(k5_relat_1(esk3_0,esk4_0)) = k10_relat_1(esk3_0,k1_relat_1(esk4_0)) ),
    inference(spm,[status(thm)],[c_0_105,c_0_66])).

cnf(c_0_116,negated_conjecture,
    ( k1_relat_1(esk4_0) = k10_relat_1(esk4_0,k9_relat_1(esk4_0,k9_relat_1(esk3_0,k1_relat_1(esk3_0)))) ),
    inference(rw,[status(thm)],[c_0_106,c_0_107])).

cnf(c_0_117,plain,
    ( k9_relat_1(X1,k10_relat_1(X1,X2)) = X2
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ r1_tarski(X2,k2_relat_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_108])).

cnf(c_0_118,negated_conjecture,
    ( r1_tarski(k1_relat_1(esk4_0),k9_relat_1(esk3_0,k1_relat_1(esk3_0))) ),
    inference(rw,[status(thm)],[c_0_109,c_0_60])).

cnf(c_0_119,plain,
    ( v4_relat_1(k2_funct_1(X1),X2)
    | ~ v2_funct_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(k2_relat_1(X1),X2) ),
    inference(spm,[status(thm)],[c_0_110,c_0_111])).

cnf(c_0_120,negated_conjecture,
    ( v2_funct_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_121,plain,
    ( r1_tarski(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_112])).

cnf(c_0_122,negated_conjecture,
    ( k9_relat_1(esk3_0,esk1_0) = k9_relat_1(esk3_0,k1_relat_1(esk3_0)) ),
    inference(rw,[status(thm)],[c_0_113,c_0_56])).

cnf(c_0_123,negated_conjecture,
    ( k6_relat_1(k2_relat_1(k5_relat_1(esk3_0,esk4_0))) = k5_relat_1(esk3_0,esk4_0) ),
    inference(rw,[status(thm)],[c_0_104,c_0_114])).

cnf(c_0_124,negated_conjecture,
    ( k1_relat_1(k5_relat_1(esk3_0,esk4_0)) = k10_relat_1(esk3_0,k10_relat_1(esk4_0,k9_relat_1(esk4_0,k9_relat_1(esk3_0,k1_relat_1(esk3_0))))) ),
    inference(rw,[status(thm)],[c_0_115,c_0_116])).

cnf(c_0_125,negated_conjecture,
    ( k9_relat_1(esk3_0,k10_relat_1(esk3_0,X1)) = X1
    | ~ r1_tarski(X1,k9_relat_1(esk3_0,k1_relat_1(esk3_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_117,c_0_56]),c_0_71]),c_0_47])])).

cnf(c_0_126,negated_conjecture,
    ( r1_tarski(k10_relat_1(esk4_0,k9_relat_1(esk4_0,k9_relat_1(esk3_0,k1_relat_1(esk3_0)))),k9_relat_1(esk3_0,k1_relat_1(esk3_0))) ),
    inference(rw,[status(thm)],[c_0_118,c_0_116])).

cnf(c_0_127,negated_conjecture,
    ( k5_relat_1(esk3_0,k6_relat_1(k2_relat_1(esk3_0))) = esk3_0 ),
    inference(spm,[status(thm)],[c_0_82,c_0_47])).

cnf(c_0_128,negated_conjecture,
    ( v4_relat_1(k2_funct_1(esk3_0),X1)
    | ~ r1_tarski(k9_relat_1(esk3_0,k1_relat_1(esk3_0)),X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_119,c_0_56]),c_0_120]),c_0_71]),c_0_47])])).

fof(c_0_129,plain,(
    ! [X23,X24,X25] :
      ( ~ v1_relat_1(X23)
      | ~ v1_relat_1(X24)
      | ~ v1_relat_1(X25)
      | k5_relat_1(k5_relat_1(X23,X24),X25) = k5_relat_1(X23,k5_relat_1(X24,X25)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t55_relat_1])])])).

cnf(c_0_130,negated_conjecture,
    ( r1_tarski(esk4_0,k2_zfmisc_1(esk2_0,esk1_0)) ),
    inference(spm,[status(thm)],[c_0_121,c_0_59])).

cnf(c_0_131,negated_conjecture,
    ( k9_relat_1(esk3_0,k2_relat_1(k5_relat_1(esk3_0,esk4_0))) = k9_relat_1(esk3_0,k1_relat_1(esk3_0)) ),
    inference(rw,[status(thm)],[c_0_122,c_0_114])).

cnf(c_0_132,negated_conjecture,
    ( k2_relat_1(k5_relat_1(esk3_0,esk4_0)) = k10_relat_1(esk3_0,k10_relat_1(esk4_0,k9_relat_1(esk4_0,k9_relat_1(esk3_0,k1_relat_1(esk3_0))))) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34,c_0_123]),c_0_124])).

cnf(c_0_133,negated_conjecture,
    ( k9_relat_1(esk3_0,k10_relat_1(esk3_0,k10_relat_1(esk4_0,k9_relat_1(esk4_0,k9_relat_1(esk3_0,k1_relat_1(esk3_0)))))) = k10_relat_1(esk4_0,k9_relat_1(esk4_0,k9_relat_1(esk3_0,k1_relat_1(esk3_0)))) ),
    inference(spm,[status(thm)],[c_0_125,c_0_126])).

cnf(c_0_134,negated_conjecture,
    ( k1_relat_1(k5_relat_1(esk3_0,k6_relat_1(X1))) = k10_relat_1(esk3_0,X1) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_105,c_0_35]),c_0_34])).

cnf(c_0_135,negated_conjecture,
    ( k5_relat_1(esk3_0,k6_relat_1(k9_relat_1(esk3_0,k1_relat_1(esk3_0)))) = esk3_0 ),
    inference(rw,[status(thm)],[c_0_127,c_0_56])).

cnf(c_0_136,negated_conjecture,
    ( v4_relat_1(k2_funct_1(esk3_0),k9_relat_1(esk3_0,k1_relat_1(esk3_0))) ),
    inference(spm,[status(thm)],[c_0_128,c_0_40])).

cnf(c_0_137,plain,
    ( k5_relat_1(k5_relat_1(X1,X2),X3) = k5_relat_1(X1,k5_relat_1(X2,X3))
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_129])).

fof(c_0_138,plain,(
    ! [X27] :
      ( ~ v1_relat_1(X27)
      | k5_relat_1(k6_relat_1(k1_relat_1(X27)),X27) = X27 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t78_relat_1])])).

cnf(c_0_139,negated_conjecture,
    ( r1_tarski(esk4_0,k2_zfmisc_1(k9_relat_1(esk3_0,k1_relat_1(esk3_0)),esk1_0)) ),
    inference(rw,[status(thm)],[c_0_130,c_0_60])).

cnf(c_0_140,negated_conjecture,
    ( k10_relat_1(esk4_0,k9_relat_1(esk4_0,k9_relat_1(esk3_0,k1_relat_1(esk3_0)))) = k9_relat_1(esk3_0,k1_relat_1(esk3_0)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_131,c_0_132]),c_0_133])).

cnf(c_0_141,negated_conjecture,
    ( k10_relat_1(esk3_0,k9_relat_1(esk3_0,k1_relat_1(esk3_0))) = k1_relat_1(esk3_0) ),
    inference(spm,[status(thm)],[c_0_134,c_0_135])).

cnf(c_0_142,negated_conjecture,
    ( k7_relat_1(k2_funct_1(esk3_0),k9_relat_1(esk3_0,k1_relat_1(esk3_0))) = k2_funct_1(esk3_0)
    | ~ v1_relat_1(k2_funct_1(esk3_0)) ),
    inference(spm,[status(thm)],[c_0_49,c_0_136])).

cnf(c_0_143,negated_conjecture,
    ( k5_relat_1(k5_relat_1(X1,esk3_0),X2) = k5_relat_1(X1,k5_relat_1(esk3_0,X2))
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_137,c_0_47])).

fof(c_0_144,plain,(
    ! [X38] :
      ( ( k5_relat_1(X38,k2_funct_1(X38)) = k6_relat_1(k1_relat_1(X38))
        | ~ v2_funct_1(X38)
        | ~ v1_relat_1(X38)
        | ~ v1_funct_1(X38) )
      & ( k5_relat_1(k2_funct_1(X38),X38) = k6_relat_1(k2_relat_1(X38))
        | ~ v2_funct_1(X38)
        | ~ v1_relat_1(X38)
        | ~ v1_funct_1(X38) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t61_funct_1])])])).

cnf(c_0_145,plain,
    ( k5_relat_1(k6_relat_1(k1_relat_1(X1)),X1) = X1
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_138])).

cnf(c_0_146,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_112])).

cnf(c_0_147,negated_conjecture,
    ( r1_tarski(esk4_0,k2_zfmisc_1(k9_relat_1(esk3_0,k1_relat_1(esk3_0)),k1_relat_1(esk3_0))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_139,c_0_114]),c_0_132]),c_0_140]),c_0_141])).

cnf(c_0_148,plain,
    ( k2_relat_1(k7_relat_1(k2_funct_1(X1),X2)) = k9_relat_1(k2_funct_1(X1),X2)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_48,c_0_111])).

cnf(c_0_149,negated_conjecture,
    ( k7_relat_1(k2_funct_1(esk3_0),k9_relat_1(esk3_0,k1_relat_1(esk3_0))) = k2_funct_1(esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_142,c_0_111]),c_0_71]),c_0_47])])).

cnf(c_0_150,negated_conjecture,
    ( k5_relat_1(k5_relat_1(X1,esk3_0),esk4_0) = k5_relat_1(X1,k5_relat_1(esk3_0,esk4_0))
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_143,c_0_66])).

cnf(c_0_151,plain,
    ( k5_relat_1(k2_funct_1(X1),X1) = k6_relat_1(k2_relat_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_144])).

cnf(c_0_152,negated_conjecture,
    ( k5_relat_1(k6_relat_1(k1_relat_1(esk4_0)),esk4_0) = esk4_0 ),
    inference(spm,[status(thm)],[c_0_145,c_0_66])).

cnf(c_0_153,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(k9_relat_1(esk3_0,k1_relat_1(esk3_0)),k1_relat_1(esk3_0)))) ),
    inference(spm,[status(thm)],[c_0_146,c_0_147])).

cnf(c_0_154,plain,
    ( k1_relat_1(X1) = k2_relat_1(k2_funct_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_93])).

cnf(c_0_155,negated_conjecture,
    ( k2_relat_1(k2_funct_1(esk3_0)) = k9_relat_1(k2_funct_1(esk3_0),k9_relat_1(esk3_0,k1_relat_1(esk3_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_148,c_0_149]),c_0_71]),c_0_47])])).

cnf(c_0_156,negated_conjecture,
    ( k5_relat_1(k2_funct_1(esk3_0),k5_relat_1(esk3_0,esk4_0)) = k5_relat_1(k6_relat_1(k9_relat_1(esk3_0,k1_relat_1(esk3_0))),esk4_0)
    | ~ v1_relat_1(k2_funct_1(esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_150,c_0_151]),c_0_56]),c_0_120]),c_0_71]),c_0_47])])).

cnf(c_0_157,negated_conjecture,
    ( k5_relat_1(k6_relat_1(k10_relat_1(esk4_0,k9_relat_1(esk4_0,k9_relat_1(esk3_0,k1_relat_1(esk3_0))))),esk4_0) = esk4_0 ),
    inference(rw,[status(thm)],[c_0_152,c_0_116])).

cnf(c_0_158,negated_conjecture,
    ( k9_relat_1(esk4_0,k9_relat_1(esk3_0,k1_relat_1(esk3_0))) = k2_relset_1(k9_relat_1(esk3_0,k1_relat_1(esk3_0)),k1_relat_1(esk3_0),esk4_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_54,c_0_153]),c_0_91]),c_0_116]),c_0_140])).

cnf(c_0_159,negated_conjecture,
    ( k9_relat_1(k2_funct_1(esk3_0),k9_relat_1(esk3_0,k1_relat_1(esk3_0))) = k1_relat_1(esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_154,c_0_155]),c_0_120]),c_0_71]),c_0_47])])).

cnf(c_0_160,negated_conjecture,
    ( k5_relat_1(k2_funct_1(esk3_0),k5_relat_1(esk3_0,esk4_0)) = k5_relat_1(k6_relat_1(k9_relat_1(esk3_0,k1_relat_1(esk3_0))),esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_156,c_0_111]),c_0_71]),c_0_47])])).

cnf(c_0_161,negated_conjecture,
    ( k5_relat_1(k6_relat_1(k9_relat_1(esk3_0,k1_relat_1(esk3_0))),esk4_0) = esk4_0 ),
    inference(rw,[status(thm)],[c_0_157,c_0_140])).

cnf(c_0_162,negated_conjecture,
    ( k10_relat_1(esk4_0,k2_relset_1(k9_relat_1(esk3_0,k1_relat_1(esk3_0)),k1_relat_1(esk3_0),esk4_0)) = k9_relat_1(esk3_0,k1_relat_1(esk3_0)) ),
    inference(rw,[status(thm)],[c_0_140,c_0_158])).

cnf(c_0_163,plain,
    ( k5_relat_1(k2_funct_1(X1),k6_relat_1(k2_relat_1(k2_funct_1(X1)))) = k2_funct_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_82,c_0_111])).

cnf(c_0_164,negated_conjecture,
    ( k2_relat_1(k2_funct_1(esk3_0)) = k1_relat_1(esk3_0) ),
    inference(rw,[status(thm)],[c_0_155,c_0_159])).

cnf(c_0_165,negated_conjecture,
    ( k5_relat_1(k2_funct_1(esk3_0),k5_relat_1(esk3_0,esk4_0)) = esk4_0 ),
    inference(rw,[status(thm)],[c_0_160,c_0_161])).

cnf(c_0_166,negated_conjecture,
    ( k5_relat_1(esk3_0,esk4_0) = k6_relat_1(k1_relat_1(esk3_0)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_123,c_0_132]),c_0_158]),c_0_162]),c_0_141])).

cnf(c_0_167,negated_conjecture,
    ( k5_relat_1(k2_funct_1(esk3_0),k6_relat_1(k1_relat_1(esk3_0))) = k2_funct_1(esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_163,c_0_164]),c_0_71]),c_0_47])])).

cnf(c_0_168,negated_conjecture,
    ( esk4_0 != k2_funct_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_169,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_165,c_0_166]),c_0_167]),c_0_168]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.33  % Computer   : n017.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % WCLimit    : 600
% 0.13/0.33  % DateTime   : Tue Dec  1 18:26:01 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 1.53/1.70  # AutoSched0-Mode selected heuristic H_____042_B03_F1_AE_Q4_SP_S2S
% 1.53/1.70  # and selection function SelectNewComplexAHP.
% 1.53/1.70  #
% 1.53/1.70  # Preprocessing time       : 0.029 s
% 1.53/1.70  
% 1.53/1.70  # Proof found!
% 1.53/1.70  # SZS status Theorem
% 1.53/1.70  # SZS output start CNFRefutation
% 1.53/1.70  fof(cc2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(v4_relat_1(X3,X1)&v5_relat_1(X3,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc2_relset_1)).
% 1.53/1.70  fof(t29_relset_1, axiom, ![X1]:m1_subset_1(k6_relat_1(X1),k1_zfmisc_1(k2_zfmisc_1(X1,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t29_relset_1)).
% 1.53/1.70  fof(d18_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(v4_relat_1(X2,X1)<=>r1_tarski(k1_relat_1(X2),X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d18_relat_1)).
% 1.53/1.70  fof(t71_relat_1, axiom, ![X1]:(k1_relat_1(k6_relat_1(X1))=X1&k2_relat_1(k6_relat_1(X1))=X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t71_relat_1)).
% 1.53/1.70  fof(fc4_funct_1, axiom, ![X1]:(v1_relat_1(k6_relat_1(X1))&v2_funct_1(k6_relat_1(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc4_funct_1)).
% 1.53/1.70  fof(t36_funct_2, conjecture, ![X1, X2, X3]:(((v1_funct_1(X3)&v1_funct_2(X3,X1,X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>![X4]:(((v1_funct_1(X4)&v1_funct_2(X4,X2,X1))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X1))))=>(((k2_relset_1(X1,X2,X3)=X2&r2_relset_1(X1,X1,k1_partfun1(X1,X2,X2,X1,X3,X4),k6_partfun1(X1)))&v2_funct_1(X3))=>(X1=k1_xboole_0|X2=k1_xboole_0|X4=k2_funct_1(X3))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t36_funct_2)).
% 1.53/1.70  fof(cc2_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>v1_relat_1(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc2_relat_1)).
% 1.53/1.70  fof(fc6_relat_1, axiom, ![X1, X2]:v1_relat_1(k2_zfmisc_1(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc6_relat_1)).
% 1.53/1.70  fof(t148_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>k2_relat_1(k7_relat_1(X2,X1))=k9_relat_1(X2,X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t148_relat_1)).
% 1.53/1.70  fof(t209_relat_1, axiom, ![X1, X2]:((v1_relat_1(X2)&v4_relat_1(X2,X1))=>X2=k7_relat_1(X2,X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t209_relat_1)).
% 1.53/1.70  fof(redefinition_k2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k2_relset_1(X1,X2,X3)=k2_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k2_relset_1)).
% 1.53/1.70  fof(redefinition_k6_partfun1, axiom, ![X1]:k6_partfun1(X1)=k6_relat_1(X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k6_partfun1)).
% 1.53/1.70  fof(redefinition_k1_partfun1, axiom, ![X1, X2, X3, X4, X5, X6]:((((v1_funct_1(X5)&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))&v1_funct_1(X6))&m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4))))=>k1_partfun1(X1,X2,X3,X4,X5,X6)=k5_relat_1(X5,X6)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k1_partfun1)).
% 1.53/1.70  fof(redefinition_r2_relset_1, axiom, ![X1, X2, X3, X4]:((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>(r2_relset_1(X1,X2,X3,X4)<=>X3=X4)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_r2_relset_1)).
% 1.53/1.70  fof(dt_k1_partfun1, axiom, ![X1, X2, X3, X4, X5, X6]:((((v1_funct_1(X5)&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))&v1_funct_1(X6))&m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4))))=>(v1_funct_1(k1_partfun1(X1,X2,X3,X4,X5,X6))&m1_subset_1(k1_partfun1(X1,X2,X3,X4,X5,X6),k1_zfmisc_1(k2_zfmisc_1(X1,X4))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k1_partfun1)).
% 1.53/1.70  fof(t182_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>![X2]:(v1_relat_1(X2)=>k1_relat_1(k5_relat_1(X1,X2))=k10_relat_1(X1,k1_relat_1(X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t182_relat_1)).
% 1.53/1.70  fof(t80_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>k5_relat_1(X1,k6_relat_1(k2_relat_1(X1)))=X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t80_relat_1)).
% 1.53/1.70  fof(t55_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v2_funct_1(X1)=>(k2_relat_1(X1)=k1_relat_1(k2_funct_1(X1))&k1_relat_1(X1)=k2_relat_1(k2_funct_1(X1))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t55_funct_1)).
% 1.53/1.70  fof(dt_k2_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v1_relat_1(k2_funct_1(X1))&v1_funct_1(k2_funct_1(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k2_funct_1)).
% 1.53/1.70  fof(t147_funct_1, axiom, ![X1, X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(r1_tarski(X1,k2_relat_1(X2))=>k9_relat_1(X2,k10_relat_1(X2,X1))=X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t147_funct_1)).
% 1.53/1.70  fof(t3_subset, axiom, ![X1, X2]:(m1_subset_1(X1,k1_zfmisc_1(X2))<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t3_subset)).
% 1.53/1.70  fof(t55_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>![X2]:(v1_relat_1(X2)=>![X3]:(v1_relat_1(X3)=>k5_relat_1(k5_relat_1(X1,X2),X3)=k5_relat_1(X1,k5_relat_1(X2,X3))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t55_relat_1)).
% 1.53/1.70  fof(t78_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>k5_relat_1(k6_relat_1(k1_relat_1(X1)),X1)=X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t78_relat_1)).
% 1.53/1.70  fof(t61_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v2_funct_1(X1)=>(k5_relat_1(X1,k2_funct_1(X1))=k6_relat_1(k1_relat_1(X1))&k5_relat_1(k2_funct_1(X1),X1)=k6_relat_1(k2_relat_1(X1))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t61_funct_1)).
% 1.53/1.70  fof(c_0_24, plain, ![X40, X41, X42]:((v4_relat_1(X42,X40)|~m1_subset_1(X42,k1_zfmisc_1(k2_zfmisc_1(X40,X41))))&(v5_relat_1(X42,X41)|~m1_subset_1(X42,k1_zfmisc_1(k2_zfmisc_1(X40,X41))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).
% 1.53/1.70  fof(c_0_25, plain, ![X50]:m1_subset_1(k6_relat_1(X50),k1_zfmisc_1(k2_zfmisc_1(X50,X50))), inference(variable_rename,[status(thm)],[t29_relset_1])).
% 1.53/1.70  fof(c_0_26, plain, ![X11, X12]:((~v4_relat_1(X12,X11)|r1_tarski(k1_relat_1(X12),X11)|~v1_relat_1(X12))&(~r1_tarski(k1_relat_1(X12),X11)|v4_relat_1(X12,X11)|~v1_relat_1(X12))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d18_relat_1])])])).
% 1.53/1.70  cnf(c_0_27, plain, (v4_relat_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_24])).
% 1.53/1.70  cnf(c_0_28, plain, (m1_subset_1(k6_relat_1(X1),k1_zfmisc_1(k2_zfmisc_1(X1,X1)))), inference(split_conjunct,[status(thm)],[c_0_25])).
% 1.53/1.70  fof(c_0_29, plain, ![X26]:(k1_relat_1(k6_relat_1(X26))=X26&k2_relat_1(k6_relat_1(X26))=X26), inference(variable_rename,[status(thm)],[t71_relat_1])).
% 1.53/1.70  fof(c_0_30, plain, ![X32]:(v1_relat_1(k6_relat_1(X32))&v2_funct_1(k6_relat_1(X32))), inference(variable_rename,[status(thm)],[fc4_funct_1])).
% 1.53/1.70  fof(c_0_31, negated_conjecture, ~(![X1, X2, X3]:(((v1_funct_1(X3)&v1_funct_2(X3,X1,X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>![X4]:(((v1_funct_1(X4)&v1_funct_2(X4,X2,X1))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X1))))=>(((k2_relset_1(X1,X2,X3)=X2&r2_relset_1(X1,X1,k1_partfun1(X1,X2,X2,X1,X3,X4),k6_partfun1(X1)))&v2_funct_1(X3))=>(X1=k1_xboole_0|X2=k1_xboole_0|X4=k2_funct_1(X3)))))), inference(assume_negation,[status(cth)],[t36_funct_2])).
% 1.53/1.70  cnf(c_0_32, plain, (r1_tarski(k1_relat_1(X1),X2)|~v4_relat_1(X1,X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 1.53/1.70  cnf(c_0_33, plain, (v4_relat_1(k6_relat_1(X1),X1)), inference(spm,[status(thm)],[c_0_27, c_0_28])).
% 1.53/1.70  cnf(c_0_34, plain, (k1_relat_1(k6_relat_1(X1))=X1), inference(split_conjunct,[status(thm)],[c_0_29])).
% 1.53/1.70  cnf(c_0_35, plain, (v1_relat_1(k6_relat_1(X1))), inference(split_conjunct,[status(thm)],[c_0_30])).
% 1.53/1.70  fof(c_0_36, plain, ![X9, X10]:(~v1_relat_1(X9)|(~m1_subset_1(X10,k1_zfmisc_1(X9))|v1_relat_1(X10))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relat_1])])])).
% 1.53/1.70  fof(c_0_37, negated_conjecture, (((v1_funct_1(esk3_0)&v1_funct_2(esk3_0,esk1_0,esk2_0))&m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0))))&(((v1_funct_1(esk4_0)&v1_funct_2(esk4_0,esk2_0,esk1_0))&m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk1_0))))&(((k2_relset_1(esk1_0,esk2_0,esk3_0)=esk2_0&r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,esk2_0,esk2_0,esk1_0,esk3_0,esk4_0),k6_partfun1(esk1_0)))&v2_funct_1(esk3_0))&((esk1_0!=k1_xboole_0&esk2_0!=k1_xboole_0)&esk4_0!=k2_funct_1(esk3_0))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_31])])])).
% 1.53/1.70  fof(c_0_38, plain, ![X15, X16]:v1_relat_1(k2_zfmisc_1(X15,X16)), inference(variable_rename,[status(thm)],[fc6_relat_1])).
% 1.53/1.70  cnf(c_0_39, plain, (v4_relat_1(X1,X2)|~r1_tarski(k1_relat_1(X1),X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 1.53/1.70  cnf(c_0_40, plain, (r1_tarski(X1,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32, c_0_33]), c_0_34]), c_0_35])])).
% 1.53/1.70  cnf(c_0_41, plain, (v1_relat_1(X2)|~v1_relat_1(X1)|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_36])).
% 1.53/1.70  cnf(c_0_42, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0)))), inference(split_conjunct,[status(thm)],[c_0_37])).
% 1.53/1.70  cnf(c_0_43, plain, (v1_relat_1(k2_zfmisc_1(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_38])).
% 1.53/1.70  fof(c_0_44, plain, ![X17, X18]:(~v1_relat_1(X18)|k2_relat_1(k7_relat_1(X18,X17))=k9_relat_1(X18,X17)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t148_relat_1])])).
% 1.53/1.70  fof(c_0_45, plain, ![X21, X22]:(~v1_relat_1(X22)|~v4_relat_1(X22,X21)|X22=k7_relat_1(X22,X21)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t209_relat_1])])).
% 1.53/1.70  cnf(c_0_46, plain, (v4_relat_1(X1,k1_relat_1(X1))|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_39, c_0_40])).
% 1.53/1.70  cnf(c_0_47, negated_conjecture, (v1_relat_1(esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41, c_0_42]), c_0_43])])).
% 1.53/1.70  cnf(c_0_48, plain, (k2_relat_1(k7_relat_1(X1,X2))=k9_relat_1(X1,X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_44])).
% 1.53/1.70  cnf(c_0_49, plain, (X1=k7_relat_1(X1,X2)|~v1_relat_1(X1)|~v4_relat_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_45])).
% 1.53/1.70  cnf(c_0_50, negated_conjecture, (v4_relat_1(esk3_0,k1_relat_1(esk3_0))), inference(spm,[status(thm)],[c_0_46, c_0_47])).
% 1.53/1.70  fof(c_0_51, plain, ![X43, X44, X45]:(~m1_subset_1(X45,k1_zfmisc_1(k2_zfmisc_1(X43,X44)))|k2_relset_1(X43,X44,X45)=k2_relat_1(X45)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_relset_1])])).
% 1.53/1.70  cnf(c_0_52, negated_conjecture, (k2_relat_1(k7_relat_1(esk3_0,X1))=k9_relat_1(esk3_0,X1)), inference(spm,[status(thm)],[c_0_48, c_0_47])).
% 1.53/1.70  cnf(c_0_53, negated_conjecture, (k7_relat_1(esk3_0,k1_relat_1(esk3_0))=esk3_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49, c_0_50]), c_0_47])])).
% 1.53/1.70  cnf(c_0_54, plain, (k2_relset_1(X2,X3,X1)=k2_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_51])).
% 1.53/1.70  cnf(c_0_55, negated_conjecture, (k2_relset_1(esk1_0,esk2_0,esk3_0)=esk2_0), inference(split_conjunct,[status(thm)],[c_0_37])).
% 1.53/1.70  cnf(c_0_56, negated_conjecture, (k2_relat_1(esk3_0)=k9_relat_1(esk3_0,k1_relat_1(esk3_0))), inference(spm,[status(thm)],[c_0_52, c_0_53])).
% 1.53/1.70  fof(c_0_57, plain, ![X63]:k6_partfun1(X63)=k6_relat_1(X63), inference(variable_rename,[status(thm)],[redefinition_k6_partfun1])).
% 1.53/1.70  fof(c_0_58, plain, ![X57, X58, X59, X60, X61, X62]:(~v1_funct_1(X61)|~m1_subset_1(X61,k1_zfmisc_1(k2_zfmisc_1(X57,X58)))|~v1_funct_1(X62)|~m1_subset_1(X62,k1_zfmisc_1(k2_zfmisc_1(X59,X60)))|k1_partfun1(X57,X58,X59,X60,X61,X62)=k5_relat_1(X61,X62)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_partfun1])])).
% 1.53/1.70  cnf(c_0_59, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_37])).
% 1.53/1.70  cnf(c_0_60, negated_conjecture, (esk2_0=k9_relat_1(esk3_0,k1_relat_1(esk3_0))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_54, c_0_42]), c_0_55]), c_0_56])).
% 1.53/1.70  cnf(c_0_61, negated_conjecture, (r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,esk2_0,esk2_0,esk1_0,esk3_0,esk4_0),k6_partfun1(esk1_0))), inference(split_conjunct,[status(thm)],[c_0_37])).
% 1.53/1.70  cnf(c_0_62, plain, (k6_partfun1(X1)=k6_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_57])).
% 1.53/1.70  cnf(c_0_63, plain, (k1_partfun1(X2,X3,X5,X6,X1,X4)=k5_relat_1(X1,X4)|~v1_funct_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~v1_funct_1(X4)|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X5,X6)))), inference(split_conjunct,[status(thm)],[c_0_58])).
% 1.53/1.70  cnf(c_0_64, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(k9_relat_1(esk3_0,k1_relat_1(esk3_0)),esk1_0)))), inference(rw,[status(thm)],[c_0_59, c_0_60])).
% 1.53/1.70  cnf(c_0_65, negated_conjecture, (v1_funct_1(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_37])).
% 1.53/1.70  cnf(c_0_66, negated_conjecture, (v1_relat_1(esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41, c_0_59]), c_0_43])])).
% 1.53/1.70  fof(c_0_67, plain, ![X46, X47, X48, X49]:((~r2_relset_1(X46,X47,X48,X49)|X48=X49|(~m1_subset_1(X48,k1_zfmisc_1(k2_zfmisc_1(X46,X47)))|~m1_subset_1(X49,k1_zfmisc_1(k2_zfmisc_1(X46,X47)))))&(X48!=X49|r2_relset_1(X46,X47,X48,X49)|(~m1_subset_1(X48,k1_zfmisc_1(k2_zfmisc_1(X46,X47)))|~m1_subset_1(X49,k1_zfmisc_1(k2_zfmisc_1(X46,X47)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_r2_relset_1])])])).
% 1.53/1.70  cnf(c_0_68, negated_conjecture, (r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,esk2_0,esk2_0,esk1_0,esk3_0,esk4_0),k6_relat_1(esk1_0))), inference(rw,[status(thm)],[c_0_61, c_0_62])).
% 1.53/1.70  cnf(c_0_69, negated_conjecture, (k1_partfun1(X1,X2,k9_relat_1(esk3_0,k1_relat_1(esk3_0)),esk1_0,X3,esk4_0)=k5_relat_1(X3,esk4_0)|~v1_funct_1(X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_63, c_0_64]), c_0_65])])).
% 1.53/1.70  cnf(c_0_70, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,k9_relat_1(esk3_0,k1_relat_1(esk3_0)))))), inference(rw,[status(thm)],[c_0_42, c_0_60])).
% 1.53/1.70  cnf(c_0_71, negated_conjecture, (v1_funct_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_37])).
% 1.53/1.70  fof(c_0_72, plain, ![X51, X52, X53, X54, X55, X56]:((v1_funct_1(k1_partfun1(X51,X52,X53,X54,X55,X56))|(~v1_funct_1(X55)|~m1_subset_1(X55,k1_zfmisc_1(k2_zfmisc_1(X51,X52)))|~v1_funct_1(X56)|~m1_subset_1(X56,k1_zfmisc_1(k2_zfmisc_1(X53,X54)))))&(m1_subset_1(k1_partfun1(X51,X52,X53,X54,X55,X56),k1_zfmisc_1(k2_zfmisc_1(X51,X54)))|(~v1_funct_1(X55)|~m1_subset_1(X55,k1_zfmisc_1(k2_zfmisc_1(X51,X52)))|~v1_funct_1(X56)|~m1_subset_1(X56,k1_zfmisc_1(k2_zfmisc_1(X53,X54)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k1_partfun1])])])).
% 1.53/1.70  fof(c_0_73, plain, ![X19, X20]:(~v1_relat_1(X19)|(~v1_relat_1(X20)|k1_relat_1(k5_relat_1(X19,X20))=k10_relat_1(X19,k1_relat_1(X20)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t182_relat_1])])])).
% 1.53/1.70  fof(c_0_74, plain, ![X28]:(~v1_relat_1(X28)|k5_relat_1(X28,k6_relat_1(k2_relat_1(X28)))=X28), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t80_relat_1])])).
% 1.53/1.70  cnf(c_0_75, negated_conjecture, (v4_relat_1(esk4_0,k1_relat_1(esk4_0))), inference(spm,[status(thm)],[c_0_46, c_0_66])).
% 1.53/1.70  cnf(c_0_76, negated_conjecture, (v4_relat_1(esk4_0,esk2_0)), inference(spm,[status(thm)],[c_0_27, c_0_59])).
% 1.53/1.70  cnf(c_0_77, plain, (X3=X4|~r2_relset_1(X1,X2,X3,X4)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(split_conjunct,[status(thm)],[c_0_67])).
% 1.53/1.70  cnf(c_0_78, negated_conjecture, (r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,k9_relat_1(esk3_0,k1_relat_1(esk3_0)),k9_relat_1(esk3_0,k1_relat_1(esk3_0)),esk1_0,esk3_0,esk4_0),k6_relat_1(esk1_0))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_68, c_0_60]), c_0_60])).
% 1.53/1.70  cnf(c_0_79, negated_conjecture, (k1_partfun1(esk1_0,k9_relat_1(esk3_0,k1_relat_1(esk3_0)),k9_relat_1(esk3_0,k1_relat_1(esk3_0)),esk1_0,esk3_0,esk4_0)=k5_relat_1(esk3_0,esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_69, c_0_70]), c_0_71])])).
% 1.53/1.70  cnf(c_0_80, plain, (m1_subset_1(k1_partfun1(X1,X2,X3,X4,X5,X6),k1_zfmisc_1(k2_zfmisc_1(X1,X4)))|~v1_funct_1(X5)|~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~v1_funct_1(X6)|~m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))), inference(split_conjunct,[status(thm)],[c_0_72])).
% 1.53/1.70  cnf(c_0_81, plain, (k1_relat_1(k5_relat_1(X1,X2))=k10_relat_1(X1,k1_relat_1(X2))|~v1_relat_1(X1)|~v1_relat_1(X2)), inference(split_conjunct,[status(thm)],[c_0_73])).
% 1.53/1.70  cnf(c_0_82, plain, (k5_relat_1(X1,k6_relat_1(k2_relat_1(X1)))=X1|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_74])).
% 1.53/1.70  cnf(c_0_83, negated_conjecture, (k2_relat_1(k7_relat_1(esk4_0,X1))=k9_relat_1(esk4_0,X1)), inference(spm,[status(thm)],[c_0_48, c_0_66])).
% 1.53/1.70  cnf(c_0_84, negated_conjecture, (k7_relat_1(esk4_0,k1_relat_1(esk4_0))=esk4_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49, c_0_75]), c_0_66])])).
% 1.53/1.70  cnf(c_0_85, negated_conjecture, (k7_relat_1(esk4_0,esk2_0)=esk4_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49, c_0_76]), c_0_66])])).
% 1.53/1.70  cnf(c_0_86, plain, (X1=k6_relat_1(X2)|~r2_relset_1(X2,X2,X1,k6_relat_1(X2))|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X2)))), inference(spm,[status(thm)],[c_0_77, c_0_28])).
% 1.53/1.70  cnf(c_0_87, negated_conjecture, (r2_relset_1(esk1_0,esk1_0,k5_relat_1(esk3_0,esk4_0),k6_relat_1(esk1_0))), inference(rw,[status(thm)],[c_0_78, c_0_79])).
% 1.53/1.70  cnf(c_0_88, negated_conjecture, (m1_subset_1(k1_partfun1(X1,X2,k9_relat_1(esk3_0,k1_relat_1(esk3_0)),esk1_0,X3,esk4_0),k1_zfmisc_1(k2_zfmisc_1(X1,esk1_0)))|~v1_funct_1(X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_80, c_0_64]), c_0_65])])).
% 1.53/1.70  cnf(c_0_89, negated_conjecture, (k1_relat_1(k5_relat_1(esk4_0,X1))=k10_relat_1(esk4_0,k1_relat_1(X1))|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_81, c_0_66])).
% 1.53/1.70  cnf(c_0_90, negated_conjecture, (k5_relat_1(esk4_0,k6_relat_1(k2_relat_1(esk4_0)))=esk4_0), inference(spm,[status(thm)],[c_0_82, c_0_66])).
% 1.53/1.70  cnf(c_0_91, negated_conjecture, (k2_relat_1(esk4_0)=k9_relat_1(esk4_0,k1_relat_1(esk4_0))), inference(spm,[status(thm)],[c_0_83, c_0_84])).
% 1.53/1.70  cnf(c_0_92, negated_conjecture, (k9_relat_1(esk4_0,esk2_0)=k2_relat_1(esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48, c_0_85]), c_0_66])])).
% 1.53/1.70  fof(c_0_93, plain, ![X37]:((k2_relat_1(X37)=k1_relat_1(k2_funct_1(X37))|~v2_funct_1(X37)|(~v1_relat_1(X37)|~v1_funct_1(X37)))&(k1_relat_1(X37)=k2_relat_1(k2_funct_1(X37))|~v2_funct_1(X37)|(~v1_relat_1(X37)|~v1_funct_1(X37)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t55_funct_1])])])).
% 1.53/1.70  cnf(c_0_94, negated_conjecture, (v4_relat_1(esk3_0,esk1_0)), inference(spm,[status(thm)],[c_0_27, c_0_42])).
% 1.53/1.70  cnf(c_0_95, negated_conjecture, (k6_relat_1(esk1_0)=k5_relat_1(esk3_0,esk4_0)|~m1_subset_1(k5_relat_1(esk3_0,esk4_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0)))), inference(spm,[status(thm)],[c_0_86, c_0_87])).
% 1.53/1.70  cnf(c_0_96, negated_conjecture, (m1_subset_1(k5_relat_1(esk3_0,esk4_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_88, c_0_70]), c_0_79]), c_0_71])])).
% 1.53/1.70  cnf(c_0_97, negated_conjecture, (k1_relat_1(k5_relat_1(esk4_0,k6_relat_1(X1)))=k10_relat_1(esk4_0,X1)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_89, c_0_35]), c_0_34])).
% 1.53/1.70  cnf(c_0_98, negated_conjecture, (k5_relat_1(esk4_0,k6_relat_1(k9_relat_1(esk4_0,k1_relat_1(esk4_0))))=esk4_0), inference(rw,[status(thm)],[c_0_90, c_0_91])).
% 1.53/1.70  cnf(c_0_99, negated_conjecture, (k9_relat_1(esk4_0,esk2_0)=k9_relat_1(esk4_0,k1_relat_1(esk4_0))), inference(rw,[status(thm)],[c_0_92, c_0_91])).
% 1.53/1.70  cnf(c_0_100, plain, (k2_relat_1(X1)=k1_relat_1(k2_funct_1(X1))|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_93])).
% 1.53/1.70  fof(c_0_101, plain, ![X31]:((v1_relat_1(k2_funct_1(X31))|(~v1_relat_1(X31)|~v1_funct_1(X31)))&(v1_funct_1(k2_funct_1(X31))|(~v1_relat_1(X31)|~v1_funct_1(X31)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_funct_1])])])).
% 1.53/1.70  cnf(c_0_102, negated_conjecture, (k7_relat_1(esk3_0,esk1_0)=esk3_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49, c_0_94]), c_0_47])])).
% 1.53/1.70  cnf(c_0_103, plain, (k2_relat_1(k6_relat_1(X1))=X1), inference(split_conjunct,[status(thm)],[c_0_29])).
% 1.53/1.70  cnf(c_0_104, negated_conjecture, (k6_relat_1(esk1_0)=k5_relat_1(esk3_0,esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_95, c_0_96])])).
% 1.53/1.70  cnf(c_0_105, negated_conjecture, (k1_relat_1(k5_relat_1(esk3_0,X1))=k10_relat_1(esk3_0,k1_relat_1(X1))|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_81, c_0_47])).
% 1.53/1.70  cnf(c_0_106, negated_conjecture, (k10_relat_1(esk4_0,k9_relat_1(esk4_0,k1_relat_1(esk4_0)))=k1_relat_1(esk4_0)), inference(spm,[status(thm)],[c_0_97, c_0_98])).
% 1.53/1.70  cnf(c_0_107, negated_conjecture, (k9_relat_1(esk4_0,k1_relat_1(esk4_0))=k9_relat_1(esk4_0,k9_relat_1(esk3_0,k1_relat_1(esk3_0)))), inference(rw,[status(thm)],[c_0_99, c_0_60])).
% 1.53/1.70  fof(c_0_108, plain, ![X33, X34]:(~v1_relat_1(X34)|~v1_funct_1(X34)|(~r1_tarski(X33,k2_relat_1(X34))|k9_relat_1(X34,k10_relat_1(X34,X33))=X33)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t147_funct_1])])).
% 1.53/1.70  cnf(c_0_109, negated_conjecture, (r1_tarski(k1_relat_1(esk4_0),esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32, c_0_76]), c_0_66])])).
% 1.53/1.70  cnf(c_0_110, plain, (v4_relat_1(k2_funct_1(X1),X2)|~v2_funct_1(X1)|~v1_funct_1(X1)|~v1_relat_1(k2_funct_1(X1))|~v1_relat_1(X1)|~r1_tarski(k2_relat_1(X1),X2)), inference(spm,[status(thm)],[c_0_39, c_0_100])).
% 1.53/1.70  cnf(c_0_111, plain, (v1_relat_1(k2_funct_1(X1))|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_101])).
% 1.53/1.70  fof(c_0_112, plain, ![X7, X8]:((~m1_subset_1(X7,k1_zfmisc_1(X8))|r1_tarski(X7,X8))&(~r1_tarski(X7,X8)|m1_subset_1(X7,k1_zfmisc_1(X8)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).
% 1.53/1.70  cnf(c_0_113, negated_conjecture, (k9_relat_1(esk3_0,esk1_0)=k2_relat_1(esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48, c_0_102]), c_0_47])])).
% 1.53/1.70  cnf(c_0_114, negated_conjecture, (esk1_0=k2_relat_1(k5_relat_1(esk3_0,esk4_0))), inference(spm,[status(thm)],[c_0_103, c_0_104])).
% 1.53/1.70  cnf(c_0_115, negated_conjecture, (k1_relat_1(k5_relat_1(esk3_0,esk4_0))=k10_relat_1(esk3_0,k1_relat_1(esk4_0))), inference(spm,[status(thm)],[c_0_105, c_0_66])).
% 1.53/1.70  cnf(c_0_116, negated_conjecture, (k1_relat_1(esk4_0)=k10_relat_1(esk4_0,k9_relat_1(esk4_0,k9_relat_1(esk3_0,k1_relat_1(esk3_0))))), inference(rw,[status(thm)],[c_0_106, c_0_107])).
% 1.53/1.70  cnf(c_0_117, plain, (k9_relat_1(X1,k10_relat_1(X1,X2))=X2|~v1_relat_1(X1)|~v1_funct_1(X1)|~r1_tarski(X2,k2_relat_1(X1))), inference(split_conjunct,[status(thm)],[c_0_108])).
% 1.53/1.70  cnf(c_0_118, negated_conjecture, (r1_tarski(k1_relat_1(esk4_0),k9_relat_1(esk3_0,k1_relat_1(esk3_0)))), inference(rw,[status(thm)],[c_0_109, c_0_60])).
% 1.53/1.70  cnf(c_0_119, plain, (v4_relat_1(k2_funct_1(X1),X2)|~v2_funct_1(X1)|~v1_funct_1(X1)|~v1_relat_1(X1)|~r1_tarski(k2_relat_1(X1),X2)), inference(spm,[status(thm)],[c_0_110, c_0_111])).
% 1.53/1.70  cnf(c_0_120, negated_conjecture, (v2_funct_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_37])).
% 1.53/1.70  cnf(c_0_121, plain, (r1_tarski(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_112])).
% 1.53/1.70  cnf(c_0_122, negated_conjecture, (k9_relat_1(esk3_0,esk1_0)=k9_relat_1(esk3_0,k1_relat_1(esk3_0))), inference(rw,[status(thm)],[c_0_113, c_0_56])).
% 1.53/1.70  cnf(c_0_123, negated_conjecture, (k6_relat_1(k2_relat_1(k5_relat_1(esk3_0,esk4_0)))=k5_relat_1(esk3_0,esk4_0)), inference(rw,[status(thm)],[c_0_104, c_0_114])).
% 1.53/1.70  cnf(c_0_124, negated_conjecture, (k1_relat_1(k5_relat_1(esk3_0,esk4_0))=k10_relat_1(esk3_0,k10_relat_1(esk4_0,k9_relat_1(esk4_0,k9_relat_1(esk3_0,k1_relat_1(esk3_0)))))), inference(rw,[status(thm)],[c_0_115, c_0_116])).
% 1.53/1.70  cnf(c_0_125, negated_conjecture, (k9_relat_1(esk3_0,k10_relat_1(esk3_0,X1))=X1|~r1_tarski(X1,k9_relat_1(esk3_0,k1_relat_1(esk3_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_117, c_0_56]), c_0_71]), c_0_47])])).
% 1.53/1.70  cnf(c_0_126, negated_conjecture, (r1_tarski(k10_relat_1(esk4_0,k9_relat_1(esk4_0,k9_relat_1(esk3_0,k1_relat_1(esk3_0)))),k9_relat_1(esk3_0,k1_relat_1(esk3_0)))), inference(rw,[status(thm)],[c_0_118, c_0_116])).
% 1.53/1.70  cnf(c_0_127, negated_conjecture, (k5_relat_1(esk3_0,k6_relat_1(k2_relat_1(esk3_0)))=esk3_0), inference(spm,[status(thm)],[c_0_82, c_0_47])).
% 1.53/1.70  cnf(c_0_128, negated_conjecture, (v4_relat_1(k2_funct_1(esk3_0),X1)|~r1_tarski(k9_relat_1(esk3_0,k1_relat_1(esk3_0)),X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_119, c_0_56]), c_0_120]), c_0_71]), c_0_47])])).
% 1.53/1.70  fof(c_0_129, plain, ![X23, X24, X25]:(~v1_relat_1(X23)|(~v1_relat_1(X24)|(~v1_relat_1(X25)|k5_relat_1(k5_relat_1(X23,X24),X25)=k5_relat_1(X23,k5_relat_1(X24,X25))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t55_relat_1])])])).
% 1.53/1.70  cnf(c_0_130, negated_conjecture, (r1_tarski(esk4_0,k2_zfmisc_1(esk2_0,esk1_0))), inference(spm,[status(thm)],[c_0_121, c_0_59])).
% 1.53/1.70  cnf(c_0_131, negated_conjecture, (k9_relat_1(esk3_0,k2_relat_1(k5_relat_1(esk3_0,esk4_0)))=k9_relat_1(esk3_0,k1_relat_1(esk3_0))), inference(rw,[status(thm)],[c_0_122, c_0_114])).
% 1.53/1.70  cnf(c_0_132, negated_conjecture, (k2_relat_1(k5_relat_1(esk3_0,esk4_0))=k10_relat_1(esk3_0,k10_relat_1(esk4_0,k9_relat_1(esk4_0,k9_relat_1(esk3_0,k1_relat_1(esk3_0)))))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34, c_0_123]), c_0_124])).
% 1.53/1.70  cnf(c_0_133, negated_conjecture, (k9_relat_1(esk3_0,k10_relat_1(esk3_0,k10_relat_1(esk4_0,k9_relat_1(esk4_0,k9_relat_1(esk3_0,k1_relat_1(esk3_0))))))=k10_relat_1(esk4_0,k9_relat_1(esk4_0,k9_relat_1(esk3_0,k1_relat_1(esk3_0))))), inference(spm,[status(thm)],[c_0_125, c_0_126])).
% 1.53/1.70  cnf(c_0_134, negated_conjecture, (k1_relat_1(k5_relat_1(esk3_0,k6_relat_1(X1)))=k10_relat_1(esk3_0,X1)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_105, c_0_35]), c_0_34])).
% 1.53/1.70  cnf(c_0_135, negated_conjecture, (k5_relat_1(esk3_0,k6_relat_1(k9_relat_1(esk3_0,k1_relat_1(esk3_0))))=esk3_0), inference(rw,[status(thm)],[c_0_127, c_0_56])).
% 1.53/1.70  cnf(c_0_136, negated_conjecture, (v4_relat_1(k2_funct_1(esk3_0),k9_relat_1(esk3_0,k1_relat_1(esk3_0)))), inference(spm,[status(thm)],[c_0_128, c_0_40])).
% 1.53/1.70  cnf(c_0_137, plain, (k5_relat_1(k5_relat_1(X1,X2),X3)=k5_relat_1(X1,k5_relat_1(X2,X3))|~v1_relat_1(X1)|~v1_relat_1(X2)|~v1_relat_1(X3)), inference(split_conjunct,[status(thm)],[c_0_129])).
% 1.53/1.70  fof(c_0_138, plain, ![X27]:(~v1_relat_1(X27)|k5_relat_1(k6_relat_1(k1_relat_1(X27)),X27)=X27), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t78_relat_1])])).
% 1.53/1.70  cnf(c_0_139, negated_conjecture, (r1_tarski(esk4_0,k2_zfmisc_1(k9_relat_1(esk3_0,k1_relat_1(esk3_0)),esk1_0))), inference(rw,[status(thm)],[c_0_130, c_0_60])).
% 1.53/1.70  cnf(c_0_140, negated_conjecture, (k10_relat_1(esk4_0,k9_relat_1(esk4_0,k9_relat_1(esk3_0,k1_relat_1(esk3_0))))=k9_relat_1(esk3_0,k1_relat_1(esk3_0))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_131, c_0_132]), c_0_133])).
% 1.53/1.70  cnf(c_0_141, negated_conjecture, (k10_relat_1(esk3_0,k9_relat_1(esk3_0,k1_relat_1(esk3_0)))=k1_relat_1(esk3_0)), inference(spm,[status(thm)],[c_0_134, c_0_135])).
% 1.53/1.70  cnf(c_0_142, negated_conjecture, (k7_relat_1(k2_funct_1(esk3_0),k9_relat_1(esk3_0,k1_relat_1(esk3_0)))=k2_funct_1(esk3_0)|~v1_relat_1(k2_funct_1(esk3_0))), inference(spm,[status(thm)],[c_0_49, c_0_136])).
% 1.53/1.70  cnf(c_0_143, negated_conjecture, (k5_relat_1(k5_relat_1(X1,esk3_0),X2)=k5_relat_1(X1,k5_relat_1(esk3_0,X2))|~v1_relat_1(X2)|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_137, c_0_47])).
% 1.53/1.70  fof(c_0_144, plain, ![X38]:((k5_relat_1(X38,k2_funct_1(X38))=k6_relat_1(k1_relat_1(X38))|~v2_funct_1(X38)|(~v1_relat_1(X38)|~v1_funct_1(X38)))&(k5_relat_1(k2_funct_1(X38),X38)=k6_relat_1(k2_relat_1(X38))|~v2_funct_1(X38)|(~v1_relat_1(X38)|~v1_funct_1(X38)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t61_funct_1])])])).
% 1.53/1.70  cnf(c_0_145, plain, (k5_relat_1(k6_relat_1(k1_relat_1(X1)),X1)=X1|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_138])).
% 1.53/1.70  cnf(c_0_146, plain, (m1_subset_1(X1,k1_zfmisc_1(X2))|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_112])).
% 1.53/1.70  cnf(c_0_147, negated_conjecture, (r1_tarski(esk4_0,k2_zfmisc_1(k9_relat_1(esk3_0,k1_relat_1(esk3_0)),k1_relat_1(esk3_0)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_139, c_0_114]), c_0_132]), c_0_140]), c_0_141])).
% 1.53/1.70  cnf(c_0_148, plain, (k2_relat_1(k7_relat_1(k2_funct_1(X1),X2))=k9_relat_1(k2_funct_1(X1),X2)|~v1_funct_1(X1)|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_48, c_0_111])).
% 1.53/1.70  cnf(c_0_149, negated_conjecture, (k7_relat_1(k2_funct_1(esk3_0),k9_relat_1(esk3_0,k1_relat_1(esk3_0)))=k2_funct_1(esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_142, c_0_111]), c_0_71]), c_0_47])])).
% 1.53/1.70  cnf(c_0_150, negated_conjecture, (k5_relat_1(k5_relat_1(X1,esk3_0),esk4_0)=k5_relat_1(X1,k5_relat_1(esk3_0,esk4_0))|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_143, c_0_66])).
% 1.53/1.70  cnf(c_0_151, plain, (k5_relat_1(k2_funct_1(X1),X1)=k6_relat_1(k2_relat_1(X1))|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_144])).
% 1.53/1.70  cnf(c_0_152, negated_conjecture, (k5_relat_1(k6_relat_1(k1_relat_1(esk4_0)),esk4_0)=esk4_0), inference(spm,[status(thm)],[c_0_145, c_0_66])).
% 1.53/1.70  cnf(c_0_153, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(k9_relat_1(esk3_0,k1_relat_1(esk3_0)),k1_relat_1(esk3_0))))), inference(spm,[status(thm)],[c_0_146, c_0_147])).
% 1.53/1.70  cnf(c_0_154, plain, (k1_relat_1(X1)=k2_relat_1(k2_funct_1(X1))|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_93])).
% 1.53/1.70  cnf(c_0_155, negated_conjecture, (k2_relat_1(k2_funct_1(esk3_0))=k9_relat_1(k2_funct_1(esk3_0),k9_relat_1(esk3_0,k1_relat_1(esk3_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_148, c_0_149]), c_0_71]), c_0_47])])).
% 1.53/1.70  cnf(c_0_156, negated_conjecture, (k5_relat_1(k2_funct_1(esk3_0),k5_relat_1(esk3_0,esk4_0))=k5_relat_1(k6_relat_1(k9_relat_1(esk3_0,k1_relat_1(esk3_0))),esk4_0)|~v1_relat_1(k2_funct_1(esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_150, c_0_151]), c_0_56]), c_0_120]), c_0_71]), c_0_47])])).
% 1.53/1.70  cnf(c_0_157, negated_conjecture, (k5_relat_1(k6_relat_1(k10_relat_1(esk4_0,k9_relat_1(esk4_0,k9_relat_1(esk3_0,k1_relat_1(esk3_0))))),esk4_0)=esk4_0), inference(rw,[status(thm)],[c_0_152, c_0_116])).
% 1.53/1.70  cnf(c_0_158, negated_conjecture, (k9_relat_1(esk4_0,k9_relat_1(esk3_0,k1_relat_1(esk3_0)))=k2_relset_1(k9_relat_1(esk3_0,k1_relat_1(esk3_0)),k1_relat_1(esk3_0),esk4_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_54, c_0_153]), c_0_91]), c_0_116]), c_0_140])).
% 1.53/1.70  cnf(c_0_159, negated_conjecture, (k9_relat_1(k2_funct_1(esk3_0),k9_relat_1(esk3_0,k1_relat_1(esk3_0)))=k1_relat_1(esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_154, c_0_155]), c_0_120]), c_0_71]), c_0_47])])).
% 1.53/1.70  cnf(c_0_160, negated_conjecture, (k5_relat_1(k2_funct_1(esk3_0),k5_relat_1(esk3_0,esk4_0))=k5_relat_1(k6_relat_1(k9_relat_1(esk3_0,k1_relat_1(esk3_0))),esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_156, c_0_111]), c_0_71]), c_0_47])])).
% 1.53/1.70  cnf(c_0_161, negated_conjecture, (k5_relat_1(k6_relat_1(k9_relat_1(esk3_0,k1_relat_1(esk3_0))),esk4_0)=esk4_0), inference(rw,[status(thm)],[c_0_157, c_0_140])).
% 1.53/1.70  cnf(c_0_162, negated_conjecture, (k10_relat_1(esk4_0,k2_relset_1(k9_relat_1(esk3_0,k1_relat_1(esk3_0)),k1_relat_1(esk3_0),esk4_0))=k9_relat_1(esk3_0,k1_relat_1(esk3_0))), inference(rw,[status(thm)],[c_0_140, c_0_158])).
% 1.53/1.70  cnf(c_0_163, plain, (k5_relat_1(k2_funct_1(X1),k6_relat_1(k2_relat_1(k2_funct_1(X1))))=k2_funct_1(X1)|~v1_funct_1(X1)|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_82, c_0_111])).
% 1.53/1.70  cnf(c_0_164, negated_conjecture, (k2_relat_1(k2_funct_1(esk3_0))=k1_relat_1(esk3_0)), inference(rw,[status(thm)],[c_0_155, c_0_159])).
% 1.53/1.70  cnf(c_0_165, negated_conjecture, (k5_relat_1(k2_funct_1(esk3_0),k5_relat_1(esk3_0,esk4_0))=esk4_0), inference(rw,[status(thm)],[c_0_160, c_0_161])).
% 1.53/1.70  cnf(c_0_166, negated_conjecture, (k5_relat_1(esk3_0,esk4_0)=k6_relat_1(k1_relat_1(esk3_0))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_123, c_0_132]), c_0_158]), c_0_162]), c_0_141])).
% 1.53/1.70  cnf(c_0_167, negated_conjecture, (k5_relat_1(k2_funct_1(esk3_0),k6_relat_1(k1_relat_1(esk3_0)))=k2_funct_1(esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_163, c_0_164]), c_0_71]), c_0_47])])).
% 1.53/1.70  cnf(c_0_168, negated_conjecture, (esk4_0!=k2_funct_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_37])).
% 1.53/1.70  cnf(c_0_169, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_165, c_0_166]), c_0_167]), c_0_168]), ['proof']).
% 1.53/1.70  # SZS output end CNFRefutation
% 1.53/1.70  # Proof object total steps             : 170
% 1.53/1.70  # Proof object clause steps            : 121
% 1.53/1.70  # Proof object formula steps           : 49
% 1.53/1.70  # Proof object conjectures             : 89
% 1.53/1.70  # Proof object clause conjectures      : 86
% 1.53/1.70  # Proof object formula conjectures     : 3
% 1.53/1.70  # Proof object initial clauses used    : 35
% 1.53/1.70  # Proof object initial formulas used   : 24
% 1.53/1.70  # Proof object generating inferences   : 59
% 1.53/1.70  # Proof object simplifying inferences  : 104
% 1.53/1.70  # Training examples: 0 positive, 0 negative
% 1.53/1.70  # Parsed axioms                        : 30
% 1.53/1.70  # Removed by relevancy pruning/SinE    : 0
% 1.53/1.70  # Initial clauses                      : 54
% 1.53/1.70  # Removed in clause preprocessing      : 2
% 1.53/1.70  # Initial clauses in saturation        : 52
% 1.53/1.70  # Processed clauses                    : 9524
% 1.53/1.70  # ...of these trivial                  : 705
% 1.53/1.70  # ...subsumed                          : 4830
% 1.53/1.70  # ...remaining for further processing  : 3989
% 1.53/1.70  # Other redundant clauses eliminated   : 1
% 1.53/1.70  # Clauses deleted for lack of memory   : 0
% 1.53/1.70  # Backward-subsumed                    : 354
% 1.53/1.70  # Backward-rewritten                   : 1482
% 1.53/1.70  # Generated clauses                    : 106062
% 1.53/1.70  # ...of the previous two non-trivial   : 92857
% 1.53/1.70  # Contextual simplify-reflections      : 0
% 1.53/1.70  # Paramodulations                      : 106051
% 1.53/1.70  # Factorizations                       : 0
% 1.53/1.70  # Equation resolutions                 : 11
% 1.53/1.70  # Propositional unsat checks           : 0
% 1.53/1.70  #    Propositional check models        : 0
% 1.53/1.70  #    Propositional check unsatisfiable : 0
% 1.53/1.70  #    Propositional clauses             : 0
% 1.53/1.70  #    Propositional clauses after purity: 0
% 1.53/1.70  #    Propositional unsat core size     : 0
% 1.53/1.70  #    Propositional preprocessing time  : 0.000
% 1.53/1.70  #    Propositional encoding time       : 0.000
% 1.53/1.70  #    Propositional solver time         : 0.000
% 1.53/1.70  #    Success case prop preproc time    : 0.000
% 1.53/1.70  #    Success case prop encoding time   : 0.000
% 1.53/1.70  #    Success case prop solver time     : 0.000
% 1.53/1.70  # Current number of processed clauses  : 2152
% 1.53/1.70  #    Positive orientable unit clauses  : 725
% 1.53/1.70  #    Positive unorientable unit clauses: 0
% 1.53/1.70  #    Negative unit clauses             : 3
% 1.53/1.70  #    Non-unit-clauses                  : 1424
% 1.53/1.70  # Current number of unprocessed clauses: 81799
% 1.53/1.70  # ...number of literals in the above   : 373319
% 1.53/1.70  # Current number of archived formulas  : 0
% 1.53/1.70  # Current number of archived clauses   : 1837
% 1.53/1.70  # Clause-clause subsumption calls (NU) : 284218
% 1.53/1.70  # Rec. Clause-clause subsumption calls : 106684
% 1.53/1.70  # Non-unit clause-clause subsumptions  : 5184
% 1.53/1.70  # Unit Clause-clause subsumption calls : 15357
% 1.53/1.70  # Rewrite failures with RHS unbound    : 0
% 1.53/1.70  # BW rewrite match attempts            : 1857
% 1.53/1.70  # BW rewrite match successes           : 192
% 1.53/1.70  # Condensation attempts                : 0
% 1.53/1.70  # Condensation successes               : 0
% 1.53/1.70  # Termbank termtop insertions          : 3314355
% 1.53/1.71  
% 1.53/1.71  # -------------------------------------------------
% 1.53/1.71  # User time                : 1.316 s
% 1.53/1.71  # System time              : 0.057 s
% 1.53/1.71  # Total time               : 1.373 s
% 1.53/1.71  # Maximum resident set size: 1616 pages
%------------------------------------------------------------------------------
