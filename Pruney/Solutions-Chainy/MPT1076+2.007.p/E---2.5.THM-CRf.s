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
% DateTime   : Thu Dec  3 11:08:16 EST 2020

% Result     : Theorem 0.21s
% Output     : CNFRefutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   85 ( 305 expanded)
%              Number of clauses        :   53 ( 101 expanded)
%              Number of leaves         :   16 (  76 expanded)
%              Depth                    :   15
%              Number of atoms          :  339 (2067 expanded)
%              Number of equality atoms :   43 ( 208 expanded)
%              Maximal formula depth    :   16 (   5 average)
%              Maximal clause size      :   18 (   3 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t193_funct_2,conjecture,(
    ! [X1] :
      ( ~ v1_xboole_0(X1)
     => ! [X2] :
          ( ~ v1_xboole_0(X2)
         => ! [X3,X4] :
              ( ( v1_funct_1(X4)
                & v1_funct_2(X4,X2,X1)
                & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) )
             => ! [X5] :
                  ( ( v1_funct_1(X5)
                    & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X3))) )
                 => ! [X6] :
                      ( m1_subset_1(X6,X2)
                     => ( v1_partfun1(X5,X1)
                       => k3_funct_2(X2,X3,k8_funct_2(X2,X1,X3,X4,X5),X6) = k7_partfun1(X3,X5,k3_funct_2(X2,X1,X4,X6)) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t193_funct_2)).

fof(redefinition_k3_funct_2,axiom,(
    ! [X1,X2,X3,X4] :
      ( ( ~ v1_xboole_0(X1)
        & v1_funct_1(X3)
        & v1_funct_2(X3,X1,X2)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
        & m1_subset_1(X4,X1) )
     => k3_funct_2(X1,X2,X3,X4) = k1_funct_1(X3,X4) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k3_funct_2)).

fof(cc2_partfun1,axiom,(
    ! [X1,X2] :
      ( ( ~ v1_xboole_0(X1)
        & v1_xboole_0(X2) )
     => ! [X3] :
          ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
         => ~ v1_partfun1(X3,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc2_partfun1)).

fof(t176_funct_2,axiom,(
    ! [X1] :
      ( ~ v1_xboole_0(X1)
     => ! [X2] :
          ( ~ v1_xboole_0(X2)
         => ! [X3] :
              ( ( v1_funct_1(X3)
                & v1_funct_2(X3,X1,X2)
                & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
             => ! [X4] :
                  ( m1_subset_1(X4,X1)
                 => k7_partfun1(X2,X3,X4) = k3_funct_2(X1,X2,X3,X4) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t176_funct_2)).

fof(dt_k3_funct_2,axiom,(
    ! [X1,X2,X3,X4] :
      ( ( ~ v1_xboole_0(X1)
        & v1_funct_1(X3)
        & v1_funct_2(X3,X1,X2)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
        & m1_subset_1(X4,X1) )
     => m1_subset_1(k3_funct_2(X1,X2,X3,X4),X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k3_funct_2)).

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

fof(redefinition_k1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k1_relset_1(X1,X2,X3) = k1_relat_1(X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k1_relset_1)).

fof(d4_partfun1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v4_relat_1(X2,X1) )
     => ( v1_partfun1(X2,X1)
      <=> k1_relat_1(X2) = X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d4_partfun1)).

fof(t185_funct_2,axiom,(
    ! [X1,X2,X3] :
      ( ~ v1_xboole_0(X3)
     => ! [X4] :
          ( ( v1_funct_1(X4)
            & v1_funct_2(X4,X2,X3)
            & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) )
         => ! [X5] :
              ( ( v1_funct_1(X5)
                & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X3,X1))) )
             => ! [X6] :
                  ( m1_subset_1(X6,X2)
                 => ( r1_tarski(k2_relset_1(X2,X3,X4),k1_relset_1(X3,X1,X5))
                   => ( X2 = k1_xboole_0
                      | k1_funct_1(k8_funct_2(X2,X3,X1,X4,X5),X6) = k1_funct_1(X5,k1_funct_1(X4,X6)) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t185_funct_2)).

fof(redefinition_k2_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k2_relset_1(X1,X2,X3) = k2_relat_1(X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k2_relset_1)).

fof(dt_k8_funct_2,axiom,(
    ! [X1,X2,X3,X4,X5] :
      ( ( v1_funct_1(X4)
        & v1_funct_2(X4,X1,X2)
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
        & v1_funct_1(X5)
        & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) )
     => ( v1_funct_1(k8_funct_2(X1,X2,X3,X4,X5))
        & v1_funct_2(k8_funct_2(X1,X2,X3,X4,X5),X1,X3)
        & m1_subset_1(k8_funct_2(X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X1,X3))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k8_funct_2)).

fof(cc1_funct_2,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ( ( v1_funct_1(X3)
          & v1_partfun1(X3,X1) )
       => ( v1_funct_1(X3)
          & v1_funct_2(X3,X1,X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc1_funct_2)).

fof(d19_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( v5_relat_1(X2,X1)
      <=> r1_tarski(k2_relat_1(X2),X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d19_relat_1)).

fof(fc1_xboole_0,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc1_xboole_0)).

fof(c_0_16,negated_conjecture,(
    ~ ! [X1] :
        ( ~ v1_xboole_0(X1)
       => ! [X2] :
            ( ~ v1_xboole_0(X2)
           => ! [X3,X4] :
                ( ( v1_funct_1(X4)
                  & v1_funct_2(X4,X2,X1)
                  & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) )
               => ! [X5] :
                    ( ( v1_funct_1(X5)
                      & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X3))) )
                   => ! [X6] :
                        ( m1_subset_1(X6,X2)
                       => ( v1_partfun1(X5,X1)
                         => k3_funct_2(X2,X3,k8_funct_2(X2,X1,X3,X4,X5),X6) = k7_partfun1(X3,X5,k3_funct_2(X2,X1,X4,X6)) ) ) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t193_funct_2])).

fof(c_0_17,negated_conjecture,
    ( ~ v1_xboole_0(esk1_0)
    & ~ v1_xboole_0(esk2_0)
    & v1_funct_1(esk4_0)
    & v1_funct_2(esk4_0,esk2_0,esk1_0)
    & m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk1_0)))
    & v1_funct_1(esk5_0)
    & m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk3_0)))
    & m1_subset_1(esk6_0,esk2_0)
    & v1_partfun1(esk5_0,esk1_0)
    & k3_funct_2(esk2_0,esk3_0,k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0),esk6_0) != k7_partfun1(esk3_0,esk5_0,k3_funct_2(esk2_0,esk1_0,esk4_0,esk6_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_16])])])])).

fof(c_0_18,plain,(
    ! [X39,X40,X41,X42] :
      ( v1_xboole_0(X39)
      | ~ v1_funct_1(X41)
      | ~ v1_funct_2(X41,X39,X40)
      | ~ m1_subset_1(X41,k1_zfmisc_1(k2_zfmisc_1(X39,X40)))
      | ~ m1_subset_1(X42,X39)
      | k3_funct_2(X39,X40,X41,X42) = k1_funct_1(X41,X42) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[redefinition_k3_funct_2])])])).

