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
% DateTime   : Thu Dec  3 11:02:06 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   99 ( 439 expanded)
%              Number of clauses        :   62 ( 175 expanded)
%              Number of leaves         :   18 ( 108 expanded)
%              Depth                    :   15
%              Number of atoms          :  274 (2097 expanded)
%              Number of equality atoms :   90 ( 604 expanded)
%              Maximal formula depth    :   14 (   4 average)
%              Maximal clause size      :   26 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t28_funct_2,conjecture,(
    ! [X1,X2,X3,X4] :
      ( ( v1_funct_1(X4)
        & v1_funct_2(X4,X1,X2)
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => ! [X5] :
          ( ( v1_funct_1(X5)
            & v1_funct_2(X5,X2,X3)
            & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) )
         => ( ( k2_relset_1(X1,X3,k1_partfun1(X1,X2,X2,X3,X4,X5)) = X3
              & v2_funct_1(X5) )
           => ( X3 = k1_xboole_0
              | k2_relset_1(X1,X2,X4) = X2 ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t28_funct_2)).

fof(cc2_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ( v4_relat_1(X3,X1)
        & v5_relat_1(X3,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc2_relset_1)).

fof(cc1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => v1_relat_1(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc1_relset_1)).

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

fof(redefinition_k1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k1_relset_1(X1,X2,X3) = k1_relat_1(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k1_relset_1)).

fof(t209_relat_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v4_relat_1(X2,X1) )
     => X2 = k7_relat_1(X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t209_relat_1)).

fof(t148_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => k2_relat_1(k7_relat_1(X2,X1)) = k9_relat_1(X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t148_relat_1)).

fof(t168_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => k10_relat_1(X2,X1) = k10_relat_1(X2,k3_xboole_0(k2_relat_1(X2),X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t168_relat_1)).

fof(t164_funct_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v1_funct_1(X2) )
     => ( ( r1_tarski(X1,k1_relat_1(X2))
          & v2_funct_1(X2) )
       => k10_relat_1(X2,k9_relat_1(X2,X1)) = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t164_funct_1)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d10_xboole_0)).

fof(t28_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
     => k3_xboole_0(X1,X2) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t28_xboole_1)).

fof(t3_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X2))
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_subset)).

fof(t160_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( v1_relat_1(X2)
         => k2_relat_1(k5_relat_1(X1,X2)) = k9_relat_1(X2,k2_relat_1(X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t160_relat_1)).

fof(redefinition_k2_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k2_relset_1(X1,X2,X3) = k2_relat_1(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k2_relset_1)).

fof(dt_k2_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => m1_subset_1(k2_relset_1(X1,X2,X3),k1_zfmisc_1(X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k2_relset_1)).

fof(dt_k4_relset_1,axiom,(
    ! [X1,X2,X3,X4,X5,X6] :
      ( ( m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
        & m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4))) )
     => m1_subset_1(k4_relset_1(X1,X2,X3,X4,X5,X6),k1_zfmisc_1(k2_zfmisc_1(X1,X4))) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k4_relset_1)).

fof(redefinition_k4_relset_1,axiom,(
    ! [X1,X2,X3,X4,X5,X6] :
      ( ( m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
        & m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4))) )
     => k4_relset_1(X1,X2,X3,X4,X5,X6) = k5_relat_1(X5,X6) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k4_relset_1)).

fof(redefinition_k1_partfun1,axiom,(
    ! [X1,X2,X3,X4,X5,X6] :
      ( ( v1_funct_1(X5)
        & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
        & v1_funct_1(X6)
        & m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4))) )
     => k1_partfun1(X1,X2,X3,X4,X5,X6) = k5_relat_1(X5,X6) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k1_partfun1)).

fof(c_0_18,negated_conjecture,(
    ~ ! [X1,X2,X3,X4] :
        ( ( v1_funct_1(X4)
          & v1_funct_2(X4,X1,X2)
          & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
       => ! [X5] :
            ( ( v1_funct_1(X5)
              & v1_funct_2(X5,X2,X3)
              & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) )
           => ( ( k2_relset_1(X1,X3,k1_partfun1(X1,X2,X2,X3,X4,X5)) = X3
                & v2_funct_1(X5) )
             => ( X3 = k1_xboole_0
                | k2_relset_1(X1,X2,X4) = X2 ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t28_funct_2])).

fof(c_0_19,plain,(
    ! [X26,X27,X28] :
      ( ( v4_relat_1(X28,X26)
        | ~ m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))) )
      & ( v5_relat_1(X28,X27)
        | ~ m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).

fof(c_0_20,negated_conjecture,
    ( v1_funct_1(esk4_0)
    & v1_funct_2(esk4_0,esk1_0,esk2_0)
    & m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0)))
    & v1_funct_1(esk5_0)
    & v1_funct_2(esk5_0,esk2_0,esk3_0)
    & m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0)))
    & k2_relset_1(esk1_0,esk3_0,k1_partfun1(esk1_0,esk2_0,esk2_0,esk3_0,esk4_0,esk5_0)) = esk3_0
    & v2_funct_1(esk5_0)
    & esk3_0 != k1_xboole_0
    & k2_relset_1(esk1_0,esk2_0,esk4_0) != esk2_0 ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_18])])])).

