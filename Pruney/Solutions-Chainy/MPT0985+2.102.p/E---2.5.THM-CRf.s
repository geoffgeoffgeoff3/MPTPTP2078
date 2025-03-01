%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n023.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:02:47 EST 2020

% Result     : Theorem 0.21s
% Output     : CNFRefutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :  119 (16120 expanded)
%              Number of clauses        :   85 (6066 expanded)
%              Number of leaves         :   17 (3948 expanded)
%              Depth                    :   20
%              Number of atoms          :  344 (81822 expanded)
%              Number of equality atoms :   96 (14560 expanded)
%              Maximal formula depth    :   14 (   4 average)
%              Maximal clause size      :   26 (   2 average)
%              Maximal term depth       :    5 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t31_funct_2,conjecture,(
    ! [X1,X2,X3] :
      ( ( v1_funct_1(X3)
        & v1_funct_2(X3,X1,X2)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => ( ( v2_funct_1(X3)
          & k2_relset_1(X1,X2,X3) = X2 )
       => ( v1_funct_1(k2_funct_1(X3))
          & v1_funct_2(k2_funct_1(X3),X2,X1)
          & m1_subset_1(k2_funct_1(X3),k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t31_funct_2)).

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

fof(redefinition_k2_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k2_relset_1(X1,X2,X3) = k2_relat_1(X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k2_relset_1)).

fof(cc1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => v1_relat_1(X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc1_relset_1)).

fof(redefinition_k1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k1_relset_1(X1,X2,X3) = k1_relat_1(X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k1_relset_1)).

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

fof(cc3_relset_1,axiom,(
    ! [X1,X2] :
      ( v1_xboole_0(X1)
     => ! [X3] :
          ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
         => v1_xboole_0(X3) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc3_relset_1)).

fof(t113_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( k2_zfmisc_1(X1,X2) = k1_xboole_0
    <=> ( X1 = k1_xboole_0
        | X2 = k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t113_zfmisc_1)).

fof(t3_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X2))
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_subset)).

fof(t4_subset_1,axiom,(
    ! [X1] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t4_subset_1)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).

fof(fc10_relat_1,axiom,(
    ! [X1] :
      ( v1_xboole_0(X1)
     => v1_xboole_0(k1_relat_1(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc10_relat_1)).

fof(dt_k2_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v1_relat_1(k2_funct_1(X1))
        & v1_funct_1(k2_funct_1(X1)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k2_funct_1)).

fof(fc1_xboole_0,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc1_xboole_0)).

fof(t2_xboole_1,axiom,(
    ! [X1] : r1_tarski(k1_xboole_0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_xboole_1)).

fof(l13_xboole_0,axiom,(
    ! [X1] :
      ( v1_xboole_0(X1)
     => X1 = k1_xboole_0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l13_xboole_0)).

fof(c_0_17,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( ( v1_funct_1(X3)
          & v1_funct_2(X3,X1,X2)
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
       => ( ( v2_funct_1(X3)
            & k2_relset_1(X1,X2,X3) = X2 )
         => ( v1_funct_1(k2_funct_1(X3))
            & v1_funct_2(k2_funct_1(X3),X2,X1)
            & m1_subset_1(k2_funct_1(X3),k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ) ) ) ),
    inference(assume_negation,[status(cth)],[t31_funct_2])).

fof(c_0_18,plain,(
    ! [X34] :
      ( ( v1_funct_1(X34)
        | ~ v1_relat_1(X34)
        | ~ v1_funct_1(X34) )
      & ( v1_funct_2(X34,k1_relat_1(X34),k2_relat_1(X34))
        | ~ v1_relat_1(X34)
        | ~ v1_funct_1(X34) )
      & ( m1_subset_1(X34,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X34),k2_relat_1(X34))))
        | ~ v1_relat_1(X34)
        | ~ v1_funct_1(X34) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_funct_2])])])).

fof(c_0_19,plain,(
    ! [X18] :
      ( ( k2_relat_1(X18) = k1_relat_1(k2_funct_1(X18))
        | ~ v2_funct_1(X18)
        | ~ v1_relat_1(X18)
        | ~ v1_funct_1(X18) )
      & ( k1_relat_1(X18) = k2_relat_1(k2_funct_1(X18))
        | ~ v2_funct_1(X18)
        | ~ v1_relat_1(X18)
        | ~ v1_funct_1(X18) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t55_funct_1])])])).

fof(c_0_20,plain,(
    ! [X28,X29,X30] :
      ( ~ m1_subset_1(X30,k1_zfmisc_1(k2_zfmisc_1(X28,X29)))
      | k2_relset_1(X28,X29,X30) = k2_relat_1(X30) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_relset_1])])).

fof(c_0_21,negated_conjecture,
    ( v1_funct_1(esk3_0)
    & v1_funct_2(esk3_0,esk1_0,esk2_0)
    & m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0)))
    & v2_funct_1(esk3_0)
    & k2_relset_1(esk1_0,esk2_0,esk3_0) = esk2_0
    & ( ~ v1_funct_1(k2_funct_1(esk3_0))
      | ~ v1_funct_2(k2_funct_1(esk3_0),esk2_0,esk1_0)
      | ~ m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk1_0))) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_17])])])).

fof(c_0_22,plain,(
    ! [X19,X20,X21] :
      ( ~ m1_subset_1(X21,k1_zfmisc_1(k2_zfmisc_1(X19,X20)))
      | v1_relat_1(X21) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).

cnf(c_0_23,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1))))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_24,plain,
    ( k2_relat_1(X1) = k1_relat_1(k2_funct_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_25,plain,
    ( k2_relset_1(X2,X3,X1) = k2_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_26,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_27,negated_conjecture,
    ( k2_relset_1(esk1_0,esk2_0,esk3_0) = esk2_0 ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_28,plain,
    ( v1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

fof(c_0_29,plain,(
    ! [X25,X26,X27] :
      ( ~ m1_subset_1(X27,k1_zfmisc_1(k2_zfmisc_1(X25,X26)))
      | k1_relset_1(X25,X26,X27) = k1_relat_1(X27) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).

cnf(c_0_30,plain,
    ( m1_subset_1(k2_funct_1(X1),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(X1),k2_relat_1(k2_funct_1(X1)))))
    | ~ v2_funct_1(X1)
    | ~ v1_funct_1(k2_funct_1(X1))
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(k2_funct_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(pm,[status(thm)],[c_0_23,c_0_24])).

cnf(c_0_31,negated_conjecture,
    ( k2_relat_1(esk3_0) = esk2_0 ),
    inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_25,c_0_26]),c_0_27])).

cnf(c_0_32,negated_conjecture,
    ( v2_funct_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_33,negated_conjecture,
    ( v1_funct_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_34,negated_conjecture,
    ( v1_relat_1(esk3_0) ),
    inference(pm,[status(thm)],[c_0_28,c_0_26])).

fof(c_0_35,plain,(
    ! [X31,X32,X33] :
      ( ( ~ v1_funct_2(X33,X31,X32)
        | X31 = k1_relset_1(X31,X32,X33)
        | X32 = k1_xboole_0
        | ~ m1_subset_1(X33,k1_zfmisc_1(k2_zfmisc_1(X31,X32))) )
      & ( X31 != k1_relset_1(X31,X32,X33)
        | v1_funct_2(X33,X31,X32)
        | X32 = k1_xboole_0
        | ~ m1_subset_1(X33,k1_zfmisc_1(k2_zfmisc_1(X31,X32))) )
      & ( ~ v1_funct_2(X33,X31,X32)
        | X31 = k1_relset_1(X31,X32,X33)
        | X31 != k1_xboole_0
        | ~ m1_subset_1(X33,k1_zfmisc_1(k2_zfmisc_1(X31,X32))) )
      & ( X31 != k1_relset_1(X31,X32,X33)
        | v1_funct_2(X33,X31,X32)
        | X31 != k1_xboole_0
        | ~ m1_subset_1(X33,k1_zfmisc_1(k2_zfmisc_1(X31,X32))) )
      & ( ~ v1_funct_2(X33,X31,X32)
        | X33 = k1_xboole_0
        | X31 = k1_xboole_0
        | X32 != k1_xboole_0
        | ~ m1_subset_1(X33,k1_zfmisc_1(k2_zfmisc_1(X31,X32))) )
      & ( X33 != k1_xboole_0
        | v1_funct_2(X33,X31,X32)
        | X31 = k1_xboole_0
        | X32 != k1_xboole_0
        | ~ m1_subset_1(X33,k1_zfmisc_1(k2_zfmisc_1(X31,X32))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).

cnf(c_0_36,plain,
    ( k1_relset_1(X2,X3,X1) = k1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_37,plain,
    ( v1_funct_2(X1,k1_relat_1(X1),k2_relat_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

fof(c_0_38,plain,(
    ! [X22,X23,X24] :
      ( ~ v1_xboole_0(X22)
      | ~ m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X22,X23)))
      | v1_xboole_0(X24) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc3_relset_1])])])).

fof(c_0_39,plain,(
    ! [X8,X9] :
      ( ( k2_zfmisc_1(X8,X9) != k1_xboole_0
        | X8 = k1_xboole_0
        | X9 = k1_xboole_0 )
      & ( X8 != k1_xboole_0
        | k2_zfmisc_1(X8,X9) = k1_xboole_0 )
      & ( X9 != k1_xboole_0
        | k2_zfmisc_1(X8,X9) = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t113_zfmisc_1])])])).

cnf(c_0_40,negated_conjecture,
    ( m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,k2_relat_1(k2_funct_1(esk3_0)))))
    | ~ v1_funct_1(k2_funct_1(esk3_0))
    | ~ v1_relat_1(k2_funct_1(esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_30,c_0_31]),c_0_32]),c_0_33]),c_0_34])])).

