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
% DateTime   : Thu Dec  3 11:13:27 EST 2020

% Result     : Theorem 0.21s
% Output     : CNFRefutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :  102 ( 362 expanded)
%              Number of clauses        :   61 ( 153 expanded)
%              Number of leaves         :   21 (  95 expanded)
%              Depth                    :   11
%              Number of atoms          :  256 (1295 expanded)
%              Number of equality atoms :   89 ( 436 expanded)
%              Maximal formula depth    :   12 (   4 average)
%              Maximal clause size      :   14 (   2 average)
%              Maximal term depth       :    5 (   2 average)

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

fof(d3_struct_0,axiom,(
    ! [X1] :
      ( l1_struct_0(X1)
     => k2_struct_0(X1) = u1_struct_0(X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_struct_0)).

fof(d19_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( v5_relat_1(X2,X1)
      <=> r1_tarski(k2_relat_1(X2),X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d19_relat_1)).

fof(t132_funct_2,axiom,(
    ! [X1,X2,X3] :
      ( ( v1_funct_1(X3)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => ( ( v1_funct_1(X3)
          & v1_funct_2(X3,X1,X2)
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
       => ( ( X2 = k1_xboole_0
            & X1 != k1_xboole_0 )
          | v1_partfun1(X3,X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t132_funct_2)).

fof(t8_boole,axiom,(
    ! [X1,X2] :
      ~ ( v1_xboole_0(X1)
        & X1 != X2
        & v1_xboole_0(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t8_boole)).

fof(fc17_relat_1,axiom,(
    ! [X1,X2] :
      ( ( v1_xboole_0(X1)
        & v1_relat_1(X1) )
     => ( v1_xboole_0(k7_relat_1(X1,X2))
        & v1_relat_1(k7_relat_1(X1,X2)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc17_relat_1)).

fof(cc1_relat_1,axiom,(
    ! [X1] :
      ( v1_xboole_0(X1)
     => v1_relat_1(X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc1_relat_1)).

fof(redefinition_k8_relset_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k8_relset_1(X1,X2,X3,X4) = k10_relat_1(X3,X4) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k8_relset_1)).

fof(t182_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( v1_relat_1(X2)
         => k1_relat_1(k5_relat_1(X1,X2)) = k10_relat_1(X1,k1_relat_1(X2)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t182_relat_1)).

fof(t71_relat_1,axiom,(
    ! [X1] :
      ( k1_relat_1(k6_relat_1(X1)) = X1
      & k2_relat_1(k6_relat_1(X1)) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_relat_1)).

fof(dt_k6_relat_1,axiom,(
    ! [X1] : v1_relat_1(k6_relat_1(X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k6_relat_1)).

fof(t79_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( r1_tarski(k2_relat_1(X2),X1)
       => k5_relat_1(X2,k6_relat_1(X1)) = X2 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t79_relat_1)).

fof(t81_relat_1,axiom,(
    k6_relat_1(k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t81_relat_1)).

fof(fc1_xboole_0,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc1_xboole_0)).

fof(d4_partfun1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v4_relat_1(X2,X1) )
     => ( v1_partfun1(X2,X1)
      <=> k1_relat_1(X2) = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d4_partfun1)).

fof(t162_funct_1,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => k9_relat_1(k6_relat_1(X1),X2) = X2 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t162_funct_1)).

fof(t148_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => k2_relat_1(k7_relat_1(X2,X1)) = k9_relat_1(X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t148_relat_1)).

fof(t113_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( k2_zfmisc_1(X1,X2) = k1_xboole_0
    <=> ( X1 = k1_xboole_0
        | X2 = k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t113_zfmisc_1)).

fof(c_0_21,negated_conjecture,(
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

fof(c_0_22,plain,(
    ! [X35,X36,X37] :
      ( ( v4_relat_1(X37,X35)
        | ~ m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X35,X36))) )
      & ( v5_relat_1(X37,X36)
        | ~ m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X35,X36))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).

fof(c_0_23,negated_conjecture,
    ( l1_struct_0(esk2_0)
    & l1_struct_0(esk3_0)
    & v1_funct_1(esk4_0)
    & v1_funct_2(esk4_0,u1_struct_0(esk2_0),u1_struct_0(esk3_0))
    & m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0))))
    & ( k2_struct_0(esk3_0) != k1_xboole_0
      | k2_struct_0(esk2_0) = k1_xboole_0 )
    & k8_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0,k2_struct_0(esk3_0)) != k2_struct_0(esk2_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_21])])])).

fof(c_0_24,plain,(
    ! [X13,X14] :
      ( ~ v1_relat_1(X13)
      | ~ m1_subset_1(X14,k1_zfmisc_1(X13))
      | v1_relat_1(X14) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relat_1])])])).

fof(c_0_25,plain,(
    ! [X20,X21] : v1_relat_1(k2_zfmisc_1(X20,X21)) ),
    inference(variable_rename,[status(thm)],[fc6_relat_1])).

fof(c_0_26,plain,(
    ! [X54] :
      ( ~ l1_struct_0(X54)
      | k2_struct_0(X54) = u1_struct_0(X54) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_struct_0])])).

fof(c_0_27,plain,(
    ! [X15,X16] :
      ( ( ~ v5_relat_1(X16,X15)
        | r1_tarski(k2_relat_1(X16),X15)
        | ~ v1_relat_1(X16) )
      & ( ~ r1_tarski(k2_relat_1(X16),X15)
        | v5_relat_1(X16,X15)
        | ~ v1_relat_1(X16) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d19_relat_1])])])).