fof(c_0_19,plain,(
    ! [X25,X26,X27] :
      ( v1_xboole_0(X25)
      | ~ v1_xboole_0(X26)
      | ~ m1_subset_1(X27,k1_zfmisc_1(k2_zfmisc_1(X25,X26)))
      | ~ v1_partfun1(X27,X25) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[cc2_partfun1])])])])).

cnf(c_0_20,negated_conjecture,
    ( k3_funct_2(esk2_0,esk3_0,k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0),esk6_0) != k7_partfun1(esk3_0,esk5_0,k3_funct_2(esk2_0,esk1_0,esk4_0,esk6_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_21,plain,
    ( v1_xboole_0(X1)
    | k3_funct_2(X1,X3,X2,X4) = k1_funct_1(X2,X4)
    | ~ v1_funct_1(X2)
    | ~ v1_funct_2(X2,X1,X3)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
    | ~ m1_subset_1(X4,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_22,negated_conjecture,
    ( v1_funct_2(esk4_0,esk2_0,esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_23,negated_conjecture,
    ( v1_funct_1(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_24,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_25,negated_conjecture,
    ( m1_subset_1(esk6_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_26,negated_conjecture,
    ( ~ v1_xboole_0(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

fof(c_0_27,plain,(
    ! [X43,X44,X45,X46] :
      ( v1_xboole_0(X43)
      | v1_xboole_0(X44)
      | ~ v1_funct_1(X45)
      | ~ v1_funct_2(X45,X43,X44)
      | ~ m1_subset_1(X45,k1_zfmisc_1(k2_zfmisc_1(X43,X44)))
      | ~ m1_subset_1(X46,X43)
      | k7_partfun1(X44,X45,X46) = k3_funct_2(X43,X44,X45,X46) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t176_funct_2])])])])).

cnf(c_0_28,plain,
    ( v1_xboole_0(X1)
    | ~ v1_xboole_0(X2)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_partfun1(X3,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_29,negated_conjecture,
    ( m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk3_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_30,negated_conjecture,
    ( v1_partfun1(esk5_0,esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_31,negated_conjecture,
    ( ~ v1_xboole_0(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_32,negated_conjecture,
    ( k7_partfun1(esk3_0,esk5_0,k1_funct_1(esk4_0,esk6_0)) != k3_funct_2(esk2_0,esk3_0,k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0),esk6_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_20,c_0_21]),c_0_22]),c_0_23]),c_0_24]),c_0_25])]),c_0_26])).

cnf(c_0_33,plain,
    ( v1_xboole_0(X1)
    | v1_xboole_0(X2)
    | k7_partfun1(X2,X3,X4) = k3_funct_2(X1,X2,X3,X4)
    | ~ v1_funct_1(X3)
    | ~ v1_funct_2(X3,X1,X2)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X4,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_34,negated_conjecture,
    ( v1_funct_1(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_35,negated_conjecture,
    ( ~ v1_xboole_0(esk3_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28,c_0_29]),c_0_30])]),c_0_31])).

fof(c_0_36,plain,(
    ! [X30,X31,X32,X33] :
      ( v1_xboole_0(X30)
      | ~ v1_funct_1(X32)
      | ~ v1_funct_2(X32,X30,X31)
      | ~ m1_subset_1(X32,k1_zfmisc_1(k2_zfmisc_1(X30,X31)))
      | ~ m1_subset_1(X33,X30)
      | m1_subset_1(k3_funct_2(X30,X31,X32,X33),X31) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[dt_k3_funct_2])])])).

fof(c_0_37,plain,(
    ! [X13,X14,X15] :
      ( ( v4_relat_1(X15,X13)
        | ~ m1_subset_1(X15,k1_zfmisc_1(k2_zfmisc_1(X13,X14))) )
      & ( v5_relat_1(X15,X14)
        | ~ m1_subset_1(X15,k1_zfmisc_1(k2_zfmisc_1(X13,X14))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).

fof(c_0_38,plain,(
    ! [X7,X8] :
      ( ~ v1_relat_1(X7)
      | ~ m1_subset_1(X8,k1_zfmisc_1(X7))
      | v1_relat_1(X8) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relat_1])])])).

fof(c_0_39,plain,(
    ! [X11,X12] : v1_relat_1(k2_zfmisc_1(X11,X12)) ),
    inference(variable_rename,[status(thm)],[fc6_relat_1])).

cnf(c_0_40,negated_conjecture,
    ( v1_xboole_0(X1)
    | k3_funct_2(X1,esk3_0,esk5_0,k1_funct_1(esk4_0,esk6_0)) != k3_funct_2(esk2_0,esk3_0,k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0),esk6_0)
    | ~ v1_funct_2(esk5_0,X1,esk3_0)
    | ~ m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(X1,esk3_0)))
    | ~ m1_subset_1(k1_funct_1(esk4_0,esk6_0),X1) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32,c_0_33]),c_0_34])]),c_0_35])).

cnf(c_0_41,plain,
    ( v1_xboole_0(X1)
    | m1_subset_1(k3_funct_2(X1,X3,X2,X4),X3)
    | ~ v1_funct_1(X2)
    | ~ v1_funct_2(X2,X1,X3)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
    | ~ m1_subset_1(X4,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

fof(c_0_42,plain,(
    ! [X16,X17,X18] :
      ( ~ m1_subset_1(X18,k1_zfmisc_1(k2_zfmisc_1(X16,X17)))
      | k1_relset_1(X16,X17,X18) = k1_relat_1(X18) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).

fof(c_0_43,plain,(
    ! [X28,X29] :
      ( ( ~ v1_partfun1(X29,X28)
        | k1_relat_1(X29) = X28
        | ~ v1_relat_1(X29)
        | ~ v4_relat_1(X29,X28) )
      & ( k1_relat_1(X29) != X28
        | v1_partfun1(X29,X28)
        | ~ v1_relat_1(X29)
        | ~ v4_relat_1(X29,X28) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d4_partfun1])])])).

cnf(c_0_44,plain,
    ( v4_relat_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_45,plain,
    ( v1_relat_1(X2)
    | ~ v1_relat_1(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_38])).

cnf(c_0_46,plain,
    ( v1_relat_1(k2_zfmisc_1(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_47,negated_conjecture,
    ( v1_xboole_0(X1)
    | k3_funct_2(esk2_0,esk3_0,k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0),esk6_0) != k1_funct_1(esk5_0,k1_funct_1(esk4_0,esk6_0))
    | ~ v1_funct_2(esk5_0,X1,esk3_0)
    | ~ m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(X1,esk3_0)))
    | ~ m1_subset_1(k1_funct_1(esk4_0,esk6_0),X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_21]),c_0_34])])).

cnf(c_0_48,plain,
    ( m1_subset_1(k1_funct_1(X1,X2),X3)
    | v1_xboole_0(X4)
    | ~ v1_funct_2(X1,X4,X3)
    | ~ v1_funct_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X4,X3)))
    | ~ m1_subset_1(X2,X4) ),
    inference(spm,[status(thm)],[c_0_41,c_0_21])).

