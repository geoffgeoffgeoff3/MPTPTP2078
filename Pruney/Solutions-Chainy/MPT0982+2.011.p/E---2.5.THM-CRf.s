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
% DateTime   : Thu Dec  3 11:02:04 EST 2020

% Result     : Theorem 0.21s
% Output     : CNFRefutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   90 ( 329 expanded)
%              Number of clauses        :   53 ( 118 expanded)
%              Number of leaves         :   18 (  82 expanded)
%              Depth                    :   10
%              Number of atoms          :  270 (1888 expanded)
%              Number of equality atoms :   88 ( 537 expanded)
%              Maximal formula depth    :   14 (   4 average)
%              Maximal clause size      :   26 (   2 average)
%              Maximal term depth       :    3 (   2 average)

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
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t28_funct_2)).

fof(redefinition_k2_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k2_relset_1(X1,X2,X3) = k2_relat_1(X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k2_relset_1)).

fof(t38_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ( k7_relset_1(X1,X2,X3,X1) = k2_relset_1(X1,X2,X3)
        & k8_relset_1(X1,X2,X3,X2) = k1_relset_1(X1,X2,X3) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t38_relset_1)).

fof(dt_k1_partfun1,axiom,(
    ! [X1,X2,X3,X4,X5,X6] :
      ( ( v1_funct_1(X5)
        & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
        & v1_funct_1(X6)
        & m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4))) )
     => ( v1_funct_1(k1_partfun1(X1,X2,X3,X4,X5,X6))
        & m1_subset_1(k1_partfun1(X1,X2,X3,X4,X5,X6),k1_zfmisc_1(k2_zfmisc_1(X1,X4))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k1_partfun1)).

fof(redefinition_k7_relset_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k7_relset_1(X1,X2,X3,X4) = k9_relat_1(X3,X4) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k7_relset_1)).

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

fof(redefinition_k1_partfun1,axiom,(
    ! [X1,X2,X3,X4,X5,X6] :
      ( ( v1_funct_1(X5)
        & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
        & v1_funct_1(X6)
        & m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4))) )
     => k1_partfun1(X1,X2,X3,X4,X5,X6) = k5_relat_1(X5,X6) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k1_partfun1)).

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

fof(t209_relat_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v4_relat_1(X2,X1) )
     => X2 = k7_relat_1(X2,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t209_relat_1)).

fof(t45_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( v1_relat_1(X2)
         => r1_tarski(k2_relat_1(k5_relat_1(X1,X2)),k2_relat_1(X2)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t45_relat_1)).

fof(d19_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( v5_relat_1(X2,X1)
      <=> r1_tarski(k2_relat_1(X2),X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d19_relat_1)).

fof(redefinition_k1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k1_relset_1(X1,X2,X3) = k1_relat_1(X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k1_relset_1)).

fof(t148_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => k2_relat_1(k7_relat_1(X2,X1)) = k9_relat_1(X2,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t148_relat_1)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).

fof(t164_funct_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v1_funct_1(X2) )
     => ( ( r1_tarski(X1,k1_relat_1(X2))
          & v2_funct_1(X2) )
       => k10_relat_1(X2,k9_relat_1(X2,X1)) = X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t164_funct_1)).

fof(t159_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ! [X3] :
          ( v1_relat_1(X3)
         => k9_relat_1(k5_relat_1(X2,X3),X1) = k9_relat_1(X3,k9_relat_1(X2,X1)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t159_relat_1)).

fof(t169_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => k10_relat_1(X1,k2_relat_1(X1)) = k1_relat_1(X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t169_relat_1)).

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

fof(c_0_19,negated_conjecture,
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

fof(c_0_20,plain,(
    ! [X32,X33,X34] :
      ( ~ m1_subset_1(X34,k1_zfmisc_1(k2_zfmisc_1(X32,X33)))
      | k2_relset_1(X32,X33,X34) = k2_relat_1(X34) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_relset_1])])).

fof(c_0_21,plain,(
    ! [X39,X40,X41] :
      ( ( k7_relset_1(X39,X40,X41,X39) = k2_relset_1(X39,X40,X41)
        | ~ m1_subset_1(X41,k1_zfmisc_1(k2_zfmisc_1(X39,X40))) )
      & ( k8_relset_1(X39,X40,X41,X40) = k1_relset_1(X39,X40,X41)
        | ~ m1_subset_1(X41,k1_zfmisc_1(k2_zfmisc_1(X39,X40))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t38_relset_1])])])).

cnf(c_0_22,negated_conjecture,
    ( k2_relset_1(esk1_0,esk3_0,k1_partfun1(esk1_0,esk2_0,esk2_0,esk3_0,esk4_0,esk5_0)) = esk3_0 ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_23,plain,
    ( k2_relset_1(X2,X3,X1) = k2_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

fof(c_0_24,plain,(
    ! [X45,X46,X47,X48,X49,X50] :
      ( ( v1_funct_1(k1_partfun1(X45,X46,X47,X48,X49,X50))
        | ~ v1_funct_1(X49)
        | ~ m1_subset_1(X49,k1_zfmisc_1(k2_zfmisc_1(X45,X46)))
        | ~ v1_funct_1(X50)
        | ~ m1_subset_1(X50,k1_zfmisc_1(k2_zfmisc_1(X47,X48))) )
      & ( m1_subset_1(k1_partfun1(X45,X46,X47,X48,X49,X50),k1_zfmisc_1(k2_zfmisc_1(X45,X48)))
        | ~ v1_funct_1(X49)
        | ~ m1_subset_1(X49,k1_zfmisc_1(k2_zfmisc_1(X45,X46)))
        | ~ v1_funct_1(X50)
        | ~ m1_subset_1(X50,k1_zfmisc_1(k2_zfmisc_1(X47,X48))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k1_partfun1])])])).

cnf(c_0_25,plain,
    ( k7_relset_1(X1,X2,X3,X1) = k2_relset_1(X1,X2,X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

fof(c_0_26,plain,(
    ! [X35,X36,X37,X38] :
      ( ~ m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X35,X36)))
      | k7_relset_1(X35,X36,X37,X38) = k9_relat_1(X37,X38) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k7_relset_1])])).

