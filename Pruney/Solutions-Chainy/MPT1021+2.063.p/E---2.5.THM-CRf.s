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
% DateTime   : Thu Dec  3 11:06:15 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :  104 ( 849 expanded)
%              Number of clauses        :   67 ( 303 expanded)
%              Number of leaves         :   18 ( 218 expanded)
%              Depth                    :   17
%              Number of atoms          :  356 (3686 expanded)
%              Number of equality atoms :   51 ( 130 expanded)
%              Maximal formula depth    :   12 (   4 average)
%              Maximal clause size      :   20 (   3 average)
%              Maximal term depth       :    6 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t88_funct_2,conjecture,(
    ! [X1,X2] :
      ( ( v1_funct_1(X2)
        & v1_funct_2(X2,X1,X1)
        & v3_funct_2(X2,X1,X1)
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) )
     => ( r2_relset_1(X1,X1,k1_partfun1(X1,X1,X1,X1,X2,k2_funct_2(X1,X2)),k6_partfun1(X1))
        & r2_relset_1(X1,X1,k1_partfun1(X1,X1,X1,X1,k2_funct_2(X1,X2),X2),k6_partfun1(X1)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t88_funct_2)).

fof(cc2_funct_2,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ( ( v1_funct_1(X3)
          & v3_funct_2(X3,X1,X2) )
       => ( v1_funct_1(X3)
          & v2_funct_1(X3)
          & v2_funct_2(X3,X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc2_funct_2)).

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

fof(d3_funct_2,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v5_relat_1(X2,X1) )
     => ( v2_funct_2(X2,X1)
      <=> k2_relat_1(X2) = X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_funct_2)).

fof(t3_funct_2,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v1_funct_1(X1)
        & v1_funct_2(X1,k1_relat_1(X1),k2_relat_1(X1))
        & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1)))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_funct_2)).

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

fof(redefinition_k2_funct_2,axiom,(
    ! [X1,X2] :
      ( ( v1_funct_1(X2)
        & v1_funct_2(X2,X1,X1)
        & v3_funct_2(X2,X1,X1)
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) )
     => k2_funct_2(X1,X2) = k2_funct_1(X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k2_funct_2)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).

fof(dt_k2_funct_2,axiom,(
    ! [X1,X2] :
      ( ( v1_funct_1(X2)
        & v1_funct_2(X2,X1,X1)
        & v3_funct_2(X2,X1,X1)
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) )
     => ( v1_funct_1(k2_funct_2(X1,X2))
        & v1_funct_2(k2_funct_2(X1,X2),X1,X1)
        & v3_funct_2(k2_funct_2(X1,X2),X1,X1)
        & m1_subset_1(k2_funct_2(X1,X2),k1_zfmisc_1(k2_zfmisc_1(X1,X1))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k2_funct_2)).

fof(t177_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ! [X2] :
          ( ( v2_funct_1(X1)
            & r1_tarski(X2,k1_relat_1(X1)) )
         => k9_relat_1(k2_funct_1(X1),k9_relat_1(X1,X2)) = X2 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t177_funct_1)).

fof(redefinition_k6_partfun1,axiom,(
    ! [X1] : k6_partfun1(X1) = k6_relat_1(X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k6_partfun1)).

fof(t61_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v2_funct_1(X1)
       => ( k5_relat_1(X1,k2_funct_1(X1)) = k6_relat_1(k1_relat_1(X1))
          & k5_relat_1(k2_funct_1(X1),X1) = k6_relat_1(k2_relat_1(X1)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t61_funct_1)).

fof(redefinition_k1_partfun1,axiom,(
    ! [X1,X2,X3,X4,X5,X6] :
      ( ( v1_funct_1(X5)
        & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
        & v1_funct_1(X6)
        & m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4))) )
     => k1_partfun1(X1,X2,X3,X4,X5,X6) = k5_relat_1(X5,X6) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k1_partfun1)).

fof(redefinition_r2_relset_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => ( r2_relset_1(X1,X2,X3,X4)
      <=> X3 = X4 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_r2_relset_1)).

fof(t29_relset_1,axiom,(
    ! [X1] : m1_subset_1(k6_relat_1(X1),k1_zfmisc_1(k2_zfmisc_1(X1,X1))) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t29_relset_1)).

fof(c_0_18,negated_conjecture,(
    ~ ! [X1,X2] :
        ( ( v1_funct_1(X2)
          & v1_funct_2(X2,X1,X1)
          & v3_funct_2(X2,X1,X1)
          & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) )
       => ( r2_relset_1(X1,X1,k1_partfun1(X1,X1,X1,X1,X2,k2_funct_2(X1,X2)),k6_partfun1(X1))
          & r2_relset_1(X1,X1,k1_partfun1(X1,X1,X1,X1,k2_funct_2(X1,X2),X2),k6_partfun1(X1)) ) ) ),
    inference(assume_negation,[status(cth)],[t88_funct_2])).

fof(c_0_19,plain,(
    ! [X28,X29,X30] :
      ( ( v1_funct_1(X30)
        | ~ v1_funct_1(X30)
        | ~ v3_funct_2(X30,X28,X29)
        | ~ m1_subset_1(X30,k1_zfmisc_1(k2_zfmisc_1(X28,X29))) )
      & ( v2_funct_1(X30)
        | ~ v1_funct_1(X30)
        | ~ v3_funct_2(X30,X28,X29)
        | ~ m1_subset_1(X30,k1_zfmisc_1(k2_zfmisc_1(X28,X29))) )
      & ( v2_funct_2(X30,X29)
        | ~ v1_funct_1(X30)
        | ~ v3_funct_2(X30,X28,X29)
        | ~ m1_subset_1(X30,k1_zfmisc_1(k2_zfmisc_1(X28,X29))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_funct_2])])])).

fof(c_0_20,negated_conjecture,
    ( v1_funct_1(esk2_0)
    & v1_funct_2(esk2_0,esk1_0,esk1_0)
    & v3_funct_2(esk2_0,esk1_0,esk1_0)
    & m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0)))
    & ( ~ r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,esk1_0,esk1_0,esk1_0,esk2_0,k2_funct_2(esk1_0,esk2_0)),k6_partfun1(esk1_0))
      | ~ r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,esk1_0,esk1_0,esk1_0,k2_funct_2(esk1_0,esk2_0),esk2_0),k6_partfun1(esk1_0)) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_18])])])).

fof(c_0_21,plain,(
    ! [X20,X21,X22] :
      ( ( v4_relat_1(X22,X20)
        | ~ m1_subset_1(X22,k1_zfmisc_1(k2_zfmisc_1(X20,X21))) )
      & ( v5_relat_1(X22,X21)
        | ~ m1_subset_1(X22,k1_zfmisc_1(k2_zfmisc_1(X20,X21))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).

fof(c_0_22,plain,(
    ! [X9,X10] :
      ( ~ v1_relat_1(X9)
      | ~ m1_subset_1(X10,k1_zfmisc_1(X9))
      | v1_relat_1(X10) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relat_1])])])).

fof(c_0_23,plain,(
    ! [X11,X12] : v1_relat_1(k2_zfmisc_1(X11,X12)) ),
    inference(variable_rename,[status(thm)],[fc6_relat_1])).

fof(c_0_24,plain,(
    ! [X31,X32] :
      ( ( ~ v2_funct_2(X32,X31)
        | k2_relat_1(X32) = X31
        | ~ v1_relat_1(X32)
        | ~ v5_relat_1(X32,X31) )
      & ( k2_relat_1(X32) != X31
        | v2_funct_2(X32,X31)
        | ~ v1_relat_1(X32)
        | ~ v5_relat_1(X32,X31) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_funct_2])])])).