fof(c_0_49,plain,(
    ! [X47,X48,X49,X50,X51,X52] :
      ( v1_xboole_0(X49)
      | ~ v1_funct_1(X50)
      | ~ v1_funct_2(X50,X48,X49)
      | ~ m1_subset_1(X50,k1_zfmisc_1(k2_zfmisc_1(X48,X49)))
      | ~ v1_funct_1(X51)
      | ~ m1_subset_1(X51,k1_zfmisc_1(k2_zfmisc_1(X49,X47)))
      | ~ m1_subset_1(X52,X48)
      | ~ r1_tarski(k2_relset_1(X48,X49,X50),k1_relset_1(X49,X47,X51))
      | X48 = k1_xboole_0
      | k1_funct_1(k8_funct_2(X48,X49,X47,X50,X51),X52) = k1_funct_1(X51,k1_funct_1(X50,X52)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t185_funct_2])])])])).

fof(c_0_50,plain,(
    ! [X19,X20,X21] :
      ( ~ m1_subset_1(X21,k1_zfmisc_1(k2_zfmisc_1(X19,X20)))
      | k2_relset_1(X19,X20,X21) = k2_relat_1(X21) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_relset_1])])).

cnf(c_0_51,plain,
    ( k1_relset_1(X2,X3,X1) = k1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_42])).

cnf(c_0_52,plain,
    ( k1_relat_1(X1) = X2
    | ~ v1_partfun1(X1,X2)
    | ~ v1_relat_1(X1)
    | ~ v4_relat_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_43])).

cnf(c_0_53,negated_conjecture,
    ( v4_relat_1(esk5_0,esk1_0) ),
    inference(spm,[status(thm)],[c_0_44,c_0_29])).

cnf(c_0_54,negated_conjecture,
    ( v1_relat_1(esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45,c_0_29]),c_0_46])])).

cnf(c_0_55,negated_conjecture,
    ( v1_xboole_0(X1)
    | k1_funct_1(k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0),esk6_0) != k1_funct_1(esk5_0,k1_funct_1(esk4_0,esk6_0))
    | ~ v1_funct_2(k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0),esk2_0,esk3_0)
    | ~ v1_funct_2(esk5_0,X1,esk3_0)
    | ~ v1_funct_1(k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0))
    | ~ m1_subset_1(k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0)))
    | ~ m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(X1,esk3_0)))
    | ~ m1_subset_1(k1_funct_1(esk4_0,esk6_0),X1) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47,c_0_21]),c_0_25])]),c_0_26])).

cnf(c_0_56,negated_conjecture,
    ( m1_subset_1(k1_funct_1(esk4_0,X1),esk1_0)
    | ~ m1_subset_1(X1,esk2_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48,c_0_22]),c_0_23]),c_0_24])]),c_0_26])).

cnf(c_0_57,plain,
    ( v1_xboole_0(X1)
    | X3 = k1_xboole_0
    | k1_funct_1(k8_funct_2(X3,X1,X5,X2,X4),X6) = k1_funct_1(X4,k1_funct_1(X2,X6))
    | ~ v1_funct_1(X2)
    | ~ v1_funct_2(X2,X3,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X3,X1)))
    | ~ v1_funct_1(X4)
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X5)))
    | ~ m1_subset_1(X6,X3)
    | ~ r1_tarski(k2_relset_1(X3,X1,X2),k1_relset_1(X1,X5,X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_49])).

cnf(c_0_58,plain,
    ( k2_relset_1(X2,X3,X1) = k2_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_50])).

cnf(c_0_59,negated_conjecture,
    ( k1_relset_1(esk1_0,esk3_0,esk5_0) = k1_relat_1(esk5_0) ),
    inference(spm,[status(thm)],[c_0_51,c_0_29])).

cnf(c_0_60,negated_conjecture,
    ( k1_relat_1(esk5_0) = esk1_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_52,c_0_30]),c_0_53]),c_0_54])])).

cnf(c_0_61,negated_conjecture,
    ( k1_funct_1(k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0),esk6_0) != k1_funct_1(esk5_0,k1_funct_1(esk4_0,esk6_0))
    | ~ v1_funct_2(k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0),esk2_0,esk3_0)
    | ~ v1_funct_2(esk5_0,esk1_0,esk3_0)
    | ~ v1_funct_1(k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0))
    | ~ m1_subset_1(k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0))) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55,c_0_56]),c_0_29]),c_0_25])]),c_0_31])).

cnf(c_0_62,negated_conjecture,
    ( k1_funct_1(k8_funct_2(esk2_0,X1,X2,X3,X4),esk6_0) = k1_funct_1(X4,k1_funct_1(X3,esk6_0))
    | esk2_0 = k1_xboole_0
    | v1_xboole_0(X1)
    | ~ v1_funct_2(X3,esk2_0,X1)
    | ~ v1_funct_1(X4)
    | ~ v1_funct_1(X3)
    | ~ r1_tarski(k2_relset_1(esk2_0,X1,X3),k1_relset_1(X1,X2,X4))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(esk2_0,X1)))
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(spm,[status(thm)],[c_0_57,c_0_25])).

cnf(c_0_63,negated_conjecture,
    ( k2_relset_1(esk2_0,esk1_0,esk4_0) = k2_relat_1(esk4_0) ),
    inference(spm,[status(thm)],[c_0_58,c_0_24])).

cnf(c_0_64,negated_conjecture,
    ( k1_relset_1(esk1_0,esk3_0,esk5_0) = esk1_0 ),
    inference(rw,[status(thm)],[c_0_59,c_0_60])).

fof(c_0_65,plain,(
    ! [X34,X35,X36,X37,X38] :
      ( ( v1_funct_1(k8_funct_2(X34,X35,X36,X37,X38))
        | ~ v1_funct_1(X37)
        | ~ v1_funct_2(X37,X34,X35)
        | ~ m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X34,X35)))
        | ~ v1_funct_1(X38)
        | ~ m1_subset_1(X38,k1_zfmisc_1(k2_zfmisc_1(X35,X36))) )
      & ( v1_funct_2(k8_funct_2(X34,X35,X36,X37,X38),X34,X36)
        | ~ v1_funct_1(X37)
        | ~ v1_funct_2(X37,X34,X35)
        | ~ m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X34,X35)))
        | ~ v1_funct_1(X38)
        | ~ m1_subset_1(X38,k1_zfmisc_1(k2_zfmisc_1(X35,X36))) )
      & ( m1_subset_1(k8_funct_2(X34,X35,X36,X37,X38),k1_zfmisc_1(k2_zfmisc_1(X34,X36)))
        | ~ v1_funct_1(X37)
        | ~ v1_funct_2(X37,X34,X35)
        | ~ m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X34,X35)))
        | ~ v1_funct_1(X38)
        | ~ m1_subset_1(X38,k1_zfmisc_1(k2_zfmisc_1(X35,X36))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k8_funct_2])])])).

