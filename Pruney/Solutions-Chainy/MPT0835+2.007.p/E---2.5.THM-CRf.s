%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n008.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:58:06 EST 2020

% Result     : Theorem 0.20s
% Output     : CNFRefutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   89 ( 286 expanded)
%              Number of clauses        :   54 ( 122 expanded)
%              Number of leaves         :   17 (  71 expanded)
%              Depth                    :   20
%              Number of atoms          :  210 ( 674 expanded)
%              Number of equality atoms :   71 ( 256 expanded)
%              Maximal formula depth    :    8 (   4 average)
%              Maximal clause size      :    7 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t39_relset_1,conjecture,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
     => ( k7_relset_1(X2,X1,X3,k8_relset_1(X2,X1,X3,X1)) = k2_relset_1(X2,X1,X3)
        & k8_relset_1(X2,X1,X3,k7_relset_1(X2,X1,X3,X2)) = k1_relset_1(X2,X1,X3) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t39_relset_1)).

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

fof(redefinition_k8_relset_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k8_relset_1(X1,X2,X3,X4) = k10_relat_1(X3,X4) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k8_relset_1)).

fof(t209_relat_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v4_relat_1(X2,X1) )
     => X2 = k7_relat_1(X2,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t209_relat_1)).

fof(t148_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => k2_relat_1(k7_relat_1(X2,X1)) = k9_relat_1(X2,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t148_relat_1)).

fof(redefinition_k7_relset_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k7_relset_1(X1,X2,X3,X4) = k9_relat_1(X3,X4) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k7_relset_1)).

fof(t182_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( v1_relat_1(X2)
         => k1_relat_1(k5_relat_1(X1,X2)) = k10_relat_1(X1,k1_relat_1(X2)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t182_relat_1)).

fof(t71_relat_1,axiom,(
    ! [X1] :
      ( k1_relat_1(k6_relat_1(X1)) = X1
      & k2_relat_1(k6_relat_1(X1)) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_relat_1)).

fof(dt_k6_relat_1,axiom,(
    ! [X1] : v1_relat_1(k6_relat_1(X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k6_relat_1)).

fof(t79_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( r1_tarski(k2_relat_1(X2),X1)
       => k5_relat_1(X2,k6_relat_1(X1)) = X2 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t79_relat_1)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).

fof(t38_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ( k7_relset_1(X1,X2,X3,X1) = k2_relset_1(X1,X2,X3)
        & k8_relset_1(X1,X2,X3,X2) = k1_relset_1(X1,X2,X3) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t38_relset_1)).

fof(t3_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X2))
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_subset)).

fof(d19_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( v5_relat_1(X2,X1)
      <=> r1_tarski(k2_relat_1(X2),X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d19_relat_1)).

fof(t13_relset_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
     => ( r1_tarski(k1_relat_1(X4),X2)
       => m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t13_relset_1)).

fof(redefinition_k2_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k2_relset_1(X1,X2,X3) = k2_relat_1(X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k2_relset_1)).

fof(c_0_17,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
       => ( k7_relset_1(X2,X1,X3,k8_relset_1(X2,X1,X3,X1)) = k2_relset_1(X2,X1,X3)
          & k8_relset_1(X2,X1,X3,k7_relset_1(X2,X1,X3,X2)) = k1_relset_1(X2,X1,X3) ) ) ),
    inference(assume_negation,[status(cth)],[t39_relset_1])).

fof(c_0_18,plain,(
    ! [X24,X25,X26] :
      ( ( v4_relat_1(X26,X24)
        | ~ m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X24,X25))) )
      & ( v5_relat_1(X26,X25)
        | ~ m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X24,X25))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).

fof(c_0_19,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk1_0)))
    & ( k7_relset_1(esk2_0,esk1_0,esk3_0,k8_relset_1(esk2_0,esk1_0,esk3_0,esk1_0)) != k2_relset_1(esk2_0,esk1_0,esk3_0)
      | k8_relset_1(esk2_0,esk1_0,esk3_0,k7_relset_1(esk2_0,esk1_0,esk3_0,esk2_0)) != k1_relset_1(esk2_0,esk1_0,esk3_0) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_17])])])).

fof(c_0_20,plain,(
    ! [X21,X22,X23] :
      ( ~ m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22)))
      | v1_relat_1(X23) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).

fof(c_0_21,plain,(
    ! [X34,X35,X36,X37] :
      ( ~ m1_subset_1(X36,k1_zfmisc_1(k2_zfmisc_1(X34,X35)))
      | k8_relset_1(X34,X35,X36,X37) = k10_relat_1(X36,X37) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k8_relset_1])])).

fof(c_0_22,plain,(
    ! [X16,X17] :
      ( ~ v1_relat_1(X17)
      | ~ v4_relat_1(X17,X16)
      | X17 = k7_relat_1(X17,X16) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t209_relat_1])])).