cnf(c_0_25,plain,
    ( v2_funct_2(X1,X2)
    | ~ v1_funct_1(X1)
    | ~ v3_funct_2(X1,X3,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_26,negated_conjecture,
    ( m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_27,negated_conjecture,
    ( v3_funct_2(esk2_0,esk1_0,esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_28,negated_conjecture,
    ( v1_funct_1(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_29,plain,
    ( v5_relat_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_30,plain,
    ( v1_relat_1(X2)
    | ~ v1_relat_1(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_31,plain,
    ( v1_relat_1(k2_zfmisc_1(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

fof(c_0_32,plain,(
    ! [X44] :
      ( ( v1_funct_1(X44)
        | ~ v1_relat_1(X44)
        | ~ v1_funct_1(X44) )
      & ( v1_funct_2(X44,k1_relat_1(X44),k2_relat_1(X44))
        | ~ v1_relat_1(X44)
        | ~ v1_funct_1(X44) )
      & ( m1_subset_1(X44,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X44),k2_relat_1(X44))))
        | ~ v1_relat_1(X44)
        | ~ v1_funct_1(X44) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_funct_2])])])).

cnf(c_0_33,plain,
    ( k2_relat_1(X1) = X2
    | ~ v2_funct_2(X1,X2)
    | ~ v1_relat_1(X1)
    | ~ v5_relat_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_34,negated_conjecture,
    ( v2_funct_2(esk2_0,esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25,c_0_26]),c_0_27]),c_0_28])])).

cnf(c_0_35,negated_conjecture,
    ( v5_relat_1(esk2_0,esk1_0) ),
    inference(spm,[status(thm)],[c_0_29,c_0_26])).

cnf(c_0_36,negated_conjecture,
    ( v1_relat_1(esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_30,c_0_26]),c_0_31])])).

cnf(c_0_37,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1))))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

cnf(c_0_38,negated_conjecture,
    ( k2_relat_1(esk2_0) = esk1_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_34]),c_0_35]),c_0_36])])).

fof(c_0_39,plain,(
    ! [X15,X16] :
      ( ~ v1_relat_1(X16)
      | ~ v4_relat_1(X16,X15)
      | X16 = k7_relat_1(X16,X15) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t209_relat_1])])).

cnf(c_0_40,plain,
    ( v4_relat_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_41,negated_conjecture,
    ( m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(esk2_0),esk1_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_38]),c_0_28]),c_0_36])])).

fof(c_0_42,plain,(
    ! [X13,X14] :
      ( ~ v1_relat_1(X14)
      | k2_relat_1(k7_relat_1(X14,X13)) = k9_relat_1(X14,X13) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t148_relat_1])])).

cnf(c_0_43,plain,
    ( X1 = k7_relat_1(X1,X2)
    | ~ v1_relat_1(X1)
    | ~ v4_relat_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_44,negated_conjecture,
    ( v4_relat_1(esk2_0,k1_relat_1(esk2_0)) ),
    inference(spm,[status(thm)],[c_0_40,c_0_41])).

fof(c_0_45,plain,(
    ! [X41,X42] :
      ( ~ v1_funct_1(X42)
      | ~ v1_funct_2(X42,X41,X41)
      | ~ v3_funct_2(X42,X41,X41)
      | ~ m1_subset_1(X42,k1_zfmisc_1(k2_zfmisc_1(X41,X41)))
      | k2_funct_2(X41,X42) = k2_funct_1(X42) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_funct_2])])).

fof(c_0_46,plain,(
    ! [X7,X8] :
      ( ( r1_tarski(X7,X8)
        | X7 != X8 )
      & ( r1_tarski(X8,X7)
        | X7 != X8 )
      & ( ~ r1_tarski(X7,X8)
        | ~ r1_tarski(X8,X7)
        | X7 = X8 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

fof(c_0_47,plain,(
    ! [X33,X34] :
      ( ( v1_funct_1(k2_funct_2(X33,X34))
        | ~ v1_funct_1(X34)
        | ~ v1_funct_2(X34,X33,X33)
        | ~ v3_funct_2(X34,X33,X33)
        | ~ m1_subset_1(X34,k1_zfmisc_1(k2_zfmisc_1(X33,X33))) )
      & ( v1_funct_2(k2_funct_2(X33,X34),X33,X33)
        | ~ v1_funct_1(X34)
        | ~ v1_funct_2(X34,X33,X33)
        | ~ v3_funct_2(X34,X33,X33)
        | ~ m1_subset_1(X34,k1_zfmisc_1(k2_zfmisc_1(X33,X33))) )
      & ( v3_funct_2(k2_funct_2(X33,X34),X33,X33)
        | ~ v1_funct_1(X34)
        | ~ v1_funct_2(X34,X33,X33)
        | ~ v3_funct_2(X34,X33,X33)
        | ~ m1_subset_1(X34,k1_zfmisc_1(k2_zfmisc_1(X33,X33))) )
      & ( m1_subset_1(k2_funct_2(X33,X34),k1_zfmisc_1(k2_zfmisc_1(X33,X33)))
        | ~ v1_funct_1(X34)
        | ~ v1_funct_2(X34,X33,X33)
        | ~ v3_funct_2(X34,X33,X33)
        | ~ m1_subset_1(X34,k1_zfmisc_1(k2_zfmisc_1(X33,X33))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_funct_2])])])).

cnf(c_0_48,plain,
    ( v2_funct_2(X1,X2)
    | k2_relat_1(X1) != X2
    | ~ v1_relat_1(X1)
    | ~ v5_relat_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

fof(c_0_49,plain,(
    ! [X17,X18] :
      ( ~ v1_relat_1(X17)
      | ~ v1_funct_1(X17)
      | ~ v2_funct_1(X17)
      | ~ r1_tarski(X18,k1_relat_1(X17))
      | k9_relat_1(k2_funct_1(X17),k9_relat_1(X17,X18)) = X18 ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t177_funct_1])])])).

cnf(c_0_50,plain,
    ( k2_relat_1(k7_relat_1(X1,X2)) = k9_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_42])).

cnf(c_0_51,negated_conjecture,
    ( k7_relat_1(esk2_0,k1_relat_1(esk2_0)) = esk2_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43,c_0_44]),c_0_36])])).

cnf(c_0_52,plain,
    ( k2_funct_2(X2,X1) = k2_funct_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_funct_2(X1,X2,X2)
    | ~ v3_funct_2(X1,X2,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_45])).

cnf(c_0_53,negated_conjecture,
    ( v1_funct_2(esk2_0,esk1_0,esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_54,plain,
    ( v2_funct_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v3_funct_2(X1,X2,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_55,plain,
    ( r1_tarski(X1,X2)
    | X2 != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_46])).

cnf(c_0_56,plain,
    ( m1_subset_1(k2_funct_2(X1,X2),k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
    | ~ v1_funct_1(X2)
    | ~ v1_funct_2(X2,X1,X1)
    | ~ v3_funct_2(X2,X1,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_47])).

cnf(c_0_57,plain,
    ( v2_funct_2(X1,k2_relat_1(X1))
    | ~ v5_relat_1(X1,k2_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(er,[status(thm)],[c_0_48])).

cnf(c_0_58,plain,
    ( k9_relat_1(k2_funct_1(X1),k9_relat_1(X1,X2)) = X2
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v2_funct_1(X1)
    | ~ r1_tarski(X2,k1_relat_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_49])).

cnf(c_0_59,negated_conjecture,
    ( k9_relat_1(esk2_0,k1_relat_1(esk2_0)) = esk1_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50,c_0_51]),c_0_38]),c_0_36])])).

cnf(c_0_60,negated_conjecture,
    ( k2_funct_1(esk2_0) = k2_funct_2(esk1_0,esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_52,c_0_26]),c_0_53]),c_0_27]),c_0_28])])).

cnf(c_0_61,negated_conjecture,
    ( v2_funct_1(esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_54,c_0_26]),c_0_27]),c_0_28])])).

cnf(c_0_62,plain,
    ( r1_tarski(X1,X1) ),
    inference(er,[status(thm)],[c_0_55])).

cnf(c_0_63,plain,
    ( v1_relat_1(k2_funct_2(X1,X2))
    | ~ v1_funct_2(X2,X1,X1)
    | ~ v3_funct_2(X2,X1,X1)
    | ~ v1_funct_1(X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_30,c_0_56]),c_0_31])])).