fof(c_0_21,plain,(
    ! [X23,X24,X25] :
      ( ~ m1_subset_1(X25,k1_zfmisc_1(k2_zfmisc_1(X23,X24)))
      | v1_relat_1(X25) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).

fof(c_0_22,plain,(
    ! [X50,X51,X52] :
      ( ( ~ v1_funct_2(X52,X50,X51)
        | X50 = k1_relset_1(X50,X51,X52)
        | X51 = k1_xboole_0
        | ~ m1_subset_1(X52,k1_zfmisc_1(k2_zfmisc_1(X50,X51))) )
      & ( X50 != k1_relset_1(X50,X51,X52)
        | v1_funct_2(X52,X50,X51)
        | X51 = k1_xboole_0
        | ~ m1_subset_1(X52,k1_zfmisc_1(k2_zfmisc_1(X50,X51))) )
      & ( ~ v1_funct_2(X52,X50,X51)
        | X50 = k1_relset_1(X50,X51,X52)
        | X50 != k1_xboole_0
        | ~ m1_subset_1(X52,k1_zfmisc_1(k2_zfmisc_1(X50,X51))) )
      & ( X50 != k1_relset_1(X50,X51,X52)
        | v1_funct_2(X52,X50,X51)
        | X50 != k1_xboole_0
        | ~ m1_subset_1(X52,k1_zfmisc_1(k2_zfmisc_1(X50,X51))) )
      & ( ~ v1_funct_2(X52,X50,X51)
        | X52 = k1_xboole_0
        | X50 = k1_xboole_0
        | X51 != k1_xboole_0
        | ~ m1_subset_1(X52,k1_zfmisc_1(k2_zfmisc_1(X50,X51))) )
      & ( X52 != k1_xboole_0
        | v1_funct_2(X52,X50,X51)
        | X50 = k1_xboole_0
        | X51 != k1_xboole_0
        | ~ m1_subset_1(X52,k1_zfmisc_1(k2_zfmisc_1(X50,X51))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).

fof(c_0_23,plain,(
    ! [X38,X39,X40] :
      ( ~ m1_subset_1(X40,k1_zfmisc_1(k2_zfmisc_1(X38,X39)))
      | k1_relset_1(X38,X39,X40) = k1_relat_1(X40) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).

fof(c_0_24,plain,(
    ! [X19,X20] :
      ( ~ v1_relat_1(X20)
      | ~ v4_relat_1(X20,X19)
      | X20 = k7_relat_1(X20,X19) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t209_relat_1])])).

cnf(c_0_25,plain,
    ( v4_relat_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_26,negated_conjecture,
    ( m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_27,plain,
    ( v1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_28,plain,
    ( X2 = k1_relset_1(X2,X3,X1)
    | X3 = k1_xboole_0
    | ~ v1_funct_2(X1,X2,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_29,negated_conjecture,
    ( v1_funct_2(esk5_0,esk2_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_30,negated_conjecture,
    ( esk3_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_31,plain,
    ( k1_relset_1(X2,X3,X1) = k1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

fof(c_0_32,plain,(
    ! [X13,X14] :
      ( ~ v1_relat_1(X14)
      | k2_relat_1(k7_relat_1(X14,X13)) = k9_relat_1(X14,X13) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t148_relat_1])])).

cnf(c_0_33,plain,
    ( X1 = k7_relat_1(X1,X2)
    | ~ v1_relat_1(X1)
    | ~ v4_relat_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_34,negated_conjecture,
    ( v4_relat_1(esk5_0,esk2_0) ),
    inference(spm,[status(thm)],[c_0_25,c_0_26])).

cnf(c_0_35,negated_conjecture,
    ( v1_relat_1(esk5_0) ),
    inference(spm,[status(thm)],[c_0_27,c_0_26])).

cnf(c_0_36,negated_conjecture,
    ( k1_relset_1(esk2_0,esk3_0,esk5_0) = esk2_0 ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28,c_0_26]),c_0_29])]),c_0_30])).

cnf(c_0_37,plain,
    ( k1_relset_1(X1,X2,X3) = k1_relset_1(X4,X5,X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5))) ),
    inference(spm,[status(thm)],[c_0_31,c_0_31])).

fof(c_0_38,plain,(
    ! [X17,X18] :
      ( ~ v1_relat_1(X18)
      | k10_relat_1(X18,X17) = k10_relat_1(X18,k3_xboole_0(k2_relat_1(X18),X17)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t168_relat_1])])).

fof(c_0_39,plain,(
    ! [X21,X22] :
      ( ~ v1_relat_1(X22)
      | ~ v1_funct_1(X22)
      | ~ r1_tarski(X21,k1_relat_1(X22))
      | ~ v2_funct_1(X22)
      | k10_relat_1(X22,k9_relat_1(X22,X21)) = X21 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t164_funct_1])])).

cnf(c_0_40,plain,
    ( k2_relat_1(k7_relat_1(X1,X2)) = k9_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

cnf(c_0_41,negated_conjecture,
    ( k7_relat_1(esk5_0,esk2_0) = esk5_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_34]),c_0_35])])).

cnf(c_0_42,negated_conjecture,
    ( k1_relset_1(X1,X2,esk5_0) = esk2_0
    | ~ m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_36,c_0_37]),c_0_26])])).

fof(c_0_43,plain,(
    ! [X7,X8] :
      ( ( r1_tarski(X7,X8)
        | X7 != X8 )
      & ( r1_tarski(X8,X7)
        | X7 != X8 )
      & ( ~ r1_tarski(X7,X8)
        | ~ r1_tarski(X8,X7)
        | X7 = X8 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

cnf(c_0_44,plain,
    ( k10_relat_1(X1,X2) = k10_relat_1(X1,k3_xboole_0(k2_relat_1(X1),X2))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_38])).

cnf(c_0_45,plain,
    ( k10_relat_1(X1,k9_relat_1(X1,X2)) = X2
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ r1_tarski(X2,k1_relat_1(X1))
    | ~ v2_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_46,negated_conjecture,
    ( k9_relat_1(esk5_0,esk2_0) = k2_relat_1(esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_41]),c_0_35])])).

cnf(c_0_47,negated_conjecture,
    ( v2_funct_1(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_48,negated_conjecture,
    ( v1_funct_1(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_49,negated_conjecture,
    ( k1_relat_1(esk5_0) = esk2_0
    | ~ m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(spm,[status(thm)],[c_0_31,c_0_42])).

cnf(c_0_50,plain,
    ( r1_tarski(X1,X2)
    | X2 != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_43])).

cnf(c_0_51,plain,
    ( k10_relat_1(k7_relat_1(X1,X2),k3_xboole_0(k9_relat_1(X1,X2),X3)) = k10_relat_1(k7_relat_1(X1,X2),X3)
    | ~ v1_relat_1(k7_relat_1(X1,X2))
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_44,c_0_40])).

fof(c_0_52,plain,(
    ! [X9,X10] :
      ( ~ r1_tarski(X9,X10)
      | k3_xboole_0(X9,X10) = X9 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t28_xboole_1])])).

cnf(c_0_53,negated_conjecture,
    ( k10_relat_1(esk5_0,k2_relat_1(esk5_0)) = esk2_0
    | ~ r1_tarski(esk2_0,k1_relat_1(esk5_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45,c_0_46]),c_0_47]),c_0_48]),c_0_35])])).

cnf(c_0_54,negated_conjecture,
    ( k1_relat_1(esk5_0) = esk2_0 ),
    inference(spm,[status(thm)],[c_0_49,c_0_26])).

cnf(c_0_55,plain,
    ( r1_tarski(X1,X1) ),
    inference(er,[status(thm)],[c_0_50])).

cnf(c_0_56,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_57,negated_conjecture,
    ( k10_relat_1(esk5_0,k3_xboole_0(k2_relat_1(esk5_0),X1)) = k10_relat_1(esk5_0,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51,c_0_46]),c_0_41]),c_0_41]),c_0_41]),c_0_35]),c_0_35])])).