cnf(c_0_23,plain,
    ( v4_relat_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_24,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_25,plain,
    ( v1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_26,plain,
    ( k8_relset_1(X2,X3,X1,X4) = k10_relat_1(X1,X4)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

fof(c_0_27,plain,(
    ! [X12,X13] :
      ( ~ v1_relat_1(X13)
      | k2_relat_1(k7_relat_1(X13,X12)) = k9_relat_1(X13,X12) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t148_relat_1])])).

cnf(c_0_28,plain,
    ( X1 = k7_relat_1(X1,X2)
    | ~ v1_relat_1(X1)
    | ~ v4_relat_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_29,negated_conjecture,
    ( v4_relat_1(esk3_0,esk2_0) ),
    inference(spm,[status(thm)],[c_0_23,c_0_24])).

cnf(c_0_30,negated_conjecture,
    ( v1_relat_1(esk3_0) ),
    inference(spm,[status(thm)],[c_0_25,c_0_24])).

cnf(c_0_31,negated_conjecture,
    ( k7_relset_1(esk2_0,esk1_0,esk3_0,k8_relset_1(esk2_0,esk1_0,esk3_0,esk1_0)) != k2_relset_1(esk2_0,esk1_0,esk3_0)
    | k8_relset_1(esk2_0,esk1_0,esk3_0,k7_relset_1(esk2_0,esk1_0,esk3_0,esk2_0)) != k1_relset_1(esk2_0,esk1_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_32,plain,
    ( k8_relset_1(X1,X2,X3,X4) = k8_relset_1(X5,X6,X3,X4)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X5,X6))) ),
    inference(spm,[status(thm)],[c_0_26,c_0_26])).

fof(c_0_33,plain,(
    ! [X30,X31,X32,X33] :
      ( ~ m1_subset_1(X32,k1_zfmisc_1(k2_zfmisc_1(X30,X31)))
      | k7_relset_1(X30,X31,X32,X33) = k9_relat_1(X32,X33) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k7_relset_1])])).

cnf(c_0_34,plain,
    ( k2_relat_1(k7_relat_1(X1,X2)) = k9_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_35,negated_conjecture,
    ( k7_relat_1(esk3_0,esk2_0) = esk3_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28,c_0_29]),c_0_30])])).

fof(c_0_36,plain,(
    ! [X14,X15] :
      ( ~ v1_relat_1(X14)
      | ~ v1_relat_1(X15)
      | k1_relat_1(k5_relat_1(X14,X15)) = k10_relat_1(X14,k1_relat_1(X15)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t182_relat_1])])])).

fof(c_0_37,plain,(
    ! [X18] :
      ( k1_relat_1(k6_relat_1(X18)) = X18
      & k2_relat_1(k6_relat_1(X18)) = X18 ) ),
    inference(variable_rename,[status(thm)],[t71_relat_1])).

fof(c_0_38,plain,(
    ! [X11] : v1_relat_1(k6_relat_1(X11)) ),
    inference(variable_rename,[status(thm)],[dt_k6_relat_1])).

cnf(c_0_39,negated_conjecture,
    ( k7_relset_1(esk2_0,esk1_0,esk3_0,k8_relset_1(esk2_0,esk1_0,esk3_0,esk1_0)) != k2_relset_1(esk2_0,esk1_0,esk3_0)
    | k8_relset_1(X1,X2,esk3_0,k7_relset_1(esk2_0,esk1_0,esk3_0,esk2_0)) != k1_relset_1(esk2_0,esk1_0,esk3_0)
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_32]),c_0_24])])).

cnf(c_0_40,plain,
    ( k7_relset_1(X2,X3,X1,X4) = k9_relat_1(X1,X4)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_41,negated_conjecture,
    ( k9_relat_1(esk3_0,esk2_0) = k2_relat_1(esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34,c_0_35]),c_0_30])])).

cnf(c_0_42,plain,
    ( k1_relat_1(k5_relat_1(X1,X2)) = k10_relat_1(X1,k1_relat_1(X2))
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

cnf(c_0_43,plain,
    ( k1_relat_1(k6_relat_1(X1)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_44,plain,
    ( v1_relat_1(k6_relat_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_38])).

fof(c_0_45,plain,(
    ! [X19,X20] :
      ( ~ v1_relat_1(X20)
      | ~ r1_tarski(k2_relat_1(X20),X19)
      | k5_relat_1(X20,k6_relat_1(X19)) = X20 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t79_relat_1])])).

fof(c_0_46,plain,(
    ! [X5,X6] :
      ( ( r1_tarski(X5,X6)
        | X5 != X6 )
      & ( r1_tarski(X6,X5)
        | X5 != X6 )
      & ( ~ r1_tarski(X5,X6)
        | ~ r1_tarski(X6,X5)
        | X5 = X6 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

cnf(c_0_47,negated_conjecture,
    ( k7_relset_1(esk2_0,esk1_0,esk3_0,k8_relset_1(esk2_0,esk1_0,esk3_0,esk1_0)) != k2_relset_1(esk2_0,esk1_0,esk3_0)
    | k10_relat_1(esk3_0,k7_relset_1(esk2_0,esk1_0,esk3_0,esk2_0)) != k1_relset_1(esk2_0,esk1_0,esk3_0)
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(spm,[status(thm)],[c_0_39,c_0_26])).

cnf(c_0_48,negated_conjecture,
    ( k7_relset_1(X1,X2,esk3_0,esk2_0) = k2_relat_1(esk3_0)
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(spm,[status(thm)],[c_0_40,c_0_41])).

cnf(c_0_49,plain,
    ( k1_relat_1(k5_relat_1(X1,k6_relat_1(X2))) = k10_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_42,c_0_43]),c_0_44])])).

cnf(c_0_50,plain,
    ( k5_relat_1(X1,k6_relat_1(X2)) = X1
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(k2_relat_1(X1),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_45])).

cnf(c_0_51,plain,
    ( r1_tarski(X1,X2)
    | X2 != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_46])).

fof(c_0_52,plain,(
    ! [X42,X43,X44] :
      ( ( k7_relset_1(X42,X43,X44,X42) = k2_relset_1(X42,X43,X44)
        | ~ m1_subset_1(X44,k1_zfmisc_1(k2_zfmisc_1(X42,X43))) )
      & ( k8_relset_1(X42,X43,X44,X43) = k1_relset_1(X42,X43,X44)
        | ~ m1_subset_1(X44,k1_zfmisc_1(k2_zfmisc_1(X42,X43))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t38_relset_1])])])).