cnf(c_0_41,plain,
    ( k1_relat_1(X1) = k2_relat_1(k2_funct_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_42,plain,
    ( X2 = k1_relset_1(X2,X3,X1)
    | X3 = k1_xboole_0
    | ~ v1_funct_2(X1,X2,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

cnf(c_0_43,negated_conjecture,
    ( k1_relset_1(esk1_0,esk2_0,esk3_0) = k1_relat_1(esk3_0) ),
    inference(pm,[status(thm)],[c_0_36,c_0_26])).

cnf(c_0_44,negated_conjecture,
    ( v1_funct_2(esk3_0,esk1_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_45,plain,
    ( v1_funct_2(k2_funct_1(X1),k2_relat_1(X1),k2_relat_1(k2_funct_1(X1)))
    | ~ v2_funct_1(X1)
    | ~ v1_funct_1(k2_funct_1(X1))
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(k2_funct_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(pm,[status(thm)],[c_0_37,c_0_24])).

cnf(c_0_46,plain,
    ( v1_xboole_0(X2)
    | ~ v1_xboole_0(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_38])).

cnf(c_0_47,plain,
    ( k2_zfmisc_1(X2,X1) = k1_xboole_0
    | X1 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_48,negated_conjecture,
    ( m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,k1_relat_1(esk3_0))))
    | ~ v1_funct_1(k2_funct_1(esk3_0))
    | ~ v1_relat_1(k2_funct_1(esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_40,c_0_41]),c_0_32]),c_0_33]),c_0_34])])).

cnf(c_0_49,negated_conjecture,
    ( k1_relat_1(esk3_0) = esk1_0
    | k1_xboole_0 = esk2_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_42,c_0_26]),c_0_43]),c_0_44])])).

cnf(c_0_50,negated_conjecture,
    ( v1_funct_2(k2_funct_1(esk3_0),esk2_0,k2_relat_1(k2_funct_1(esk3_0)))
    | ~ v1_funct_1(k2_funct_1(esk3_0))
    | ~ v1_relat_1(k2_funct_1(esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_45,c_0_31]),c_0_32]),c_0_33]),c_0_34])])).

fof(c_0_51,plain,(
    ! [X11,X12] :
      ( ( ~ m1_subset_1(X11,k1_zfmisc_1(X12))
        | r1_tarski(X11,X12) )
      & ( ~ r1_tarski(X11,X12)
        | m1_subset_1(X11,k1_zfmisc_1(X12)) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).

cnf(c_0_52,plain,
    ( v1_xboole_0(X1)
    | X2 != k1_xboole_0
    | ~ m1_subset_1(X1,k1_zfmisc_1(k1_xboole_0))
    | ~ v1_xboole_0(X3) ),
    inference(pm,[status(thm)],[c_0_46,c_0_47])).

fof(c_0_53,plain,(
    ! [X10] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X10)) ),
    inference(variable_rename,[status(thm)],[t4_subset_1])).

cnf(c_0_54,negated_conjecture,
    ( ~ v1_funct_1(k2_funct_1(esk3_0))
    | ~ v1_funct_2(k2_funct_1(esk3_0),esk2_0,esk1_0)
    | ~ m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_55,negated_conjecture,
    ( k1_xboole_0 = esk2_0
    | m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk1_0)))
    | ~ v1_funct_1(k2_funct_1(esk3_0))
    | ~ v1_relat_1(k2_funct_1(esk3_0)) ),
    inference(pm,[status(thm)],[c_0_48,c_0_49])).

cnf(c_0_56,negated_conjecture,
    ( v1_funct_2(k2_funct_1(esk3_0),esk2_0,k1_relat_1(esk3_0))
    | ~ v1_funct_1(k2_funct_1(esk3_0))
    | ~ v1_relat_1(k2_funct_1(esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_50,c_0_41]),c_0_32]),c_0_33]),c_0_34])])).

cnf(c_0_57,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_51])).

fof(c_0_58,plain,(
    ! [X5,X6] :
      ( ( r1_tarski(X5,X6)
        | X5 != X6 )
      & ( r1_tarski(X6,X5)
        | X5 != X6 )
      & ( ~ r1_tarski(X5,X6)
        | ~ r1_tarski(X6,X5)
        | X5 = X6 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

cnf(c_0_59,plain,
    ( v1_xboole_0(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k1_xboole_0))
    | ~ v1_xboole_0(X2) ),
    inference(er,[status(thm)],[c_0_52])).

cnf(c_0_60,plain,
    ( r1_tarski(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_51])).

fof(c_0_61,plain,(
    ! [X16] :
      ( ~ v1_xboole_0(X16)
      | v1_xboole_0(k1_relat_1(X16)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[fc10_relat_1])])).

cnf(c_0_62,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_53])).

cnf(c_0_63,negated_conjecture,
    ( k1_xboole_0 = esk2_0
    | ~ v1_funct_2(k2_funct_1(esk3_0),esk2_0,esk1_0)
    | ~ v1_funct_1(k2_funct_1(esk3_0))
    | ~ v1_relat_1(k2_funct_1(esk3_0)) ),
    inference(pm,[status(thm)],[c_0_54,c_0_55])).

cnf(c_0_64,negated_conjecture,
    ( k1_xboole_0 = esk2_0
    | v1_funct_2(k2_funct_1(esk3_0),esk2_0,esk1_0)
    | ~ v1_funct_1(k2_funct_1(esk3_0))
    | ~ v1_relat_1(k2_funct_1(esk3_0)) ),
    inference(pm,[status(thm)],[c_0_56,c_0_49])).

fof(c_0_65,plain,(
    ! [X17] :
      ( ( v1_relat_1(k2_funct_1(X17))
        | ~ v1_relat_1(X17)
        | ~ v1_funct_1(X17) )
      & ( v1_funct_1(k2_funct_1(X17))
        | ~ v1_relat_1(X17)
        | ~ v1_funct_1(X17) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_funct_1])])])).