cnf(c_0_58,plain,
    ( k3_xboole_0(X1,X2) = X1
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_52])).

cnf(c_0_59,negated_conjecture,
    ( k10_relat_1(esk5_0,k2_relat_1(esk5_0)) = esk2_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_53,c_0_54]),c_0_55])])).

fof(c_0_60,plain,(
    ! [X11,X12] :
      ( ( ~ m1_subset_1(X11,k1_zfmisc_1(X12))
        | r1_tarski(X11,X12) )
      & ( ~ r1_tarski(X11,X12)
        | m1_subset_1(X11,k1_zfmisc_1(X12)) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).

fof(c_0_61,plain,(
    ! [X15,X16] :
      ( ~ v1_relat_1(X15)
      | ~ v1_relat_1(X16)
      | k2_relat_1(k5_relat_1(X15,X16)) = k9_relat_1(X16,k2_relat_1(X15)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t160_relat_1])])])).

cnf(c_0_62,negated_conjecture,
    ( v4_relat_1(esk4_0,esk1_0) ),
    inference(spm,[status(thm)],[c_0_25,c_0_56])).

cnf(c_0_63,negated_conjecture,
    ( v1_relat_1(esk4_0) ),
    inference(spm,[status(thm)],[c_0_27,c_0_56])).

cnf(c_0_64,negated_conjecture,
    ( k10_relat_1(esk5_0,X1) = esk2_0
    | ~ r1_tarski(k2_relat_1(esk5_0),X1) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57,c_0_58]),c_0_59])).

cnf(c_0_65,plain,
    ( r1_tarski(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_60])).

cnf(c_0_66,plain,
    ( k2_relat_1(k5_relat_1(X1,X2)) = k9_relat_1(X2,k2_relat_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_61])).

cnf(c_0_67,negated_conjecture,
    ( k7_relat_1(esk4_0,esk1_0) = esk4_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_62]),c_0_63])])).

fof(c_0_68,plain,(
    ! [X41,X42,X43] :
      ( ~ m1_subset_1(X43,k1_zfmisc_1(k2_zfmisc_1(X41,X42)))
      | k2_relset_1(X41,X42,X43) = k2_relat_1(X43) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_relset_1])])).

fof(c_0_69,plain,(
    ! [X29,X30,X31] :
      ( ~ m1_subset_1(X31,k1_zfmisc_1(k2_zfmisc_1(X29,X30)))
      | m1_subset_1(k2_relset_1(X29,X30,X31),k1_zfmisc_1(X30)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_relset_1])])).

fof(c_0_70,plain,(
    ! [X32,X33,X34,X35,X36,X37] :
      ( ~ m1_subset_1(X36,k1_zfmisc_1(k2_zfmisc_1(X32,X33)))
      | ~ m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X34,X35)))
      | m1_subset_1(k4_relset_1(X32,X33,X34,X35,X36,X37),k1_zfmisc_1(k2_zfmisc_1(X32,X35))) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k4_relset_1])])).

fof(c_0_71,plain,(
    ! [X44,X45,X46,X47,X48,X49] :
      ( ~ m1_subset_1(X48,k1_zfmisc_1(k2_zfmisc_1(X44,X45)))
      | ~ m1_subset_1(X49,k1_zfmisc_1(k2_zfmisc_1(X46,X47)))
      | k4_relset_1(X44,X45,X46,X47,X48,X49) = k5_relat_1(X48,X49) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k4_relset_1])])).

cnf(c_0_72,negated_conjecture,
    ( k10_relat_1(esk5_0,X1) = esk2_0
    | ~ m1_subset_1(k2_relat_1(esk5_0),k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_64,c_0_65])).

cnf(c_0_73,plain,
    ( k2_relat_1(k5_relat_1(k7_relat_1(X1,X2),X3)) = k9_relat_1(X3,k9_relat_1(X1,X2))
    | ~ v1_relat_1(k7_relat_1(X1,X2))
    | ~ v1_relat_1(X3)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_66,c_0_40])).

cnf(c_0_74,negated_conjecture,
    ( k9_relat_1(esk4_0,esk1_0) = k2_relat_1(esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_67]),c_0_63])])).

cnf(c_0_75,negated_conjecture,
    ( k2_relset_1(esk1_0,esk2_0,esk4_0) != esk2_0 ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_76,plain,
    ( k2_relset_1(X2,X3,X1) = k2_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_68])).

cnf(c_0_77,negated_conjecture,
    ( k2_relset_1(esk1_0,esk3_0,k1_partfun1(esk1_0,esk2_0,esk2_0,esk3_0,esk4_0,esk5_0)) = esk3_0 ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

fof(c_0_78,plain,(
    ! [X53,X54,X55,X56,X57,X58] :
      ( ~ v1_funct_1(X57)
      | ~ m1_subset_1(X57,k1_zfmisc_1(k2_zfmisc_1(X53,X54)))
      | ~ v1_funct_1(X58)
      | ~ m1_subset_1(X58,k1_zfmisc_1(k2_zfmisc_1(X55,X56)))
      | k1_partfun1(X53,X54,X55,X56,X57,X58) = k5_relat_1(X57,X58) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_partfun1])])).

cnf(c_0_79,plain,
    ( m1_subset_1(k2_relset_1(X2,X3,X1),k1_zfmisc_1(X3))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_69])).

cnf(c_0_80,plain,
    ( m1_subset_1(k4_relset_1(X2,X3,X5,X6,X1,X4),k1_zfmisc_1(k2_zfmisc_1(X2,X6)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X5,X6))) ),
    inference(split_conjunct,[status(thm)],[c_0_70])).

cnf(c_0_81,plain,
    ( k4_relset_1(X2,X3,X5,X6,X1,X4) = k5_relat_1(X1,X4)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X5,X6))) ),
    inference(split_conjunct,[status(thm)],[c_0_71])).

cnf(c_0_82,negated_conjecture,
    ( esk2_0 = X1
    | ~ m1_subset_1(k2_relat_1(esk5_0),k1_zfmisc_1(k9_relat_1(esk5_0,X1)))
    | ~ r1_tarski(X1,esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45,c_0_72]),c_0_47]),c_0_48]),c_0_35]),c_0_54])])).

cnf(c_0_83,negated_conjecture,
    ( k9_relat_1(X1,k2_relat_1(esk4_0)) = k2_relat_1(k5_relat_1(esk4_0,X1))
    | ~ v1_relat_1(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_73,c_0_67]),c_0_74]),c_0_63])])).