cnf(c_0_53,negated_conjecture,
    ( k7_relset_1(esk2_0,esk1_0,esk3_0,k8_relset_1(esk2_0,esk1_0,esk3_0,esk1_0)) != k2_relset_1(esk2_0,esk1_0,esk3_0)
    | k10_relat_1(esk3_0,k2_relat_1(esk3_0)) != k1_relset_1(esk2_0,esk1_0,esk3_0)
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47,c_0_48]),c_0_24])])).

cnf(c_0_54,plain,
    ( k10_relat_1(X1,X2) = k1_relat_1(X1)
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(k2_relat_1(X1),X2) ),
    inference(spm,[status(thm)],[c_0_49,c_0_50])).

cnf(c_0_55,plain,
    ( r1_tarski(X1,X1) ),
    inference(er,[status(thm)],[c_0_51])).

cnf(c_0_56,plain,
    ( k8_relset_1(X1,X2,X3,X2) = k1_relset_1(X1,X2,X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_52])).

fof(c_0_57,plain,(
    ! [X7,X8] :
      ( ( ~ m1_subset_1(X7,k1_zfmisc_1(X8))
        | r1_tarski(X7,X8) )
      & ( ~ r1_tarski(X7,X8)
        | m1_subset_1(X7,k1_zfmisc_1(X8)) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).

fof(c_0_58,plain,(
    ! [X9,X10] :
      ( ( ~ v5_relat_1(X10,X9)
        | r1_tarski(k2_relat_1(X10),X9)
        | ~ v1_relat_1(X10) )
      & ( ~ r1_tarski(k2_relat_1(X10),X9)
        | v5_relat_1(X10,X9)
        | ~ v1_relat_1(X10) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d19_relat_1])])])).

cnf(c_0_59,negated_conjecture,
    ( k7_relset_1(esk2_0,esk1_0,esk3_0,k8_relset_1(esk2_0,esk1_0,esk3_0,esk1_0)) != k2_relset_1(esk2_0,esk1_0,esk3_0)
    | k1_relset_1(esk2_0,esk1_0,esk3_0) != k1_relat_1(esk3_0)
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53,c_0_54]),c_0_30]),c_0_55])])).

cnf(c_0_60,plain,
    ( k1_relset_1(X1,X2,X3) = k10_relat_1(X3,X2)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(spm,[status(thm)],[c_0_26,c_0_56])).

cnf(c_0_61,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_57])).

cnf(c_0_62,plain,
    ( r1_tarski(k2_relat_1(X1),X2)
    | ~ v5_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_58])).

cnf(c_0_63,plain,
    ( v5_relat_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

fof(c_0_64,plain,(
    ! [X38,X39,X40,X41] :
      ( ~ m1_subset_1(X41,k1_zfmisc_1(k2_zfmisc_1(X38,X40)))
      | ~ r1_tarski(k1_relat_1(X41),X39)
      | m1_subset_1(X41,k1_zfmisc_1(k2_zfmisc_1(X39,X40))) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t13_relset_1])])).

cnf(c_0_65,negated_conjecture,
    ( k7_relset_1(esk2_0,esk1_0,esk3_0,k8_relset_1(esk2_0,esk1_0,esk3_0,esk1_0)) != k2_relset_1(esk2_0,esk1_0,esk3_0)
    | k10_relat_1(esk3_0,esk1_0) != k1_relat_1(esk3_0)
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_59,c_0_60]),c_0_24])])).

cnf(c_0_66,plain,
    ( m1_subset_1(k2_relat_1(X1),k1_zfmisc_1(X2))
    | ~ v5_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_61,c_0_62])).

cnf(c_0_67,negated_conjecture,
    ( v5_relat_1(esk3_0,esk1_0) ),
    inference(spm,[status(thm)],[c_0_63,c_0_24])).

cnf(c_0_68,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X4,X3)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ r1_tarski(k1_relat_1(X1),X4) ),
    inference(split_conjunct,[status(thm)],[c_0_64])).

cnf(c_0_69,negated_conjecture,
    ( k7_relset_1(esk2_0,esk1_0,esk3_0,k8_relset_1(esk2_0,esk1_0,esk3_0,esk1_0)) != k2_relset_1(esk2_0,esk1_0,esk3_0)
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r1_tarski(k2_relat_1(esk3_0),esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_65,c_0_54]),c_0_30])])).

cnf(c_0_70,plain,
    ( r1_tarski(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_57])).

cnf(c_0_71,negated_conjecture,
    ( m1_subset_1(k2_relat_1(esk3_0),k1_zfmisc_1(esk1_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_66,c_0_67]),c_0_30])])).

cnf(c_0_72,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,esk1_0)))
    | ~ r1_tarski(k1_relat_1(esk3_0),X1) ),
    inference(spm,[status(thm)],[c_0_68,c_0_24])).

cnf(c_0_73,negated_conjecture,
    ( k7_relset_1(esk2_0,esk1_0,esk3_0,k8_relset_1(esk2_0,esk1_0,esk3_0,esk1_0)) != k2_relset_1(esk2_0,esk1_0,esk3_0)
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_69,c_0_70]),c_0_71])])).

cnf(c_0_74,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(esk3_0),esk1_0))) ),
    inference(spm,[status(thm)],[c_0_72,c_0_55])).

cnf(c_0_75,negated_conjecture,
    ( k7_relset_1(esk2_0,esk1_0,esk3_0,k8_relset_1(X1,X2,esk3_0,esk1_0)) != k2_relset_1(esk2_0,esk1_0,esk3_0)
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_73,c_0_32]),c_0_24])])).

cnf(c_0_76,negated_conjecture,
    ( v4_relat_1(esk3_0,k1_relat_1(esk3_0)) ),
    inference(spm,[status(thm)],[c_0_23,c_0_74])).