fof(c_0_27,plain,(
    ! [X26,X27,X28] :
      ( ( v4_relat_1(X28,X26)
        | ~ m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))) )
      & ( v5_relat_1(X28,X27)
        | ~ m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).

fof(c_0_28,plain,(
    ! [X23,X24,X25] :
      ( ~ m1_subset_1(X25,k1_zfmisc_1(k2_zfmisc_1(X23,X24)))
      | v1_relat_1(X25) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).

cnf(c_0_29,negated_conjecture,
    ( k2_relat_1(k1_partfun1(esk1_0,esk2_0,esk2_0,esk3_0,esk4_0,esk5_0)) = esk3_0
    | ~ m1_subset_1(k1_partfun1(esk1_0,esk2_0,esk2_0,esk3_0,esk4_0,esk5_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk3_0))) ),
    inference(spm,[status(thm)],[c_0_22,c_0_23])).

cnf(c_0_30,plain,
    ( m1_subset_1(k1_partfun1(X1,X2,X3,X4,X5,X6),k1_zfmisc_1(k2_zfmisc_1(X1,X4)))
    | ~ v1_funct_1(X5)
    | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X6)
    | ~ m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4))) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_31,negated_conjecture,
    ( m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_32,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_33,negated_conjecture,
    ( v1_funct_1(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_34,negated_conjecture,
    ( v1_funct_1(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

fof(c_0_35,plain,(
    ! [X51,X52,X53,X54,X55,X56] :
      ( ~ v1_funct_1(X55)
      | ~ m1_subset_1(X55,k1_zfmisc_1(k2_zfmisc_1(X51,X52)))
      | ~ v1_funct_1(X56)
      | ~ m1_subset_1(X56,k1_zfmisc_1(k2_zfmisc_1(X53,X54)))
      | k1_partfun1(X51,X52,X53,X54,X55,X56) = k5_relat_1(X55,X56) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_partfun1])])).

fof(c_0_36,plain,(
    ! [X42,X43,X44] :
      ( ( ~ v1_funct_2(X44,X42,X43)
        | X42 = k1_relset_1(X42,X43,X44)
        | X43 = k1_xboole_0
        | ~ m1_subset_1(X44,k1_zfmisc_1(k2_zfmisc_1(X42,X43))) )
      & ( X42 != k1_relset_1(X42,X43,X44)
        | v1_funct_2(X44,X42,X43)
        | X43 = k1_xboole_0
        | ~ m1_subset_1(X44,k1_zfmisc_1(k2_zfmisc_1(X42,X43))) )
      & ( ~ v1_funct_2(X44,X42,X43)
        | X42 = k1_relset_1(X42,X43,X44)
        | X42 != k1_xboole_0
        | ~ m1_subset_1(X44,k1_zfmisc_1(k2_zfmisc_1(X42,X43))) )
      & ( X42 != k1_relset_1(X42,X43,X44)
        | v1_funct_2(X44,X42,X43)
        | X42 != k1_xboole_0
        | ~ m1_subset_1(X44,k1_zfmisc_1(k2_zfmisc_1(X42,X43))) )
      & ( ~ v1_funct_2(X44,X42,X43)
        | X44 = k1_xboole_0
        | X42 = k1_xboole_0
        | X43 != k1_xboole_0
        | ~ m1_subset_1(X44,k1_zfmisc_1(k2_zfmisc_1(X42,X43))) )
      & ( X44 != k1_xboole_0
        | v1_funct_2(X44,X42,X43)
        | X42 = k1_xboole_0
        | X43 != k1_xboole_0
        | ~ m1_subset_1(X44,k1_zfmisc_1(k2_zfmisc_1(X42,X43))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).

cnf(c_0_37,negated_conjecture,
    ( k7_relset_1(esk1_0,esk3_0,k1_partfun1(esk1_0,esk2_0,esk2_0,esk3_0,esk4_0,esk5_0),esk1_0) = esk3_0
    | ~ m1_subset_1(k1_partfun1(esk1_0,esk2_0,esk2_0,esk3_0,esk4_0,esk5_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk3_0))) ),
    inference(spm,[status(thm)],[c_0_22,c_0_25])).

cnf(c_0_38,plain,
    ( k7_relset_1(X2,X3,X1,X4) = k9_relat_1(X1,X4)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

fof(c_0_39,plain,(
    ! [X17,X18] :
      ( ~ v1_relat_1(X18)
      | ~ v4_relat_1(X18,X17)
      | X18 = k7_relat_1(X18,X17) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t209_relat_1])])).

cnf(c_0_40,plain,
    ( v4_relat_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_41,plain,
    ( v1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

fof(c_0_42,plain,(
    ! [X19,X20] :
      ( ~ v1_relat_1(X19)
      | ~ v1_relat_1(X20)
      | r1_tarski(k2_relat_1(k5_relat_1(X19,X20)),k2_relat_1(X20)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t45_relat_1])])])).

cnf(c_0_43,negated_conjecture,
    ( k2_relat_1(k1_partfun1(esk1_0,esk2_0,esk2_0,esk3_0,esk4_0,esk5_0)) = esk3_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29,c_0_30]),c_0_31]),c_0_32]),c_0_33]),c_0_34])])).

cnf(c_0_44,plain,
    ( k1_partfun1(X2,X3,X5,X6,X1,X4) = k5_relat_1(X1,X4)
    | ~ v1_funct_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ v1_funct_1(X4)
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X5,X6))) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

fof(c_0_45,plain,(
    ! [X9,X10] :
      ( ( ~ v5_relat_1(X10,X9)
        | r1_tarski(k2_relat_1(X10),X9)
        | ~ v1_relat_1(X10) )
      & ( ~ r1_tarski(k2_relat_1(X10),X9)
        | v5_relat_1(X10,X9)
        | ~ v1_relat_1(X10) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d19_relat_1])])])).