cnf(c_0_66,negated_conjecture,
    ( esk2_0 = k1_xboole_0
    | ~ v1_funct_2(k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0),esk2_0,esk3_0)
    | ~ v1_funct_2(esk5_0,esk1_0,esk3_0)
    | ~ v1_funct_1(k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0))
    | ~ r1_tarski(k2_relat_1(esk4_0),esk1_0)
    | ~ m1_subset_1(k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0))) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_61,c_0_62]),c_0_22]),c_0_34]),c_0_23]),c_0_63]),c_0_64]),c_0_24]),c_0_29])]),c_0_31])).

cnf(c_0_67,plain,
    ( v1_funct_2(k8_funct_2(X1,X2,X3,X4,X5),X1,X3)
    | ~ v1_funct_1(X4)
    | ~ v1_funct_2(X4,X1,X2)
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X5)
    | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_65])).

cnf(c_0_68,negated_conjecture,
    ( esk2_0 = k1_xboole_0
    | ~ v1_funct_2(esk5_0,esk1_0,esk3_0)
    | ~ v1_funct_1(k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0))
    | ~ r1_tarski(k2_relat_1(esk4_0),esk1_0)
    | ~ m1_subset_1(k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_66,c_0_67]),c_0_22]),c_0_34]),c_0_23]),c_0_29]),c_0_24])])).

cnf(c_0_69,plain,
    ( v1_funct_1(k8_funct_2(X1,X2,X3,X4,X5))
    | ~ v1_funct_1(X4)
    | ~ v1_funct_2(X4,X1,X2)
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X5)
    | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_65])).

fof(c_0_70,plain,(
    ! [X22,X23,X24] :
      ( ( v1_funct_1(X24)
        | ~ v1_funct_1(X24)
        | ~ v1_partfun1(X24,X22)
        | ~ m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X22,X23))) )
      & ( v1_funct_2(X24,X22,X23)
        | ~ v1_funct_1(X24)
        | ~ v1_partfun1(X24,X22)
        | ~ m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X22,X23))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_funct_2])])])).

cnf(c_0_71,negated_conjecture,
    ( esk2_0 = k1_xboole_0
    | ~ v1_funct_2(esk5_0,esk1_0,esk3_0)
    | ~ r1_tarski(k2_relat_1(esk4_0),esk1_0)
    | ~ m1_subset_1(k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_68,c_0_69]),c_0_22]),c_0_34]),c_0_23]),c_0_29]),c_0_24])])).

cnf(c_0_72,plain,
    ( m1_subset_1(k8_funct_2(X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
    | ~ v1_funct_1(X4)
    | ~ v1_funct_2(X4,X1,X2)
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X5)
    | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_65])).

cnf(c_0_73,plain,
    ( v1_funct_2(X1,X2,X3)
    | ~ v1_funct_1(X1)
    | ~ v1_partfun1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_70])).

cnf(c_0_74,negated_conjecture,
    ( esk2_0 = k1_xboole_0
    | ~ v1_funct_2(esk5_0,esk1_0,esk3_0)
    | ~ r1_tarski(k2_relat_1(esk4_0),esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_71,c_0_72]),c_0_22]),c_0_34]),c_0_23]),c_0_29]),c_0_24])])).

cnf(c_0_75,negated_conjecture,
    ( v1_funct_2(esk5_0,esk1_0,X1)
    | ~ m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,X1))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_73,c_0_30]),c_0_34])])).

fof(c_0_76,plain,(
    ! [X9,X10] :
      ( ( ~ v5_relat_1(X10,X9)
        | r1_tarski(k2_relat_1(X10),X9)
        | ~ v1_relat_1(X10) )
      & ( ~ r1_tarski(k2_relat_1(X10),X9)
        | v5_relat_1(X10,X9)
        | ~ v1_relat_1(X10) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d19_relat_1])])])).

cnf(c_0_77,plain,
    ( v5_relat_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_78,negated_conjecture,
    ( esk2_0 = k1_xboole_0
    | ~ r1_tarski(k2_relat_1(esk4_0),esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_74,c_0_75]),c_0_29])])).

cnf(c_0_79,plain,
    ( r1_tarski(k2_relat_1(X1),X2)
    | ~ v5_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_76])).

cnf(c_0_80,negated_conjecture,
    ( v5_relat_1(esk4_0,esk1_0) ),
    inference(spm,[status(thm)],[c_0_77,c_0_24])).

cnf(c_0_81,negated_conjecture,
    ( v1_relat_1(esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45,c_0_24]),c_0_46])])).

cnf(c_0_82,negated_conjecture,
    ( esk2_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_78,c_0_79]),c_0_80]),c_0_81])])).

cnf(c_0_83,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(split_conjunct,[status(thm)],[fc1_xboole_0])).