cnf(c_0_77,negated_conjecture,
    ( k7_relset_1(esk2_0,esk1_0,esk3_0,k10_relat_1(esk3_0,esk1_0)) != k2_relset_1(esk2_0,esk1_0,esk3_0)
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X3,X4))) ),
    inference(spm,[status(thm)],[c_0_75,c_0_26])).

cnf(c_0_78,negated_conjecture,
    ( k7_relat_1(esk3_0,k1_relat_1(esk3_0)) = esk3_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28,c_0_76]),c_0_30])])).

cnf(c_0_79,negated_conjecture,
    ( k7_relset_1(esk2_0,esk1_0,esk3_0,k1_relat_1(esk3_0)) != k2_relset_1(esk2_0,esk1_0,esk3_0)
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))
    | ~ r1_tarski(k2_relat_1(esk3_0),esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_77,c_0_54]),c_0_30])])).

cnf(c_0_80,negated_conjecture,
    ( k9_relat_1(esk3_0,k1_relat_1(esk3_0)) = k2_relat_1(esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34,c_0_78]),c_0_30])])).

cnf(c_0_81,negated_conjecture,
    ( k7_relset_1(esk2_0,esk1_0,esk3_0,k1_relat_1(esk3_0)) != k2_relset_1(esk2_0,esk1_0,esk3_0)
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X3,X4))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_79,c_0_70]),c_0_71])])).

cnf(c_0_82,negated_conjecture,
    ( k7_relset_1(X1,X2,esk3_0,k1_relat_1(esk3_0)) = k2_relat_1(esk3_0)
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(spm,[status(thm)],[c_0_40,c_0_80])).

fof(c_0_83,plain,(
    ! [X27,X28,X29] :
      ( ~ m1_subset_1(X29,k1_zfmisc_1(k2_zfmisc_1(X27,X28)))
      | k2_relset_1(X27,X28,X29) = k2_relat_1(X29) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_relset_1])])).

cnf(c_0_84,negated_conjecture,
    ( k2_relset_1(esk2_0,esk1_0,esk3_0) != k2_relat_1(esk3_0)
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X3,X4))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_81,c_0_82]),c_0_24])])).

cnf(c_0_85,plain,
    ( k2_relset_1(X2,X3,X1) = k2_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_83])).

cnf(c_0_86,negated_conjecture,
    ( ~ m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X3,X4))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_84,c_0_85]),c_0_24])])).