cnf(c_0_28,plain,
    ( v5_relat_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_29,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0)))) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_30,plain,
    ( v1_relat_1(X2)
    | ~ v1_relat_1(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_31,plain,
    ( v1_relat_1(k2_zfmisc_1(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

fof(c_0_32,plain,(
    ! [X51,X52,X53] :
      ( ( X52 = k1_xboole_0
        | v1_partfun1(X53,X51)
        | ~ v1_funct_1(X53)
        | ~ v1_funct_2(X53,X51,X52)
        | ~ m1_subset_1(X53,k1_zfmisc_1(k2_zfmisc_1(X51,X52)))
        | ~ v1_funct_1(X53)
        | ~ m1_subset_1(X53,k1_zfmisc_1(k2_zfmisc_1(X51,X52))) )
      & ( X51 != k1_xboole_0
        | v1_partfun1(X53,X51)
        | ~ v1_funct_1(X53)
        | ~ v1_funct_2(X53,X51,X52)
        | ~ m1_subset_1(X53,k1_zfmisc_1(k2_zfmisc_1(X51,X52)))
        | ~ v1_funct_1(X53)
        | ~ m1_subset_1(X53,k1_zfmisc_1(k2_zfmisc_1(X51,X52))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t132_funct_2])])])).

fof(c_0_33,plain,(
    ! [X8,X9] :
      ( ~ v1_xboole_0(X8)
      | X8 = X9
      | ~ v1_xboole_0(X9) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t8_boole])])).

fof(c_0_34,plain,(
    ! [X18,X19] :
      ( ( v1_xboole_0(k7_relat_1(X18,X19))
        | ~ v1_xboole_0(X18)
        | ~ v1_relat_1(X18) )
      & ( v1_relat_1(k7_relat_1(X18,X19))
        | ~ v1_xboole_0(X18)
        | ~ v1_relat_1(X18) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[fc17_relat_1])])])).

fof(c_0_35,plain,(
    ! [X12] :
      ( ~ v1_xboole_0(X12)
      | v1_relat_1(X12) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relat_1])])).

cnf(c_0_36,plain,
    ( k2_struct_0(X1) = u1_struct_0(X1)
    | ~ l1_struct_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_37,negated_conjecture,
    ( l1_struct_0(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_38,negated_conjecture,
    ( l1_struct_0(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

fof(c_0_39,plain,(
    ! [X38,X39,X40,X41] :
      ( ~ m1_subset_1(X40,k1_zfmisc_1(k2_zfmisc_1(X38,X39)))
      | k8_relset_1(X38,X39,X40,X41) = k10_relat_1(X40,X41) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k8_relset_1])])).

fof(c_0_40,plain,(
    ! [X24,X25] :
      ( ~ v1_relat_1(X24)
      | ~ v1_relat_1(X25)
      | k1_relat_1(k5_relat_1(X24,X25)) = k10_relat_1(X24,k1_relat_1(X25)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t182_relat_1])])])).

fof(c_0_41,plain,(
    ! [X28] :
      ( k1_relat_1(k6_relat_1(X28)) = X28
      & k2_relat_1(k6_relat_1(X28)) = X28 ) ),
    inference(variable_rename,[status(thm)],[t71_relat_1])).

fof(c_0_42,plain,(
    ! [X17] : v1_relat_1(k6_relat_1(X17)) ),
    inference(variable_rename,[status(thm)],[dt_k6_relat_1])).

fof(c_0_43,plain,(
    ! [X29,X30] :
      ( ~ v1_relat_1(X30)
      | ~ r1_tarski(k2_relat_1(X30),X29)
      | k5_relat_1(X30,k6_relat_1(X29)) = X30 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t79_relat_1])])).

cnf(c_0_44,plain,
    ( r1_tarski(k2_relat_1(X1),X2)
    | ~ v5_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_45,negated_conjecture,
    ( v5_relat_1(esk4_0,u1_struct_0(esk3_0)) ),
    inference(spm,[status(thm)],[c_0_28,c_0_29])).

cnf(c_0_46,negated_conjecture,
    ( v1_relat_1(esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_30,c_0_29]),c_0_31])])).

cnf(c_0_47,plain,
    ( X1 = k1_xboole_0
    | v1_partfun1(X2,X3)
    | ~ v1_funct_1(X2)
    | ~ v1_funct_2(X2,X3,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X3,X1)))
    | ~ v1_funct_1(X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X3,X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

cnf(c_0_48,plain,
    ( k6_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[t81_relat_1])).

cnf(c_0_49,plain,
    ( X1 = X2
    | ~ v1_xboole_0(X1)
    | ~ v1_xboole_0(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_50,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(split_conjunct,[status(thm)],[fc1_xboole_0])).

cnf(c_0_51,plain,
    ( v1_xboole_0(k7_relat_1(X1,X2))
    | ~ v1_xboole_0(X1)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_52,plain,
    ( v1_relat_1(X1)
    | ~ v1_xboole_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

cnf(c_0_53,negated_conjecture,
    ( k8_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0,k2_struct_0(esk3_0)) != k2_struct_0(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_54,negated_conjecture,
    ( k2_struct_0(esk3_0) = u1_struct_0(esk3_0) ),
    inference(spm,[status(thm)],[c_0_36,c_0_37])).

cnf(c_0_55,negated_conjecture,
    ( k2_struct_0(esk2_0) = u1_struct_0(esk2_0) ),
    inference(spm,[status(thm)],[c_0_36,c_0_38])).

cnf(c_0_56,plain,
    ( k8_relset_1(X2,X3,X1,X4) = k10_relat_1(X1,X4)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_57,plain,
    ( k1_relat_1(k5_relat_1(X1,X2)) = k10_relat_1(X1,k1_relat_1(X2))
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_40])).

cnf(c_0_58,plain,
    ( k1_relat_1(k6_relat_1(X1)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_41])).

cnf(c_0_59,plain,
    ( v1_relat_1(k6_relat_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_42])).

cnf(c_0_60,plain,
    ( k5_relat_1(X1,k6_relat_1(X2)) = X1
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(k2_relat_1(X1),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_43])).

cnf(c_0_61,negated_conjecture,
    ( r1_tarski(k2_relat_1(esk4_0),u1_struct_0(esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44,c_0_45]),c_0_46])])).

fof(c_0_62,plain,(
    ! [X49,X50] :
      ( ( ~ v1_partfun1(X50,X49)
        | k1_relat_1(X50) = X49
        | ~ v1_relat_1(X50)
        | ~ v4_relat_1(X50,X49) )
      & ( k1_relat_1(X50) != X49
        | v1_partfun1(X50,X49)
        | ~ v1_relat_1(X50)
        | ~ v4_relat_1(X50,X49) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d4_partfun1])])])).

cnf(c_0_63,plain,
    ( X1 = k1_xboole_0
    | v1_partfun1(X2,X3)
    | ~ v1_funct_1(X2)
    | ~ v1_funct_2(X2,X3,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X3,X1))) ),
    inference(cn,[status(thm)],[c_0_47])).