cnf(c_0_66,plain,
    ( v1_xboole_0(X1)
    | ~ r1_tarski(X1,k2_zfmisc_1(X2,X3))
    | ~ v1_xboole_0(X2) ),
    inference(pm,[status(thm)],[c_0_46,c_0_57])).

cnf(c_0_67,plain,
    ( r1_tarski(X1,X2)
    | X2 != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_58])).

cnf(c_0_68,plain,
    ( v1_xboole_0(X1)
    | ~ r1_tarski(X1,k1_xboole_0)
    | ~ v1_xboole_0(X2) ),
    inference(pm,[status(thm)],[c_0_59,c_0_57])).

cnf(c_0_69,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(split_conjunct,[status(thm)],[fc1_xboole_0])).

cnf(c_0_70,negated_conjecture,
    ( r1_tarski(esk3_0,k2_zfmisc_1(esk1_0,esk2_0)) ),
    inference(pm,[status(thm)],[c_0_60,c_0_26])).

fof(c_0_71,plain,(
    ! [X7] : r1_tarski(k1_xboole_0,X7) ),
    inference(variable_rename,[status(thm)],[t2_xboole_1])).

fof(c_0_72,plain,(
    ! [X4] :
      ( ~ v1_xboole_0(X4)
      | X4 = k1_xboole_0 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l13_xboole_0])])).

cnf(c_0_73,plain,
    ( v1_xboole_0(k1_relat_1(X1))
    | ~ v1_xboole_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_61])).

cnf(c_0_74,plain,
    ( k1_relset_1(X1,X2,k1_xboole_0) = k1_relat_1(k1_xboole_0) ),
    inference(pm,[status(thm)],[c_0_36,c_0_62])).

cnf(c_0_75,negated_conjecture,
    ( k1_xboole_0 = esk2_0
    | ~ v1_funct_1(k2_funct_1(esk3_0))
    | ~ v1_relat_1(k2_funct_1(esk3_0)) ),
    inference(pm,[status(thm)],[c_0_63,c_0_64])).

cnf(c_0_76,plain,
    ( v1_relat_1(k2_funct_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_65])).

cnf(c_0_77,plain,
    ( v1_xboole_0(X1)
    | X1 != k2_zfmisc_1(X2,X3)
    | ~ v1_xboole_0(X2) ),
    inference(pm,[status(thm)],[c_0_66,c_0_67])).

cnf(c_0_78,plain,
    ( v1_xboole_0(X1)
    | ~ r1_tarski(X1,k1_xboole_0) ),
    inference(pm,[status(thm)],[c_0_68,c_0_69])).

cnf(c_0_79,plain,
    ( X1 = X2
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_58])).

cnf(c_0_80,negated_conjecture,
    ( r1_tarski(esk3_0,k1_xboole_0)
    | k1_xboole_0 != esk2_0 ),
    inference(pm,[status(thm)],[c_0_70,c_0_47])).

cnf(c_0_81,plain,
    ( r1_tarski(k1_xboole_0,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_71])).

cnf(c_0_82,plain,
    ( X1 = k1_xboole_0
    | ~ v1_xboole_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_72])).

cnf(c_0_83,plain,
    ( v1_xboole_0(k1_relset_1(X1,X2,k1_xboole_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_73,c_0_74]),c_0_69])])).

cnf(c_0_84,negated_conjecture,
    ( k1_xboole_0 = esk2_0
    | ~ v1_funct_1(k2_funct_1(esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_75,c_0_76]),c_0_33]),c_0_34])])).

cnf(c_0_85,plain,
    ( v1_funct_1(k2_funct_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_65])).

cnf(c_0_86,plain,
    ( v1_xboole_0(k2_zfmisc_1(X1,X2))
    | ~ v1_xboole_0(X1) ),
    inference(er,[status(thm)],[c_0_77])).

cnf(c_0_87,plain,
    ( v1_xboole_0(X1)
    | X1 != k1_xboole_0 ),
    inference(pm,[status(thm)],[c_0_78,c_0_67])).

cnf(c_0_88,negated_conjecture,
    ( esk3_0 = k1_xboole_0
    | k1_xboole_0 != esk2_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_79,c_0_80]),c_0_81])])).

cnf(c_0_89,plain,
    ( k1_relset_1(X1,X2,k1_xboole_0) = k1_xboole_0 ),
    inference(pm,[status(thm)],[c_0_82,c_0_83])).

cnf(c_0_90,negated_conjecture,
    ( k1_xboole_0 = esk2_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_84,c_0_85]),c_0_33]),c_0_34])])).

cnf(c_0_91,plain,
    ( k2_zfmisc_1(X1,X2) = k1_xboole_0
    | ~ v1_xboole_0(X1) ),
    inference(pm,[status(thm)],[c_0_82,c_0_86])).

cnf(c_0_92,plain,
    ( v1_xboole_0(X1)
    | X2 != k1_xboole_0
    | ~ m1_subset_1(X1,k1_zfmisc_1(k1_xboole_0)) ),
    inference(pm,[status(thm)],[c_0_59,c_0_87])).

cnf(c_0_93,negated_conjecture,
    ( k1_relat_1(esk3_0) = k1_xboole_0
    | k1_xboole_0 != esk2_0 ),
    inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_43,c_0_88]),c_0_89])).

cnf(c_0_94,negated_conjecture,
    ( esk3_0 = esk2_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_88,c_0_90]),c_0_90])])).

cnf(c_0_95,plain,
    ( k2_zfmisc_1(k1_xboole_0,X1) = k1_xboole_0 ),
    inference(pm,[status(thm)],[c_0_91,c_0_69])).

cnf(c_0_96,plain,
    ( v1_xboole_0(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k1_xboole_0)) ),
    inference(er,[status(thm)],[c_0_92])).

cnf(c_0_97,negated_conjecture,
    ( k1_relat_1(esk2_0) = esk2_0 ),
    inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_93,c_0_90]),c_0_90])]),c_0_94])).

cnf(c_0_98,plain,
    ( k2_zfmisc_1(esk2_0,X1) = esk2_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_95,c_0_90]),c_0_90])).

cnf(c_0_99,plain,
    ( v1_xboole_0(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(esk2_0)) ),
    inference(rw,[status(thm)],[c_0_96,c_0_90])).

cnf(c_0_100,negated_conjecture,
    ( m1_subset_1(k2_funct_1(esk2_0),k1_zfmisc_1(esk2_0))
    | ~ v1_funct_1(k2_funct_1(esk2_0))
    | ~ v1_relat_1(k2_funct_1(esk2_0)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_48,c_0_94]),c_0_94]),c_0_94]),c_0_94]),c_0_97]),c_0_98])).

cnf(c_0_101,negated_conjecture,
    ( v1_funct_1(k1_xboole_0)
    | k1_xboole_0 != esk2_0 ),
    inference(pm,[status(thm)],[c_0_33,c_0_88])).