fof(c_0_64,plain,(
    ! [X43] : k6_partfun1(X43) = k6_relat_1(X43) ),
    inference(variable_rename,[status(thm)],[redefinition_k6_partfun1])).

fof(c_0_65,plain,(
    ! [X19] :
      ( ( k5_relat_1(X19,k2_funct_1(X19)) = k6_relat_1(k1_relat_1(X19))
        | ~ v2_funct_1(X19)
        | ~ v1_relat_1(X19)
        | ~ v1_funct_1(X19) )
      & ( k5_relat_1(k2_funct_1(X19),X19) = k6_relat_1(k2_relat_1(X19))
        | ~ v2_funct_1(X19)
        | ~ v1_relat_1(X19)
        | ~ v1_funct_1(X19) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t61_funct_1])])])).

cnf(c_0_66,plain,
    ( v2_funct_2(k7_relat_1(X1,X2),k9_relat_1(X1,X2))
    | ~ v5_relat_1(k7_relat_1(X1,X2),k9_relat_1(X1,X2))
    | ~ v1_relat_1(k7_relat_1(X1,X2))
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_57,c_0_50])).

cnf(c_0_67,negated_conjecture,
    ( k9_relat_1(k2_funct_2(esk1_0,esk2_0),esk1_0) = k1_relat_1(esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_58,c_0_59]),c_0_60]),c_0_61]),c_0_28]),c_0_36]),c_0_62])])).

cnf(c_0_68,negated_conjecture,
    ( v1_relat_1(k2_funct_2(esk1_0,esk2_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_63,c_0_26]),c_0_53]),c_0_27]),c_0_28])])).

cnf(c_0_69,plain,
    ( m1_subset_1(k7_relat_1(X1,X2),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(k7_relat_1(X1,X2)),k9_relat_1(X1,X2))))
    | ~ v1_funct_1(k7_relat_1(X1,X2))
    | ~ v1_relat_1(k7_relat_1(X1,X2))
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_37,c_0_50])).

cnf(c_0_70,plain,
    ( v1_funct_1(k2_funct_2(X1,X2))
    | ~ v1_funct_1(X2)
    | ~ v1_funct_2(X2,X1,X1)
    | ~ v3_funct_2(X2,X1,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_47])).

cnf(c_0_71,plain,
    ( v3_funct_2(k2_funct_2(X1,X2),X1,X1)
    | ~ v1_funct_1(X2)
    | ~ v1_funct_2(X2,X1,X1)
    | ~ v3_funct_2(X2,X1,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_47])).

cnf(c_0_72,negated_conjecture,
    ( ~ r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,esk1_0,esk1_0,esk1_0,esk2_0,k2_funct_2(esk1_0,esk2_0)),k6_partfun1(esk1_0))
    | ~ r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,esk1_0,esk1_0,esk1_0,k2_funct_2(esk1_0,esk2_0),esk2_0),k6_partfun1(esk1_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_73,plain,
    ( k6_partfun1(X1) = k6_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_64])).

fof(c_0_74,plain,(
    ! [X35,X36,X37,X38,X39,X40] :
      ( ~ v1_funct_1(X39)
      | ~ m1_subset_1(X39,k1_zfmisc_1(k2_zfmisc_1(X35,X36)))
      | ~ v1_funct_1(X40)
      | ~ m1_subset_1(X40,k1_zfmisc_1(k2_zfmisc_1(X37,X38)))
      | k1_partfun1(X35,X36,X37,X38,X39,X40) = k5_relat_1(X39,X40) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_partfun1])])).

cnf(c_0_75,plain,
    ( k5_relat_1(k2_funct_1(X1),X1) = k6_relat_1(k2_relat_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_65])).

cnf(c_0_76,negated_conjecture,
    ( v2_funct_2(k7_relat_1(k2_funct_2(esk1_0,esk2_0),esk1_0),k1_relat_1(esk2_0))
    | ~ v5_relat_1(k7_relat_1(k2_funct_2(esk1_0,esk2_0),esk1_0),k1_relat_1(esk2_0))
    | ~ v1_relat_1(k7_relat_1(k2_funct_2(esk1_0,esk2_0),esk1_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_66,c_0_67]),c_0_68])])).

cnf(c_0_77,negated_conjecture,
    ( m1_subset_1(k7_relat_1(k2_funct_2(esk1_0,esk2_0),esk1_0),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(k7_relat_1(k2_funct_2(esk1_0,esk2_0),esk1_0)),k1_relat_1(esk2_0))))
    | ~ v1_funct_1(k7_relat_1(k2_funct_2(esk1_0,esk2_0),esk1_0))
    | ~ v1_relat_1(k7_relat_1(k2_funct_2(esk1_0,esk2_0),esk1_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_69,c_0_67]),c_0_68])])).

cnf(c_0_78,plain,
    ( v2_funct_2(k2_funct_2(X1,X2),X1)
    | ~ v1_funct_2(X2,X1,X1)
    | ~ v3_funct_2(X2,X1,X1)
    | ~ v1_funct_1(X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) ),
    inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_25,c_0_56]),c_0_70]),c_0_71])).

cnf(c_0_79,plain,
    ( v5_relat_1(k2_funct_2(X1,X2),X1)
    | ~ v1_funct_2(X2,X1,X1)
    | ~ v3_funct_2(X2,X1,X1)
    | ~ v1_funct_1(X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) ),
    inference(spm,[status(thm)],[c_0_29,c_0_56])).

cnf(c_0_80,negated_conjecture,
    ( ~ r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,esk1_0,esk1_0,esk1_0,esk2_0,k2_funct_2(esk1_0,esk2_0)),k6_relat_1(esk1_0))
    | ~ r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,esk1_0,esk1_0,esk1_0,k2_funct_2(esk1_0,esk2_0),esk2_0),k6_relat_1(esk1_0)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_72,c_0_73]),c_0_73])).

cnf(c_0_81,plain,
    ( k1_partfun1(X2,X3,X5,X6,X1,X4) = k5_relat_1(X1,X4)
    | ~ v1_funct_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ v1_funct_1(X4)
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X5,X6))) ),
    inference(split_conjunct,[status(thm)],[c_0_74])).

cnf(c_0_82,negated_conjecture,
    ( k5_relat_1(k2_funct_2(esk1_0,esk2_0),esk2_0) = k6_relat_1(esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_75,c_0_60]),c_0_38]),c_0_61]),c_0_28]),c_0_36])])).

cnf(c_0_83,negated_conjecture,
    ( v1_funct_1(k2_funct_2(esk1_0,esk2_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_70,c_0_26]),c_0_53]),c_0_27]),c_0_28])])).

cnf(c_0_84,plain,
    ( k5_relat_1(X1,k2_funct_1(X1)) = k6_relat_1(k1_relat_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_65])).

cnf(c_0_85,negated_conjecture,
    ( k2_relat_1(k7_relat_1(k2_funct_2(esk1_0,esk2_0),esk1_0)) = k1_relat_1(esk2_0)
    | ~ v5_relat_1(k7_relat_1(k2_funct_2(esk1_0,esk2_0),esk1_0),k1_relat_1(esk2_0))
    | ~ v1_relat_1(k7_relat_1(k2_funct_2(esk1_0,esk2_0),esk1_0)) ),
    inference(spm,[status(thm)],[c_0_33,c_0_76])).

cnf(c_0_86,negated_conjecture,
    ( v5_relat_1(k7_relat_1(k2_funct_2(esk1_0,esk2_0),esk1_0),k1_relat_1(esk2_0))
    | ~ v1_funct_1(k7_relat_1(k2_funct_2(esk1_0,esk2_0),esk1_0))
    | ~ v1_relat_1(k7_relat_1(k2_funct_2(esk1_0,esk2_0),esk1_0)) ),
    inference(spm,[status(thm)],[c_0_29,c_0_77])).