cnf(c_0_64,negated_conjecture,
    ( v1_funct_2(esk4_0,u1_struct_0(esk2_0),u1_struct_0(esk3_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_65,negated_conjecture,
    ( v1_funct_1(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_66,plain,
    ( v4_relat_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

fof(c_0_67,plain,(
    ! [X31,X32] :
      ( ~ m1_subset_1(X32,k1_zfmisc_1(X31))
      | k9_relat_1(k6_relat_1(X31),X32) = X32 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t162_funct_1])])).

fof(c_0_68,plain,(
    ! [X22,X23] :
      ( ~ v1_relat_1(X23)
      | k2_relat_1(k7_relat_1(X23,X22)) = k9_relat_1(X23,X22) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t148_relat_1])])).

cnf(c_0_69,plain,
    ( X1 = k1_xboole_0
    | ~ v1_xboole_0(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48,c_0_49]),c_0_48]),c_0_50])])).

cnf(c_0_70,plain,
    ( v1_xboole_0(k7_relat_1(X1,X2))
    | ~ v1_xboole_0(X1) ),
    inference(csr,[status(thm)],[c_0_51,c_0_52])).

cnf(c_0_71,plain,
    ( k2_relat_1(k6_relat_1(X1)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_41])).

cnf(c_0_72,negated_conjecture,
    ( k8_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0,u1_struct_0(esk3_0)) != u1_struct_0(esk2_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_53,c_0_54]),c_0_55])).

cnf(c_0_73,negated_conjecture,
    ( k8_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0,X1) = k10_relat_1(esk4_0,X1) ),
    inference(spm,[status(thm)],[c_0_56,c_0_29])).

cnf(c_0_74,plain,
    ( k1_relat_1(k5_relat_1(X1,k6_relat_1(X2))) = k10_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57,c_0_58]),c_0_59])])).

cnf(c_0_75,negated_conjecture,
    ( k5_relat_1(esk4_0,k6_relat_1(u1_struct_0(esk3_0))) = esk4_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_60,c_0_61]),c_0_46])])).

cnf(c_0_76,plain,
    ( k1_relat_1(X1) = X2
    | ~ v1_partfun1(X1,X2)
    | ~ v1_relat_1(X1)
    | ~ v4_relat_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_62])).

cnf(c_0_77,negated_conjecture,
    ( u1_struct_0(esk3_0) = k1_xboole_0
    | v1_partfun1(esk4_0,u1_struct_0(esk2_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_63,c_0_29]),c_0_64]),c_0_65])])).

cnf(c_0_78,negated_conjecture,
    ( v4_relat_1(esk4_0,u1_struct_0(esk2_0)) ),
    inference(spm,[status(thm)],[c_0_66,c_0_29])).

cnf(c_0_79,plain,
    ( k1_relat_1(X1) = X2
    | ~ v1_xboole_0(k6_relat_1(X2))
    | ~ v1_xboole_0(X1) ),
    inference(spm,[status(thm)],[c_0_58,c_0_49])).

cnf(c_0_80,negated_conjecture,
    ( k2_struct_0(esk2_0) = k1_xboole_0
    | k2_struct_0(esk3_0) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_81,plain,
    ( k9_relat_1(k6_relat_1(X2),X1) = X1
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_67])).

cnf(c_0_82,plain,
    ( k2_relat_1(k7_relat_1(X1,X2)) = k9_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_68])).

cnf(c_0_83,plain,
    ( k7_relat_1(X1,X2) = k1_xboole_0
    | ~ v1_xboole_0(X1) ),
    inference(spm,[status(thm)],[c_0_69,c_0_70])).

cnf(c_0_84,plain,
    ( k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_71,c_0_48])).

cnf(c_0_85,negated_conjecture,
    ( k10_relat_1(esk4_0,u1_struct_0(esk3_0)) != u1_struct_0(esk2_0) ),
    inference(rw,[status(thm)],[c_0_72,c_0_73])).

cnf(c_0_86,negated_conjecture,
    ( k10_relat_1(esk4_0,u1_struct_0(esk3_0)) = k1_relat_1(esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_74,c_0_75]),c_0_46])])).

fof(c_0_87,plain,(
    ! [X10,X11] :
      ( ( k2_zfmisc_1(X10,X11) != k1_xboole_0
        | X10 = k1_xboole_0
        | X11 = k1_xboole_0 )
      & ( X10 != k1_xboole_0
        | k2_zfmisc_1(X10,X11) = k1_xboole_0 )
      & ( X11 != k1_xboole_0
        | k2_zfmisc_1(X10,X11) = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t113_zfmisc_1])])])).

cnf(c_0_88,negated_conjecture,
    ( k1_relat_1(esk4_0) = u1_struct_0(esk2_0)
    | u1_struct_0(esk3_0) = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_76,c_0_77]),c_0_78]),c_0_46])])).

cnf(c_0_89,plain,
    ( k1_relat_1(X1) = k1_xboole_0
    | ~ v1_xboole_0(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_79,c_0_48]),c_0_50])])).

cnf(c_0_90,negated_conjecture,
    ( u1_struct_0(esk2_0) = k1_xboole_0
    | u1_struct_0(esk3_0) != k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_80,c_0_54]),c_0_55])).