cnf(c_0_46,plain,
    ( v5_relat_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

fof(c_0_47,plain,(
    ! [X29,X30,X31] :
      ( ~ m1_subset_1(X31,k1_zfmisc_1(k2_zfmisc_1(X29,X30)))
      | k1_relset_1(X29,X30,X31) = k1_relat_1(X31) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).

cnf(c_0_48,plain,
    ( X2 = k1_relset_1(X2,X3,X1)
    | X3 = k1_xboole_0
    | ~ v1_funct_2(X1,X2,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

cnf(c_0_49,negated_conjecture,
    ( v1_funct_2(esk5_0,esk2_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_50,negated_conjecture,
    ( esk3_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_51,negated_conjecture,
    ( k7_relset_1(esk1_0,esk3_0,k1_partfun1(esk1_0,esk2_0,esk2_0,esk3_0,esk4_0,esk5_0),esk1_0) = esk3_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_30]),c_0_31]),c_0_32]),c_0_33]),c_0_34])])).

cnf(c_0_52,plain,
    ( k7_relset_1(X1,X2,k1_partfun1(X1,X3,X4,X2,X5,X6),X7) = k9_relat_1(k1_partfun1(X1,X3,X4,X2,X5,X6),X7)
    | ~ m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X4,X2)))
    | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
    | ~ v1_funct_1(X6)
    | ~ v1_funct_1(X5) ),
    inference(spm,[status(thm)],[c_0_38,c_0_30])).

fof(c_0_53,plain,(
    ! [X11,X12] :
      ( ~ v1_relat_1(X12)
      | k2_relat_1(k7_relat_1(X12,X11)) = k9_relat_1(X12,X11) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t148_relat_1])])).

cnf(c_0_54,plain,
    ( X1 = k7_relat_1(X1,X2)
    | ~ v1_relat_1(X1)
    | ~ v4_relat_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_55,negated_conjecture,
    ( v4_relat_1(esk4_0,esk1_0) ),
    inference(spm,[status(thm)],[c_0_40,c_0_32])).

cnf(c_0_56,negated_conjecture,
    ( v1_relat_1(esk4_0) ),
    inference(spm,[status(thm)],[c_0_41,c_0_32])).

fof(c_0_57,plain,(
    ! [X7,X8] :
      ( ( r1_tarski(X7,X8)
        | X7 != X8 )
      & ( r1_tarski(X8,X7)
        | X7 != X8 )
      & ( ~ r1_tarski(X7,X8)
        | ~ r1_tarski(X8,X7)
        | X7 = X8 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

cnf(c_0_58,plain,
    ( r1_tarski(k2_relat_1(k5_relat_1(X1,X2)),k2_relat_1(X2))
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_42])).

cnf(c_0_59,negated_conjecture,
    ( k2_relat_1(k5_relat_1(esk4_0,esk5_0)) = esk3_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43,c_0_44]),c_0_31]),c_0_32]),c_0_33]),c_0_34])])).

cnf(c_0_60,negated_conjecture,
    ( v1_relat_1(esk5_0) ),
    inference(spm,[status(thm)],[c_0_41,c_0_31])).

cnf(c_0_61,plain,
    ( r1_tarski(k2_relat_1(X1),X2)
    | ~ v5_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_45])).

cnf(c_0_62,negated_conjecture,
    ( v5_relat_1(esk5_0,esk3_0) ),
    inference(spm,[status(thm)],[c_0_46,c_0_31])).

fof(c_0_63,plain,(
    ! [X21,X22] :
      ( ~ v1_relat_1(X22)
      | ~ v1_funct_1(X22)
      | ~ r1_tarski(X21,k1_relat_1(X22))
      | ~ v2_funct_1(X22)
      | k10_relat_1(X22,k9_relat_1(X22,X21)) = X21 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t164_funct_1])])).

cnf(c_0_64,plain,
    ( k1_relset_1(X2,X3,X1) = k1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_47])).

cnf(c_0_65,negated_conjecture,
    ( k1_relset_1(esk2_0,esk3_0,esk5_0) = esk2_0 ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48,c_0_49]),c_0_31])]),c_0_50])).

fof(c_0_66,plain,(
    ! [X13,X14,X15] :
      ( ~ v1_relat_1(X14)
      | ~ v1_relat_1(X15)
      | k9_relat_1(k5_relat_1(X14,X15),X13) = k9_relat_1(X15,k9_relat_1(X14,X13)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t159_relat_1])])])).

cnf(c_0_67,negated_conjecture,
    ( k9_relat_1(k1_partfun1(esk1_0,esk2_0,esk2_0,esk3_0,esk4_0,esk5_0),esk1_0) = esk3_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51,c_0_52]),c_0_31]),c_0_32]),c_0_33]),c_0_34])])).

cnf(c_0_68,plain,
    ( k2_relat_1(k7_relat_1(X1,X2)) = k9_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_53])).

cnf(c_0_69,negated_conjecture,
    ( k7_relat_1(esk4_0,esk1_0) = esk4_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_54,c_0_55]),c_0_56])])).

fof(c_0_70,plain,(
    ! [X16] :
      ( ~ v1_relat_1(X16)
      | k10_relat_1(X16,k2_relat_1(X16)) = k1_relat_1(X16) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t169_relat_1])])).

cnf(c_0_71,plain,
    ( X1 = X2
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_57])).

cnf(c_0_72,negated_conjecture,
    ( r1_tarski(esk3_0,k2_relat_1(esk5_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_58,c_0_59]),c_0_60]),c_0_56])])).

cnf(c_0_73,negated_conjecture,
    ( r1_tarski(k2_relat_1(esk5_0),esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_61,c_0_62]),c_0_60])])).

cnf(c_0_74,plain,
    ( k10_relat_1(X1,k9_relat_1(X1,X2)) = X2
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ r1_tarski(X2,k1_relat_1(X1))
    | ~ v2_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_63])).

cnf(c_0_75,negated_conjecture,
    ( v2_funct_1(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_76,negated_conjecture,
    ( k1_relat_1(esk5_0) = esk2_0 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_64,c_0_31]),c_0_65])).