cnf(c_0_84,negated_conjecture,
    ( k2_relat_1(esk4_0) != esk2_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_75,c_0_76]),c_0_56])])).

cnf(c_0_85,negated_conjecture,
    ( k2_relat_1(k1_partfun1(esk1_0,esk2_0,esk2_0,esk3_0,esk4_0,esk5_0)) = esk3_0
    | ~ m1_subset_1(k1_partfun1(esk1_0,esk2_0,esk2_0,esk3_0,esk4_0,esk5_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk3_0))) ),
    inference(spm,[status(thm)],[c_0_77,c_0_76])).

cnf(c_0_86,plain,
    ( k1_partfun1(X2,X3,X5,X6,X1,X4) = k5_relat_1(X1,X4)
    | ~ v1_funct_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ v1_funct_1(X4)
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X5,X6))) ),
    inference(split_conjunct,[status(thm)],[c_0_78])).

cnf(c_0_87,negated_conjecture,
    ( v1_funct_1(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_88,plain,
    ( m1_subset_1(k2_relat_1(X1),k1_zfmisc_1(X2))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2))) ),
    inference(spm,[status(thm)],[c_0_79,c_0_76])).

cnf(c_0_89,plain,
    ( m1_subset_1(k5_relat_1(X1,X2),k1_zfmisc_1(k2_zfmisc_1(X3,X4)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X5,X4)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X6))) ),
    inference(spm,[status(thm)],[c_0_80,c_0_81])).

cnf(c_0_90,negated_conjecture,
    ( ~ m1_subset_1(k2_relat_1(esk5_0),k1_zfmisc_1(k2_relat_1(k5_relat_1(esk4_0,esk5_0))))
    | ~ r1_tarski(k2_relat_1(esk4_0),esk2_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_82,c_0_83]),c_0_35])]),c_0_84])).

cnf(c_0_91,negated_conjecture,
    ( k2_relat_1(k5_relat_1(esk4_0,esk5_0)) = esk3_0
    | ~ m1_subset_1(k5_relat_1(esk4_0,esk5_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk3_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_85,c_0_86]),c_0_48]),c_0_87]),c_0_26]),c_0_56])])).

cnf(c_0_92,negated_conjecture,
    ( m1_subset_1(k2_relat_1(esk5_0),k1_zfmisc_1(esk3_0)) ),
    inference(spm,[status(thm)],[c_0_88,c_0_26])).

cnf(c_0_93,negated_conjecture,
    ( m1_subset_1(k5_relat_1(X1,esk5_0),k1_zfmisc_1(k2_zfmisc_1(X2,esk3_0)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(spm,[status(thm)],[c_0_89,c_0_26])).

cnf(c_0_94,negated_conjecture,
    ( ~ m1_subset_1(k5_relat_1(esk4_0,esk5_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk3_0)))
    | ~ r1_tarski(k2_relat_1(esk4_0),esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_90,c_0_91]),c_0_92])])).

cnf(c_0_95,negated_conjecture,
    ( m1_subset_1(k5_relat_1(esk4_0,esk5_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk3_0))) ),
    inference(spm,[status(thm)],[c_0_93,c_0_56])).

cnf(c_0_96,negated_conjecture,
    ( ~ r1_tarski(k2_relat_1(esk4_0),esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_94,c_0_95])])).

cnf(c_0_97,negated_conjecture,
    ( m1_subset_1(k2_relat_1(esk4_0),k1_zfmisc_1(esk2_0)) ),
    inference(spm,[status(thm)],[c_0_88,c_0_56])).