cnf(c_0_91,negated_conjecture,
    ( k9_relat_1(k6_relat_1(k2_zfmisc_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0))),esk4_0) = esk4_0 ),
    inference(spm,[status(thm)],[c_0_81,c_0_29])).

cnf(c_0_92,plain,
    ( k9_relat_1(X1,X2) = k1_xboole_0
    | ~ v1_xboole_0(X1) ),
    inference(csr,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_82,c_0_83]),c_0_84]),c_0_52])).

cnf(c_0_93,negated_conjecture,
    ( k1_relat_1(esk4_0) != u1_struct_0(esk2_0) ),
    inference(rw,[status(thm)],[c_0_85,c_0_86])).

cnf(c_0_94,plain,
    ( k2_zfmisc_1(X2,X1) = k1_xboole_0
    | X1 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_87])).

cnf(c_0_95,negated_conjecture,
    ( u1_struct_0(esk2_0) = k1_xboole_0
    | ~ v1_xboole_0(esk4_0) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_88,c_0_89]),c_0_90])).

cnf(c_0_96,negated_conjecture,
    ( esk4_0 = k1_xboole_0
    | ~ v1_xboole_0(k6_relat_1(k2_zfmisc_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0)))) ),
    inference(spm,[status(thm)],[c_0_91,c_0_92])).

cnf(c_0_97,negated_conjecture,
    ( u1_struct_0(esk3_0) = k1_xboole_0 ),
    inference(sr,[status(thm)],[c_0_88,c_0_93])).

cnf(c_0_98,plain,
    ( k2_zfmisc_1(X1,k1_xboole_0) = k1_xboole_0 ),
    inference(er,[status(thm)],[c_0_94])).

cnf(c_0_99,negated_conjecture,
    ( ~ v1_xboole_0(esk4_0) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_93,c_0_89]),c_0_95])).

cnf(c_0_100,negated_conjecture,
    ( esk4_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_96,c_0_97]),c_0_98]),c_0_48]),c_0_50])])).