cnf(c_0_102,plain,
    ( v1_relat_1(k1_xboole_0) ),
    inference(pm,[status(thm)],[c_0_28,c_0_62])).

cnf(c_0_103,negated_conjecture,
    ( ~ v1_funct_2(k2_funct_1(esk3_0),esk2_0,esk1_0)
    | ~ v1_funct_1(k2_funct_1(esk3_0))
    | ~ r1_tarski(k2_funct_1(esk3_0),k2_zfmisc_1(esk2_0,esk1_0)) ),
    inference(pm,[status(thm)],[c_0_54,c_0_57])).

cnf(c_0_104,negated_conjecture,
    ( v1_xboole_0(k2_funct_1(esk2_0))
    | ~ v1_funct_1(k2_funct_1(esk2_0))
    | ~ v1_relat_1(k2_funct_1(esk2_0)) ),
    inference(pm,[status(thm)],[c_0_99,c_0_100])).

cnf(c_0_105,negated_conjecture,
    ( v1_funct_1(esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_101,c_0_90]),c_0_90])])).

cnf(c_0_106,plain,
    ( v1_relat_1(esk2_0) ),
    inference(rw,[status(thm)],[c_0_102,c_0_90])).

cnf(c_0_107,negated_conjecture,
    ( k2_funct_1(esk3_0) != k2_zfmisc_1(esk2_0,esk1_0)
    | ~ v1_funct_2(k2_funct_1(esk3_0),esk2_0,esk1_0)
    | ~ v1_funct_1(k2_funct_1(esk3_0)) ),
    inference(pm,[status(thm)],[c_0_103,c_0_67])).

cnf(c_0_108,negated_conjecture,
    ( v1_xboole_0(k2_funct_1(esk2_0))
    | ~ v1_funct_1(k2_funct_1(esk2_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_104,c_0_76]),c_0_105]),c_0_106])])).

cnf(c_0_109,negated_conjecture,
    ( k2_funct_1(esk3_0) != k2_zfmisc_1(esk2_0,esk1_0)
    | k1_xboole_0 != esk2_0
    | ~ v1_funct_2(k2_funct_1(k1_xboole_0),esk2_0,esk1_0)
    | ~ v1_funct_1(k2_funct_1(esk3_0)) ),
    inference(pm,[status(thm)],[c_0_107,c_0_88])).

cnf(c_0_110,plain,
    ( X1 = esk2_0
    | ~ v1_xboole_0(X1) ),
    inference(rw,[status(thm)],[c_0_82,c_0_90])).

cnf(c_0_111,negated_conjecture,
    ( v1_xboole_0(k2_funct_1(esk2_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_108,c_0_85]),c_0_105]),c_0_106])])).

cnf(c_0_112,plain,
    ( v1_funct_2(X3,X1,X2)
    | X1 != k1_relset_1(X1,X2,X3)
    | X1 != k1_xboole_0
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

cnf(c_0_113,negated_conjecture,
    ( k2_funct_1(esk2_0) != esk2_0
    | ~ v1_funct_2(k2_funct_1(esk2_0),esk2_0,esk1_0)
    | ~ v1_funct_1(k2_funct_1(esk2_0)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_109,c_0_90]),c_0_90])]),c_0_94]),c_0_98]),c_0_94])).

cnf(c_0_114,negated_conjecture,
    ( k2_funct_1(esk2_0) = esk2_0 ),
    inference(pm,[status(thm)],[c_0_110,c_0_111])).

cnf(c_0_115,plain,
    ( v1_funct_2(k1_xboole_0,X1,X2)
    | k1_xboole_0 != X1 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_112,c_0_62]),c_0_89])])).

cnf(c_0_116,negated_conjecture,
    ( ~ v1_funct_2(esk2_0,esk2_0,esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_113,c_0_114]),c_0_114]),c_0_114]),c_0_105])])).

cnf(c_0_117,plain,
    ( v1_funct_2(esk2_0,X1,X2)
    | esk2_0 != X1 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_115,c_0_90]),c_0_90])).