cnf(c_0_87,plain,
    ( v4_relat_1(k2_funct_2(X1,X2),X1)
    | ~ v1_funct_2(X2,X1,X1)
    | ~ v3_funct_2(X2,X1,X1)
    | ~ v1_funct_1(X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) ),
    inference(spm,[status(thm)],[c_0_40,c_0_56])).

cnf(c_0_88,plain,
    ( k2_relat_1(k2_funct_2(X1,X2)) = X1
    | ~ v1_funct_2(X2,X1,X1)
    | ~ v3_funct_2(X2,X1,X1)
    | ~ v1_funct_1(X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) ),
    inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_78]),c_0_63]),c_0_79])).

cnf(c_0_89,negated_conjecture,
    ( ~ r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,esk1_0,esk1_0,esk1_0,esk2_0,k2_funct_2(esk1_0,esk2_0)),k6_relat_1(esk1_0))
    | ~ r2_relset_1(esk1_0,esk1_0,k6_relat_1(esk1_0),k6_relat_1(esk1_0))
    | ~ m1_subset_1(k2_funct_2(esk1_0,esk2_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_80,c_0_81]),c_0_82]),c_0_28]),c_0_83]),c_0_26])])).

cnf(c_0_90,negated_conjecture,
    ( k5_relat_1(esk2_0,k2_funct_2(esk1_0,esk2_0)) = k6_relat_1(k1_relat_1(esk2_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_84,c_0_60]),c_0_61]),c_0_28]),c_0_36])])).

cnf(c_0_91,negated_conjecture,
    ( k2_relat_1(k7_relat_1(k2_funct_2(esk1_0,esk2_0),esk1_0)) = k1_relat_1(esk2_0)
    | ~ v1_funct_1(k7_relat_1(k2_funct_2(esk1_0,esk2_0),esk1_0))
    | ~ v1_relat_1(k7_relat_1(k2_funct_2(esk1_0,esk2_0),esk1_0)) ),
    inference(spm,[status(thm)],[c_0_85,c_0_86])).

cnf(c_0_92,plain,
    ( k7_relat_1(k2_funct_2(X1,X2),X1) = k2_funct_2(X1,X2)
    | ~ v1_funct_2(X2,X1,X1)
    | ~ v3_funct_2(X2,X1,X1)
    | ~ v1_funct_1(X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_43,c_0_87]),c_0_63])).

cnf(c_0_93,negated_conjecture,
    ( k2_relat_1(k2_funct_2(esk1_0,esk2_0)) = esk1_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_88,c_0_26]),c_0_53]),c_0_27]),c_0_28])])).

fof(c_0_94,plain,(
    ! [X23,X24,X25,X26] :
      ( ( ~ r2_relset_1(X23,X24,X25,X26)
        | X25 = X26
        | ~ m1_subset_1(X25,k1_zfmisc_1(k2_zfmisc_1(X23,X24)))
        | ~ m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X23,X24))) )
      & ( X25 != X26
        | r2_relset_1(X23,X24,X25,X26)
        | ~ m1_subset_1(X25,k1_zfmisc_1(k2_zfmisc_1(X23,X24)))
        | ~ m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X23,X24))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_r2_relset_1])])])).

cnf(c_0_95,negated_conjecture,
    ( ~ r2_relset_1(esk1_0,esk1_0,k6_relat_1(k1_relat_1(esk2_0)),k6_relat_1(esk1_0))
    | ~ r2_relset_1(esk1_0,esk1_0,k6_relat_1(esk1_0),k6_relat_1(esk1_0))
    | ~ m1_subset_1(k2_funct_2(esk1_0,esk2_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_89,c_0_81]),c_0_90]),c_0_83]),c_0_28]),c_0_26])])).

cnf(c_0_96,negated_conjecture,
    ( k1_relat_1(esk2_0) = esk1_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_91,c_0_92]),c_0_93]),c_0_83]),c_0_68]),c_0_53]),c_0_27]),c_0_28]),c_0_26])])).

cnf(c_0_97,plain,
    ( r2_relset_1(X3,X4,X1,X2)
    | X1 != X2
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X3,X4))) ),
    inference(split_conjunct,[status(thm)],[c_0_94])).

fof(c_0_98,plain,(
    ! [X27] : m1_subset_1(k6_relat_1(X27),k1_zfmisc_1(k2_zfmisc_1(X27,X27))) ),
    inference(variable_rename,[status(thm)],[t29_relset_1])).

cnf(c_0_99,negated_conjecture,
    ( ~ r2_relset_1(esk1_0,esk1_0,k6_relat_1(esk1_0),k6_relat_1(esk1_0))
    | ~ m1_subset_1(k2_funct_2(esk1_0,esk2_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_95,c_0_96])])).