cnf(c_0_101,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_99,c_0_100]),c_0_50])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.34  % Computer   : n012.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 17:18:52 EST 2020
% 0.12/0.35  % CPUTime    : 
% 0.12/0.35  # Version: 2.5pre002
% 0.12/0.35  # No SInE strategy applied
% 0.12/0.35  # Trying AutoSched0 for 299 seconds
% 0.21/0.43  # AutoSched0-Mode selected heuristic G_E___110_C45_F1_PI_SE_CS_SP_PS_S4S
% 0.21/0.43  # and selection function SelectNewComplexAHPNS.
% 0.21/0.43  #
% 0.21/0.43  # Preprocessing time       : 0.045 s
% 0.21/0.43  # Presaturation interreduction done
% 0.21/0.43  
% 0.21/0.43  # Proof found!
% 0.21/0.43  # SZS status Theorem
% 0.21/0.43  # SZS output start CNFRefutation
% 0.21/0.43  fof(t52_tops_2, conjecture, ![X1]:(l1_struct_0(X1)=>![X2]:(l1_struct_0(X2)=>![X3]:(((v1_funct_1(X3)&v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2)))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2)))))=>((k2_struct_0(X2)=k1_xboole_0=>k2_struct_0(X1)=k1_xboole_0)=>k8_relset_1(u1_struct_0(X1),u1_struct_0(X2),X3,k2_struct_0(X2))=k2_struct_0(X1))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t52_tops_2)).
% 0.21/0.43  fof(cc2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(v4_relat_1(X3,X1)&v5_relat_1(X3,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc2_relset_1)).
% 0.21/0.43  fof(cc2_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>v1_relat_1(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc2_relat_1)).
% 0.21/0.43  fof(fc6_relat_1, axiom, ![X1, X2]:v1_relat_1(k2_zfmisc_1(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc6_relat_1)).
% 0.21/0.43  fof(d3_struct_0, axiom, ![X1]:(l1_struct_0(X1)=>k2_struct_0(X1)=u1_struct_0(X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d3_struct_0)).
% 0.21/0.43  fof(d19_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(v5_relat_1(X2,X1)<=>r1_tarski(k2_relat_1(X2),X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d19_relat_1)).
% 0.21/0.43  fof(t132_funct_2, axiom, ![X1, X2, X3]:((v1_funct_1(X3)&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>(((v1_funct_1(X3)&v1_funct_2(X3,X1,X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>((X2=k1_xboole_0&X1!=k1_xboole_0)|v1_partfun1(X3,X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t132_funct_2)).
% 0.21/0.43  fof(t8_boole, axiom, ![X1, X2]:~(((v1_xboole_0(X1)&X1!=X2)&v1_xboole_0(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t8_boole)).
% 0.21/0.43  fof(fc17_relat_1, axiom, ![X1, X2]:((v1_xboole_0(X1)&v1_relat_1(X1))=>(v1_xboole_0(k7_relat_1(X1,X2))&v1_relat_1(k7_relat_1(X1,X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc17_relat_1)).
% 0.21/0.43  fof(cc1_relat_1, axiom, ![X1]:(v1_xboole_0(X1)=>v1_relat_1(X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc1_relat_1)).
% 0.21/0.43  fof(redefinition_k8_relset_1, axiom, ![X1, X2, X3, X4]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k8_relset_1(X1,X2,X3,X4)=k10_relat_1(X3,X4)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k8_relset_1)).
% 0.21/0.43  fof(t182_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>![X2]:(v1_relat_1(X2)=>k1_relat_1(k5_relat_1(X1,X2))=k10_relat_1(X1,k1_relat_1(X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t182_relat_1)).
% 0.21/0.43  fof(t71_relat_1, axiom, ![X1]:(k1_relat_1(k6_relat_1(X1))=X1&k2_relat_1(k6_relat_1(X1))=X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t71_relat_1)).
% 0.21/0.43  fof(dt_k6_relat_1, axiom, ![X1]:v1_relat_1(k6_relat_1(X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k6_relat_1)).
% 0.21/0.43  fof(t79_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(r1_tarski(k2_relat_1(X2),X1)=>k5_relat_1(X2,k6_relat_1(X1))=X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t79_relat_1)).
% 0.21/0.43  fof(t81_relat_1, axiom, k6_relat_1(k1_xboole_0)=k1_xboole_0, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t81_relat_1)).
% 0.21/0.43  fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc1_xboole_0)).
% 0.21/0.43  fof(d4_partfun1, axiom, ![X1, X2]:((v1_relat_1(X2)&v4_relat_1(X2,X1))=>(v1_partfun1(X2,X1)<=>k1_relat_1(X2)=X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d4_partfun1)).
% 0.21/0.43  fof(t162_funct_1, axiom, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>k9_relat_1(k6_relat_1(X1),X2)=X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t162_funct_1)).
% 0.21/0.43  fof(t148_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>k2_relat_1(k7_relat_1(X2,X1))=k9_relat_1(X2,X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t148_relat_1)).
% 0.21/0.43  fof(t113_zfmisc_1, axiom, ![X1, X2]:(k2_zfmisc_1(X1,X2)=k1_xboole_0<=>(X1=k1_xboole_0|X2=k1_xboole_0)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t113_zfmisc_1)).
% 0.21/0.43  fof(c_0_21, negated_conjecture, ~(![X1]:(l1_struct_0(X1)=>![X2]:(l1_struct_0(X2)=>![X3]:(((v1_funct_1(X3)&v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2)))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2)))))=>((k2_struct_0(X2)=k1_xboole_0=>k2_struct_0(X1)=k1_xboole_0)=>k8_relset_1(u1_struct_0(X1),u1_struct_0(X2),X3,k2_struct_0(X2))=k2_struct_0(X1)))))), inference(assume_negation,[status(cth)],[t52_tops_2])).
% 0.21/0.43  fof(c_0_22, plain, ![X35, X36, X37]:((v4_relat_1(X37,X35)|~m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X35,X36))))&(v5_relat_1(X37,X36)|~m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X35,X36))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).
% 0.21/0.43  fof(c_0_23, negated_conjecture, (l1_struct_0(esk2_0)&(l1_struct_0(esk3_0)&(((v1_funct_1(esk4_0)&v1_funct_2(esk4_0,u1_struct_0(esk2_0),u1_struct_0(esk3_0)))&m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0)))))&((k2_struct_0(esk3_0)!=k1_xboole_0|k2_struct_0(esk2_0)=k1_xboole_0)&k8_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0,k2_struct_0(esk3_0))!=k2_struct_0(esk2_0))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_21])])])).
% 0.21/0.43  fof(c_0_24, plain, ![X13, X14]:(~v1_relat_1(X13)|(~m1_subset_1(X14,k1_zfmisc_1(X13))|v1_relat_1(X14))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relat_1])])])).
% 0.21/0.43  fof(c_0_25, plain, ![X20, X21]:v1_relat_1(k2_zfmisc_1(X20,X21)), inference(variable_rename,[status(thm)],[fc6_relat_1])).
% 0.21/0.43  fof(c_0_26, plain, ![X54]:(~l1_struct_0(X54)|k2_struct_0(X54)=u1_struct_0(X54)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_struct_0])])).
% 0.21/0.43  fof(c_0_27, plain, ![X15, X16]:((~v5_relat_1(X16,X15)|r1_tarski(k2_relat_1(X16),X15)|~v1_relat_1(X16))&(~r1_tarski(k2_relat_1(X16),X15)|v5_relat_1(X16,X15)|~v1_relat_1(X16))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d19_relat_1])])])).
% 0.21/0.43  cnf(c_0_28, plain, (v5_relat_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.21/0.43  cnf(c_0_29, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0))))), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.21/0.43  cnf(c_0_30, plain, (v1_relat_1(X2)|~v1_relat_1(X1)|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.21/0.43  cnf(c_0_31, plain, (v1_relat_1(k2_zfmisc_1(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.21/0.43  fof(c_0_32, plain, ![X51, X52, X53]:((X52=k1_xboole_0|v1_partfun1(X53,X51)|(~v1_funct_1(X53)|~v1_funct_2(X53,X51,X52)|~m1_subset_1(X53,k1_zfmisc_1(k2_zfmisc_1(X51,X52))))|(~v1_funct_1(X53)|~m1_subset_1(X53,k1_zfmisc_1(k2_zfmisc_1(X51,X52)))))&(X51!=k1_xboole_0|v1_partfun1(X53,X51)|(~v1_funct_1(X53)|~v1_funct_2(X53,X51,X52)|~m1_subset_1(X53,k1_zfmisc_1(k2_zfmisc_1(X51,X52))))|(~v1_funct_1(X53)|~m1_subset_1(X53,k1_zfmisc_1(k2_zfmisc_1(X51,X52)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t132_funct_2])])])).
% 0.21/0.43  fof(c_0_33, plain, ![X8, X9]:(~v1_xboole_0(X8)|X8=X9|~v1_xboole_0(X9)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t8_boole])])).
% 0.21/0.43  fof(c_0_34, plain, ![X18, X19]:((v1_xboole_0(k7_relat_1(X18,X19))|(~v1_xboole_0(X18)|~v1_relat_1(X18)))&(v1_relat_1(k7_relat_1(X18,X19))|(~v1_xboole_0(X18)|~v1_relat_1(X18)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[fc17_relat_1])])])).
% 0.21/0.43  fof(c_0_35, plain, ![X12]:(~v1_xboole_0(X12)|v1_relat_1(X12)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relat_1])])).
% 0.21/0.43  cnf(c_0_36, plain, (k2_struct_0(X1)=u1_struct_0(X1)|~l1_struct_0(X1)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.21/0.43  cnf(c_0_37, negated_conjecture, (l1_struct_0(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.21/0.43  cnf(c_0_38, negated_conjecture, (l1_struct_0(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.21/0.43  fof(c_0_39, plain, ![X38, X39, X40, X41]:(~m1_subset_1(X40,k1_zfmisc_1(k2_zfmisc_1(X38,X39)))|k8_relset_1(X38,X39,X40,X41)=k10_relat_1(X40,X41)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k8_relset_1])])).
% 0.21/0.43  fof(c_0_40, plain, ![X24, X25]:(~v1_relat_1(X24)|(~v1_relat_1(X25)|k1_relat_1(k5_relat_1(X24,X25))=k10_relat_1(X24,k1_relat_1(X25)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t182_relat_1])])])).
% 0.21/0.43  fof(c_0_41, plain, ![X28]:(k1_relat_1(k6_relat_1(X28))=X28&k2_relat_1(k6_relat_1(X28))=X28), inference(variable_rename,[status(thm)],[t71_relat_1])).
% 0.21/0.43  fof(c_0_42, plain, ![X17]:v1_relat_1(k6_relat_1(X17)), inference(variable_rename,[status(thm)],[dt_k6_relat_1])).
% 0.21/0.43  fof(c_0_43, plain, ![X29, X30]:(~v1_relat_1(X30)|(~r1_tarski(k2_relat_1(X30),X29)|k5_relat_1(X30,k6_relat_1(X29))=X30)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t79_relat_1])])).
% 0.21/0.43  cnf(c_0_44, plain, (r1_tarski(k2_relat_1(X1),X2)|~v5_relat_1(X1,X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.21/0.43  cnf(c_0_45, negated_conjecture, (v5_relat_1(esk4_0,u1_struct_0(esk3_0))), inference(spm,[status(thm)],[c_0_28, c_0_29])).
% 0.21/0.43  cnf(c_0_46, negated_conjecture, (v1_relat_1(esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_30, c_0_29]), c_0_31])])).
% 0.21/0.43  cnf(c_0_47, plain, (X1=k1_xboole_0|v1_partfun1(X2,X3)|~v1_funct_1(X2)|~v1_funct_2(X2,X3,X1)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X3,X1)))|~v1_funct_1(X2)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X3,X1)))), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.21/0.43  cnf(c_0_48, plain, (k6_relat_1(k1_xboole_0)=k1_xboole_0), inference(split_conjunct,[status(thm)],[t81_relat_1])).
% 0.21/0.43  cnf(c_0_49, plain, (X1=X2|~v1_xboole_0(X1)|~v1_xboole_0(X2)), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.21/0.43  cnf(c_0_50, plain, (v1_xboole_0(k1_xboole_0)), inference(split_conjunct,[status(thm)],[fc1_xboole_0])).
% 0.21/0.43  cnf(c_0_51, plain, (v1_xboole_0(k7_relat_1(X1,X2))|~v1_xboole_0(X1)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.21/0.43  cnf(c_0_52, plain, (v1_relat_1(X1)|~v1_xboole_0(X1)), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.21/0.43  cnf(c_0_53, negated_conjecture, (k8_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0,k2_struct_0(esk3_0))!=k2_struct_0(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.21/0.43  cnf(c_0_54, negated_conjecture, (k2_struct_0(esk3_0)=u1_struct_0(esk3_0)), inference(spm,[status(thm)],[c_0_36, c_0_37])).
% 0.21/0.43  cnf(c_0_55, negated_conjecture, (k2_struct_0(esk2_0)=u1_struct_0(esk2_0)), inference(spm,[status(thm)],[c_0_36, c_0_38])).
% 0.21/0.43  cnf(c_0_56, plain, (k8_relset_1(X2,X3,X1,X4)=k10_relat_1(X1,X4)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.21/0.43  cnf(c_0_57, plain, (k1_relat_1(k5_relat_1(X1,X2))=k10_relat_1(X1,k1_relat_1(X2))|~v1_relat_1(X1)|~v1_relat_1(X2)), inference(split_conjunct,[status(thm)],[c_0_40])).
% 0.21/0.43  cnf(c_0_58, plain, (k1_relat_1(k6_relat_1(X1))=X1), inference(split_conjunct,[status(thm)],[c_0_41])).
% 0.21/0.43  cnf(c_0_59, plain, (v1_relat_1(k6_relat_1(X1))), inference(split_conjunct,[status(thm)],[c_0_42])).
% 0.21/0.43  cnf(c_0_60, plain, (k5_relat_1(X1,k6_relat_1(X2))=X1|~v1_relat_1(X1)|~r1_tarski(k2_relat_1(X1),X2)), inference(split_conjunct,[status(thm)],[c_0_43])).
% 0.21/0.43  cnf(c_0_61, negated_conjecture, (r1_tarski(k2_relat_1(esk4_0),u1_struct_0(esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44, c_0_45]), c_0_46])])).
% 0.21/0.43  fof(c_0_62, plain, ![X49, X50]:((~v1_partfun1(X50,X49)|k1_relat_1(X50)=X49|(~v1_relat_1(X50)|~v4_relat_1(X50,X49)))&(k1_relat_1(X50)!=X49|v1_partfun1(X50,X49)|(~v1_relat_1(X50)|~v4_relat_1(X50,X49)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d4_partfun1])])])).
% 0.21/0.43  cnf(c_0_63, plain, (X1=k1_xboole_0|v1_partfun1(X2,X3)|~v1_funct_1(X2)|~v1_funct_2(X2,X3,X1)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X3,X1)))), inference(cn,[status(thm)],[c_0_47])).
% 0.21/0.43  cnf(c_0_64, negated_conjecture, (v1_funct_2(esk4_0,u1_struct_0(esk2_0),u1_struct_0(esk3_0))), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.21/0.43  cnf(c_0_65, negated_conjecture, (v1_funct_1(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.21/0.43  cnf(c_0_66, plain, (v4_relat_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.21/0.43  fof(c_0_67, plain, ![X31, X32]:(~m1_subset_1(X32,k1_zfmisc_1(X31))|k9_relat_1(k6_relat_1(X31),X32)=X32), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t162_funct_1])])).
% 0.21/0.43  fof(c_0_68, plain, ![X22, X23]:(~v1_relat_1(X23)|k2_relat_1(k7_relat_1(X23,X22))=k9_relat_1(X23,X22)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t148_relat_1])])).
% 0.21/0.43  cnf(c_0_69, plain, (X1=k1_xboole_0|~v1_xboole_0(X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48, c_0_49]), c_0_48]), c_0_50])])).
% 0.21/0.43  cnf(c_0_70, plain, (v1_xboole_0(k7_relat_1(X1,X2))|~v1_xboole_0(X1)), inference(csr,[status(thm)],[c_0_51, c_0_52])).
% 0.21/0.43  cnf(c_0_71, plain, (k2_relat_1(k6_relat_1(X1))=X1), inference(split_conjunct,[status(thm)],[c_0_41])).
% 0.21/0.43  cnf(c_0_72, negated_conjecture, (k8_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0,u1_struct_0(esk3_0))!=u1_struct_0(esk2_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_53, c_0_54]), c_0_55])).
% 0.21/0.43  cnf(c_0_73, negated_conjecture, (k8_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0,X1)=k10_relat_1(esk4_0,X1)), inference(spm,[status(thm)],[c_0_56, c_0_29])).
% 0.21/0.43  cnf(c_0_74, plain, (k1_relat_1(k5_relat_1(X1,k6_relat_1(X2)))=k10_relat_1(X1,X2)|~v1_relat_1(X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57, c_0_58]), c_0_59])])).
% 0.21/0.43  cnf(c_0_75, negated_conjecture, (k5_relat_1(esk4_0,k6_relat_1(u1_struct_0(esk3_0)))=esk4_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_60, c_0_61]), c_0_46])])).
% 0.21/0.43  cnf(c_0_76, plain, (k1_relat_1(X1)=X2|~v1_partfun1(X1,X2)|~v1_relat_1(X1)|~v4_relat_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_62])).
% 0.21/0.43  cnf(c_0_77, negated_conjecture, (u1_struct_0(esk3_0)=k1_xboole_0|v1_partfun1(esk4_0,u1_struct_0(esk2_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_63, c_0_29]), c_0_64]), c_0_65])])).
% 0.21/0.43  cnf(c_0_78, negated_conjecture, (v4_relat_1(esk4_0,u1_struct_0(esk2_0))), inference(spm,[status(thm)],[c_0_66, c_0_29])).
% 0.21/0.43  cnf(c_0_79, plain, (k1_relat_1(X1)=X2|~v1_xboole_0(k6_relat_1(X2))|~v1_xboole_0(X1)), inference(spm,[status(thm)],[c_0_58, c_0_49])).
% 0.21/0.43  cnf(c_0_80, negated_conjecture, (k2_struct_0(esk2_0)=k1_xboole_0|k2_struct_0(esk3_0)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.21/0.43  cnf(c_0_81, plain, (k9_relat_1(k6_relat_1(X2),X1)=X1|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_67])).
% 0.21/0.43  cnf(c_0_82, plain, (k2_relat_1(k7_relat_1(X1,X2))=k9_relat_1(X1,X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_68])).
% 0.21/0.43  cnf(c_0_83, plain, (k7_relat_1(X1,X2)=k1_xboole_0|~v1_xboole_0(X1)), inference(spm,[status(thm)],[c_0_69, c_0_70])).
% 0.21/0.43  cnf(c_0_84, plain, (k2_relat_1(k1_xboole_0)=k1_xboole_0), inference(spm,[status(thm)],[c_0_71, c_0_48])).
% 0.21/0.43  cnf(c_0_85, negated_conjecture, (k10_relat_1(esk4_0,u1_struct_0(esk3_0))!=u1_struct_0(esk2_0)), inference(rw,[status(thm)],[c_0_72, c_0_73])).
% 0.21/0.43  cnf(c_0_86, negated_conjecture, (k10_relat_1(esk4_0,u1_struct_0(esk3_0))=k1_relat_1(esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_74, c_0_75]), c_0_46])])).
% 0.21/0.43  fof(c_0_87, plain, ![X10, X11]:((k2_zfmisc_1(X10,X11)!=k1_xboole_0|(X10=k1_xboole_0|X11=k1_xboole_0))&((X10!=k1_xboole_0|k2_zfmisc_1(X10,X11)=k1_xboole_0)&(X11!=k1_xboole_0|k2_zfmisc_1(X10,X11)=k1_xboole_0))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t113_zfmisc_1])])])).
% 0.21/0.43  cnf(c_0_88, negated_conjecture, (k1_relat_1(esk4_0)=u1_struct_0(esk2_0)|u1_struct_0(esk3_0)=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_76, c_0_77]), c_0_78]), c_0_46])])).
% 0.21/0.43  cnf(c_0_89, plain, (k1_relat_1(X1)=k1_xboole_0|~v1_xboole_0(X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_79, c_0_48]), c_0_50])])).
% 0.21/0.43  cnf(c_0_90, negated_conjecture, (u1_struct_0(esk2_0)=k1_xboole_0|u1_struct_0(esk3_0)!=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_80, c_0_54]), c_0_55])).
% 0.21/0.43  cnf(c_0_91, negated_conjecture, (k9_relat_1(k6_relat_1(k2_zfmisc_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0))),esk4_0)=esk4_0), inference(spm,[status(thm)],[c_0_81, c_0_29])).
% 0.21/0.43  cnf(c_0_92, plain, (k9_relat_1(X1,X2)=k1_xboole_0|~v1_xboole_0(X1)), inference(csr,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_82, c_0_83]), c_0_84]), c_0_52])).
% 0.21/0.43  cnf(c_0_93, negated_conjecture, (k1_relat_1(esk4_0)!=u1_struct_0(esk2_0)), inference(rw,[status(thm)],[c_0_85, c_0_86])).
% 0.21/0.43  cnf(c_0_94, plain, (k2_zfmisc_1(X2,X1)=k1_xboole_0|X1!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_87])).
% 0.21/0.43  cnf(c_0_95, negated_conjecture, (u1_struct_0(esk2_0)=k1_xboole_0|~v1_xboole_0(esk4_0)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_88, c_0_89]), c_0_90])).
% 0.21/0.43  cnf(c_0_96, negated_conjecture, (esk4_0=k1_xboole_0|~v1_xboole_0(k6_relat_1(k2_zfmisc_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0))))), inference(spm,[status(thm)],[c_0_91, c_0_92])).
% 0.21/0.43  cnf(c_0_97, negated_conjecture, (u1_struct_0(esk3_0)=k1_xboole_0), inference(sr,[status(thm)],[c_0_88, c_0_93])).
% 0.21/0.43  cnf(c_0_98, plain, (k2_zfmisc_1(X1,k1_xboole_0)=k1_xboole_0), inference(er,[status(thm)],[c_0_94])).
% 0.21/0.43  cnf(c_0_99, negated_conjecture, (~v1_xboole_0(esk4_0)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_93, c_0_89]), c_0_95])).
% 0.21/0.43  cnf(c_0_100, negated_conjecture, (esk4_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_96, c_0_97]), c_0_98]), c_0_48]), c_0_50])])).
% 0.21/0.43  cnf(c_0_101, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_99, c_0_100]), c_0_50])]), ['proof']).
% 0.21/0.43  # SZS output end CNFRefutation
% 0.21/0.43  # Proof object total steps             : 102
% 0.21/0.43  # Proof object clause steps            : 61
% 0.21/0.43  # Proof object formula steps           : 41
% 0.21/0.43  # Proof object conjectures             : 32
% 0.21/0.43  # Proof object clause conjectures      : 29
% 0.21/0.43  # Proof object formula conjectures     : 3
% 0.21/0.43  # Proof object initial clauses used    : 29
% 0.21/0.43  # Proof object initial formulas used   : 21
% 0.21/0.43  # Proof object generating inferences   : 22
% 0.21/0.43  # Proof object simplifying inferences  : 43
% 0.21/0.43  # Training examples: 0 positive, 0 negative
% 0.21/0.43  # Parsed axioms                        : 24
% 0.21/0.43  # Removed by relevancy pruning/SinE    : 0
% 0.21/0.43  # Initial clauses                      : 39
% 0.21/0.43  # Removed in clause preprocessing      : 0
% 0.21/0.43  # Initial clauses in saturation        : 39
% 0.21/0.43  # Processed clauses                    : 384
% 0.21/0.43  # ...of these trivial                  : 7
% 0.21/0.43  # ...subsumed                          : 168
% 0.21/0.43  # ...remaining for further processing  : 209
% 0.21/0.43  # Other redundant clauses eliminated   : 18
% 0.21/0.43  # Clauses deleted for lack of memory   : 0
% 0.21/0.43  # Backward-subsumed                    : 5
% 0.21/0.43  # Backward-rewritten                   : 60
% 0.21/0.43  # Generated clauses                    : 630
% 0.21/0.43  # ...of the previous two non-trivial   : 629
% 0.21/0.43  # Contextual simplify-reflections      : 11
% 0.21/0.43  # Paramodulations                      : 611
% 0.21/0.43  # Factorizations                       : 0
% 0.21/0.43  # Equation resolutions                 : 18
% 0.21/0.43  # Propositional unsat checks           : 0
% 0.21/0.43  #    Propositional check models        : 0
% 0.21/0.43  #    Propositional check unsatisfiable : 0
% 0.21/0.43  #    Propositional clauses             : 0
% 0.21/0.43  #    Propositional clauses after purity: 0
% 0.21/0.43  #    Propositional unsat core size     : 0
% 0.21/0.43  #    Propositional preprocessing time  : 0.000
% 0.21/0.43  #    Propositional encoding time       : 0.000
% 0.21/0.43  #    Propositional solver time         : 0.000
% 0.21/0.43  #    Success case prop preproc time    : 0.000
% 0.21/0.43  #    Success case prop encoding time   : 0.000
% 0.21/0.43  #    Success case prop solver time     : 0.000
% 0.21/0.43  # Current number of processed clauses  : 100
% 0.21/0.43  #    Positive orientable unit clauses  : 25
% 0.21/0.43  #    Positive unorientable unit clauses: 0
% 0.21/0.43  #    Negative unit clauses             : 0
% 0.21/0.43  #    Non-unit-clauses                  : 75
% 0.21/0.43  # Current number of unprocessed clauses: 310
% 0.21/0.43  # ...number of literals in the above   : 1275
% 0.21/0.43  # Current number of archived formulas  : 0
% 0.21/0.43  # Current number of archived clauses   : 105
% 0.21/0.43  # Clause-clause subsumption calls (NU) : 3294
% 0.21/0.43  # Rec. Clause-clause subsumption calls : 2215
% 0.21/0.43  # Non-unit clause-clause subsumptions  : 184
% 0.21/0.43  # Unit Clause-clause subsumption calls : 206
% 0.21/0.43  # Rewrite failures with RHS unbound    : 0
% 0.21/0.43  # BW rewrite match attempts            : 7
% 0.21/0.43  # BW rewrite match successes           : 6
% 0.21/0.43  # Condensation attempts                : 0
% 0.21/0.43  # Condensation successes               : 0
% 0.21/0.43  # Termbank termtop insertions          : 9551
% 0.21/0.43  
% 0.21/0.43  # -------------------------------------------------
% 0.21/0.43  # User time                : 0.076 s
% 0.21/0.43  # System time              : 0.008 s
% 0.21/0.43  # Total time               : 0.084 s
% 0.21/0.43  # Maximum resident set size: 1604 pages
%------------------------------------------------------------------------------