cnf(c_0_77,plain,
    ( k9_relat_1(k5_relat_1(X1,X2),X3) = k9_relat_1(X2,k9_relat_1(X1,X3))
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_66])).

cnf(c_0_78,negated_conjecture,
    ( k9_relat_1(k5_relat_1(esk4_0,esk5_0),esk1_0) = esk3_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_67,c_0_44]),c_0_31]),c_0_32]),c_0_33]),c_0_34])])).

cnf(c_0_79,negated_conjecture,
    ( k9_relat_1(esk4_0,esk1_0) = k2_relat_1(esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_68,c_0_69]),c_0_56])])).

cnf(c_0_80,plain,
    ( k10_relat_1(X1,k2_relat_1(X1)) = k1_relat_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_70])).

cnf(c_0_81,negated_conjecture,
    ( k2_relat_1(esk5_0) = esk3_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_71,c_0_72]),c_0_73])])).

cnf(c_0_82,negated_conjecture,
    ( v5_relat_1(esk4_0,esk2_0) ),
    inference(spm,[status(thm)],[c_0_46,c_0_32])).

cnf(c_0_83,negated_conjecture,
    ( k2_relset_1(esk1_0,esk2_0,esk4_0) != esk2_0 ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_84,negated_conjecture,
    ( k10_relat_1(esk5_0,k9_relat_1(esk5_0,X1)) = X1
    | ~ r1_tarski(X1,esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_74,c_0_75]),c_0_33])]),c_0_60]),c_0_76])])).

cnf(c_0_85,negated_conjecture,
    ( k9_relat_1(esk5_0,k2_relat_1(esk4_0)) = esk3_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_77,c_0_78]),c_0_79]),c_0_60]),c_0_56])])).

cnf(c_0_86,negated_conjecture,
    ( k10_relat_1(esk5_0,esk3_0) = esk2_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_80,c_0_81]),c_0_76]),c_0_60])])).

cnf(c_0_87,negated_conjecture,
    ( r1_tarski(k2_relat_1(esk4_0),esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_61,c_0_82]),c_0_56])])).

cnf(c_0_88,negated_conjecture,
    ( k2_relat_1(esk4_0) != esk2_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_83,c_0_23]),c_0_32])])).