cnf(c_0_118,negated_conjecture,
    ( $false ),
    inference(pm,[status(thm)],[c_0_116,c_0_117]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n023.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 18:22:05 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.21/0.47  # AutoSched0-Mode selected heuristic G_E___300_C01_S00
% 0.21/0.47  # and selection function NoSelection.
% 0.21/0.47  #
% 0.21/0.47  # Preprocessing time       : 0.028 s
% 0.21/0.47  
% 0.21/0.47  # Proof found!
% 0.21/0.47  # SZS status Theorem
% 0.21/0.47  # SZS output start CNFRefutation
% 0.21/0.47  fof(t31_funct_2, conjecture, ![X1, X2, X3]:(((v1_funct_1(X3)&v1_funct_2(X3,X1,X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>((v2_funct_1(X3)&k2_relset_1(X1,X2,X3)=X2)=>((v1_funct_1(k2_funct_1(X3))&v1_funct_2(k2_funct_1(X3),X2,X1))&m1_subset_1(k2_funct_1(X3),k1_zfmisc_1(k2_zfmisc_1(X2,X1)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t31_funct_2)).
% 0.21/0.47  fof(t3_funct_2, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>((v1_funct_1(X1)&v1_funct_2(X1,k1_relat_1(X1),k2_relat_1(X1)))&m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_funct_2)).
% 0.21/0.47  fof(t55_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v2_funct_1(X1)=>(k2_relat_1(X1)=k1_relat_1(k2_funct_1(X1))&k1_relat_1(X1)=k2_relat_1(k2_funct_1(X1))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t55_funct_1)).
% 0.21/0.47  fof(redefinition_k2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k2_relset_1(X1,X2,X3)=k2_relat_1(X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k2_relset_1)).
% 0.21/0.47  fof(cc1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>v1_relat_1(X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc1_relset_1)).
% 0.21/0.47  fof(redefinition_k1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k1_relset_1(X1,X2,X3)=k1_relat_1(X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k1_relset_1)).
% 0.21/0.47  fof(d1_funct_2, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(((X2=k1_xboole_0=>X1=k1_xboole_0)=>(v1_funct_2(X3,X1,X2)<=>X1=k1_relset_1(X1,X2,X3)))&(X2=k1_xboole_0=>(X1=k1_xboole_0|(v1_funct_2(X3,X1,X2)<=>X3=k1_xboole_0))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_funct_2)).
% 0.21/0.47  fof(cc3_relset_1, axiom, ![X1, X2]:(v1_xboole_0(X1)=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>v1_xboole_0(X3))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc3_relset_1)).
% 0.21/0.47  fof(t113_zfmisc_1, axiom, ![X1, X2]:(k2_zfmisc_1(X1,X2)=k1_xboole_0<=>(X1=k1_xboole_0|X2=k1_xboole_0)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t113_zfmisc_1)).
% 0.21/0.47  fof(t3_subset, axiom, ![X1, X2]:(m1_subset_1(X1,k1_zfmisc_1(X2))<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_subset)).
% 0.21/0.47  fof(t4_subset_1, axiom, ![X1]:m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t4_subset_1)).
% 0.21/0.47  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.21/0.47  fof(fc10_relat_1, axiom, ![X1]:(v1_xboole_0(X1)=>v1_xboole_0(k1_relat_1(X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc10_relat_1)).
% 0.21/0.47  fof(dt_k2_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v1_relat_1(k2_funct_1(X1))&v1_funct_1(k2_funct_1(X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k2_funct_1)).
% 0.21/0.47  fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc1_xboole_0)).
% 0.21/0.47  fof(t2_xboole_1, axiom, ![X1]:r1_tarski(k1_xboole_0,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t2_xboole_1)).
% 0.21/0.47  fof(l13_xboole_0, axiom, ![X1]:(v1_xboole_0(X1)=>X1=k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l13_xboole_0)).
% 0.21/0.47  fof(c_0_17, negated_conjecture, ~(![X1, X2, X3]:(((v1_funct_1(X3)&v1_funct_2(X3,X1,X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>((v2_funct_1(X3)&k2_relset_1(X1,X2,X3)=X2)=>((v1_funct_1(k2_funct_1(X3))&v1_funct_2(k2_funct_1(X3),X2,X1))&m1_subset_1(k2_funct_1(X3),k1_zfmisc_1(k2_zfmisc_1(X2,X1))))))), inference(assume_negation,[status(cth)],[t31_funct_2])).
% 0.21/0.47  fof(c_0_18, plain, ![X34]:(((v1_funct_1(X34)|(~v1_relat_1(X34)|~v1_funct_1(X34)))&(v1_funct_2(X34,k1_relat_1(X34),k2_relat_1(X34))|(~v1_relat_1(X34)|~v1_funct_1(X34))))&(m1_subset_1(X34,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X34),k2_relat_1(X34))))|(~v1_relat_1(X34)|~v1_funct_1(X34)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_funct_2])])])).
% 0.21/0.47  fof(c_0_19, plain, ![X18]:((k2_relat_1(X18)=k1_relat_1(k2_funct_1(X18))|~v2_funct_1(X18)|(~v1_relat_1(X18)|~v1_funct_1(X18)))&(k1_relat_1(X18)=k2_relat_1(k2_funct_1(X18))|~v2_funct_1(X18)|(~v1_relat_1(X18)|~v1_funct_1(X18)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t55_funct_1])])])).
% 0.21/0.47  fof(c_0_20, plain, ![X28, X29, X30]:(~m1_subset_1(X30,k1_zfmisc_1(k2_zfmisc_1(X28,X29)))|k2_relset_1(X28,X29,X30)=k2_relat_1(X30)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_relset_1])])).
% 0.21/0.47  fof(c_0_21, negated_conjecture, (((v1_funct_1(esk3_0)&v1_funct_2(esk3_0,esk1_0,esk2_0))&m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0))))&((v2_funct_1(esk3_0)&k2_relset_1(esk1_0,esk2_0,esk3_0)=esk2_0)&(~v1_funct_1(k2_funct_1(esk3_0))|~v1_funct_2(k2_funct_1(esk3_0),esk2_0,esk1_0)|~m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk1_0)))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_17])])])).
% 0.21/0.47  fof(c_0_22, plain, ![X19, X20, X21]:(~m1_subset_1(X21,k1_zfmisc_1(k2_zfmisc_1(X19,X20)))|v1_relat_1(X21)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).
% 0.21/0.47  cnf(c_0_23, plain, (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1))))|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.21/0.47  cnf(c_0_24, plain, (k2_relat_1(X1)=k1_relat_1(k2_funct_1(X1))|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.21/0.47  cnf(c_0_25, plain, (k2_relset_1(X2,X3,X1)=k2_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.21/0.47  cnf(c_0_26, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0)))), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.21/0.47  cnf(c_0_27, negated_conjecture, (k2_relset_1(esk1_0,esk2_0,esk3_0)=esk2_0), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.21/0.47  cnf(c_0_28, plain, (v1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.21/0.47  fof(c_0_29, plain, ![X25, X26, X27]:(~m1_subset_1(X27,k1_zfmisc_1(k2_zfmisc_1(X25,X26)))|k1_relset_1(X25,X26,X27)=k1_relat_1(X27)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).
% 0.21/0.47  cnf(c_0_30, plain, (m1_subset_1(k2_funct_1(X1),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(X1),k2_relat_1(k2_funct_1(X1)))))|~v2_funct_1(X1)|~v1_funct_1(k2_funct_1(X1))|~v1_funct_1(X1)|~v1_relat_1(k2_funct_1(X1))|~v1_relat_1(X1)), inference(pm,[status(thm)],[c_0_23, c_0_24])).
% 0.21/0.47  cnf(c_0_31, negated_conjecture, (k2_relat_1(esk3_0)=esk2_0), inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_25, c_0_26]), c_0_27])).
% 0.21/0.47  cnf(c_0_32, negated_conjecture, (v2_funct_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.21/0.47  cnf(c_0_33, negated_conjecture, (v1_funct_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.21/0.47  cnf(c_0_34, negated_conjecture, (v1_relat_1(esk3_0)), inference(pm,[status(thm)],[c_0_28, c_0_26])).
% 0.21/0.47  fof(c_0_35, plain, ![X31, X32, X33]:((((~v1_funct_2(X33,X31,X32)|X31=k1_relset_1(X31,X32,X33)|X32=k1_xboole_0|~m1_subset_1(X33,k1_zfmisc_1(k2_zfmisc_1(X31,X32))))&(X31!=k1_relset_1(X31,X32,X33)|v1_funct_2(X33,X31,X32)|X32=k1_xboole_0|~m1_subset_1(X33,k1_zfmisc_1(k2_zfmisc_1(X31,X32)))))&((~v1_funct_2(X33,X31,X32)|X31=k1_relset_1(X31,X32,X33)|X31!=k1_xboole_0|~m1_subset_1(X33,k1_zfmisc_1(k2_zfmisc_1(X31,X32))))&(X31!=k1_relset_1(X31,X32,X33)|v1_funct_2(X33,X31,X32)|X31!=k1_xboole_0|~m1_subset_1(X33,k1_zfmisc_1(k2_zfmisc_1(X31,X32))))))&((~v1_funct_2(X33,X31,X32)|X33=k1_xboole_0|X31=k1_xboole_0|X32!=k1_xboole_0|~m1_subset_1(X33,k1_zfmisc_1(k2_zfmisc_1(X31,X32))))&(X33!=k1_xboole_0|v1_funct_2(X33,X31,X32)|X31=k1_xboole_0|X32!=k1_xboole_0|~m1_subset_1(X33,k1_zfmisc_1(k2_zfmisc_1(X31,X32)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).
% 0.21/0.47  cnf(c_0_36, plain, (k1_relset_1(X2,X3,X1)=k1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.21/0.47  cnf(c_0_37, plain, (v1_funct_2(X1,k1_relat_1(X1),k2_relat_1(X1))|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.21/0.47  fof(c_0_38, plain, ![X22, X23, X24]:(~v1_xboole_0(X22)|(~m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X22,X23)))|v1_xboole_0(X24))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc3_relset_1])])])).
% 0.21/0.47  fof(c_0_39, plain, ![X8, X9]:((k2_zfmisc_1(X8,X9)!=k1_xboole_0|(X8=k1_xboole_0|X9=k1_xboole_0))&((X8!=k1_xboole_0|k2_zfmisc_1(X8,X9)=k1_xboole_0)&(X9!=k1_xboole_0|k2_zfmisc_1(X8,X9)=k1_xboole_0))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t113_zfmisc_1])])])).
% 0.21/0.47  cnf(c_0_40, negated_conjecture, (m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,k2_relat_1(k2_funct_1(esk3_0)))))|~v1_funct_1(k2_funct_1(esk3_0))|~v1_relat_1(k2_funct_1(esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_30, c_0_31]), c_0_32]), c_0_33]), c_0_34])])).
% 0.21/0.47  cnf(c_0_41, plain, (k1_relat_1(X1)=k2_relat_1(k2_funct_1(X1))|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.21/0.47  cnf(c_0_42, plain, (X2=k1_relset_1(X2,X3,X1)|X3=k1_xboole_0|~v1_funct_2(X1,X2,X3)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.21/0.47  cnf(c_0_43, negated_conjecture, (k1_relset_1(esk1_0,esk2_0,esk3_0)=k1_relat_1(esk3_0)), inference(pm,[status(thm)],[c_0_36, c_0_26])).
% 0.21/0.47  cnf(c_0_44, negated_conjecture, (v1_funct_2(esk3_0,esk1_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.21/0.47  cnf(c_0_45, plain, (v1_funct_2(k2_funct_1(X1),k2_relat_1(X1),k2_relat_1(k2_funct_1(X1)))|~v2_funct_1(X1)|~v1_funct_1(k2_funct_1(X1))|~v1_funct_1(X1)|~v1_relat_1(k2_funct_1(X1))|~v1_relat_1(X1)), inference(pm,[status(thm)],[c_0_37, c_0_24])).
% 0.21/0.47  cnf(c_0_46, plain, (v1_xboole_0(X2)|~v1_xboole_0(X1)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))), inference(split_conjunct,[status(thm)],[c_0_38])).
% 0.21/0.47  cnf(c_0_47, plain, (k2_zfmisc_1(X2,X1)=k1_xboole_0|X1!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.21/0.47  cnf(c_0_48, negated_conjecture, (m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,k1_relat_1(esk3_0))))|~v1_funct_1(k2_funct_1(esk3_0))|~v1_relat_1(k2_funct_1(esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_40, c_0_41]), c_0_32]), c_0_33]), c_0_34])])).
% 0.21/0.47  cnf(c_0_49, negated_conjecture, (k1_relat_1(esk3_0)=esk1_0|k1_xboole_0=esk2_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_42, c_0_26]), c_0_43]), c_0_44])])).
% 0.21/0.47  cnf(c_0_50, negated_conjecture, (v1_funct_2(k2_funct_1(esk3_0),esk2_0,k2_relat_1(k2_funct_1(esk3_0)))|~v1_funct_1(k2_funct_1(esk3_0))|~v1_relat_1(k2_funct_1(esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_45, c_0_31]), c_0_32]), c_0_33]), c_0_34])])).
% 0.21/0.47  fof(c_0_51, plain, ![X11, X12]:((~m1_subset_1(X11,k1_zfmisc_1(X12))|r1_tarski(X11,X12))&(~r1_tarski(X11,X12)|m1_subset_1(X11,k1_zfmisc_1(X12)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).
% 0.21/0.47  cnf(c_0_52, plain, (v1_xboole_0(X1)|X2!=k1_xboole_0|~m1_subset_1(X1,k1_zfmisc_1(k1_xboole_0))|~v1_xboole_0(X3)), inference(pm,[status(thm)],[c_0_46, c_0_47])).
% 0.21/0.47  fof(c_0_53, plain, ![X10]:m1_subset_1(k1_xboole_0,k1_zfmisc_1(X10)), inference(variable_rename,[status(thm)],[t4_subset_1])).
% 0.21/0.47  cnf(c_0_54, negated_conjecture, (~v1_funct_1(k2_funct_1(esk3_0))|~v1_funct_2(k2_funct_1(esk3_0),esk2_0,esk1_0)|~m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.21/0.47  cnf(c_0_55, negated_conjecture, (k1_xboole_0=esk2_0|m1_subset_1(k2_funct_1(esk3_0),k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk1_0)))|~v1_funct_1(k2_funct_1(esk3_0))|~v1_relat_1(k2_funct_1(esk3_0))), inference(pm,[status(thm)],[c_0_48, c_0_49])).
% 0.21/0.47  cnf(c_0_56, negated_conjecture, (v1_funct_2(k2_funct_1(esk3_0),esk2_0,k1_relat_1(esk3_0))|~v1_funct_1(k2_funct_1(esk3_0))|~v1_relat_1(k2_funct_1(esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_50, c_0_41]), c_0_32]), c_0_33]), c_0_34])])).
% 0.21/0.47  cnf(c_0_57, plain, (m1_subset_1(X1,k1_zfmisc_1(X2))|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_51])).
% 0.21/0.47  fof(c_0_58, plain, ![X5, X6]:(((r1_tarski(X5,X6)|X5!=X6)&(r1_tarski(X6,X5)|X5!=X6))&(~r1_tarski(X5,X6)|~r1_tarski(X6,X5)|X5=X6)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.21/0.47  cnf(c_0_59, plain, (v1_xboole_0(X1)|~m1_subset_1(X1,k1_zfmisc_1(k1_xboole_0))|~v1_xboole_0(X2)), inference(er,[status(thm)],[c_0_52])).
% 0.21/0.47  cnf(c_0_60, plain, (r1_tarski(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_51])).
% 0.21/0.47  fof(c_0_61, plain, ![X16]:(~v1_xboole_0(X16)|v1_xboole_0(k1_relat_1(X16))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[fc10_relat_1])])).
% 0.21/0.47  cnf(c_0_62, plain, (m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_53])).
% 0.21/0.47  cnf(c_0_63, negated_conjecture, (k1_xboole_0=esk2_0|~v1_funct_2(k2_funct_1(esk3_0),esk2_0,esk1_0)|~v1_funct_1(k2_funct_1(esk3_0))|~v1_relat_1(k2_funct_1(esk3_0))), inference(pm,[status(thm)],[c_0_54, c_0_55])).
% 0.21/0.47  cnf(c_0_64, negated_conjecture, (k1_xboole_0=esk2_0|v1_funct_2(k2_funct_1(esk3_0),esk2_0,esk1_0)|~v1_funct_1(k2_funct_1(esk3_0))|~v1_relat_1(k2_funct_1(esk3_0))), inference(pm,[status(thm)],[c_0_56, c_0_49])).
% 0.21/0.47  fof(c_0_65, plain, ![X17]:((v1_relat_1(k2_funct_1(X17))|(~v1_relat_1(X17)|~v1_funct_1(X17)))&(v1_funct_1(k2_funct_1(X17))|(~v1_relat_1(X17)|~v1_funct_1(X17)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_funct_1])])])).
% 0.21/0.47  cnf(c_0_66, plain, (v1_xboole_0(X1)|~r1_tarski(X1,k2_zfmisc_1(X2,X3))|~v1_xboole_0(X2)), inference(pm,[status(thm)],[c_0_46, c_0_57])).
% 0.21/0.47  cnf(c_0_67, plain, (r1_tarski(X1,X2)|X2!=X1), inference(split_conjunct,[status(thm)],[c_0_58])).
% 0.21/0.47  cnf(c_0_68, plain, (v1_xboole_0(X1)|~r1_tarski(X1,k1_xboole_0)|~v1_xboole_0(X2)), inference(pm,[status(thm)],[c_0_59, c_0_57])).
% 0.21/0.47  cnf(c_0_69, plain, (v1_xboole_0(k1_xboole_0)), inference(split_conjunct,[status(thm)],[fc1_xboole_0])).
% 0.21/0.47  cnf(c_0_70, negated_conjecture, (r1_tarski(esk3_0,k2_zfmisc_1(esk1_0,esk2_0))), inference(pm,[status(thm)],[c_0_60, c_0_26])).
% 0.21/0.47  fof(c_0_71, plain, ![X7]:r1_tarski(k1_xboole_0,X7), inference(variable_rename,[status(thm)],[t2_xboole_1])).
% 0.21/0.47  fof(c_0_72, plain, ![X4]:(~v1_xboole_0(X4)|X4=k1_xboole_0), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l13_xboole_0])])).
% 0.21/0.47  cnf(c_0_73, plain, (v1_xboole_0(k1_relat_1(X1))|~v1_xboole_0(X1)), inference(split_conjunct,[status(thm)],[c_0_61])).
% 0.21/0.47  cnf(c_0_74, plain, (k1_relset_1(X1,X2,k1_xboole_0)=k1_relat_1(k1_xboole_0)), inference(pm,[status(thm)],[c_0_36, c_0_62])).
% 0.21/0.47  cnf(c_0_75, negated_conjecture, (k1_xboole_0=esk2_0|~v1_funct_1(k2_funct_1(esk3_0))|~v1_relat_1(k2_funct_1(esk3_0))), inference(pm,[status(thm)],[c_0_63, c_0_64])).
% 0.21/0.47  cnf(c_0_76, plain, (v1_relat_1(k2_funct_1(X1))|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_65])).
% 0.21/0.47  cnf(c_0_77, plain, (v1_xboole_0(X1)|X1!=k2_zfmisc_1(X2,X3)|~v1_xboole_0(X2)), inference(pm,[status(thm)],[c_0_66, c_0_67])).
% 0.21/0.47  cnf(c_0_78, plain, (v1_xboole_0(X1)|~r1_tarski(X1,k1_xboole_0)), inference(pm,[status(thm)],[c_0_68, c_0_69])).
% 0.21/0.47  cnf(c_0_79, plain, (X1=X2|~r1_tarski(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_58])).
% 0.21/0.47  cnf(c_0_80, negated_conjecture, (r1_tarski(esk3_0,k1_xboole_0)|k1_xboole_0!=esk2_0), inference(pm,[status(thm)],[c_0_70, c_0_47])).
% 0.21/0.47  cnf(c_0_81, plain, (r1_tarski(k1_xboole_0,X1)), inference(split_conjunct,[status(thm)],[c_0_71])).
% 0.21/0.47  cnf(c_0_82, plain, (X1=k1_xboole_0|~v1_xboole_0(X1)), inference(split_conjunct,[status(thm)],[c_0_72])).
% 0.21/0.47  cnf(c_0_83, plain, (v1_xboole_0(k1_relset_1(X1,X2,k1_xboole_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_73, c_0_74]), c_0_69])])).
% 0.21/0.47  cnf(c_0_84, negated_conjecture, (k1_xboole_0=esk2_0|~v1_funct_1(k2_funct_1(esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_75, c_0_76]), c_0_33]), c_0_34])])).
% 0.21/0.47  cnf(c_0_85, plain, (v1_funct_1(k2_funct_1(X1))|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_65])).
% 0.21/0.47  cnf(c_0_86, plain, (v1_xboole_0(k2_zfmisc_1(X1,X2))|~v1_xboole_0(X1)), inference(er,[status(thm)],[c_0_77])).
% 0.21/0.47  cnf(c_0_87, plain, (v1_xboole_0(X1)|X1!=k1_xboole_0), inference(pm,[status(thm)],[c_0_78, c_0_67])).
% 0.21/0.47  cnf(c_0_88, negated_conjecture, (esk3_0=k1_xboole_0|k1_xboole_0!=esk2_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_79, c_0_80]), c_0_81])])).
% 0.21/0.47  cnf(c_0_89, plain, (k1_relset_1(X1,X2,k1_xboole_0)=k1_xboole_0), inference(pm,[status(thm)],[c_0_82, c_0_83])).
% 0.21/0.47  cnf(c_0_90, negated_conjecture, (k1_xboole_0=esk2_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_84, c_0_85]), c_0_33]), c_0_34])])).
% 0.21/0.47  cnf(c_0_91, plain, (k2_zfmisc_1(X1,X2)=k1_xboole_0|~v1_xboole_0(X1)), inference(pm,[status(thm)],[c_0_82, c_0_86])).
% 0.21/0.47  cnf(c_0_92, plain, (v1_xboole_0(X1)|X2!=k1_xboole_0|~m1_subset_1(X1,k1_zfmisc_1(k1_xboole_0))), inference(pm,[status(thm)],[c_0_59, c_0_87])).
% 0.21/0.47  cnf(c_0_93, negated_conjecture, (k1_relat_1(esk3_0)=k1_xboole_0|k1_xboole_0!=esk2_0), inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_43, c_0_88]), c_0_89])).
% 0.21/0.47  cnf(c_0_94, negated_conjecture, (esk3_0=esk2_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_88, c_0_90]), c_0_90])])).
% 0.21/0.47  cnf(c_0_95, plain, (k2_zfmisc_1(k1_xboole_0,X1)=k1_xboole_0), inference(pm,[status(thm)],[c_0_91, c_0_69])).
% 0.21/0.47  cnf(c_0_96, plain, (v1_xboole_0(X1)|~m1_subset_1(X1,k1_zfmisc_1(k1_xboole_0))), inference(er,[status(thm)],[c_0_92])).
% 0.21/0.47  cnf(c_0_97, negated_conjecture, (k1_relat_1(esk2_0)=esk2_0), inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_93, c_0_90]), c_0_90])]), c_0_94])).
% 0.21/0.47  cnf(c_0_98, plain, (k2_zfmisc_1(esk2_0,X1)=esk2_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_95, c_0_90]), c_0_90])).
% 0.21/0.47  cnf(c_0_99, plain, (v1_xboole_0(X1)|~m1_subset_1(X1,k1_zfmisc_1(esk2_0))), inference(rw,[status(thm)],[c_0_96, c_0_90])).
% 0.21/0.47  cnf(c_0_100, negated_conjecture, (m1_subset_1(k2_funct_1(esk2_0),k1_zfmisc_1(esk2_0))|~v1_funct_1(k2_funct_1(esk2_0))|~v1_relat_1(k2_funct_1(esk2_0))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_48, c_0_94]), c_0_94]), c_0_94]), c_0_94]), c_0_97]), c_0_98])).
% 0.21/0.47  cnf(c_0_101, negated_conjecture, (v1_funct_1(k1_xboole_0)|k1_xboole_0!=esk2_0), inference(pm,[status(thm)],[c_0_33, c_0_88])).
% 0.21/0.47  cnf(c_0_102, plain, (v1_relat_1(k1_xboole_0)), inference(pm,[status(thm)],[c_0_28, c_0_62])).
% 0.21/0.47  cnf(c_0_103, negated_conjecture, (~v1_funct_2(k2_funct_1(esk3_0),esk2_0,esk1_0)|~v1_funct_1(k2_funct_1(esk3_0))|~r1_tarski(k2_funct_1(esk3_0),k2_zfmisc_1(esk2_0,esk1_0))), inference(pm,[status(thm)],[c_0_54, c_0_57])).
% 0.21/0.47  cnf(c_0_104, negated_conjecture, (v1_xboole_0(k2_funct_1(esk2_0))|~v1_funct_1(k2_funct_1(esk2_0))|~v1_relat_1(k2_funct_1(esk2_0))), inference(pm,[status(thm)],[c_0_99, c_0_100])).
% 0.21/0.47  cnf(c_0_105, negated_conjecture, (v1_funct_1(esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_101, c_0_90]), c_0_90])])).
% 0.21/0.47  cnf(c_0_106, plain, (v1_relat_1(esk2_0)), inference(rw,[status(thm)],[c_0_102, c_0_90])).
% 0.21/0.47  cnf(c_0_107, negated_conjecture, (k2_funct_1(esk3_0)!=k2_zfmisc_1(esk2_0,esk1_0)|~v1_funct_2(k2_funct_1(esk3_0),esk2_0,esk1_0)|~v1_funct_1(k2_funct_1(esk3_0))), inference(pm,[status(thm)],[c_0_103, c_0_67])).
% 0.21/0.47  cnf(c_0_108, negated_conjecture, (v1_xboole_0(k2_funct_1(esk2_0))|~v1_funct_1(k2_funct_1(esk2_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_104, c_0_76]), c_0_105]), c_0_106])])).
% 0.21/0.47  cnf(c_0_109, negated_conjecture, (k2_funct_1(esk3_0)!=k2_zfmisc_1(esk2_0,esk1_0)|k1_xboole_0!=esk2_0|~v1_funct_2(k2_funct_1(k1_xboole_0),esk2_0,esk1_0)|~v1_funct_1(k2_funct_1(esk3_0))), inference(pm,[status(thm)],[c_0_107, c_0_88])).
% 0.21/0.47  cnf(c_0_110, plain, (X1=esk2_0|~v1_xboole_0(X1)), inference(rw,[status(thm)],[c_0_82, c_0_90])).
% 0.21/0.47  cnf(c_0_111, negated_conjecture, (v1_xboole_0(k2_funct_1(esk2_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_108, c_0_85]), c_0_105]), c_0_106])])).
% 0.21/0.47  cnf(c_0_112, plain, (v1_funct_2(X3,X1,X2)|X1!=k1_relset_1(X1,X2,X3)|X1!=k1_xboole_0|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.21/0.47  cnf(c_0_113, negated_conjecture, (k2_funct_1(esk2_0)!=esk2_0|~v1_funct_2(k2_funct_1(esk2_0),esk2_0,esk1_0)|~v1_funct_1(k2_funct_1(esk2_0))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_109, c_0_90]), c_0_90])]), c_0_94]), c_0_98]), c_0_94])).
% 0.21/0.47  cnf(c_0_114, negated_conjecture, (k2_funct_1(esk2_0)=esk2_0), inference(pm,[status(thm)],[c_0_110, c_0_111])).
% 0.21/0.47  cnf(c_0_115, plain, (v1_funct_2(k1_xboole_0,X1,X2)|k1_xboole_0!=X1), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_112, c_0_62]), c_0_89])])).
% 0.21/0.47  cnf(c_0_116, negated_conjecture, (~v1_funct_2(esk2_0,esk2_0,esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_113, c_0_114]), c_0_114]), c_0_114]), c_0_105])])).
% 0.21/0.47  cnf(c_0_117, plain, (v1_funct_2(esk2_0,X1,X2)|esk2_0!=X1), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_115, c_0_90]), c_0_90])).
% 0.21/0.47  cnf(c_0_118, negated_conjecture, ($false), inference(pm,[status(thm)],[c_0_116, c_0_117]), ['proof']).
% 0.21/0.47  # SZS output end CNFRefutation
% 0.21/0.47  # Proof object total steps             : 119
% 0.21/0.47  # Proof object clause steps            : 85
% 0.21/0.47  # Proof object formula steps           : 34
% 0.21/0.47  # Proof object conjectures             : 42
% 0.21/0.47  # Proof object clause conjectures      : 39
% 0.21/0.47  # Proof object formula conjectures     : 3
% 0.21/0.47  # Proof object initial clauses used    : 28
% 0.21/0.47  # Proof object initial formulas used   : 17
% 0.21/0.47  # Proof object generating inferences   : 46
% 0.21/0.47  # Proof object simplifying inferences  : 73
% 0.21/0.47  # Training examples: 0 positive, 0 negative
% 0.21/0.47  # Parsed axioms                        : 18
% 0.21/0.47  # Removed by relevancy pruning/SinE    : 0
% 0.21/0.47  # Initial clauses                      : 37
% 0.21/0.47  # Removed in clause preprocessing      : 1
% 0.21/0.47  # Initial clauses in saturation        : 36
% 0.21/0.47  # Processed clauses                    : 1177
% 0.21/0.47  # ...of these trivial                  : 59
% 0.21/0.47  # ...subsumed                          : 661
% 0.21/0.47  # ...remaining for further processing  : 457
% 0.21/0.47  # Other redundant clauses eliminated   : 0
% 0.21/0.47  # Clauses deleted for lack of memory   : 0
% 0.21/0.47  # Backward-subsumed                    : 81
% 0.21/0.47  # Backward-rewritten                   : 255
% 0.21/0.47  # Generated clauses                    : 4452
% 0.21/0.47  # ...of the previous two non-trivial   : 4120
% 0.21/0.47  # Contextual simplify-reflections      : 0
% 0.21/0.47  # Paramodulations                      : 4442
% 0.21/0.47  # Factorizations                       : 0
% 0.21/0.47  # Equation resolutions                 : 10
% 0.21/0.47  # Propositional unsat checks           : 0
% 0.21/0.47  #    Propositional check models        : 0
% 0.21/0.47  #    Propositional check unsatisfiable : 0
% 0.21/0.47  #    Propositional clauses             : 0
% 0.21/0.47  #    Propositional clauses after purity: 0
% 0.21/0.47  #    Propositional unsat core size     : 0
% 0.21/0.47  #    Propositional preprocessing time  : 0.000
% 0.21/0.47  #    Propositional encoding time       : 0.000
% 0.21/0.47  #    Propositional solver time         : 0.000
% 0.21/0.47  #    Success case prop preproc time    : 0.000
% 0.21/0.47  #    Success case prop encoding time   : 0.000
% 0.21/0.47  #    Success case prop solver time     : 0.000
% 0.21/0.47  # Current number of processed clauses  : 121
% 0.21/0.47  #    Positive orientable unit clauses  : 17
% 0.21/0.47  #    Positive unorientable unit clauses: 0
% 0.21/0.47  #    Negative unit clauses             : 3
% 0.21/0.47  #    Non-unit-clauses                  : 101
% 0.21/0.47  # Current number of unprocessed clauses: 2790
% 0.21/0.47  # ...number of literals in the above   : 13928
% 0.21/0.47  # Current number of archived formulas  : 0
% 0.21/0.47  # Current number of archived clauses   : 336
% 0.21/0.47  # Clause-clause subsumption calls (NU) : 8588
% 0.21/0.47  # Rec. Clause-clause subsumption calls : 5103
% 0.21/0.47  # Non-unit clause-clause subsumptions  : 699
% 0.21/0.47  # Unit Clause-clause subsumption calls : 216
% 0.21/0.47  # Rewrite failures with RHS unbound    : 24
% 0.21/0.47  # BW rewrite match attempts            : 35
% 0.21/0.47  # BW rewrite match successes           : 17
% 0.21/0.47  # Condensation attempts                : 0
% 0.21/0.47  # Condensation successes               : 0
% 0.21/0.47  # Termbank termtop insertions          : 30805
% 0.21/0.47  
% 0.21/0.47  # -------------------------------------------------
% 0.21/0.47  # User time                : 0.113 s
% 0.21/0.47  # System time              : 0.010 s
% 0.21/0.47  # Total time               : 0.123 s
% 0.21/0.47  # Maximum resident set size: 1588 pages
%------------------------------------------------------------------------------