cnf(c_0_87,negated_conjecture,
    ( ~ m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(spm,[status(thm)],[c_0_86,c_0_24])).

cnf(c_0_88,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[c_0_24,c_0_87]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.14  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.35  % Computer   : n008.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % WCLimit    : 600
% 0.14/0.35  % DateTime   : Tue Dec  1 09:25:45 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  # Version: 2.5pre002
% 0.14/0.35  # No SInE strategy applied
% 0.14/0.35  # Trying AutoSched0 for 299 seconds
% 0.20/0.39  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.20/0.39  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.20/0.39  #
% 0.20/0.39  # Preprocessing time       : 0.027 s
% 0.20/0.39  # Presaturation interreduction done
% 0.20/0.39  
% 0.20/0.39  # Proof found!
% 0.20/0.39  # SZS status Theorem
% 0.20/0.39  # SZS output start CNFRefutation
% 0.20/0.39  fof(t39_relset_1, conjecture, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))=>(k7_relset_1(X2,X1,X3,k8_relset_1(X2,X1,X3,X1))=k2_relset_1(X2,X1,X3)&k8_relset_1(X2,X1,X3,k7_relset_1(X2,X1,X3,X2))=k1_relset_1(X2,X1,X3))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t39_relset_1)).
% 0.20/0.39  fof(cc2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(v4_relat_1(X3,X1)&v5_relat_1(X3,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc2_relset_1)).
% 0.20/0.39  fof(cc1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>v1_relat_1(X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc1_relset_1)).
% 0.20/0.39  fof(redefinition_k8_relset_1, axiom, ![X1, X2, X3, X4]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k8_relset_1(X1,X2,X3,X4)=k10_relat_1(X3,X4)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k8_relset_1)).
% 0.20/0.39  fof(t209_relat_1, axiom, ![X1, X2]:((v1_relat_1(X2)&v4_relat_1(X2,X1))=>X2=k7_relat_1(X2,X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t209_relat_1)).
% 0.20/0.39  fof(t148_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>k2_relat_1(k7_relat_1(X2,X1))=k9_relat_1(X2,X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t148_relat_1)).
% 0.20/0.39  fof(redefinition_k7_relset_1, axiom, ![X1, X2, X3, X4]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k7_relset_1(X1,X2,X3,X4)=k9_relat_1(X3,X4)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k7_relset_1)).
% 0.20/0.39  fof(t182_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>![X2]:(v1_relat_1(X2)=>k1_relat_1(k5_relat_1(X1,X2))=k10_relat_1(X1,k1_relat_1(X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t182_relat_1)).
% 0.20/0.39  fof(t71_relat_1, axiom, ![X1]:(k1_relat_1(k6_relat_1(X1))=X1&k2_relat_1(k6_relat_1(X1))=X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t71_relat_1)).
% 0.20/0.39  fof(dt_k6_relat_1, axiom, ![X1]:v1_relat_1(k6_relat_1(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k6_relat_1)).
% 0.20/0.39  fof(t79_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(r1_tarski(k2_relat_1(X2),X1)=>k5_relat_1(X2,k6_relat_1(X1))=X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t79_relat_1)).
% 0.20/0.39  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.20/0.39  fof(t38_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(k7_relset_1(X1,X2,X3,X1)=k2_relset_1(X1,X2,X3)&k8_relset_1(X1,X2,X3,X2)=k1_relset_1(X1,X2,X3))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t38_relset_1)).
% 0.20/0.39  fof(t3_subset, axiom, ![X1, X2]:(m1_subset_1(X1,k1_zfmisc_1(X2))<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_subset)).
% 0.20/0.39  fof(d19_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(v5_relat_1(X2,X1)<=>r1_tarski(k2_relat_1(X2),X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d19_relat_1)).
% 0.20/0.39  fof(t13_relset_1, axiom, ![X1, X2, X3, X4]:(m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))=>(r1_tarski(k1_relat_1(X4),X2)=>m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X3))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t13_relset_1)).
% 0.20/0.39  fof(redefinition_k2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k2_relset_1(X1,X2,X3)=k2_relat_1(X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k2_relset_1)).
% 0.20/0.39  fof(c_0_17, negated_conjecture, ~(![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))=>(k7_relset_1(X2,X1,X3,k8_relset_1(X2,X1,X3,X1))=k2_relset_1(X2,X1,X3)&k8_relset_1(X2,X1,X3,k7_relset_1(X2,X1,X3,X2))=k1_relset_1(X2,X1,X3)))), inference(assume_negation,[status(cth)],[t39_relset_1])).
% 0.20/0.39  fof(c_0_18, plain, ![X24, X25, X26]:((v4_relat_1(X26,X24)|~m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X24,X25))))&(v5_relat_1(X26,X25)|~m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X24,X25))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).
% 0.20/0.39  fof(c_0_19, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk1_0)))&(k7_relset_1(esk2_0,esk1_0,esk3_0,k8_relset_1(esk2_0,esk1_0,esk3_0,esk1_0))!=k2_relset_1(esk2_0,esk1_0,esk3_0)|k8_relset_1(esk2_0,esk1_0,esk3_0,k7_relset_1(esk2_0,esk1_0,esk3_0,esk2_0))!=k1_relset_1(esk2_0,esk1_0,esk3_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_17])])])).
% 0.20/0.39  fof(c_0_20, plain, ![X21, X22, X23]:(~m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22)))|v1_relat_1(X23)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).
% 0.20/0.39  fof(c_0_21, plain, ![X34, X35, X36, X37]:(~m1_subset_1(X36,k1_zfmisc_1(k2_zfmisc_1(X34,X35)))|k8_relset_1(X34,X35,X36,X37)=k10_relat_1(X36,X37)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k8_relset_1])])).
% 0.20/0.39  fof(c_0_22, plain, ![X16, X17]:(~v1_relat_1(X17)|~v4_relat_1(X17,X16)|X17=k7_relat_1(X17,X16)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t209_relat_1])])).
% 0.20/0.39  cnf(c_0_23, plain, (v4_relat_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.20/0.39  cnf(c_0_24, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.20/0.39  cnf(c_0_25, plain, (v1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.20/0.39  cnf(c_0_26, plain, (k8_relset_1(X2,X3,X1,X4)=k10_relat_1(X1,X4)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.20/0.39  fof(c_0_27, plain, ![X12, X13]:(~v1_relat_1(X13)|k2_relat_1(k7_relat_1(X13,X12))=k9_relat_1(X13,X12)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t148_relat_1])])).
% 0.20/0.39  cnf(c_0_28, plain, (X1=k7_relat_1(X1,X2)|~v1_relat_1(X1)|~v4_relat_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.20/0.39  cnf(c_0_29, negated_conjecture, (v4_relat_1(esk3_0,esk2_0)), inference(spm,[status(thm)],[c_0_23, c_0_24])).
% 0.20/0.39  cnf(c_0_30, negated_conjecture, (v1_relat_1(esk3_0)), inference(spm,[status(thm)],[c_0_25, c_0_24])).
% 0.20/0.39  cnf(c_0_31, negated_conjecture, (k7_relset_1(esk2_0,esk1_0,esk3_0,k8_relset_1(esk2_0,esk1_0,esk3_0,esk1_0))!=k2_relset_1(esk2_0,esk1_0,esk3_0)|k8_relset_1(esk2_0,esk1_0,esk3_0,k7_relset_1(esk2_0,esk1_0,esk3_0,esk2_0))!=k1_relset_1(esk2_0,esk1_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.20/0.39  cnf(c_0_32, plain, (k8_relset_1(X1,X2,X3,X4)=k8_relset_1(X5,X6,X3,X4)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X5,X6)))), inference(spm,[status(thm)],[c_0_26, c_0_26])).
% 0.20/0.39  fof(c_0_33, plain, ![X30, X31, X32, X33]:(~m1_subset_1(X32,k1_zfmisc_1(k2_zfmisc_1(X30,X31)))|k7_relset_1(X30,X31,X32,X33)=k9_relat_1(X32,X33)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k7_relset_1])])).
% 0.20/0.39  cnf(c_0_34, plain, (k2_relat_1(k7_relat_1(X1,X2))=k9_relat_1(X1,X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.20/0.39  cnf(c_0_35, negated_conjecture, (k7_relat_1(esk3_0,esk2_0)=esk3_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28, c_0_29]), c_0_30])])).
% 0.20/0.39  fof(c_0_36, plain, ![X14, X15]:(~v1_relat_1(X14)|(~v1_relat_1(X15)|k1_relat_1(k5_relat_1(X14,X15))=k10_relat_1(X14,k1_relat_1(X15)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t182_relat_1])])])).
% 0.20/0.39  fof(c_0_37, plain, ![X18]:(k1_relat_1(k6_relat_1(X18))=X18&k2_relat_1(k6_relat_1(X18))=X18), inference(variable_rename,[status(thm)],[t71_relat_1])).
% 0.20/0.39  fof(c_0_38, plain, ![X11]:v1_relat_1(k6_relat_1(X11)), inference(variable_rename,[status(thm)],[dt_k6_relat_1])).
% 0.20/0.39  cnf(c_0_39, negated_conjecture, (k7_relset_1(esk2_0,esk1_0,esk3_0,k8_relset_1(esk2_0,esk1_0,esk3_0,esk1_0))!=k2_relset_1(esk2_0,esk1_0,esk3_0)|k8_relset_1(X1,X2,esk3_0,k7_relset_1(esk2_0,esk1_0,esk3_0,esk2_0))!=k1_relset_1(esk2_0,esk1_0,esk3_0)|~m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_32]), c_0_24])])).
% 0.20/0.39  cnf(c_0_40, plain, (k7_relset_1(X2,X3,X1,X4)=k9_relat_1(X1,X4)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.20/0.39  cnf(c_0_41, negated_conjecture, (k9_relat_1(esk3_0,esk2_0)=k2_relat_1(esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34, c_0_35]), c_0_30])])).
% 0.20/0.39  cnf(c_0_42, plain, (k1_relat_1(k5_relat_1(X1,X2))=k10_relat_1(X1,k1_relat_1(X2))|~v1_relat_1(X1)|~v1_relat_1(X2)), inference(split_conjunct,[status(thm)],[c_0_36])).
% 0.20/0.39  cnf(c_0_43, plain, (k1_relat_1(k6_relat_1(X1))=X1), inference(split_conjunct,[status(thm)],[c_0_37])).
% 0.20/0.39  cnf(c_0_44, plain, (v1_relat_1(k6_relat_1(X1))), inference(split_conjunct,[status(thm)],[c_0_38])).
% 0.20/0.39  fof(c_0_45, plain, ![X19, X20]:(~v1_relat_1(X20)|(~r1_tarski(k2_relat_1(X20),X19)|k5_relat_1(X20,k6_relat_1(X19))=X20)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t79_relat_1])])).
% 0.20/0.39  fof(c_0_46, plain, ![X5, X6]:(((r1_tarski(X5,X6)|X5!=X6)&(r1_tarski(X6,X5)|X5!=X6))&(~r1_tarski(X5,X6)|~r1_tarski(X6,X5)|X5=X6)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.20/0.39  cnf(c_0_47, negated_conjecture, (k7_relset_1(esk2_0,esk1_0,esk3_0,k8_relset_1(esk2_0,esk1_0,esk3_0,esk1_0))!=k2_relset_1(esk2_0,esk1_0,esk3_0)|k10_relat_1(esk3_0,k7_relset_1(esk2_0,esk1_0,esk3_0,esk2_0))!=k1_relset_1(esk2_0,esk1_0,esk3_0)|~m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(spm,[status(thm)],[c_0_39, c_0_26])).
% 0.20/0.39  cnf(c_0_48, negated_conjecture, (k7_relset_1(X1,X2,esk3_0,esk2_0)=k2_relat_1(esk3_0)|~m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(spm,[status(thm)],[c_0_40, c_0_41])).
% 0.20/0.39  cnf(c_0_49, plain, (k1_relat_1(k5_relat_1(X1,k6_relat_1(X2)))=k10_relat_1(X1,X2)|~v1_relat_1(X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_42, c_0_43]), c_0_44])])).
% 0.20/0.39  cnf(c_0_50, plain, (k5_relat_1(X1,k6_relat_1(X2))=X1|~v1_relat_1(X1)|~r1_tarski(k2_relat_1(X1),X2)), inference(split_conjunct,[status(thm)],[c_0_45])).
% 0.20/0.39  cnf(c_0_51, plain, (r1_tarski(X1,X2)|X2!=X1), inference(split_conjunct,[status(thm)],[c_0_46])).
% 0.20/0.39  fof(c_0_52, plain, ![X42, X43, X44]:((k7_relset_1(X42,X43,X44,X42)=k2_relset_1(X42,X43,X44)|~m1_subset_1(X44,k1_zfmisc_1(k2_zfmisc_1(X42,X43))))&(k8_relset_1(X42,X43,X44,X43)=k1_relset_1(X42,X43,X44)|~m1_subset_1(X44,k1_zfmisc_1(k2_zfmisc_1(X42,X43))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t38_relset_1])])])).
% 0.20/0.39  cnf(c_0_53, negated_conjecture, (k7_relset_1(esk2_0,esk1_0,esk3_0,k8_relset_1(esk2_0,esk1_0,esk3_0,esk1_0))!=k2_relset_1(esk2_0,esk1_0,esk3_0)|k10_relat_1(esk3_0,k2_relat_1(esk3_0))!=k1_relset_1(esk2_0,esk1_0,esk3_0)|~m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47, c_0_48]), c_0_24])])).
% 0.20/0.39  cnf(c_0_54, plain, (k10_relat_1(X1,X2)=k1_relat_1(X1)|~v1_relat_1(X1)|~r1_tarski(k2_relat_1(X1),X2)), inference(spm,[status(thm)],[c_0_49, c_0_50])).
% 0.20/0.39  cnf(c_0_55, plain, (r1_tarski(X1,X1)), inference(er,[status(thm)],[c_0_51])).
% 0.20/0.39  cnf(c_0_56, plain, (k8_relset_1(X1,X2,X3,X2)=k1_relset_1(X1,X2,X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(split_conjunct,[status(thm)],[c_0_52])).
% 0.20/0.39  fof(c_0_57, plain, ![X7, X8]:((~m1_subset_1(X7,k1_zfmisc_1(X8))|r1_tarski(X7,X8))&(~r1_tarski(X7,X8)|m1_subset_1(X7,k1_zfmisc_1(X8)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).
% 0.20/0.39  fof(c_0_58, plain, ![X9, X10]:((~v5_relat_1(X10,X9)|r1_tarski(k2_relat_1(X10),X9)|~v1_relat_1(X10))&(~r1_tarski(k2_relat_1(X10),X9)|v5_relat_1(X10,X9)|~v1_relat_1(X10))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d19_relat_1])])])).
% 0.20/0.39  cnf(c_0_59, negated_conjecture, (k7_relset_1(esk2_0,esk1_0,esk3_0,k8_relset_1(esk2_0,esk1_0,esk3_0,esk1_0))!=k2_relset_1(esk2_0,esk1_0,esk3_0)|k1_relset_1(esk2_0,esk1_0,esk3_0)!=k1_relat_1(esk3_0)|~m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53, c_0_54]), c_0_30]), c_0_55])])).
% 0.20/0.39  cnf(c_0_60, plain, (k1_relset_1(X1,X2,X3)=k10_relat_1(X3,X2)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(spm,[status(thm)],[c_0_26, c_0_56])).
% 0.20/0.39  cnf(c_0_61, plain, (m1_subset_1(X1,k1_zfmisc_1(X2))|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_57])).
% 0.20/0.39  cnf(c_0_62, plain, (r1_tarski(k2_relat_1(X1),X2)|~v5_relat_1(X1,X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_58])).
% 0.20/0.39  cnf(c_0_63, plain, (v5_relat_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.20/0.39  fof(c_0_64, plain, ![X38, X39, X40, X41]:(~m1_subset_1(X41,k1_zfmisc_1(k2_zfmisc_1(X38,X40)))|(~r1_tarski(k1_relat_1(X41),X39)|m1_subset_1(X41,k1_zfmisc_1(k2_zfmisc_1(X39,X40))))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t13_relset_1])])).
% 0.20/0.39  cnf(c_0_65, negated_conjecture, (k7_relset_1(esk2_0,esk1_0,esk3_0,k8_relset_1(esk2_0,esk1_0,esk3_0,esk1_0))!=k2_relset_1(esk2_0,esk1_0,esk3_0)|k10_relat_1(esk3_0,esk1_0)!=k1_relat_1(esk3_0)|~m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_59, c_0_60]), c_0_24])])).
% 0.20/0.39  cnf(c_0_66, plain, (m1_subset_1(k2_relat_1(X1),k1_zfmisc_1(X2))|~v5_relat_1(X1,X2)|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_61, c_0_62])).
% 0.20/0.39  cnf(c_0_67, negated_conjecture, (v5_relat_1(esk3_0,esk1_0)), inference(spm,[status(thm)],[c_0_63, c_0_24])).
% 0.20/0.39  cnf(c_0_68, plain, (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X4,X3)))|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~r1_tarski(k1_relat_1(X1),X4)), inference(split_conjunct,[status(thm)],[c_0_64])).
% 0.20/0.39  cnf(c_0_69, negated_conjecture, (k7_relset_1(esk2_0,esk1_0,esk3_0,k8_relset_1(esk2_0,esk1_0,esk3_0,esk1_0))!=k2_relset_1(esk2_0,esk1_0,esk3_0)|~m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~r1_tarski(k2_relat_1(esk3_0),esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_65, c_0_54]), c_0_30])])).
% 0.20/0.39  cnf(c_0_70, plain, (r1_tarski(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_57])).
% 0.20/0.39  cnf(c_0_71, negated_conjecture, (m1_subset_1(k2_relat_1(esk3_0),k1_zfmisc_1(esk1_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_66, c_0_67]), c_0_30])])).
% 0.20/0.39  cnf(c_0_72, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,esk1_0)))|~r1_tarski(k1_relat_1(esk3_0),X1)), inference(spm,[status(thm)],[c_0_68, c_0_24])).
% 0.20/0.39  cnf(c_0_73, negated_conjecture, (k7_relset_1(esk2_0,esk1_0,esk3_0,k8_relset_1(esk2_0,esk1_0,esk3_0,esk1_0))!=k2_relset_1(esk2_0,esk1_0,esk3_0)|~m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_69, c_0_70]), c_0_71])])).
% 0.20/0.39  cnf(c_0_74, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(esk3_0),esk1_0)))), inference(spm,[status(thm)],[c_0_72, c_0_55])).
% 0.20/0.39  cnf(c_0_75, negated_conjecture, (k7_relset_1(esk2_0,esk1_0,esk3_0,k8_relset_1(X1,X2,esk3_0,esk1_0))!=k2_relset_1(esk2_0,esk1_0,esk3_0)|~m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))|~m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_73, c_0_32]), c_0_24])])).
% 0.20/0.39  cnf(c_0_76, negated_conjecture, (v4_relat_1(esk3_0,k1_relat_1(esk3_0))), inference(spm,[status(thm)],[c_0_23, c_0_74])).
% 0.20/0.39  cnf(c_0_77, negated_conjecture, (k7_relset_1(esk2_0,esk1_0,esk3_0,k10_relat_1(esk3_0,esk1_0))!=k2_relset_1(esk2_0,esk1_0,esk3_0)|~m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))), inference(spm,[status(thm)],[c_0_75, c_0_26])).
% 0.20/0.39  cnf(c_0_78, negated_conjecture, (k7_relat_1(esk3_0,k1_relat_1(esk3_0))=esk3_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28, c_0_76]), c_0_30])])).
% 0.20/0.39  cnf(c_0_79, negated_conjecture, (k7_relset_1(esk2_0,esk1_0,esk3_0,k1_relat_1(esk3_0))!=k2_relset_1(esk2_0,esk1_0,esk3_0)|~m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))|~r1_tarski(k2_relat_1(esk3_0),esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_77, c_0_54]), c_0_30])])).
% 0.20/0.39  cnf(c_0_80, negated_conjecture, (k9_relat_1(esk3_0,k1_relat_1(esk3_0))=k2_relat_1(esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34, c_0_78]), c_0_30])])).
% 0.20/0.39  cnf(c_0_81, negated_conjecture, (k7_relset_1(esk2_0,esk1_0,esk3_0,k1_relat_1(esk3_0))!=k2_relset_1(esk2_0,esk1_0,esk3_0)|~m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_79, c_0_70]), c_0_71])])).
% 0.20/0.39  cnf(c_0_82, negated_conjecture, (k7_relset_1(X1,X2,esk3_0,k1_relat_1(esk3_0))=k2_relat_1(esk3_0)|~m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(spm,[status(thm)],[c_0_40, c_0_80])).
% 0.20/0.39  fof(c_0_83, plain, ![X27, X28, X29]:(~m1_subset_1(X29,k1_zfmisc_1(k2_zfmisc_1(X27,X28)))|k2_relset_1(X27,X28,X29)=k2_relat_1(X29)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_relset_1])])).
% 0.20/0.39  cnf(c_0_84, negated_conjecture, (k2_relset_1(esk2_0,esk1_0,esk3_0)!=k2_relat_1(esk3_0)|~m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_81, c_0_82]), c_0_24])])).
% 0.20/0.39  cnf(c_0_85, plain, (k2_relset_1(X2,X3,X1)=k2_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_83])).
% 0.20/0.39  cnf(c_0_86, negated_conjecture, (~m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_84, c_0_85]), c_0_24])])).
% 0.20/0.39  cnf(c_0_87, negated_conjecture, (~m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(spm,[status(thm)],[c_0_86, c_0_24])).
% 0.20/0.39  cnf(c_0_88, negated_conjecture, ($false), inference(sr,[status(thm)],[c_0_24, c_0_87]), ['proof']).
% 0.20/0.39  # SZS output end CNFRefutation
% 0.20/0.39  # Proof object total steps             : 89
% 0.20/0.39  # Proof object clause steps            : 54
% 0.20/0.39  # Proof object formula steps           : 35
% 0.20/0.39  # Proof object conjectures             : 33
% 0.20/0.39  # Proof object clause conjectures      : 30
% 0.20/0.39  # Proof object formula conjectures     : 3
% 0.20/0.39  # Proof object initial clauses used    : 20
% 0.20/0.39  # Proof object initial formulas used   : 17
% 0.20/0.39  # Proof object generating inferences   : 32
% 0.20/0.39  # Proof object simplifying inferences  : 37
% 0.20/0.39  # Training examples: 0 positive, 0 negative
% 0.20/0.39  # Parsed axioms                        : 17
% 0.20/0.39  # Removed by relevancy pruning/SinE    : 0
% 0.20/0.39  # Initial clauses                      : 25
% 0.20/0.39  # Removed in clause preprocessing      : 0
% 0.20/0.39  # Initial clauses in saturation        : 25
% 0.20/0.39  # Processed clauses                    : 192
% 0.20/0.39  # ...of these trivial                  : 1
% 0.20/0.39  # ...subsumed                          : 42
% 0.20/0.39  # ...remaining for further processing  : 149
% 0.20/0.39  # Other redundant clauses eliminated   : 2
% 0.20/0.39  # Clauses deleted for lack of memory   : 0
% 0.20/0.39  # Backward-subsumed                    : 19
% 0.20/0.39  # Backward-rewritten                   : 1
% 0.20/0.39  # Generated clauses                    : 320
% 0.20/0.39  # ...of the previous two non-trivial   : 282
% 0.20/0.39  # Contextual simplify-reflections      : 1
% 0.20/0.39  # Paramodulations                      : 316
% 0.20/0.39  # Factorizations                       : 0
% 0.20/0.39  # Equation resolutions                 : 2
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
% 0.20/0.39  # Current number of processed clauses  : 101
% 0.20/0.39  #    Positive orientable unit clauses  : 31
% 0.20/0.39  #    Positive unorientable unit clauses: 0
% 0.20/0.39  #    Negative unit clauses             : 1
% 0.20/0.39  #    Non-unit-clauses                  : 69
% 0.20/0.39  # Current number of unprocessed clauses: 131
% 0.20/0.39  # ...number of literals in the above   : 443
% 0.20/0.39  # Current number of archived formulas  : 0
% 0.20/0.39  # Current number of archived clauses   : 46
% 0.20/0.39  # Clause-clause subsumption calls (NU) : 1553
% 0.20/0.39  # Rec. Clause-clause subsumption calls : 1261
% 0.20/0.39  # Non-unit clause-clause subsumptions  : 62
% 0.20/0.39  # Unit Clause-clause subsumption calls : 100
% 0.20/0.39  # Rewrite failures with RHS unbound    : 0
% 0.20/0.39  # BW rewrite match attempts            : 10
% 0.20/0.39  # BW rewrite match successes           : 1
% 0.20/0.39  # Condensation attempts                : 0
% 0.20/0.39  # Condensation successes               : 0
% 0.20/0.39  # Termbank termtop insertions          : 9005
% 0.20/0.39  
% 0.20/0.39  # -------------------------------------------------
% 0.20/0.39  # User time                : 0.037 s
% 0.20/0.39  # System time              : 0.007 s
% 0.20/0.39  # Total time               : 0.044 s
% 0.20/0.39  # Maximum resident set size: 1588 pages
%------------------------------------------------------------------------------