cnf(c_0_89,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_84,c_0_85]),c_0_86]),c_0_87])]),c_0_88]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.15/0.35  % Computer   : n017.cluster.edu
% 0.15/0.35  % Model      : x86_64 x86_64
% 0.15/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.15/0.35  % Memory     : 8042.1875MB
% 0.15/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.15/0.35  % CPULimit   : 60
% 0.15/0.35  % WCLimit    : 600
% 0.15/0.35  % DateTime   : Tue Dec  1 17:36:31 EST 2020
% 0.15/0.35  % CPUTime    : 
% 0.15/0.35  # Version: 2.5pre002
% 0.15/0.36  # No SInE strategy applied
% 0.15/0.36  # Trying AutoSched0 for 299 seconds
% 0.21/0.39  # AutoSched0-Mode selected heuristic G_E___107_B42_F1_PI_SE_Q4_CS_SP_PS_S5PRR_S0Y
% 0.21/0.39  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.21/0.39  #
% 0.21/0.39  # Preprocessing time       : 0.028 s
% 0.21/0.39  # Presaturation interreduction done
% 0.21/0.39  
% 0.21/0.39  # Proof found!
% 0.21/0.39  # SZS status Theorem
% 0.21/0.39  # SZS output start CNFRefutation
% 0.21/0.39  fof(t28_funct_2, conjecture, ![X1, X2, X3, X4]:(((v1_funct_1(X4)&v1_funct_2(X4,X1,X2))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>![X5]:(((v1_funct_1(X5)&v1_funct_2(X5,X2,X3))&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))))=>((k2_relset_1(X1,X3,k1_partfun1(X1,X2,X2,X3,X4,X5))=X3&v2_funct_1(X5))=>(X3=k1_xboole_0|k2_relset_1(X1,X2,X4)=X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t28_funct_2)).
% 0.21/0.39  fof(redefinition_k2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k2_relset_1(X1,X2,X3)=k2_relat_1(X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k2_relset_1)).
% 0.21/0.39  fof(t38_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(k7_relset_1(X1,X2,X3,X1)=k2_relset_1(X1,X2,X3)&k8_relset_1(X1,X2,X3,X2)=k1_relset_1(X1,X2,X3))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t38_relset_1)).
% 0.21/0.39  fof(dt_k1_partfun1, axiom, ![X1, X2, X3, X4, X5, X6]:((((v1_funct_1(X5)&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))&v1_funct_1(X6))&m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4))))=>(v1_funct_1(k1_partfun1(X1,X2,X3,X4,X5,X6))&m1_subset_1(k1_partfun1(X1,X2,X3,X4,X5,X6),k1_zfmisc_1(k2_zfmisc_1(X1,X4))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k1_partfun1)).
% 0.21/0.39  fof(redefinition_k7_relset_1, axiom, ![X1, X2, X3, X4]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k7_relset_1(X1,X2,X3,X4)=k9_relat_1(X3,X4)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k7_relset_1)).
% 0.21/0.39  fof(cc2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(v4_relat_1(X3,X1)&v5_relat_1(X3,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc2_relset_1)).
% 0.21/0.39  fof(cc1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>v1_relat_1(X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc1_relset_1)).
% 0.21/0.39  fof(redefinition_k1_partfun1, axiom, ![X1, X2, X3, X4, X5, X6]:((((v1_funct_1(X5)&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))&v1_funct_1(X6))&m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4))))=>k1_partfun1(X1,X2,X3,X4,X5,X6)=k5_relat_1(X5,X6)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k1_partfun1)).
% 0.21/0.39  fof(d1_funct_2, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(((X2=k1_xboole_0=>X1=k1_xboole_0)=>(v1_funct_2(X3,X1,X2)<=>X1=k1_relset_1(X1,X2,X3)))&(X2=k1_xboole_0=>(X1=k1_xboole_0|(v1_funct_2(X3,X1,X2)<=>X3=k1_xboole_0))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_funct_2)).
% 0.21/0.39  fof(t209_relat_1, axiom, ![X1, X2]:((v1_relat_1(X2)&v4_relat_1(X2,X1))=>X2=k7_relat_1(X2,X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t209_relat_1)).
% 0.21/0.39  fof(t45_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>![X2]:(v1_relat_1(X2)=>r1_tarski(k2_relat_1(k5_relat_1(X1,X2)),k2_relat_1(X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t45_relat_1)).
% 0.21/0.39  fof(d19_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(v5_relat_1(X2,X1)<=>r1_tarski(k2_relat_1(X2),X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d19_relat_1)).
% 0.21/0.39  fof(redefinition_k1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k1_relset_1(X1,X2,X3)=k1_relat_1(X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k1_relset_1)).
% 0.21/0.39  fof(t148_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>k2_relat_1(k7_relat_1(X2,X1))=k9_relat_1(X2,X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t148_relat_1)).
% 0.21/0.39  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.21/0.39  fof(t164_funct_1, axiom, ![X1, X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>((r1_tarski(X1,k1_relat_1(X2))&v2_funct_1(X2))=>k10_relat_1(X2,k9_relat_1(X2,X1))=X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t164_funct_1)).
% 0.21/0.39  fof(t159_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>![X3]:(v1_relat_1(X3)=>k9_relat_1(k5_relat_1(X2,X3),X1)=k9_relat_1(X3,k9_relat_1(X2,X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t159_relat_1)).
% 0.21/0.39  fof(t169_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>k10_relat_1(X1,k2_relat_1(X1))=k1_relat_1(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t169_relat_1)).
% 0.21/0.39  fof(c_0_18, negated_conjecture, ~(![X1, X2, X3, X4]:(((v1_funct_1(X4)&v1_funct_2(X4,X1,X2))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>![X5]:(((v1_funct_1(X5)&v1_funct_2(X5,X2,X3))&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))))=>((k2_relset_1(X1,X3,k1_partfun1(X1,X2,X2,X3,X4,X5))=X3&v2_funct_1(X5))=>(X3=k1_xboole_0|k2_relset_1(X1,X2,X4)=X2))))), inference(assume_negation,[status(cth)],[t28_funct_2])).
% 0.21/0.39  fof(c_0_19, negated_conjecture, (((v1_funct_1(esk4_0)&v1_funct_2(esk4_0,esk1_0,esk2_0))&m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0))))&(((v1_funct_1(esk5_0)&v1_funct_2(esk5_0,esk2_0,esk3_0))&m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0))))&((k2_relset_1(esk1_0,esk3_0,k1_partfun1(esk1_0,esk2_0,esk2_0,esk3_0,esk4_0,esk5_0))=esk3_0&v2_funct_1(esk5_0))&(esk3_0!=k1_xboole_0&k2_relset_1(esk1_0,esk2_0,esk4_0)!=esk2_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_18])])])).
% 0.21/0.39  fof(c_0_20, plain, ![X32, X33, X34]:(~m1_subset_1(X34,k1_zfmisc_1(k2_zfmisc_1(X32,X33)))|k2_relset_1(X32,X33,X34)=k2_relat_1(X34)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_relset_1])])).
% 0.21/0.39  fof(c_0_21, plain, ![X39, X40, X41]:((k7_relset_1(X39,X40,X41,X39)=k2_relset_1(X39,X40,X41)|~m1_subset_1(X41,k1_zfmisc_1(k2_zfmisc_1(X39,X40))))&(k8_relset_1(X39,X40,X41,X40)=k1_relset_1(X39,X40,X41)|~m1_subset_1(X41,k1_zfmisc_1(k2_zfmisc_1(X39,X40))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t38_relset_1])])])).
% 0.21/0.39  cnf(c_0_22, negated_conjecture, (k2_relset_1(esk1_0,esk3_0,k1_partfun1(esk1_0,esk2_0,esk2_0,esk3_0,esk4_0,esk5_0))=esk3_0), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.21/0.39  cnf(c_0_23, plain, (k2_relset_1(X2,X3,X1)=k2_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.21/0.39  fof(c_0_24, plain, ![X45, X46, X47, X48, X49, X50]:((v1_funct_1(k1_partfun1(X45,X46,X47,X48,X49,X50))|(~v1_funct_1(X49)|~m1_subset_1(X49,k1_zfmisc_1(k2_zfmisc_1(X45,X46)))|~v1_funct_1(X50)|~m1_subset_1(X50,k1_zfmisc_1(k2_zfmisc_1(X47,X48)))))&(m1_subset_1(k1_partfun1(X45,X46,X47,X48,X49,X50),k1_zfmisc_1(k2_zfmisc_1(X45,X48)))|(~v1_funct_1(X49)|~m1_subset_1(X49,k1_zfmisc_1(k2_zfmisc_1(X45,X46)))|~v1_funct_1(X50)|~m1_subset_1(X50,k1_zfmisc_1(k2_zfmisc_1(X47,X48)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k1_partfun1])])])).
% 0.21/0.39  cnf(c_0_25, plain, (k7_relset_1(X1,X2,X3,X1)=k2_relset_1(X1,X2,X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.21/0.39  fof(c_0_26, plain, ![X35, X36, X37, X38]:(~m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X35,X36)))|k7_relset_1(X35,X36,X37,X38)=k9_relat_1(X37,X38)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k7_relset_1])])).
% 0.21/0.39  fof(c_0_27, plain, ![X26, X27, X28]:((v4_relat_1(X28,X26)|~m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))))&(v5_relat_1(X28,X27)|~m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).
% 0.21/0.39  fof(c_0_28, plain, ![X23, X24, X25]:(~m1_subset_1(X25,k1_zfmisc_1(k2_zfmisc_1(X23,X24)))|v1_relat_1(X25)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).
% 0.21/0.39  cnf(c_0_29, negated_conjecture, (k2_relat_1(k1_partfun1(esk1_0,esk2_0,esk2_0,esk3_0,esk4_0,esk5_0))=esk3_0|~m1_subset_1(k1_partfun1(esk1_0,esk2_0,esk2_0,esk3_0,esk4_0,esk5_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk3_0)))), inference(spm,[status(thm)],[c_0_22, c_0_23])).
% 0.21/0.39  cnf(c_0_30, plain, (m1_subset_1(k1_partfun1(X1,X2,X3,X4,X5,X6),k1_zfmisc_1(k2_zfmisc_1(X1,X4)))|~v1_funct_1(X5)|~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~v1_funct_1(X6)|~m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.21/0.39  cnf(c_0_31, negated_conjecture, (m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0)))), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.21/0.39  cnf(c_0_32, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0)))), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.21/0.39  cnf(c_0_33, negated_conjecture, (v1_funct_1(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.21/0.39  cnf(c_0_34, negated_conjecture, (v1_funct_1(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.21/0.39  fof(c_0_35, plain, ![X51, X52, X53, X54, X55, X56]:(~v1_funct_1(X55)|~m1_subset_1(X55,k1_zfmisc_1(k2_zfmisc_1(X51,X52)))|~v1_funct_1(X56)|~m1_subset_1(X56,k1_zfmisc_1(k2_zfmisc_1(X53,X54)))|k1_partfun1(X51,X52,X53,X54,X55,X56)=k5_relat_1(X55,X56)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_partfun1])])).
% 0.21/0.39  fof(c_0_36, plain, ![X42, X43, X44]:((((~v1_funct_2(X44,X42,X43)|X42=k1_relset_1(X42,X43,X44)|X43=k1_xboole_0|~m1_subset_1(X44,k1_zfmisc_1(k2_zfmisc_1(X42,X43))))&(X42!=k1_relset_1(X42,X43,X44)|v1_funct_2(X44,X42,X43)|X43=k1_xboole_0|~m1_subset_1(X44,k1_zfmisc_1(k2_zfmisc_1(X42,X43)))))&((~v1_funct_2(X44,X42,X43)|X42=k1_relset_1(X42,X43,X44)|X42!=k1_xboole_0|~m1_subset_1(X44,k1_zfmisc_1(k2_zfmisc_1(X42,X43))))&(X42!=k1_relset_1(X42,X43,X44)|v1_funct_2(X44,X42,X43)|X42!=k1_xboole_0|~m1_subset_1(X44,k1_zfmisc_1(k2_zfmisc_1(X42,X43))))))&((~v1_funct_2(X44,X42,X43)|X44=k1_xboole_0|X42=k1_xboole_0|X43!=k1_xboole_0|~m1_subset_1(X44,k1_zfmisc_1(k2_zfmisc_1(X42,X43))))&(X44!=k1_xboole_0|v1_funct_2(X44,X42,X43)|X42=k1_xboole_0|X43!=k1_xboole_0|~m1_subset_1(X44,k1_zfmisc_1(k2_zfmisc_1(X42,X43)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).
% 0.21/0.39  cnf(c_0_37, negated_conjecture, (k7_relset_1(esk1_0,esk3_0,k1_partfun1(esk1_0,esk2_0,esk2_0,esk3_0,esk4_0,esk5_0),esk1_0)=esk3_0|~m1_subset_1(k1_partfun1(esk1_0,esk2_0,esk2_0,esk3_0,esk4_0,esk5_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk3_0)))), inference(spm,[status(thm)],[c_0_22, c_0_25])).
% 0.21/0.39  cnf(c_0_38, plain, (k7_relset_1(X2,X3,X1,X4)=k9_relat_1(X1,X4)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.21/0.39  fof(c_0_39, plain, ![X17, X18]:(~v1_relat_1(X18)|~v4_relat_1(X18,X17)|X18=k7_relat_1(X18,X17)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t209_relat_1])])).
% 0.21/0.39  cnf(c_0_40, plain, (v4_relat_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.21/0.39  cnf(c_0_41, plain, (v1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.21/0.39  fof(c_0_42, plain, ![X19, X20]:(~v1_relat_1(X19)|(~v1_relat_1(X20)|r1_tarski(k2_relat_1(k5_relat_1(X19,X20)),k2_relat_1(X20)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t45_relat_1])])])).
% 0.21/0.39  cnf(c_0_43, negated_conjecture, (k2_relat_1(k1_partfun1(esk1_0,esk2_0,esk2_0,esk3_0,esk4_0,esk5_0))=esk3_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29, c_0_30]), c_0_31]), c_0_32]), c_0_33]), c_0_34])])).
% 0.21/0.39  cnf(c_0_44, plain, (k1_partfun1(X2,X3,X5,X6,X1,X4)=k5_relat_1(X1,X4)|~v1_funct_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~v1_funct_1(X4)|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X5,X6)))), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.21/0.39  fof(c_0_45, plain, ![X9, X10]:((~v5_relat_1(X10,X9)|r1_tarski(k2_relat_1(X10),X9)|~v1_relat_1(X10))&(~r1_tarski(k2_relat_1(X10),X9)|v5_relat_1(X10,X9)|~v1_relat_1(X10))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d19_relat_1])])])).
% 0.21/0.39  cnf(c_0_46, plain, (v5_relat_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.21/0.39  fof(c_0_47, plain, ![X29, X30, X31]:(~m1_subset_1(X31,k1_zfmisc_1(k2_zfmisc_1(X29,X30)))|k1_relset_1(X29,X30,X31)=k1_relat_1(X31)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).
% 0.21/0.39  cnf(c_0_48, plain, (X2=k1_relset_1(X2,X3,X1)|X3=k1_xboole_0|~v1_funct_2(X1,X2,X3)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_36])).
% 0.21/0.39  cnf(c_0_49, negated_conjecture, (v1_funct_2(esk5_0,esk2_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.21/0.39  cnf(c_0_50, negated_conjecture, (esk3_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.21/0.39  cnf(c_0_51, negated_conjecture, (k7_relset_1(esk1_0,esk3_0,k1_partfun1(esk1_0,esk2_0,esk2_0,esk3_0,esk4_0,esk5_0),esk1_0)=esk3_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_30]), c_0_31]), c_0_32]), c_0_33]), c_0_34])])).
% 0.21/0.39  cnf(c_0_52, plain, (k7_relset_1(X1,X2,k1_partfun1(X1,X3,X4,X2,X5,X6),X7)=k9_relat_1(k1_partfun1(X1,X3,X4,X2,X5,X6),X7)|~m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X4,X2)))|~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))|~v1_funct_1(X6)|~v1_funct_1(X5)), inference(spm,[status(thm)],[c_0_38, c_0_30])).
% 0.21/0.39  fof(c_0_53, plain, ![X11, X12]:(~v1_relat_1(X12)|k2_relat_1(k7_relat_1(X12,X11))=k9_relat_1(X12,X11)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t148_relat_1])])).
% 0.21/0.39  cnf(c_0_54, plain, (X1=k7_relat_1(X1,X2)|~v1_relat_1(X1)|~v4_relat_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.21/0.39  cnf(c_0_55, negated_conjecture, (v4_relat_1(esk4_0,esk1_0)), inference(spm,[status(thm)],[c_0_40, c_0_32])).
% 0.21/0.39  cnf(c_0_56, negated_conjecture, (v1_relat_1(esk4_0)), inference(spm,[status(thm)],[c_0_41, c_0_32])).
% 0.21/0.39  fof(c_0_57, plain, ![X7, X8]:(((r1_tarski(X7,X8)|X7!=X8)&(r1_tarski(X8,X7)|X7!=X8))&(~r1_tarski(X7,X8)|~r1_tarski(X8,X7)|X7=X8)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.21/0.39  cnf(c_0_58, plain, (r1_tarski(k2_relat_1(k5_relat_1(X1,X2)),k2_relat_1(X2))|~v1_relat_1(X1)|~v1_relat_1(X2)), inference(split_conjunct,[status(thm)],[c_0_42])).
% 0.21/0.39  cnf(c_0_59, negated_conjecture, (k2_relat_1(k5_relat_1(esk4_0,esk5_0))=esk3_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43, c_0_44]), c_0_31]), c_0_32]), c_0_33]), c_0_34])])).
% 0.21/0.39  cnf(c_0_60, negated_conjecture, (v1_relat_1(esk5_0)), inference(spm,[status(thm)],[c_0_41, c_0_31])).
% 0.21/0.39  cnf(c_0_61, plain, (r1_tarski(k2_relat_1(X1),X2)|~v5_relat_1(X1,X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_45])).
% 0.21/0.40  cnf(c_0_62, negated_conjecture, (v5_relat_1(esk5_0,esk3_0)), inference(spm,[status(thm)],[c_0_46, c_0_31])).
% 0.21/0.40  fof(c_0_63, plain, ![X21, X22]:(~v1_relat_1(X22)|~v1_funct_1(X22)|(~r1_tarski(X21,k1_relat_1(X22))|~v2_funct_1(X22)|k10_relat_1(X22,k9_relat_1(X22,X21))=X21)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t164_funct_1])])).
% 0.21/0.40  cnf(c_0_64, plain, (k1_relset_1(X2,X3,X1)=k1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_47])).
% 0.21/0.40  cnf(c_0_65, negated_conjecture, (k1_relset_1(esk2_0,esk3_0,esk5_0)=esk2_0), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48, c_0_49]), c_0_31])]), c_0_50])).
% 0.21/0.40  fof(c_0_66, plain, ![X13, X14, X15]:(~v1_relat_1(X14)|(~v1_relat_1(X15)|k9_relat_1(k5_relat_1(X14,X15),X13)=k9_relat_1(X15,k9_relat_1(X14,X13)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t159_relat_1])])])).
% 0.21/0.40  cnf(c_0_67, negated_conjecture, (k9_relat_1(k1_partfun1(esk1_0,esk2_0,esk2_0,esk3_0,esk4_0,esk5_0),esk1_0)=esk3_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51, c_0_52]), c_0_31]), c_0_32]), c_0_33]), c_0_34])])).
% 0.21/0.40  cnf(c_0_68, plain, (k2_relat_1(k7_relat_1(X1,X2))=k9_relat_1(X1,X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_53])).
% 0.21/0.40  cnf(c_0_69, negated_conjecture, (k7_relat_1(esk4_0,esk1_0)=esk4_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_54, c_0_55]), c_0_56])])).
% 0.21/0.40  fof(c_0_70, plain, ![X16]:(~v1_relat_1(X16)|k10_relat_1(X16,k2_relat_1(X16))=k1_relat_1(X16)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t169_relat_1])])).
% 0.21/0.40  cnf(c_0_71, plain, (X1=X2|~r1_tarski(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_57])).
% 0.21/0.40  cnf(c_0_72, negated_conjecture, (r1_tarski(esk3_0,k2_relat_1(esk5_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_58, c_0_59]), c_0_60]), c_0_56])])).
% 0.21/0.40  cnf(c_0_73, negated_conjecture, (r1_tarski(k2_relat_1(esk5_0),esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_61, c_0_62]), c_0_60])])).
% 0.21/0.40  cnf(c_0_74, plain, (k10_relat_1(X1,k9_relat_1(X1,X2))=X2|~v1_relat_1(X1)|~v1_funct_1(X1)|~r1_tarski(X2,k1_relat_1(X1))|~v2_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_63])).
% 0.21/0.40  cnf(c_0_75, negated_conjecture, (v2_funct_1(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.21/0.40  cnf(c_0_76, negated_conjecture, (k1_relat_1(esk5_0)=esk2_0), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_64, c_0_31]), c_0_65])).
% 0.21/0.40  cnf(c_0_77, plain, (k9_relat_1(k5_relat_1(X1,X2),X3)=k9_relat_1(X2,k9_relat_1(X1,X3))|~v1_relat_1(X1)|~v1_relat_1(X2)), inference(split_conjunct,[status(thm)],[c_0_66])).
% 0.21/0.40  cnf(c_0_78, negated_conjecture, (k9_relat_1(k5_relat_1(esk4_0,esk5_0),esk1_0)=esk3_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_67, c_0_44]), c_0_31]), c_0_32]), c_0_33]), c_0_34])])).
% 0.21/0.40  cnf(c_0_79, negated_conjecture, (k9_relat_1(esk4_0,esk1_0)=k2_relat_1(esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_68, c_0_69]), c_0_56])])).
% 0.21/0.40  cnf(c_0_80, plain, (k10_relat_1(X1,k2_relat_1(X1))=k1_relat_1(X1)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_70])).
% 0.21/0.40  cnf(c_0_81, negated_conjecture, (k2_relat_1(esk5_0)=esk3_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_71, c_0_72]), c_0_73])])).
% 0.21/0.40  cnf(c_0_82, negated_conjecture, (v5_relat_1(esk4_0,esk2_0)), inference(spm,[status(thm)],[c_0_46, c_0_32])).
% 0.21/0.40  cnf(c_0_83, negated_conjecture, (k2_relset_1(esk1_0,esk2_0,esk4_0)!=esk2_0), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.21/0.40  cnf(c_0_84, negated_conjecture, (k10_relat_1(esk5_0,k9_relat_1(esk5_0,X1))=X1|~r1_tarski(X1,esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_74, c_0_75]), c_0_33])]), c_0_60]), c_0_76])])).
% 0.21/0.40  cnf(c_0_85, negated_conjecture, (k9_relat_1(esk5_0,k2_relat_1(esk4_0))=esk3_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_77, c_0_78]), c_0_79]), c_0_60]), c_0_56])])).
% 0.21/0.40  cnf(c_0_86, negated_conjecture, (k10_relat_1(esk5_0,esk3_0)=esk2_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_80, c_0_81]), c_0_76]), c_0_60])])).
% 0.21/0.40  cnf(c_0_87, negated_conjecture, (r1_tarski(k2_relat_1(esk4_0),esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_61, c_0_82]), c_0_56])])).
% 0.21/0.40  cnf(c_0_88, negated_conjecture, (k2_relat_1(esk4_0)!=esk2_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_83, c_0_23]), c_0_32])])).
% 0.21/0.40  cnf(c_0_89, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_84, c_0_85]), c_0_86]), c_0_87])]), c_0_88]), ['proof']).
% 0.21/0.40  # SZS output end CNFRefutation
% 0.21/0.40  # Proof object total steps             : 90
% 0.21/0.40  # Proof object clause steps            : 53
% 0.21/0.40  # Proof object formula steps           : 37
% 0.21/0.40  # Proof object conjectures             : 37
% 0.21/0.40  # Proof object clause conjectures      : 34
% 0.21/0.40  # Proof object formula conjectures     : 3
% 0.21/0.40  # Proof object initial clauses used    : 27
% 0.21/0.40  # Proof object initial formulas used   : 18
% 0.21/0.40  # Proof object generating inferences   : 26
% 0.21/0.40  # Proof object simplifying inferences  : 60
% 0.21/0.40  # Training examples: 0 positive, 0 negative
% 0.21/0.40  # Parsed axioms                        : 18
% 0.21/0.40  # Removed by relevancy pruning/SinE    : 0
% 0.21/0.40  # Initial clauses                      : 38
% 0.21/0.40  # Removed in clause preprocessing      : 0
% 0.21/0.40  # Initial clauses in saturation        : 38
% 0.21/0.40  # Processed clauses                    : 196
% 0.21/0.40  # ...of these trivial                  : 6
% 0.21/0.40  # ...subsumed                          : 20
% 0.21/0.40  # ...remaining for further processing  : 170
% 0.21/0.40  # Other redundant clauses eliminated   : 7
% 0.21/0.40  # Clauses deleted for lack of memory   : 0
% 0.21/0.40  # Backward-subsumed                    : 0
% 0.21/0.40  # Backward-rewritten                   : 7
% 0.21/0.40  # Generated clauses                    : 210
% 0.21/0.40  # ...of the previous two non-trivial   : 193
% 0.21/0.40  # Contextual simplify-reflections      : 0
% 0.21/0.40  # Paramodulations                      : 204
% 0.21/0.40  # Factorizations                       : 0
% 0.21/0.40  # Equation resolutions                 : 7
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
% 0.21/0.40  # Current number of processed clauses  : 120
% 0.21/0.40  #    Positive orientable unit clauses  : 55
% 0.21/0.40  #    Positive unorientable unit clauses: 0
% 0.21/0.40  #    Negative unit clauses             : 4
% 0.21/0.40  #    Non-unit-clauses                  : 61
% 0.21/0.40  # Current number of unprocessed clauses: 67
% 0.21/0.40  # ...number of literals in the above   : 216
% 0.21/0.40  # Current number of archived formulas  : 0
% 0.21/0.40  # Current number of archived clauses   : 44
% 0.21/0.40  # Clause-clause subsumption calls (NU) : 635
% 0.21/0.40  # Rec. Clause-clause subsumption calls : 251
% 0.21/0.40  # Non-unit clause-clause subsumptions  : 16
% 0.21/0.40  # Unit Clause-clause subsumption calls : 100
% 0.21/0.40  # Rewrite failures with RHS unbound    : 0
% 0.21/0.40  # BW rewrite match attempts            : 15
% 0.21/0.40  # BW rewrite match successes           : 6
% 0.21/0.40  # Condensation attempts                : 0
% 0.21/0.40  # Condensation successes               : 0
% 0.21/0.40  # Termbank termtop insertions          : 6657
% 0.21/0.40  
% 0.21/0.40  # -------------------------------------------------
% 0.21/0.40  # User time                : 0.039 s
% 0.21/0.40  # System time              : 0.003 s
% 0.21/0.40  # Total time               : 0.043 s
% 0.21/0.40  # Maximum resident set size: 1600 pages
%------------------------------------------------------------------------------