cnf(c_0_100,plain,
    ( r2_relset_1(X1,X2,X3,X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(er,[status(thm)],[c_0_97])).

cnf(c_0_101,plain,
    ( m1_subset_1(k6_relat_1(X1),k1_zfmisc_1(k2_zfmisc_1(X1,X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_98])).

cnf(c_0_102,negated_conjecture,
    ( ~ m1_subset_1(k2_funct_2(esk1_0,esk2_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_99,c_0_100]),c_0_101])])).

cnf(c_0_103,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_102,c_0_56]),c_0_53]),c_0_27]),c_0_28]),c_0_26])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n012.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 18:29:22 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.13/0.40  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.13/0.40  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.13/0.40  #
% 0.13/0.40  # Preprocessing time       : 0.029 s
% 0.13/0.40  # Presaturation interreduction done
% 0.13/0.40  
% 0.13/0.40  # Proof found!
% 0.13/0.40  # SZS status Theorem
% 0.13/0.40  # SZS output start CNFRefutation
% 0.13/0.40  fof(t88_funct_2, conjecture, ![X1, X2]:((((v1_funct_1(X2)&v1_funct_2(X2,X1,X1))&v3_funct_2(X2,X1,X1))&m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))))=>(r2_relset_1(X1,X1,k1_partfun1(X1,X1,X1,X1,X2,k2_funct_2(X1,X2)),k6_partfun1(X1))&r2_relset_1(X1,X1,k1_partfun1(X1,X1,X1,X1,k2_funct_2(X1,X2),X2),k6_partfun1(X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t88_funct_2)).
% 0.13/0.40  fof(cc2_funct_2, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>((v1_funct_1(X3)&v3_funct_2(X3,X1,X2))=>((v1_funct_1(X3)&v2_funct_1(X3))&v2_funct_2(X3,X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc2_funct_2)).
% 0.13/0.40  fof(cc2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(v4_relat_1(X3,X1)&v5_relat_1(X3,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc2_relset_1)).
% 0.13/0.40  fof(cc2_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>v1_relat_1(X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc2_relat_1)).
% 0.13/0.40  fof(fc6_relat_1, axiom, ![X1, X2]:v1_relat_1(k2_zfmisc_1(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc6_relat_1)).
% 0.13/0.40  fof(d3_funct_2, axiom, ![X1, X2]:((v1_relat_1(X2)&v5_relat_1(X2,X1))=>(v2_funct_2(X2,X1)<=>k2_relat_1(X2)=X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d3_funct_2)).
% 0.13/0.40  fof(t3_funct_2, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>((v1_funct_1(X1)&v1_funct_2(X1,k1_relat_1(X1),k2_relat_1(X1)))&m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_funct_2)).
% 0.13/0.40  fof(t209_relat_1, axiom, ![X1, X2]:((v1_relat_1(X2)&v4_relat_1(X2,X1))=>X2=k7_relat_1(X2,X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t209_relat_1)).
% 0.13/0.40  fof(t148_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>k2_relat_1(k7_relat_1(X2,X1))=k9_relat_1(X2,X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t148_relat_1)).
% 0.13/0.40  fof(redefinition_k2_funct_2, axiom, ![X1, X2]:((((v1_funct_1(X2)&v1_funct_2(X2,X1,X1))&v3_funct_2(X2,X1,X1))&m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))))=>k2_funct_2(X1,X2)=k2_funct_1(X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k2_funct_2)).
% 0.13/0.40  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.13/0.40  fof(dt_k2_funct_2, axiom, ![X1, X2]:((((v1_funct_1(X2)&v1_funct_2(X2,X1,X1))&v3_funct_2(X2,X1,X1))&m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))))=>(((v1_funct_1(k2_funct_2(X1,X2))&v1_funct_2(k2_funct_2(X1,X2),X1,X1))&v3_funct_2(k2_funct_2(X1,X2),X1,X1))&m1_subset_1(k2_funct_2(X1,X2),k1_zfmisc_1(k2_zfmisc_1(X1,X1))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k2_funct_2)).
% 0.13/0.40  fof(t177_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>![X2]:((v2_funct_1(X1)&r1_tarski(X2,k1_relat_1(X1)))=>k9_relat_1(k2_funct_1(X1),k9_relat_1(X1,X2))=X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t177_funct_1)).
% 0.13/0.40  fof(redefinition_k6_partfun1, axiom, ![X1]:k6_partfun1(X1)=k6_relat_1(X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k6_partfun1)).
% 0.13/0.40  fof(t61_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v2_funct_1(X1)=>(k5_relat_1(X1,k2_funct_1(X1))=k6_relat_1(k1_relat_1(X1))&k5_relat_1(k2_funct_1(X1),X1)=k6_relat_1(k2_relat_1(X1))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t61_funct_1)).
% 0.13/0.40  fof(redefinition_k1_partfun1, axiom, ![X1, X2, X3, X4, X5, X6]:((((v1_funct_1(X5)&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))&v1_funct_1(X6))&m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4))))=>k1_partfun1(X1,X2,X3,X4,X5,X6)=k5_relat_1(X5,X6)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k1_partfun1)).
% 0.13/0.40  fof(redefinition_r2_relset_1, axiom, ![X1, X2, X3, X4]:((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>(r2_relset_1(X1,X2,X3,X4)<=>X3=X4)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_r2_relset_1)).
% 0.13/0.40  fof(t29_relset_1, axiom, ![X1]:m1_subset_1(k6_relat_1(X1),k1_zfmisc_1(k2_zfmisc_1(X1,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t29_relset_1)).
% 0.13/0.40  fof(c_0_18, negated_conjecture, ~(![X1, X2]:((((v1_funct_1(X2)&v1_funct_2(X2,X1,X1))&v3_funct_2(X2,X1,X1))&m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))))=>(r2_relset_1(X1,X1,k1_partfun1(X1,X1,X1,X1,X2,k2_funct_2(X1,X2)),k6_partfun1(X1))&r2_relset_1(X1,X1,k1_partfun1(X1,X1,X1,X1,k2_funct_2(X1,X2),X2),k6_partfun1(X1))))), inference(assume_negation,[status(cth)],[t88_funct_2])).
% 0.13/0.40  fof(c_0_19, plain, ![X28, X29, X30]:(((v1_funct_1(X30)|(~v1_funct_1(X30)|~v3_funct_2(X30,X28,X29))|~m1_subset_1(X30,k1_zfmisc_1(k2_zfmisc_1(X28,X29))))&(v2_funct_1(X30)|(~v1_funct_1(X30)|~v3_funct_2(X30,X28,X29))|~m1_subset_1(X30,k1_zfmisc_1(k2_zfmisc_1(X28,X29)))))&(v2_funct_2(X30,X29)|(~v1_funct_1(X30)|~v3_funct_2(X30,X28,X29))|~m1_subset_1(X30,k1_zfmisc_1(k2_zfmisc_1(X28,X29))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_funct_2])])])).
% 0.13/0.40  fof(c_0_20, negated_conjecture, ((((v1_funct_1(esk2_0)&v1_funct_2(esk2_0,esk1_0,esk1_0))&v3_funct_2(esk2_0,esk1_0,esk1_0))&m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0))))&(~r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,esk1_0,esk1_0,esk1_0,esk2_0,k2_funct_2(esk1_0,esk2_0)),k6_partfun1(esk1_0))|~r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,esk1_0,esk1_0,esk1_0,k2_funct_2(esk1_0,esk2_0),esk2_0),k6_partfun1(esk1_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_18])])])).
% 0.13/0.40  fof(c_0_21, plain, ![X20, X21, X22]:((v4_relat_1(X22,X20)|~m1_subset_1(X22,k1_zfmisc_1(k2_zfmisc_1(X20,X21))))&(v5_relat_1(X22,X21)|~m1_subset_1(X22,k1_zfmisc_1(k2_zfmisc_1(X20,X21))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).
% 0.13/0.40  fof(c_0_22, plain, ![X9, X10]:(~v1_relat_1(X9)|(~m1_subset_1(X10,k1_zfmisc_1(X9))|v1_relat_1(X10))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relat_1])])])).
% 0.13/0.40  fof(c_0_23, plain, ![X11, X12]:v1_relat_1(k2_zfmisc_1(X11,X12)), inference(variable_rename,[status(thm)],[fc6_relat_1])).
% 0.13/0.40  fof(c_0_24, plain, ![X31, X32]:((~v2_funct_2(X32,X31)|k2_relat_1(X32)=X31|(~v1_relat_1(X32)|~v5_relat_1(X32,X31)))&(k2_relat_1(X32)!=X31|v2_funct_2(X32,X31)|(~v1_relat_1(X32)|~v5_relat_1(X32,X31)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_funct_2])])])).
% 0.13/0.40  cnf(c_0_25, plain, (v2_funct_2(X1,X2)|~v1_funct_1(X1)|~v3_funct_2(X1,X3,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.13/0.40  cnf(c_0_26, negated_conjecture, (m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.13/0.40  cnf(c_0_27, negated_conjecture, (v3_funct_2(esk2_0,esk1_0,esk1_0)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.13/0.40  cnf(c_0_28, negated_conjecture, (v1_funct_1(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.13/0.40  cnf(c_0_29, plain, (v5_relat_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.13/0.40  cnf(c_0_30, plain, (v1_relat_1(X2)|~v1_relat_1(X1)|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.13/0.40  cnf(c_0_31, plain, (v1_relat_1(k2_zfmisc_1(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.13/0.40  fof(c_0_32, plain, ![X44]:(((v1_funct_1(X44)|(~v1_relat_1(X44)|~v1_funct_1(X44)))&(v1_funct_2(X44,k1_relat_1(X44),k2_relat_1(X44))|(~v1_relat_1(X44)|~v1_funct_1(X44))))&(m1_subset_1(X44,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X44),k2_relat_1(X44))))|(~v1_relat_1(X44)|~v1_funct_1(X44)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_funct_2])])])).
% 0.13/0.40  cnf(c_0_33, plain, (k2_relat_1(X1)=X2|~v2_funct_2(X1,X2)|~v1_relat_1(X1)|~v5_relat_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.13/0.40  cnf(c_0_34, negated_conjecture, (v2_funct_2(esk2_0,esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25, c_0_26]), c_0_27]), c_0_28])])).
% 0.13/0.40  cnf(c_0_35, negated_conjecture, (v5_relat_1(esk2_0,esk1_0)), inference(spm,[status(thm)],[c_0_29, c_0_26])).
% 0.13/0.40  cnf(c_0_36, negated_conjecture, (v1_relat_1(esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_30, c_0_26]), c_0_31])])).
% 0.13/0.40  cnf(c_0_37, plain, (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1))))|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.13/0.40  cnf(c_0_38, negated_conjecture, (k2_relat_1(esk2_0)=esk1_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33, c_0_34]), c_0_35]), c_0_36])])).
% 0.13/0.40  fof(c_0_39, plain, ![X15, X16]:(~v1_relat_1(X16)|~v4_relat_1(X16,X15)|X16=k7_relat_1(X16,X15)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t209_relat_1])])).
% 0.13/0.40  cnf(c_0_40, plain, (v4_relat_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.13/0.40  cnf(c_0_41, negated_conjecture, (m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(esk2_0),esk1_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_38]), c_0_28]), c_0_36])])).
% 0.13/0.40  fof(c_0_42, plain, ![X13, X14]:(~v1_relat_1(X14)|k2_relat_1(k7_relat_1(X14,X13))=k9_relat_1(X14,X13)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t148_relat_1])])).
% 0.13/0.40  cnf(c_0_43, plain, (X1=k7_relat_1(X1,X2)|~v1_relat_1(X1)|~v4_relat_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.13/0.40  cnf(c_0_44, negated_conjecture, (v4_relat_1(esk2_0,k1_relat_1(esk2_0))), inference(spm,[status(thm)],[c_0_40, c_0_41])).
% 0.13/0.40  fof(c_0_45, plain, ![X41, X42]:(~v1_funct_1(X42)|~v1_funct_2(X42,X41,X41)|~v3_funct_2(X42,X41,X41)|~m1_subset_1(X42,k1_zfmisc_1(k2_zfmisc_1(X41,X41)))|k2_funct_2(X41,X42)=k2_funct_1(X42)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_funct_2])])).
% 0.13/0.40  fof(c_0_46, plain, ![X7, X8]:(((r1_tarski(X7,X8)|X7!=X8)&(r1_tarski(X8,X7)|X7!=X8))&(~r1_tarski(X7,X8)|~r1_tarski(X8,X7)|X7=X8)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.13/0.40  fof(c_0_47, plain, ![X33, X34]:((((v1_funct_1(k2_funct_2(X33,X34))|(~v1_funct_1(X34)|~v1_funct_2(X34,X33,X33)|~v3_funct_2(X34,X33,X33)|~m1_subset_1(X34,k1_zfmisc_1(k2_zfmisc_1(X33,X33)))))&(v1_funct_2(k2_funct_2(X33,X34),X33,X33)|(~v1_funct_1(X34)|~v1_funct_2(X34,X33,X33)|~v3_funct_2(X34,X33,X33)|~m1_subset_1(X34,k1_zfmisc_1(k2_zfmisc_1(X33,X33))))))&(v3_funct_2(k2_funct_2(X33,X34),X33,X33)|(~v1_funct_1(X34)|~v1_funct_2(X34,X33,X33)|~v3_funct_2(X34,X33,X33)|~m1_subset_1(X34,k1_zfmisc_1(k2_zfmisc_1(X33,X33))))))&(m1_subset_1(k2_funct_2(X33,X34),k1_zfmisc_1(k2_zfmisc_1(X33,X33)))|(~v1_funct_1(X34)|~v1_funct_2(X34,X33,X33)|~v3_funct_2(X34,X33,X33)|~m1_subset_1(X34,k1_zfmisc_1(k2_zfmisc_1(X33,X33)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_funct_2])])])).
% 0.13/0.40  cnf(c_0_48, plain, (v2_funct_2(X1,X2)|k2_relat_1(X1)!=X2|~v1_relat_1(X1)|~v5_relat_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.13/0.40  fof(c_0_49, plain, ![X17, X18]:(~v1_relat_1(X17)|~v1_funct_1(X17)|(~v2_funct_1(X17)|~r1_tarski(X18,k1_relat_1(X17))|k9_relat_1(k2_funct_1(X17),k9_relat_1(X17,X18))=X18)), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t177_funct_1])])])).
% 0.13/0.40  cnf(c_0_50, plain, (k2_relat_1(k7_relat_1(X1,X2))=k9_relat_1(X1,X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_42])).
% 0.13/0.40  cnf(c_0_51, negated_conjecture, (k7_relat_1(esk2_0,k1_relat_1(esk2_0))=esk2_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43, c_0_44]), c_0_36])])).
% 0.13/0.40  cnf(c_0_52, plain, (k2_funct_2(X2,X1)=k2_funct_1(X1)|~v1_funct_1(X1)|~v1_funct_2(X1,X2,X2)|~v3_funct_2(X1,X2,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X2)))), inference(split_conjunct,[status(thm)],[c_0_45])).
% 0.13/0.40  cnf(c_0_53, negated_conjecture, (v1_funct_2(esk2_0,esk1_0,esk1_0)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.13/0.40  cnf(c_0_54, plain, (v2_funct_1(X1)|~v1_funct_1(X1)|~v3_funct_2(X1,X2,X3)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.13/0.40  cnf(c_0_55, plain, (r1_tarski(X1,X2)|X2!=X1), inference(split_conjunct,[status(thm)],[c_0_46])).
% 0.13/0.40  cnf(c_0_56, plain, (m1_subset_1(k2_funct_2(X1,X2),k1_zfmisc_1(k2_zfmisc_1(X1,X1)))|~v1_funct_1(X2)|~v1_funct_2(X2,X1,X1)|~v3_funct_2(X2,X1,X1)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))), inference(split_conjunct,[status(thm)],[c_0_47])).
% 0.13/0.40  cnf(c_0_57, plain, (v2_funct_2(X1,k2_relat_1(X1))|~v5_relat_1(X1,k2_relat_1(X1))|~v1_relat_1(X1)), inference(er,[status(thm)],[c_0_48])).
% 0.13/0.40  cnf(c_0_58, plain, (k9_relat_1(k2_funct_1(X1),k9_relat_1(X1,X2))=X2|~v1_relat_1(X1)|~v1_funct_1(X1)|~v2_funct_1(X1)|~r1_tarski(X2,k1_relat_1(X1))), inference(split_conjunct,[status(thm)],[c_0_49])).
% 0.13/0.40  cnf(c_0_59, negated_conjecture, (k9_relat_1(esk2_0,k1_relat_1(esk2_0))=esk1_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50, c_0_51]), c_0_38]), c_0_36])])).
% 0.13/0.40  cnf(c_0_60, negated_conjecture, (k2_funct_1(esk2_0)=k2_funct_2(esk1_0,esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_52, c_0_26]), c_0_53]), c_0_27]), c_0_28])])).
% 0.13/0.40  cnf(c_0_61, negated_conjecture, (v2_funct_1(esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_54, c_0_26]), c_0_27]), c_0_28])])).
% 0.13/0.40  cnf(c_0_62, plain, (r1_tarski(X1,X1)), inference(er,[status(thm)],[c_0_55])).
% 0.13/0.40  cnf(c_0_63, plain, (v1_relat_1(k2_funct_2(X1,X2))|~v1_funct_2(X2,X1,X1)|~v3_funct_2(X2,X1,X1)|~v1_funct_1(X2)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_30, c_0_56]), c_0_31])])).
% 0.13/0.40  fof(c_0_64, plain, ![X43]:k6_partfun1(X43)=k6_relat_1(X43), inference(variable_rename,[status(thm)],[redefinition_k6_partfun1])).
% 0.13/0.40  fof(c_0_65, plain, ![X19]:((k5_relat_1(X19,k2_funct_1(X19))=k6_relat_1(k1_relat_1(X19))|~v2_funct_1(X19)|(~v1_relat_1(X19)|~v1_funct_1(X19)))&(k5_relat_1(k2_funct_1(X19),X19)=k6_relat_1(k2_relat_1(X19))|~v2_funct_1(X19)|(~v1_relat_1(X19)|~v1_funct_1(X19)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t61_funct_1])])])).
% 0.13/0.40  cnf(c_0_66, plain, (v2_funct_2(k7_relat_1(X1,X2),k9_relat_1(X1,X2))|~v5_relat_1(k7_relat_1(X1,X2),k9_relat_1(X1,X2))|~v1_relat_1(k7_relat_1(X1,X2))|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_57, c_0_50])).
% 0.13/0.40  cnf(c_0_67, negated_conjecture, (k9_relat_1(k2_funct_2(esk1_0,esk2_0),esk1_0)=k1_relat_1(esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_58, c_0_59]), c_0_60]), c_0_61]), c_0_28]), c_0_36]), c_0_62])])).
% 0.13/0.40  cnf(c_0_68, negated_conjecture, (v1_relat_1(k2_funct_2(esk1_0,esk2_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_63, c_0_26]), c_0_53]), c_0_27]), c_0_28])])).
% 0.13/0.40  cnf(c_0_69, plain, (m1_subset_1(k7_relat_1(X1,X2),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(k7_relat_1(X1,X2)),k9_relat_1(X1,X2))))|~v1_funct_1(k7_relat_1(X1,X2))|~v1_relat_1(k7_relat_1(X1,X2))|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_37, c_0_50])).
% 0.13/0.40  cnf(c_0_70, plain, (v1_funct_1(k2_funct_2(X1,X2))|~v1_funct_1(X2)|~v1_funct_2(X2,X1,X1)|~v3_funct_2(X2,X1,X1)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))), inference(split_conjunct,[status(thm)],[c_0_47])).
% 0.13/0.40  cnf(c_0_71, plain, (v3_funct_2(k2_funct_2(X1,X2),X1,X1)|~v1_funct_1(X2)|~v1_funct_2(X2,X1,X1)|~v3_funct_2(X2,X1,X1)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))), inference(split_conjunct,[status(thm)],[c_0_47])).
% 0.13/0.40  cnf(c_0_72, negated_conjecture, (~r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,esk1_0,esk1_0,esk1_0,esk2_0,k2_funct_2(esk1_0,esk2_0)),k6_partfun1(esk1_0))|~r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,esk1_0,esk1_0,esk1_0,k2_funct_2(esk1_0,esk2_0),esk2_0),k6_partfun1(esk1_0))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.13/0.40  cnf(c_0_73, plain, (k6_partfun1(X1)=k6_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_64])).
% 0.13/0.40  fof(c_0_74, plain, ![X35, X36, X37, X38, X39, X40]:(~v1_funct_1(X39)|~m1_subset_1(X39,k1_zfmisc_1(k2_zfmisc_1(X35,X36)))|~v1_funct_1(X40)|~m1_subset_1(X40,k1_zfmisc_1(k2_zfmisc_1(X37,X38)))|k1_partfun1(X35,X36,X37,X38,X39,X40)=k5_relat_1(X39,X40)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_partfun1])])).
% 0.13/0.40  cnf(c_0_75, plain, (k5_relat_1(k2_funct_1(X1),X1)=k6_relat_1(k2_relat_1(X1))|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_65])).
% 0.13/0.40  cnf(c_0_76, negated_conjecture, (v2_funct_2(k7_relat_1(k2_funct_2(esk1_0,esk2_0),esk1_0),k1_relat_1(esk2_0))|~v5_relat_1(k7_relat_1(k2_funct_2(esk1_0,esk2_0),esk1_0),k1_relat_1(esk2_0))|~v1_relat_1(k7_relat_1(k2_funct_2(esk1_0,esk2_0),esk1_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_66, c_0_67]), c_0_68])])).
% 0.13/0.40  cnf(c_0_77, negated_conjecture, (m1_subset_1(k7_relat_1(k2_funct_2(esk1_0,esk2_0),esk1_0),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(k7_relat_1(k2_funct_2(esk1_0,esk2_0),esk1_0)),k1_relat_1(esk2_0))))|~v1_funct_1(k7_relat_1(k2_funct_2(esk1_0,esk2_0),esk1_0))|~v1_relat_1(k7_relat_1(k2_funct_2(esk1_0,esk2_0),esk1_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_69, c_0_67]), c_0_68])])).
% 0.13/0.40  cnf(c_0_78, plain, (v2_funct_2(k2_funct_2(X1,X2),X1)|~v1_funct_2(X2,X1,X1)|~v3_funct_2(X2,X1,X1)|~v1_funct_1(X2)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))), inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_25, c_0_56]), c_0_70]), c_0_71])).
% 0.13/0.40  cnf(c_0_79, plain, (v5_relat_1(k2_funct_2(X1,X2),X1)|~v1_funct_2(X2,X1,X1)|~v3_funct_2(X2,X1,X1)|~v1_funct_1(X2)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))), inference(spm,[status(thm)],[c_0_29, c_0_56])).
% 0.13/0.40  cnf(c_0_80, negated_conjecture, (~r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,esk1_0,esk1_0,esk1_0,esk2_0,k2_funct_2(esk1_0,esk2_0)),k6_relat_1(esk1_0))|~r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,esk1_0,esk1_0,esk1_0,k2_funct_2(esk1_0,esk2_0),esk2_0),k6_relat_1(esk1_0))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_72, c_0_73]), c_0_73])).
% 0.13/0.40  cnf(c_0_81, plain, (k1_partfun1(X2,X3,X5,X6,X1,X4)=k5_relat_1(X1,X4)|~v1_funct_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~v1_funct_1(X4)|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X5,X6)))), inference(split_conjunct,[status(thm)],[c_0_74])).
% 0.13/0.40  cnf(c_0_82, negated_conjecture, (k5_relat_1(k2_funct_2(esk1_0,esk2_0),esk2_0)=k6_relat_1(esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_75, c_0_60]), c_0_38]), c_0_61]), c_0_28]), c_0_36])])).
% 0.13/0.40  cnf(c_0_83, negated_conjecture, (v1_funct_1(k2_funct_2(esk1_0,esk2_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_70, c_0_26]), c_0_53]), c_0_27]), c_0_28])])).
% 0.13/0.40  cnf(c_0_84, plain, (k5_relat_1(X1,k2_funct_1(X1))=k6_relat_1(k1_relat_1(X1))|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_65])).
% 0.13/0.40  cnf(c_0_85, negated_conjecture, (k2_relat_1(k7_relat_1(k2_funct_2(esk1_0,esk2_0),esk1_0))=k1_relat_1(esk2_0)|~v5_relat_1(k7_relat_1(k2_funct_2(esk1_0,esk2_0),esk1_0),k1_relat_1(esk2_0))|~v1_relat_1(k7_relat_1(k2_funct_2(esk1_0,esk2_0),esk1_0))), inference(spm,[status(thm)],[c_0_33, c_0_76])).
% 0.13/0.40  cnf(c_0_86, negated_conjecture, (v5_relat_1(k7_relat_1(k2_funct_2(esk1_0,esk2_0),esk1_0),k1_relat_1(esk2_0))|~v1_funct_1(k7_relat_1(k2_funct_2(esk1_0,esk2_0),esk1_0))|~v1_relat_1(k7_relat_1(k2_funct_2(esk1_0,esk2_0),esk1_0))), inference(spm,[status(thm)],[c_0_29, c_0_77])).
% 0.13/0.40  cnf(c_0_87, plain, (v4_relat_1(k2_funct_2(X1,X2),X1)|~v1_funct_2(X2,X1,X1)|~v3_funct_2(X2,X1,X1)|~v1_funct_1(X2)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))), inference(spm,[status(thm)],[c_0_40, c_0_56])).
% 0.13/0.40  cnf(c_0_88, plain, (k2_relat_1(k2_funct_2(X1,X2))=X1|~v1_funct_2(X2,X1,X1)|~v3_funct_2(X2,X1,X1)|~v1_funct_1(X2)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))), inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_33, c_0_78]), c_0_63]), c_0_79])).
% 0.13/0.40  cnf(c_0_89, negated_conjecture, (~r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,esk1_0,esk1_0,esk1_0,esk2_0,k2_funct_2(esk1_0,esk2_0)),k6_relat_1(esk1_0))|~r2_relset_1(esk1_0,esk1_0,k6_relat_1(esk1_0),k6_relat_1(esk1_0))|~m1_subset_1(k2_funct_2(esk1_0,esk2_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_80, c_0_81]), c_0_82]), c_0_28]), c_0_83]), c_0_26])])).
% 0.13/0.40  cnf(c_0_90, negated_conjecture, (k5_relat_1(esk2_0,k2_funct_2(esk1_0,esk2_0))=k6_relat_1(k1_relat_1(esk2_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_84, c_0_60]), c_0_61]), c_0_28]), c_0_36])])).
% 0.13/0.40  cnf(c_0_91, negated_conjecture, (k2_relat_1(k7_relat_1(k2_funct_2(esk1_0,esk2_0),esk1_0))=k1_relat_1(esk2_0)|~v1_funct_1(k7_relat_1(k2_funct_2(esk1_0,esk2_0),esk1_0))|~v1_relat_1(k7_relat_1(k2_funct_2(esk1_0,esk2_0),esk1_0))), inference(spm,[status(thm)],[c_0_85, c_0_86])).
% 0.13/0.40  cnf(c_0_92, plain, (k7_relat_1(k2_funct_2(X1,X2),X1)=k2_funct_2(X1,X2)|~v1_funct_2(X2,X1,X1)|~v3_funct_2(X2,X1,X1)|~v1_funct_1(X2)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_43, c_0_87]), c_0_63])).
% 0.13/0.40  cnf(c_0_93, negated_conjecture, (k2_relat_1(k2_funct_2(esk1_0,esk2_0))=esk1_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_88, c_0_26]), c_0_53]), c_0_27]), c_0_28])])).
% 0.13/0.40  fof(c_0_94, plain, ![X23, X24, X25, X26]:((~r2_relset_1(X23,X24,X25,X26)|X25=X26|(~m1_subset_1(X25,k1_zfmisc_1(k2_zfmisc_1(X23,X24)))|~m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X23,X24)))))&(X25!=X26|r2_relset_1(X23,X24,X25,X26)|(~m1_subset_1(X25,k1_zfmisc_1(k2_zfmisc_1(X23,X24)))|~m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X23,X24)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_r2_relset_1])])])).
% 0.13/0.40  cnf(c_0_95, negated_conjecture, (~r2_relset_1(esk1_0,esk1_0,k6_relat_1(k1_relat_1(esk2_0)),k6_relat_1(esk1_0))|~r2_relset_1(esk1_0,esk1_0,k6_relat_1(esk1_0),k6_relat_1(esk1_0))|~m1_subset_1(k2_funct_2(esk1_0,esk2_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_89, c_0_81]), c_0_90]), c_0_83]), c_0_28]), c_0_26])])).
% 0.13/0.40  cnf(c_0_96, negated_conjecture, (k1_relat_1(esk2_0)=esk1_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_91, c_0_92]), c_0_93]), c_0_83]), c_0_68]), c_0_53]), c_0_27]), c_0_28]), c_0_26])])).
% 0.13/0.40  cnf(c_0_97, plain, (r2_relset_1(X3,X4,X1,X2)|X1!=X2|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))), inference(split_conjunct,[status(thm)],[c_0_94])).
% 0.13/0.40  fof(c_0_98, plain, ![X27]:m1_subset_1(k6_relat_1(X27),k1_zfmisc_1(k2_zfmisc_1(X27,X27))), inference(variable_rename,[status(thm)],[t29_relset_1])).
% 0.13/0.40  cnf(c_0_99, negated_conjecture, (~r2_relset_1(esk1_0,esk1_0,k6_relat_1(esk1_0),k6_relat_1(esk1_0))|~m1_subset_1(k2_funct_2(esk1_0,esk2_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_95, c_0_96])])).
% 0.13/0.40  cnf(c_0_100, plain, (r2_relset_1(X1,X2,X3,X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(er,[status(thm)],[c_0_97])).
% 0.13/0.40  cnf(c_0_101, plain, (m1_subset_1(k6_relat_1(X1),k1_zfmisc_1(k2_zfmisc_1(X1,X1)))), inference(split_conjunct,[status(thm)],[c_0_98])).
% 0.13/0.40  cnf(c_0_102, negated_conjecture, (~m1_subset_1(k2_funct_2(esk1_0,esk2_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_99, c_0_100]), c_0_101])])).
% 0.13/0.40  cnf(c_0_103, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_102, c_0_56]), c_0_53]), c_0_27]), c_0_28]), c_0_26])]), ['proof']).
% 0.13/0.40  # SZS output end CNFRefutation
% 0.13/0.40  # Proof object total steps             : 104
% 0.13/0.40  # Proof object clause steps            : 67
% 0.13/0.40  # Proof object formula steps           : 37
% 0.13/0.40  # Proof object conjectures             : 36
% 0.13/0.40  # Proof object clause conjectures      : 33
% 0.13/0.40  # Proof object formula conjectures     : 3
% 0.13/0.40  # Proof object initial clauses used    : 28
% 0.13/0.40  # Proof object initial formulas used   : 18
% 0.13/0.40  # Proof object generating inferences   : 34
% 0.13/0.40  # Proof object simplifying inferences  : 93
% 0.13/0.40  # Training examples: 0 positive, 0 negative
% 0.13/0.40  # Parsed axioms                        : 18
% 0.13/0.40  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.40  # Initial clauses                      : 35
% 0.13/0.40  # Removed in clause preprocessing      : 3
% 0.13/0.40  # Initial clauses in saturation        : 32
% 0.13/0.40  # Processed clauses                    : 309
% 0.13/0.40  # ...of these trivial                  : 7
% 0.13/0.40  # ...subsumed                          : 91
% 0.13/0.40  # ...remaining for further processing  : 211
% 0.13/0.40  # Other redundant clauses eliminated   : 4
% 0.13/0.40  # Clauses deleted for lack of memory   : 0
% 0.13/0.40  # Backward-subsumed                    : 2
% 0.13/0.40  # Backward-rewritten                   : 40
% 0.13/0.40  # Generated clauses                    : 653
% 0.13/0.40  # ...of the previous two non-trivial   : 569
% 0.13/0.40  # Contextual simplify-reflections      : 17
% 0.13/0.40  # Paramodulations                      : 649
% 0.13/0.40  # Factorizations                       : 0
% 0.13/0.40  # Equation resolutions                 : 4
% 0.13/0.40  # Propositional unsat checks           : 0
% 0.13/0.40  #    Propositional check models        : 0
% 0.13/0.40  #    Propositional check unsatisfiable : 0
% 0.13/0.40  #    Propositional clauses             : 0
% 0.13/0.40  #    Propositional clauses after purity: 0
% 0.13/0.40  #    Propositional unsat core size     : 0
% 0.13/0.40  #    Propositional preprocessing time  : 0.000
% 0.13/0.40  #    Propositional encoding time       : 0.000
% 0.13/0.40  #    Propositional solver time         : 0.000
% 0.13/0.40  #    Success case prop preproc time    : 0.000
% 0.13/0.40  #    Success case prop encoding time   : 0.000
% 0.13/0.40  #    Success case prop solver time     : 0.000
% 0.13/0.40  # Current number of processed clauses  : 134
% 0.13/0.40  #    Positive orientable unit clauses  : 40
% 0.13/0.40  #    Positive unorientable unit clauses: 0
% 0.13/0.40  #    Negative unit clauses             : 1
% 0.13/0.40  #    Non-unit-clauses                  : 93
% 0.13/0.40  # Current number of unprocessed clauses: 320
% 0.13/0.40  # ...number of literals in the above   : 2271
% 0.13/0.40  # Current number of archived formulas  : 0
% 0.13/0.40  # Current number of archived clauses   : 74
% 0.13/0.40  # Clause-clause subsumption calls (NU) : 3347
% 0.13/0.40  # Rec. Clause-clause subsumption calls : 1006
% 0.13/0.40  # Non-unit clause-clause subsumptions  : 110
% 0.13/0.40  # Unit Clause-clause subsumption calls : 105
% 0.13/0.40  # Rewrite failures with RHS unbound    : 0
% 0.13/0.40  # BW rewrite match attempts            : 12
% 0.13/0.40  # BW rewrite match successes           : 7
% 0.13/0.40  # Condensation attempts                : 0
% 0.13/0.40  # Condensation successes               : 0
% 0.13/0.40  # Termbank termtop insertions          : 26503
% 0.13/0.40  
% 0.13/0.40  # -------------------------------------------------
% 0.13/0.40  # User time                : 0.051 s
% 0.13/0.40  # System time              : 0.010 s
% 0.13/0.40  # Total time               : 0.061 s
% 0.13/0.40  # Maximum resident set size: 1600 pages
%------------------------------------------------------------------------------