cnf(c_0_98,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_96,c_0_65]),c_0_97])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.34  % Computer   : n017.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 16:00:31 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.19/0.34  # Version: 2.5pre002
% 0.19/0.34  # No SInE strategy applied
% 0.19/0.34  # Trying AutoSched0 for 299 seconds
% 0.19/0.41  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_AE_CS_SP_PS_S0V
% 0.19/0.41  # and selection function PSelectComplexExceptRRHorn.
% 0.19/0.41  #
% 0.19/0.41  # Preprocessing time       : 0.028 s
% 0.19/0.41  # Presaturation interreduction done
% 0.19/0.41  
% 0.19/0.41  # Proof found!
% 0.19/0.41  # SZS status Theorem
% 0.19/0.41  # SZS output start CNFRefutation
% 0.19/0.41  fof(t28_funct_2, conjecture, ![X1, X2, X3, X4]:(((v1_funct_1(X4)&v1_funct_2(X4,X1,X2))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>![X5]:(((v1_funct_1(X5)&v1_funct_2(X5,X2,X3))&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))))=>((k2_relset_1(X1,X3,k1_partfun1(X1,X2,X2,X3,X4,X5))=X3&v2_funct_1(X5))=>(X3=k1_xboole_0|k2_relset_1(X1,X2,X4)=X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t28_funct_2)).
% 0.19/0.41  fof(cc2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(v4_relat_1(X3,X1)&v5_relat_1(X3,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc2_relset_1)).
% 0.19/0.41  fof(cc1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>v1_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc1_relset_1)).
% 0.19/0.41  fof(d1_funct_2, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(((X2=k1_xboole_0=>X1=k1_xboole_0)=>(v1_funct_2(X3,X1,X2)<=>X1=k1_relset_1(X1,X2,X3)))&(X2=k1_xboole_0=>(X1=k1_xboole_0|(v1_funct_2(X3,X1,X2)<=>X3=k1_xboole_0))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d1_funct_2)).
% 0.19/0.41  fof(redefinition_k1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k1_relset_1(X1,X2,X3)=k1_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k1_relset_1)).
% 0.19/0.41  fof(t209_relat_1, axiom, ![X1, X2]:((v1_relat_1(X2)&v4_relat_1(X2,X1))=>X2=k7_relat_1(X2,X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t209_relat_1)).
% 0.19/0.41  fof(t148_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>k2_relat_1(k7_relat_1(X2,X1))=k9_relat_1(X2,X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t148_relat_1)).
% 0.19/0.41  fof(t168_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>k10_relat_1(X2,X1)=k10_relat_1(X2,k3_xboole_0(k2_relat_1(X2),X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t168_relat_1)).
% 0.19/0.41  fof(t164_funct_1, axiom, ![X1, X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>((r1_tarski(X1,k1_relat_1(X2))&v2_funct_1(X2))=>k10_relat_1(X2,k9_relat_1(X2,X1))=X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t164_funct_1)).
% 0.19/0.41  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.19/0.41  fof(t28_xboole_1, axiom, ![X1, X2]:(r1_tarski(X1,X2)=>k3_xboole_0(X1,X2)=X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t28_xboole_1)).
% 0.19/0.41  fof(t3_subset, axiom, ![X1, X2]:(m1_subset_1(X1,k1_zfmisc_1(X2))<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t3_subset)).
% 0.19/0.41  fof(t160_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>![X2]:(v1_relat_1(X2)=>k2_relat_1(k5_relat_1(X1,X2))=k9_relat_1(X2,k2_relat_1(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t160_relat_1)).
% 0.19/0.41  fof(redefinition_k2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k2_relset_1(X1,X2,X3)=k2_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k2_relset_1)).
% 0.19/0.41  fof(dt_k2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>m1_subset_1(k2_relset_1(X1,X2,X3),k1_zfmisc_1(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k2_relset_1)).
% 0.19/0.41  fof(dt_k4_relset_1, axiom, ![X1, X2, X3, X4, X5, X6]:((m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))&m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4))))=>m1_subset_1(k4_relset_1(X1,X2,X3,X4,X5,X6),k1_zfmisc_1(k2_zfmisc_1(X1,X4)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k4_relset_1)).
% 0.19/0.41  fof(redefinition_k4_relset_1, axiom, ![X1, X2, X3, X4, X5, X6]:((m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))&m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4))))=>k4_relset_1(X1,X2,X3,X4,X5,X6)=k5_relat_1(X5,X6)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k4_relset_1)).
% 0.19/0.41  fof(redefinition_k1_partfun1, axiom, ![X1, X2, X3, X4, X5, X6]:((((v1_funct_1(X5)&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))&v1_funct_1(X6))&m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4))))=>k1_partfun1(X1,X2,X3,X4,X5,X6)=k5_relat_1(X5,X6)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k1_partfun1)).
% 0.19/0.41  fof(c_0_18, negated_conjecture, ~(![X1, X2, X3, X4]:(((v1_funct_1(X4)&v1_funct_2(X4,X1,X2))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>![X5]:(((v1_funct_1(X5)&v1_funct_2(X5,X2,X3))&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))))=>((k2_relset_1(X1,X3,k1_partfun1(X1,X2,X2,X3,X4,X5))=X3&v2_funct_1(X5))=>(X3=k1_xboole_0|k2_relset_1(X1,X2,X4)=X2))))), inference(assume_negation,[status(cth)],[t28_funct_2])).
% 0.19/0.41  fof(c_0_19, plain, ![X26, X27, X28]:((v4_relat_1(X28,X26)|~m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))))&(v5_relat_1(X28,X27)|~m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).
% 0.19/0.41  fof(c_0_20, negated_conjecture, (((v1_funct_1(esk4_0)&v1_funct_2(esk4_0,esk1_0,esk2_0))&m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0))))&(((v1_funct_1(esk5_0)&v1_funct_2(esk5_0,esk2_0,esk3_0))&m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0))))&((k2_relset_1(esk1_0,esk3_0,k1_partfun1(esk1_0,esk2_0,esk2_0,esk3_0,esk4_0,esk5_0))=esk3_0&v2_funct_1(esk5_0))&(esk3_0!=k1_xboole_0&k2_relset_1(esk1_0,esk2_0,esk4_0)!=esk2_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_18])])])).
% 0.19/0.41  fof(c_0_21, plain, ![X23, X24, X25]:(~m1_subset_1(X25,k1_zfmisc_1(k2_zfmisc_1(X23,X24)))|v1_relat_1(X25)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).
% 0.19/0.41  fof(c_0_22, plain, ![X50, X51, X52]:((((~v1_funct_2(X52,X50,X51)|X50=k1_relset_1(X50,X51,X52)|X51=k1_xboole_0|~m1_subset_1(X52,k1_zfmisc_1(k2_zfmisc_1(X50,X51))))&(X50!=k1_relset_1(X50,X51,X52)|v1_funct_2(X52,X50,X51)|X51=k1_xboole_0|~m1_subset_1(X52,k1_zfmisc_1(k2_zfmisc_1(X50,X51)))))&((~v1_funct_2(X52,X50,X51)|X50=k1_relset_1(X50,X51,X52)|X50!=k1_xboole_0|~m1_subset_1(X52,k1_zfmisc_1(k2_zfmisc_1(X50,X51))))&(X50!=k1_relset_1(X50,X51,X52)|v1_funct_2(X52,X50,X51)|X50!=k1_xboole_0|~m1_subset_1(X52,k1_zfmisc_1(k2_zfmisc_1(X50,X51))))))&((~v1_funct_2(X52,X50,X51)|X52=k1_xboole_0|X50=k1_xboole_0|X51!=k1_xboole_0|~m1_subset_1(X52,k1_zfmisc_1(k2_zfmisc_1(X50,X51))))&(X52!=k1_xboole_0|v1_funct_2(X52,X50,X51)|X50=k1_xboole_0|X51!=k1_xboole_0|~m1_subset_1(X52,k1_zfmisc_1(k2_zfmisc_1(X50,X51)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).
% 0.19/0.41  fof(c_0_23, plain, ![X38, X39, X40]:(~m1_subset_1(X40,k1_zfmisc_1(k2_zfmisc_1(X38,X39)))|k1_relset_1(X38,X39,X40)=k1_relat_1(X40)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).
% 0.19/0.41  fof(c_0_24, plain, ![X19, X20]:(~v1_relat_1(X20)|~v4_relat_1(X20,X19)|X20=k7_relat_1(X20,X19)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t209_relat_1])])).
% 0.19/0.41  cnf(c_0_25, plain, (v4_relat_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.19/0.41  cnf(c_0_26, negated_conjecture, (m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0)))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.19/0.41  cnf(c_0_27, plain, (v1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.19/0.41  cnf(c_0_28, plain, (X2=k1_relset_1(X2,X3,X1)|X3=k1_xboole_0|~v1_funct_2(X1,X2,X3)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.19/0.41  cnf(c_0_29, negated_conjecture, (v1_funct_2(esk5_0,esk2_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.19/0.41  cnf(c_0_30, negated_conjecture, (esk3_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.19/0.41  cnf(c_0_31, plain, (k1_relset_1(X2,X3,X1)=k1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.19/0.41  fof(c_0_32, plain, ![X13, X14]:(~v1_relat_1(X14)|k2_relat_1(k7_relat_1(X14,X13))=k9_relat_1(X14,X13)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t148_relat_1])])).
% 0.19/0.41  cnf(c_0_33, plain, (X1=k7_relat_1(X1,X2)|~v1_relat_1(X1)|~v4_relat_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.19/0.41  cnf(c_0_34, negated_conjecture, (v4_relat_1(esk5_0,esk2_0)), inference(spm,[status(thm)],[c_0_25, c_0_26])).
% 0.19/0.41  cnf(c_0_35, negated_conjecture, (v1_relat_1(esk5_0)), inference(spm,[status(thm)],[c_0_27, c_0_26])).
% 0.19/0.41  cnf(c_0_36, negated_conjecture, (k1_relset_1(esk2_0,esk3_0,esk5_0)=esk2_0), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28, c_0_26]), c_0_29])]), c_0_30])).
% 0.19/0.41  cnf(c_0_37, plain, (k1_relset_1(X1,X2,X3)=k1_relset_1(X4,X5,X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))), inference(spm,[status(thm)],[c_0_31, c_0_31])).
% 0.19/0.41  fof(c_0_38, plain, ![X17, X18]:(~v1_relat_1(X18)|k10_relat_1(X18,X17)=k10_relat_1(X18,k3_xboole_0(k2_relat_1(X18),X17))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t168_relat_1])])).
% 0.19/0.41  fof(c_0_39, plain, ![X21, X22]:(~v1_relat_1(X22)|~v1_funct_1(X22)|(~r1_tarski(X21,k1_relat_1(X22))|~v2_funct_1(X22)|k10_relat_1(X22,k9_relat_1(X22,X21))=X21)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t164_funct_1])])).
% 0.19/0.41  cnf(c_0_40, plain, (k2_relat_1(k7_relat_1(X1,X2))=k9_relat_1(X1,X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.19/0.41  cnf(c_0_41, negated_conjecture, (k7_relat_1(esk5_0,esk2_0)=esk5_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33, c_0_34]), c_0_35])])).
% 0.19/0.41  cnf(c_0_42, negated_conjecture, (k1_relset_1(X1,X2,esk5_0)=esk2_0|~m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_36, c_0_37]), c_0_26])])).
% 0.19/0.41  fof(c_0_43, plain, ![X7, X8]:(((r1_tarski(X7,X8)|X7!=X8)&(r1_tarski(X8,X7)|X7!=X8))&(~r1_tarski(X7,X8)|~r1_tarski(X8,X7)|X7=X8)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.19/0.41  cnf(c_0_44, plain, (k10_relat_1(X1,X2)=k10_relat_1(X1,k3_xboole_0(k2_relat_1(X1),X2))|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_38])).
% 0.19/0.41  cnf(c_0_45, plain, (k10_relat_1(X1,k9_relat_1(X1,X2))=X2|~v1_relat_1(X1)|~v1_funct_1(X1)|~r1_tarski(X2,k1_relat_1(X1))|~v2_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.19/0.41  cnf(c_0_46, negated_conjecture, (k9_relat_1(esk5_0,esk2_0)=k2_relat_1(esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_41]), c_0_35])])).
% 0.19/0.41  cnf(c_0_47, negated_conjecture, (v2_funct_1(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.19/0.41  cnf(c_0_48, negated_conjecture, (v1_funct_1(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.19/0.41  cnf(c_0_49, negated_conjecture, (k1_relat_1(esk5_0)=esk2_0|~m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(spm,[status(thm)],[c_0_31, c_0_42])).
% 0.19/0.41  cnf(c_0_50, plain, (r1_tarski(X1,X2)|X2!=X1), inference(split_conjunct,[status(thm)],[c_0_43])).
% 0.19/0.41  cnf(c_0_51, plain, (k10_relat_1(k7_relat_1(X1,X2),k3_xboole_0(k9_relat_1(X1,X2),X3))=k10_relat_1(k7_relat_1(X1,X2),X3)|~v1_relat_1(k7_relat_1(X1,X2))|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_44, c_0_40])).
% 0.19/0.41  fof(c_0_52, plain, ![X9, X10]:(~r1_tarski(X9,X10)|k3_xboole_0(X9,X10)=X9), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t28_xboole_1])])).
% 0.19/0.41  cnf(c_0_53, negated_conjecture, (k10_relat_1(esk5_0,k2_relat_1(esk5_0))=esk2_0|~r1_tarski(esk2_0,k1_relat_1(esk5_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45, c_0_46]), c_0_47]), c_0_48]), c_0_35])])).
% 0.19/0.41  cnf(c_0_54, negated_conjecture, (k1_relat_1(esk5_0)=esk2_0), inference(spm,[status(thm)],[c_0_49, c_0_26])).
% 0.19/0.41  cnf(c_0_55, plain, (r1_tarski(X1,X1)), inference(er,[status(thm)],[c_0_50])).
% 0.19/0.41  cnf(c_0_56, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0)))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.19/0.41  cnf(c_0_57, negated_conjecture, (k10_relat_1(esk5_0,k3_xboole_0(k2_relat_1(esk5_0),X1))=k10_relat_1(esk5_0,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51, c_0_46]), c_0_41]), c_0_41]), c_0_41]), c_0_35]), c_0_35])])).
% 0.19/0.41  cnf(c_0_58, plain, (k3_xboole_0(X1,X2)=X1|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_52])).
% 0.19/0.41  cnf(c_0_59, negated_conjecture, (k10_relat_1(esk5_0,k2_relat_1(esk5_0))=esk2_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_53, c_0_54]), c_0_55])])).
% 0.19/0.41  fof(c_0_60, plain, ![X11, X12]:((~m1_subset_1(X11,k1_zfmisc_1(X12))|r1_tarski(X11,X12))&(~r1_tarski(X11,X12)|m1_subset_1(X11,k1_zfmisc_1(X12)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).
% 0.19/0.41  fof(c_0_61, plain, ![X15, X16]:(~v1_relat_1(X15)|(~v1_relat_1(X16)|k2_relat_1(k5_relat_1(X15,X16))=k9_relat_1(X16,k2_relat_1(X15)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t160_relat_1])])])).
% 0.19/0.41  cnf(c_0_62, negated_conjecture, (v4_relat_1(esk4_0,esk1_0)), inference(spm,[status(thm)],[c_0_25, c_0_56])).
% 0.19/0.41  cnf(c_0_63, negated_conjecture, (v1_relat_1(esk4_0)), inference(spm,[status(thm)],[c_0_27, c_0_56])).
% 0.19/0.41  cnf(c_0_64, negated_conjecture, (k10_relat_1(esk5_0,X1)=esk2_0|~r1_tarski(k2_relat_1(esk5_0),X1)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57, c_0_58]), c_0_59])).
% 0.19/0.41  cnf(c_0_65, plain, (r1_tarski(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_60])).
% 0.19/0.41  cnf(c_0_66, plain, (k2_relat_1(k5_relat_1(X1,X2))=k9_relat_1(X2,k2_relat_1(X1))|~v1_relat_1(X1)|~v1_relat_1(X2)), inference(split_conjunct,[status(thm)],[c_0_61])).
% 0.19/0.41  cnf(c_0_67, negated_conjecture, (k7_relat_1(esk4_0,esk1_0)=esk4_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33, c_0_62]), c_0_63])])).
% 0.19/0.41  fof(c_0_68, plain, ![X41, X42, X43]:(~m1_subset_1(X43,k1_zfmisc_1(k2_zfmisc_1(X41,X42)))|k2_relset_1(X41,X42,X43)=k2_relat_1(X43)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_relset_1])])).
% 0.19/0.41  fof(c_0_69, plain, ![X29, X30, X31]:(~m1_subset_1(X31,k1_zfmisc_1(k2_zfmisc_1(X29,X30)))|m1_subset_1(k2_relset_1(X29,X30,X31),k1_zfmisc_1(X30))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_relset_1])])).
% 0.19/0.41  fof(c_0_70, plain, ![X32, X33, X34, X35, X36, X37]:(~m1_subset_1(X36,k1_zfmisc_1(k2_zfmisc_1(X32,X33)))|~m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X34,X35)))|m1_subset_1(k4_relset_1(X32,X33,X34,X35,X36,X37),k1_zfmisc_1(k2_zfmisc_1(X32,X35)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k4_relset_1])])).
% 0.19/0.41  fof(c_0_71, plain, ![X44, X45, X46, X47, X48, X49]:(~m1_subset_1(X48,k1_zfmisc_1(k2_zfmisc_1(X44,X45)))|~m1_subset_1(X49,k1_zfmisc_1(k2_zfmisc_1(X46,X47)))|k4_relset_1(X44,X45,X46,X47,X48,X49)=k5_relat_1(X48,X49)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k4_relset_1])])).
% 0.19/0.41  cnf(c_0_72, negated_conjecture, (k10_relat_1(esk5_0,X1)=esk2_0|~m1_subset_1(k2_relat_1(esk5_0),k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_64, c_0_65])).
% 0.19/0.41  cnf(c_0_73, plain, (k2_relat_1(k5_relat_1(k7_relat_1(X1,X2),X3))=k9_relat_1(X3,k9_relat_1(X1,X2))|~v1_relat_1(k7_relat_1(X1,X2))|~v1_relat_1(X3)|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_66, c_0_40])).
% 0.19/0.41  cnf(c_0_74, negated_conjecture, (k9_relat_1(esk4_0,esk1_0)=k2_relat_1(esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_67]), c_0_63])])).
% 0.19/0.41  cnf(c_0_75, negated_conjecture, (k2_relset_1(esk1_0,esk2_0,esk4_0)!=esk2_0), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.19/0.41  cnf(c_0_76, plain, (k2_relset_1(X2,X3,X1)=k2_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_68])).
% 0.19/0.41  cnf(c_0_77, negated_conjecture, (k2_relset_1(esk1_0,esk3_0,k1_partfun1(esk1_0,esk2_0,esk2_0,esk3_0,esk4_0,esk5_0))=esk3_0), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.19/0.41  fof(c_0_78, plain, ![X53, X54, X55, X56, X57, X58]:(~v1_funct_1(X57)|~m1_subset_1(X57,k1_zfmisc_1(k2_zfmisc_1(X53,X54)))|~v1_funct_1(X58)|~m1_subset_1(X58,k1_zfmisc_1(k2_zfmisc_1(X55,X56)))|k1_partfun1(X53,X54,X55,X56,X57,X58)=k5_relat_1(X57,X58)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_partfun1])])).
% 0.19/0.41  cnf(c_0_79, plain, (m1_subset_1(k2_relset_1(X2,X3,X1),k1_zfmisc_1(X3))|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_69])).
% 0.19/0.41  cnf(c_0_80, plain, (m1_subset_1(k4_relset_1(X2,X3,X5,X6,X1,X4),k1_zfmisc_1(k2_zfmisc_1(X2,X6)))|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X5,X6)))), inference(split_conjunct,[status(thm)],[c_0_70])).
% 0.19/0.41  cnf(c_0_81, plain, (k4_relset_1(X2,X3,X5,X6,X1,X4)=k5_relat_1(X1,X4)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X5,X6)))), inference(split_conjunct,[status(thm)],[c_0_71])).
% 0.19/0.41  cnf(c_0_82, negated_conjecture, (esk2_0=X1|~m1_subset_1(k2_relat_1(esk5_0),k1_zfmisc_1(k9_relat_1(esk5_0,X1)))|~r1_tarski(X1,esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45, c_0_72]), c_0_47]), c_0_48]), c_0_35]), c_0_54])])).
% 0.19/0.41  cnf(c_0_83, negated_conjecture, (k9_relat_1(X1,k2_relat_1(esk4_0))=k2_relat_1(k5_relat_1(esk4_0,X1))|~v1_relat_1(X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_73, c_0_67]), c_0_74]), c_0_63])])).
% 0.19/0.41  cnf(c_0_84, negated_conjecture, (k2_relat_1(esk4_0)!=esk2_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_75, c_0_76]), c_0_56])])).
% 0.19/0.41  cnf(c_0_85, negated_conjecture, (k2_relat_1(k1_partfun1(esk1_0,esk2_0,esk2_0,esk3_0,esk4_0,esk5_0))=esk3_0|~m1_subset_1(k1_partfun1(esk1_0,esk2_0,esk2_0,esk3_0,esk4_0,esk5_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk3_0)))), inference(spm,[status(thm)],[c_0_77, c_0_76])).
% 0.19/0.41  cnf(c_0_86, plain, (k1_partfun1(X2,X3,X5,X6,X1,X4)=k5_relat_1(X1,X4)|~v1_funct_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~v1_funct_1(X4)|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X5,X6)))), inference(split_conjunct,[status(thm)],[c_0_78])).
% 0.19/0.41  cnf(c_0_87, negated_conjecture, (v1_funct_1(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.19/0.41  cnf(c_0_88, plain, (m1_subset_1(k2_relat_1(X1),k1_zfmisc_1(X2))|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))), inference(spm,[status(thm)],[c_0_79, c_0_76])).
% 0.19/0.41  cnf(c_0_89, plain, (m1_subset_1(k5_relat_1(X1,X2),k1_zfmisc_1(k2_zfmisc_1(X3,X4)))|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X5,X4)))|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X6)))), inference(spm,[status(thm)],[c_0_80, c_0_81])).
% 0.19/0.42  cnf(c_0_90, negated_conjecture, (~m1_subset_1(k2_relat_1(esk5_0),k1_zfmisc_1(k2_relat_1(k5_relat_1(esk4_0,esk5_0))))|~r1_tarski(k2_relat_1(esk4_0),esk2_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_82, c_0_83]), c_0_35])]), c_0_84])).
% 0.19/0.42  cnf(c_0_91, negated_conjecture, (k2_relat_1(k5_relat_1(esk4_0,esk5_0))=esk3_0|~m1_subset_1(k5_relat_1(esk4_0,esk5_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk3_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_85, c_0_86]), c_0_48]), c_0_87]), c_0_26]), c_0_56])])).
% 0.19/0.42  cnf(c_0_92, negated_conjecture, (m1_subset_1(k2_relat_1(esk5_0),k1_zfmisc_1(esk3_0))), inference(spm,[status(thm)],[c_0_88, c_0_26])).
% 0.19/0.42  cnf(c_0_93, negated_conjecture, (m1_subset_1(k5_relat_1(X1,esk5_0),k1_zfmisc_1(k2_zfmisc_1(X2,esk3_0)))|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(spm,[status(thm)],[c_0_89, c_0_26])).
% 0.19/0.42  cnf(c_0_94, negated_conjecture, (~m1_subset_1(k5_relat_1(esk4_0,esk5_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk3_0)))|~r1_tarski(k2_relat_1(esk4_0),esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_90, c_0_91]), c_0_92])])).
% 0.19/0.42  cnf(c_0_95, negated_conjecture, (m1_subset_1(k5_relat_1(esk4_0,esk5_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk3_0)))), inference(spm,[status(thm)],[c_0_93, c_0_56])).
% 0.19/0.42  cnf(c_0_96, negated_conjecture, (~r1_tarski(k2_relat_1(esk4_0),esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_94, c_0_95])])).
% 0.19/0.42  cnf(c_0_97, negated_conjecture, (m1_subset_1(k2_relat_1(esk4_0),k1_zfmisc_1(esk2_0))), inference(spm,[status(thm)],[c_0_88, c_0_56])).
% 0.19/0.42  cnf(c_0_98, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_96, c_0_65]), c_0_97])]), ['proof']).
% 0.19/0.42  # SZS output end CNFRefutation
% 0.19/0.42  # Proof object total steps             : 99
% 0.19/0.42  # Proof object clause steps            : 62
% 0.19/0.42  # Proof object formula steps           : 37
% 0.19/0.42  # Proof object conjectures             : 42
% 0.19/0.42  # Proof object clause conjectures      : 39
% 0.19/0.42  # Proof object formula conjectures     : 3
% 0.19/0.42  # Proof object initial clauses used    : 26
% 0.19/0.42  # Proof object initial formulas used   : 18
% 0.19/0.42  # Proof object generating inferences   : 33
% 0.19/0.42  # Proof object simplifying inferences  : 52
% 0.19/0.42  # Training examples: 0 positive, 0 negative
% 0.19/0.42  # Parsed axioms                        : 18
% 0.19/0.42  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.42  # Initial clauses                      : 36
% 0.19/0.42  # Removed in clause preprocessing      : 0
% 0.19/0.42  # Initial clauses in saturation        : 36
% 0.19/0.42  # Processed clauses                    : 421
% 0.19/0.42  # ...of these trivial                  : 9
% 0.19/0.42  # ...subsumed                          : 136
% 0.19/0.42  # ...remaining for further processing  : 276
% 0.19/0.42  # Other redundant clauses eliminated   : 5
% 0.19/0.42  # Clauses deleted for lack of memory   : 0
% 0.19/0.42  # Backward-subsumed                    : 5
% 0.19/0.42  # Backward-rewritten                   : 20
% 0.19/0.42  # Generated clauses                    : 659
% 0.19/0.42  # ...of the previous two non-trivial   : 640
% 0.19/0.42  # Contextual simplify-reflections      : 4
% 0.19/0.42  # Paramodulations                      : 641
% 0.19/0.42  # Factorizations                       : 12
% 0.19/0.42  # Equation resolutions                 : 6
% 0.19/0.42  # Propositional unsat checks           : 0
% 0.19/0.42  #    Propositional check models        : 0
% 0.19/0.42  #    Propositional check unsatisfiable : 0
% 0.19/0.42  #    Propositional clauses             : 0
% 0.19/0.42  #    Propositional clauses after purity: 0
% 0.19/0.42  #    Propositional unsat core size     : 0
% 0.19/0.42  #    Propositional preprocessing time  : 0.000
% 0.19/0.42  #    Propositional encoding time       : 0.000
% 0.19/0.42  #    Propositional solver time         : 0.000
% 0.19/0.42  #    Success case prop preproc time    : 0.000
% 0.19/0.42  #    Success case prop encoding time   : 0.000
% 0.19/0.42  #    Success case prop solver time     : 0.000
% 0.19/0.42  # Current number of processed clauses  : 214
% 0.19/0.42  #    Positive orientable unit clauses  : 46
% 0.19/0.42  #    Positive unorientable unit clauses: 0
% 0.19/0.42  #    Negative unit clauses             : 5
% 0.19/0.42  #    Non-unit-clauses                  : 163
% 0.19/0.42  # Current number of unprocessed clauses: 288
% 0.19/0.42  # ...number of literals in the above   : 1167
% 0.19/0.42  # Current number of archived formulas  : 0
% 0.19/0.42  # Current number of archived clauses   : 60
% 0.19/0.42  # Clause-clause subsumption calls (NU) : 8527
% 0.19/0.42  # Rec. Clause-clause subsumption calls : 2930
% 0.19/0.42  # Non-unit clause-clause subsumptions  : 139
% 0.19/0.42  # Unit Clause-clause subsumption calls : 112
% 0.19/0.42  # Rewrite failures with RHS unbound    : 0
% 0.19/0.42  # BW rewrite match attempts            : 10
% 0.19/0.42  # BW rewrite match successes           : 2
% 0.19/0.42  # Condensation attempts                : 0
% 0.19/0.42  # Condensation successes               : 0
% 0.19/0.42  # Termbank termtop insertions          : 20799
% 0.19/0.42  
% 0.19/0.42  # -------------------------------------------------
% 0.19/0.42  # User time                : 0.067 s
% 0.19/0.42  # System time              : 0.008 s
% 0.19/0.42  # Total time               : 0.075 s
% 0.19/0.42  # Maximum resident set size: 1596 pages
%------------------------------------------------------------------------------