cnf(c_0_84,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_26,c_0_82]),c_0_83])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.34  % Computer   : n014.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 15:27:37 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  # Version: 2.5pre002
% 0.14/0.35  # No SInE strategy applied
% 0.14/0.35  # Trying AutoSched0 for 299 seconds
% 0.21/0.40  # AutoSched0-Mode selected heuristic G_E___107_B42_F1_PI_SE_Q4_CS_SP_PS_S5PRR_S0Y
% 0.21/0.40  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.21/0.40  #
% 0.21/0.40  # Preprocessing time       : 0.028 s
% 0.21/0.40  # Presaturation interreduction done
% 0.21/0.40  
% 0.21/0.40  # Proof found!
% 0.21/0.40  # SZS status Theorem
% 0.21/0.40  # SZS output start CNFRefutation
% 0.21/0.40  fof(t193_funct_2, conjecture, ![X1]:(~(v1_xboole_0(X1))=>![X2]:(~(v1_xboole_0(X2))=>![X3, X4]:(((v1_funct_1(X4)&v1_funct_2(X4,X2,X1))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X1))))=>![X5]:((v1_funct_1(X5)&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X3))))=>![X6]:(m1_subset_1(X6,X2)=>(v1_partfun1(X5,X1)=>k3_funct_2(X2,X3,k8_funct_2(X2,X1,X3,X4,X5),X6)=k7_partfun1(X3,X5,k3_funct_2(X2,X1,X4,X6)))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t193_funct_2)).
% 0.21/0.40  fof(redefinition_k3_funct_2, axiom, ![X1, X2, X3, X4]:(((((~(v1_xboole_0(X1))&v1_funct_1(X3))&v1_funct_2(X3,X1,X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))&m1_subset_1(X4,X1))=>k3_funct_2(X1,X2,X3,X4)=k1_funct_1(X3,X4)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k3_funct_2)).
% 0.21/0.40  fof(cc2_partfun1, axiom, ![X1, X2]:((~(v1_xboole_0(X1))&v1_xboole_0(X2))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>~(v1_partfun1(X3,X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc2_partfun1)).
% 0.21/0.40  fof(t176_funct_2, axiom, ![X1]:(~(v1_xboole_0(X1))=>![X2]:(~(v1_xboole_0(X2))=>![X3]:(((v1_funct_1(X3)&v1_funct_2(X3,X1,X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>![X4]:(m1_subset_1(X4,X1)=>k7_partfun1(X2,X3,X4)=k3_funct_2(X1,X2,X3,X4))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t176_funct_2)).
% 0.21/0.40  fof(dt_k3_funct_2, axiom, ![X1, X2, X3, X4]:(((((~(v1_xboole_0(X1))&v1_funct_1(X3))&v1_funct_2(X3,X1,X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))&m1_subset_1(X4,X1))=>m1_subset_1(k3_funct_2(X1,X2,X3,X4),X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k3_funct_2)).
% 0.21/0.40  fof(cc2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(v4_relat_1(X3,X1)&v5_relat_1(X3,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc2_relset_1)).
% 0.21/0.40  fof(cc2_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>v1_relat_1(X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc2_relat_1)).
% 0.21/0.40  fof(fc6_relat_1, axiom, ![X1, X2]:v1_relat_1(k2_zfmisc_1(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc6_relat_1)).
% 0.21/0.40  fof(redefinition_k1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k1_relset_1(X1,X2,X3)=k1_relat_1(X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k1_relset_1)).
% 0.21/0.40  fof(d4_partfun1, axiom, ![X1, X2]:((v1_relat_1(X2)&v4_relat_1(X2,X1))=>(v1_partfun1(X2,X1)<=>k1_relat_1(X2)=X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d4_partfun1)).
% 0.21/0.40  fof(t185_funct_2, axiom, ![X1, X2, X3]:(~(v1_xboole_0(X3))=>![X4]:(((v1_funct_1(X4)&v1_funct_2(X4,X2,X3))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X3))))=>![X5]:((v1_funct_1(X5)&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X3,X1))))=>![X6]:(m1_subset_1(X6,X2)=>(r1_tarski(k2_relset_1(X2,X3,X4),k1_relset_1(X3,X1,X5))=>(X2=k1_xboole_0|k1_funct_1(k8_funct_2(X2,X3,X1,X4,X5),X6)=k1_funct_1(X5,k1_funct_1(X4,X6)))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t185_funct_2)).
% 0.21/0.40  fof(redefinition_k2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k2_relset_1(X1,X2,X3)=k2_relat_1(X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k2_relset_1)).
% 0.21/0.40  fof(dt_k8_funct_2, axiom, ![X1, X2, X3, X4, X5]:(((((v1_funct_1(X4)&v1_funct_2(X4,X1,X2))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))&v1_funct_1(X5))&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))))=>((v1_funct_1(k8_funct_2(X1,X2,X3,X4,X5))&v1_funct_2(k8_funct_2(X1,X2,X3,X4,X5),X1,X3))&m1_subset_1(k8_funct_2(X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X1,X3))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k8_funct_2)).
% 0.21/0.40  fof(cc1_funct_2, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>((v1_funct_1(X3)&v1_partfun1(X3,X1))=>(v1_funct_1(X3)&v1_funct_2(X3,X1,X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc1_funct_2)).
% 0.21/0.40  fof(d19_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(v5_relat_1(X2,X1)<=>r1_tarski(k2_relat_1(X2),X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d19_relat_1)).
% 0.21/0.40  fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc1_xboole_0)).
% 0.21/0.40  fof(c_0_16, negated_conjecture, ~(![X1]:(~(v1_xboole_0(X1))=>![X2]:(~(v1_xboole_0(X2))=>![X3, X4]:(((v1_funct_1(X4)&v1_funct_2(X4,X2,X1))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X1))))=>![X5]:((v1_funct_1(X5)&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X3))))=>![X6]:(m1_subset_1(X6,X2)=>(v1_partfun1(X5,X1)=>k3_funct_2(X2,X3,k8_funct_2(X2,X1,X3,X4,X5),X6)=k7_partfun1(X3,X5,k3_funct_2(X2,X1,X4,X6))))))))), inference(assume_negation,[status(cth)],[t193_funct_2])).
% 0.21/0.40  fof(c_0_17, negated_conjecture, (~v1_xboole_0(esk1_0)&(~v1_xboole_0(esk2_0)&(((v1_funct_1(esk4_0)&v1_funct_2(esk4_0,esk2_0,esk1_0))&m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk1_0))))&((v1_funct_1(esk5_0)&m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk3_0))))&(m1_subset_1(esk6_0,esk2_0)&(v1_partfun1(esk5_0,esk1_0)&k3_funct_2(esk2_0,esk3_0,k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0),esk6_0)!=k7_partfun1(esk3_0,esk5_0,k3_funct_2(esk2_0,esk1_0,esk4_0,esk6_0)))))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_16])])])])).
% 0.21/0.40  fof(c_0_18, plain, ![X39, X40, X41, X42]:(v1_xboole_0(X39)|~v1_funct_1(X41)|~v1_funct_2(X41,X39,X40)|~m1_subset_1(X41,k1_zfmisc_1(k2_zfmisc_1(X39,X40)))|~m1_subset_1(X42,X39)|k3_funct_2(X39,X40,X41,X42)=k1_funct_1(X41,X42)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[redefinition_k3_funct_2])])])).
% 0.21/0.40  fof(c_0_19, plain, ![X25, X26, X27]:(v1_xboole_0(X25)|~v1_xboole_0(X26)|(~m1_subset_1(X27,k1_zfmisc_1(k2_zfmisc_1(X25,X26)))|~v1_partfun1(X27,X25))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[cc2_partfun1])])])])).
% 0.21/0.40  cnf(c_0_20, negated_conjecture, (k3_funct_2(esk2_0,esk3_0,k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0),esk6_0)!=k7_partfun1(esk3_0,esk5_0,k3_funct_2(esk2_0,esk1_0,esk4_0,esk6_0))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.21/0.40  cnf(c_0_21, plain, (v1_xboole_0(X1)|k3_funct_2(X1,X3,X2,X4)=k1_funct_1(X2,X4)|~v1_funct_1(X2)|~v1_funct_2(X2,X1,X3)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))|~m1_subset_1(X4,X1)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.21/0.40  cnf(c_0_22, negated_conjecture, (v1_funct_2(esk4_0,esk2_0,esk1_0)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.21/0.40  cnf(c_0_23, negated_conjecture, (v1_funct_1(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.21/0.40  cnf(c_0_24, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.21/0.40  cnf(c_0_25, negated_conjecture, (m1_subset_1(esk6_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.21/0.40  cnf(c_0_26, negated_conjecture, (~v1_xboole_0(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.21/0.40  fof(c_0_27, plain, ![X43, X44, X45, X46]:(v1_xboole_0(X43)|(v1_xboole_0(X44)|(~v1_funct_1(X45)|~v1_funct_2(X45,X43,X44)|~m1_subset_1(X45,k1_zfmisc_1(k2_zfmisc_1(X43,X44)))|(~m1_subset_1(X46,X43)|k7_partfun1(X44,X45,X46)=k3_funct_2(X43,X44,X45,X46))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t176_funct_2])])])])).
% 0.21/0.40  cnf(c_0_28, plain, (v1_xboole_0(X1)|~v1_xboole_0(X2)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~v1_partfun1(X3,X1)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.21/0.40  cnf(c_0_29, negated_conjecture, (m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk3_0)))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.21/0.40  cnf(c_0_30, negated_conjecture, (v1_partfun1(esk5_0,esk1_0)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.21/0.40  cnf(c_0_31, negated_conjecture, (~v1_xboole_0(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.21/0.40  cnf(c_0_32, negated_conjecture, (k7_partfun1(esk3_0,esk5_0,k1_funct_1(esk4_0,esk6_0))!=k3_funct_2(esk2_0,esk3_0,k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0),esk6_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_20, c_0_21]), c_0_22]), c_0_23]), c_0_24]), c_0_25])]), c_0_26])).
% 0.21/0.40  cnf(c_0_33, plain, (v1_xboole_0(X1)|v1_xboole_0(X2)|k7_partfun1(X2,X3,X4)=k3_funct_2(X1,X2,X3,X4)|~v1_funct_1(X3)|~v1_funct_2(X3,X1,X2)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~m1_subset_1(X4,X1)), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.21/0.40  cnf(c_0_34, negated_conjecture, (v1_funct_1(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.21/0.40  cnf(c_0_35, negated_conjecture, (~v1_xboole_0(esk3_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28, c_0_29]), c_0_30])]), c_0_31])).
% 0.21/0.40  fof(c_0_36, plain, ![X30, X31, X32, X33]:(v1_xboole_0(X30)|~v1_funct_1(X32)|~v1_funct_2(X32,X30,X31)|~m1_subset_1(X32,k1_zfmisc_1(k2_zfmisc_1(X30,X31)))|~m1_subset_1(X33,X30)|m1_subset_1(k3_funct_2(X30,X31,X32,X33),X31)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[dt_k3_funct_2])])])).
% 0.21/0.40  fof(c_0_37, plain, ![X13, X14, X15]:((v4_relat_1(X15,X13)|~m1_subset_1(X15,k1_zfmisc_1(k2_zfmisc_1(X13,X14))))&(v5_relat_1(X15,X14)|~m1_subset_1(X15,k1_zfmisc_1(k2_zfmisc_1(X13,X14))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).
% 0.21/0.40  fof(c_0_38, plain, ![X7, X8]:(~v1_relat_1(X7)|(~m1_subset_1(X8,k1_zfmisc_1(X7))|v1_relat_1(X8))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relat_1])])])).
% 0.21/0.40  fof(c_0_39, plain, ![X11, X12]:v1_relat_1(k2_zfmisc_1(X11,X12)), inference(variable_rename,[status(thm)],[fc6_relat_1])).
% 0.21/0.40  cnf(c_0_40, negated_conjecture, (v1_xboole_0(X1)|k3_funct_2(X1,esk3_0,esk5_0,k1_funct_1(esk4_0,esk6_0))!=k3_funct_2(esk2_0,esk3_0,k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0),esk6_0)|~v1_funct_2(esk5_0,X1,esk3_0)|~m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(X1,esk3_0)))|~m1_subset_1(k1_funct_1(esk4_0,esk6_0),X1)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32, c_0_33]), c_0_34])]), c_0_35])).
% 0.21/0.40  cnf(c_0_41, plain, (v1_xboole_0(X1)|m1_subset_1(k3_funct_2(X1,X3,X2,X4),X3)|~v1_funct_1(X2)|~v1_funct_2(X2,X1,X3)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))|~m1_subset_1(X4,X1)), inference(split_conjunct,[status(thm)],[c_0_36])).
% 0.21/0.40  fof(c_0_42, plain, ![X16, X17, X18]:(~m1_subset_1(X18,k1_zfmisc_1(k2_zfmisc_1(X16,X17)))|k1_relset_1(X16,X17,X18)=k1_relat_1(X18)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).
% 0.21/0.40  fof(c_0_43, plain, ![X28, X29]:((~v1_partfun1(X29,X28)|k1_relat_1(X29)=X28|(~v1_relat_1(X29)|~v4_relat_1(X29,X28)))&(k1_relat_1(X29)!=X28|v1_partfun1(X29,X28)|(~v1_relat_1(X29)|~v4_relat_1(X29,X28)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d4_partfun1])])])).
% 0.21/0.40  cnf(c_0_44, plain, (v4_relat_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_37])).
% 0.21/0.40  cnf(c_0_45, plain, (v1_relat_1(X2)|~v1_relat_1(X1)|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_38])).
% 0.21/0.40  cnf(c_0_46, plain, (v1_relat_1(k2_zfmisc_1(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.21/0.40  cnf(c_0_47, negated_conjecture, (v1_xboole_0(X1)|k3_funct_2(esk2_0,esk3_0,k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0),esk6_0)!=k1_funct_1(esk5_0,k1_funct_1(esk4_0,esk6_0))|~v1_funct_2(esk5_0,X1,esk3_0)|~m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(X1,esk3_0)))|~m1_subset_1(k1_funct_1(esk4_0,esk6_0),X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_21]), c_0_34])])).
% 0.21/0.40  cnf(c_0_48, plain, (m1_subset_1(k1_funct_1(X1,X2),X3)|v1_xboole_0(X4)|~v1_funct_2(X1,X4,X3)|~v1_funct_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X4,X3)))|~m1_subset_1(X2,X4)), inference(spm,[status(thm)],[c_0_41, c_0_21])).
% 0.21/0.40  fof(c_0_49, plain, ![X47, X48, X49, X50, X51, X52]:(v1_xboole_0(X49)|(~v1_funct_1(X50)|~v1_funct_2(X50,X48,X49)|~m1_subset_1(X50,k1_zfmisc_1(k2_zfmisc_1(X48,X49)))|(~v1_funct_1(X51)|~m1_subset_1(X51,k1_zfmisc_1(k2_zfmisc_1(X49,X47)))|(~m1_subset_1(X52,X48)|(~r1_tarski(k2_relset_1(X48,X49,X50),k1_relset_1(X49,X47,X51))|(X48=k1_xboole_0|k1_funct_1(k8_funct_2(X48,X49,X47,X50,X51),X52)=k1_funct_1(X51,k1_funct_1(X50,X52)))))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t185_funct_2])])])])).
% 0.21/0.40  fof(c_0_50, plain, ![X19, X20, X21]:(~m1_subset_1(X21,k1_zfmisc_1(k2_zfmisc_1(X19,X20)))|k2_relset_1(X19,X20,X21)=k2_relat_1(X21)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_relset_1])])).
% 0.21/0.40  cnf(c_0_51, plain, (k1_relset_1(X2,X3,X1)=k1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_42])).
% 0.21/0.40  cnf(c_0_52, plain, (k1_relat_1(X1)=X2|~v1_partfun1(X1,X2)|~v1_relat_1(X1)|~v4_relat_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_43])).
% 0.21/0.40  cnf(c_0_53, negated_conjecture, (v4_relat_1(esk5_0,esk1_0)), inference(spm,[status(thm)],[c_0_44, c_0_29])).
% 0.21/0.40  cnf(c_0_54, negated_conjecture, (v1_relat_1(esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45, c_0_29]), c_0_46])])).
% 0.21/0.40  cnf(c_0_55, negated_conjecture, (v1_xboole_0(X1)|k1_funct_1(k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0),esk6_0)!=k1_funct_1(esk5_0,k1_funct_1(esk4_0,esk6_0))|~v1_funct_2(k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0),esk2_0,esk3_0)|~v1_funct_2(esk5_0,X1,esk3_0)|~v1_funct_1(k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0))|~m1_subset_1(k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0)))|~m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(X1,esk3_0)))|~m1_subset_1(k1_funct_1(esk4_0,esk6_0),X1)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47, c_0_21]), c_0_25])]), c_0_26])).
% 0.21/0.40  cnf(c_0_56, negated_conjecture, (m1_subset_1(k1_funct_1(esk4_0,X1),esk1_0)|~m1_subset_1(X1,esk2_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48, c_0_22]), c_0_23]), c_0_24])]), c_0_26])).
% 0.21/0.40  cnf(c_0_57, plain, (v1_xboole_0(X1)|X3=k1_xboole_0|k1_funct_1(k8_funct_2(X3,X1,X5,X2,X4),X6)=k1_funct_1(X4,k1_funct_1(X2,X6))|~v1_funct_1(X2)|~v1_funct_2(X2,X3,X1)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X3,X1)))|~v1_funct_1(X4)|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X5)))|~m1_subset_1(X6,X3)|~r1_tarski(k2_relset_1(X3,X1,X2),k1_relset_1(X1,X5,X4))), inference(split_conjunct,[status(thm)],[c_0_49])).
% 0.21/0.40  cnf(c_0_58, plain, (k2_relset_1(X2,X3,X1)=k2_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_50])).
% 0.21/0.40  cnf(c_0_59, negated_conjecture, (k1_relset_1(esk1_0,esk3_0,esk5_0)=k1_relat_1(esk5_0)), inference(spm,[status(thm)],[c_0_51, c_0_29])).
% 0.21/0.40  cnf(c_0_60, negated_conjecture, (k1_relat_1(esk5_0)=esk1_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_52, c_0_30]), c_0_53]), c_0_54])])).
% 0.21/0.40  cnf(c_0_61, negated_conjecture, (k1_funct_1(k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0),esk6_0)!=k1_funct_1(esk5_0,k1_funct_1(esk4_0,esk6_0))|~v1_funct_2(k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0),esk2_0,esk3_0)|~v1_funct_2(esk5_0,esk1_0,esk3_0)|~v1_funct_1(k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0))|~m1_subset_1(k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0)))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55, c_0_56]), c_0_29]), c_0_25])]), c_0_31])).
% 0.21/0.40  cnf(c_0_62, negated_conjecture, (k1_funct_1(k8_funct_2(esk2_0,X1,X2,X3,X4),esk6_0)=k1_funct_1(X4,k1_funct_1(X3,esk6_0))|esk2_0=k1_xboole_0|v1_xboole_0(X1)|~v1_funct_2(X3,esk2_0,X1)|~v1_funct_1(X4)|~v1_funct_1(X3)|~r1_tarski(k2_relset_1(esk2_0,X1,X3),k1_relset_1(X1,X2,X4))|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(esk2_0,X1)))|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(spm,[status(thm)],[c_0_57, c_0_25])).
% 0.21/0.40  cnf(c_0_63, negated_conjecture, (k2_relset_1(esk2_0,esk1_0,esk4_0)=k2_relat_1(esk4_0)), inference(spm,[status(thm)],[c_0_58, c_0_24])).
% 0.21/0.40  cnf(c_0_64, negated_conjecture, (k1_relset_1(esk1_0,esk3_0,esk5_0)=esk1_0), inference(rw,[status(thm)],[c_0_59, c_0_60])).
% 0.21/0.40  fof(c_0_65, plain, ![X34, X35, X36, X37, X38]:(((v1_funct_1(k8_funct_2(X34,X35,X36,X37,X38))|(~v1_funct_1(X37)|~v1_funct_2(X37,X34,X35)|~m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X34,X35)))|~v1_funct_1(X38)|~m1_subset_1(X38,k1_zfmisc_1(k2_zfmisc_1(X35,X36)))))&(v1_funct_2(k8_funct_2(X34,X35,X36,X37,X38),X34,X36)|(~v1_funct_1(X37)|~v1_funct_2(X37,X34,X35)|~m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X34,X35)))|~v1_funct_1(X38)|~m1_subset_1(X38,k1_zfmisc_1(k2_zfmisc_1(X35,X36))))))&(m1_subset_1(k8_funct_2(X34,X35,X36,X37,X38),k1_zfmisc_1(k2_zfmisc_1(X34,X36)))|(~v1_funct_1(X37)|~v1_funct_2(X37,X34,X35)|~m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X34,X35)))|~v1_funct_1(X38)|~m1_subset_1(X38,k1_zfmisc_1(k2_zfmisc_1(X35,X36)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k8_funct_2])])])).
% 0.21/0.40  cnf(c_0_66, negated_conjecture, (esk2_0=k1_xboole_0|~v1_funct_2(k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0),esk2_0,esk3_0)|~v1_funct_2(esk5_0,esk1_0,esk3_0)|~v1_funct_1(k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0))|~r1_tarski(k2_relat_1(esk4_0),esk1_0)|~m1_subset_1(k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0)))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_61, c_0_62]), c_0_22]), c_0_34]), c_0_23]), c_0_63]), c_0_64]), c_0_24]), c_0_29])]), c_0_31])).
% 0.21/0.40  cnf(c_0_67, plain, (v1_funct_2(k8_funct_2(X1,X2,X3,X4,X5),X1,X3)|~v1_funct_1(X4)|~v1_funct_2(X4,X1,X2)|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~v1_funct_1(X5)|~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_65])).
% 0.21/0.40  cnf(c_0_68, negated_conjecture, (esk2_0=k1_xboole_0|~v1_funct_2(esk5_0,esk1_0,esk3_0)|~v1_funct_1(k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0))|~r1_tarski(k2_relat_1(esk4_0),esk1_0)|~m1_subset_1(k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_66, c_0_67]), c_0_22]), c_0_34]), c_0_23]), c_0_29]), c_0_24])])).
% 0.21/0.40  cnf(c_0_69, plain, (v1_funct_1(k8_funct_2(X1,X2,X3,X4,X5))|~v1_funct_1(X4)|~v1_funct_2(X4,X1,X2)|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~v1_funct_1(X5)|~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_65])).
% 0.21/0.40  fof(c_0_70, plain, ![X22, X23, X24]:((v1_funct_1(X24)|(~v1_funct_1(X24)|~v1_partfun1(X24,X22))|~m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X22,X23))))&(v1_funct_2(X24,X22,X23)|(~v1_funct_1(X24)|~v1_partfun1(X24,X22))|~m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X22,X23))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_funct_2])])])).
% 0.21/0.40  cnf(c_0_71, negated_conjecture, (esk2_0=k1_xboole_0|~v1_funct_2(esk5_0,esk1_0,esk3_0)|~r1_tarski(k2_relat_1(esk4_0),esk1_0)|~m1_subset_1(k8_funct_2(esk2_0,esk1_0,esk3_0,esk4_0,esk5_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_68, c_0_69]), c_0_22]), c_0_34]), c_0_23]), c_0_29]), c_0_24])])).
% 0.21/0.40  cnf(c_0_72, plain, (m1_subset_1(k8_funct_2(X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X1,X3)))|~v1_funct_1(X4)|~v1_funct_2(X4,X1,X2)|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~v1_funct_1(X5)|~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_65])).
% 0.21/0.40  cnf(c_0_73, plain, (v1_funct_2(X1,X2,X3)|~v1_funct_1(X1)|~v1_partfun1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_70])).
% 0.21/0.40  cnf(c_0_74, negated_conjecture, (esk2_0=k1_xboole_0|~v1_funct_2(esk5_0,esk1_0,esk3_0)|~r1_tarski(k2_relat_1(esk4_0),esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_71, c_0_72]), c_0_22]), c_0_34]), c_0_23]), c_0_29]), c_0_24])])).
% 0.21/0.40  cnf(c_0_75, negated_conjecture, (v1_funct_2(esk5_0,esk1_0,X1)|~m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,X1)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_73, c_0_30]), c_0_34])])).
% 0.21/0.40  fof(c_0_76, plain, ![X9, X10]:((~v5_relat_1(X10,X9)|r1_tarski(k2_relat_1(X10),X9)|~v1_relat_1(X10))&(~r1_tarski(k2_relat_1(X10),X9)|v5_relat_1(X10,X9)|~v1_relat_1(X10))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d19_relat_1])])])).
% 0.21/0.40  cnf(c_0_77, plain, (v5_relat_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))), inference(split_conjunct,[status(thm)],[c_0_37])).
% 0.21/0.40  cnf(c_0_78, negated_conjecture, (esk2_0=k1_xboole_0|~r1_tarski(k2_relat_1(esk4_0),esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_74, c_0_75]), c_0_29])])).
% 0.21/0.40  cnf(c_0_79, plain, (r1_tarski(k2_relat_1(X1),X2)|~v5_relat_1(X1,X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_76])).
% 0.21/0.40  cnf(c_0_80, negated_conjecture, (v5_relat_1(esk4_0,esk1_0)), inference(spm,[status(thm)],[c_0_77, c_0_24])).
% 0.21/0.40  cnf(c_0_81, negated_conjecture, (v1_relat_1(esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45, c_0_24]), c_0_46])])).
% 0.21/0.40  cnf(c_0_82, negated_conjecture, (esk2_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_78, c_0_79]), c_0_80]), c_0_81])])).
% 0.21/0.40  cnf(c_0_83, plain, (v1_xboole_0(k1_xboole_0)), inference(split_conjunct,[status(thm)],[fc1_xboole_0])).
% 0.21/0.40  cnf(c_0_84, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_26, c_0_82]), c_0_83])]), ['proof']).
% 0.21/0.40  # SZS output end CNFRefutation
% 0.21/0.40  # Proof object total steps             : 85
% 0.21/0.40  # Proof object clause steps            : 53
% 0.21/0.40  # Proof object formula steps           : 32
% 0.21/0.40  # Proof object conjectures             : 37
% 0.21/0.40  # Proof object clause conjectures      : 34
% 0.21/0.40  # Proof object formula conjectures     : 3
% 0.21/0.40  # Proof object initial clauses used    : 28
% 0.21/0.40  # Proof object initial formulas used   : 16
% 0.21/0.40  # Proof object generating inferences   : 23
% 0.21/0.40  # Proof object simplifying inferences  : 70
% 0.21/0.40  # Training examples: 0 positive, 0 negative
% 0.21/0.40  # Parsed axioms                        : 16
% 0.21/0.40  # Removed by relevancy pruning/SinE    : 0
% 0.21/0.40  # Initial clauses                      : 31
% 0.21/0.40  # Removed in clause preprocessing      : 1
% 0.21/0.40  # Initial clauses in saturation        : 30
% 0.21/0.40  # Processed clauses                    : 200
% 0.21/0.40  # ...of these trivial                  : 0
% 0.21/0.40  # ...subsumed                          : 49
% 0.21/0.40  # ...remaining for further processing  : 151
% 0.21/0.40  # Other redundant clauses eliminated   : 1
% 0.21/0.40  # Clauses deleted for lack of memory   : 0
% 0.21/0.40  # Backward-subsumed                    : 8
% 0.21/0.40  # Backward-rewritten                   : 32
% 0.21/0.40  # Generated clauses                    : 277
% 0.21/0.40  # ...of the previous two non-trivial   : 301
% 0.21/0.40  # Contextual simplify-reflections      : 1
% 0.21/0.40  # Paramodulations                      : 276
% 0.21/0.40  # Factorizations                       : 0
% 0.21/0.40  # Equation resolutions                 : 1
% 0.21/0.40  # Propositional unsat checks           : 0
% 0.21/0.40  #    Propositional check models        : 0
% 0.21/0.40  #    Propositional check unsatisfiable : 0
% 0.21/0.40  #    Propositional clauses             : 0
% 0.21/0.40  #    Propositional clauses after purity: 0
% 0.21/0.40  #    Propositional unsat core size     : 0
% 0.21/0.40  #    Propositional preprocessing time  : 0.000
% 0.21/0.40  #    Propositional encoding time       : 0.000
% 0.21/0.40  #    Propositional solver time         : 0.000
% 0.21/0.40  #    Success case prop preproc time    : 0.000
% 0.21/0.40  #    Success case prop encoding time   : 0.000
% 0.21/0.40  #    Success case prop solver time     : 0.000
% 0.21/0.40  # Current number of processed clauses  : 80
% 0.21/0.40  #    Positive orientable unit clauses  : 15
% 0.21/0.40  #    Positive unorientable unit clauses: 0
% 0.21/0.40  #    Negative unit clauses             : 2
% 0.21/0.40  #    Non-unit-clauses                  : 63
% 0.21/0.40  # Current number of unprocessed clauses: 132
% 0.21/0.40  # ...number of literals in the above   : 1290
% 0.21/0.40  # Current number of archived formulas  : 0
% 0.21/0.40  # Current number of archived clauses   : 70
% 0.21/0.40  # Clause-clause subsumption calls (NU) : 4452
% 0.21/0.40  # Rec. Clause-clause subsumption calls : 434
% 0.21/0.40  # Non-unit clause-clause subsumptions  : 51
% 0.21/0.40  # Unit Clause-clause subsumption calls : 59
% 0.21/0.40  # Rewrite failures with RHS unbound    : 0
% 0.21/0.40  # BW rewrite match attempts            : 2
% 0.21/0.40  # BW rewrite match successes           : 2
% 0.21/0.40  # Condensation attempts                : 0
% 0.21/0.40  # Condensation successes               : 0
% 0.21/0.40  # Termbank termtop insertions          : 15332
% 0.21/0.40  
% 0.21/0.40  # -------------------------------------------------
% 0.21/0.40  # User time                : 0.050 s
% 0.21/0.40  # System time              : 0.006 s
% 0.21/0.40  # Total time               : 0.056 s
% 0.21/0.40  # Maximum resident set size: 1600 pages
%------------------------------------------------------------------------------
