%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n003.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:02:59 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   96 ( 444 expanded)
%              Number of clauses        :   55 ( 155 expanded)
%              Number of leaves         :   20 ( 112 expanded)
%              Depth                    :   12
%              Number of atoms          :  346 (2993 expanded)
%              Number of equality atoms :  101 ( 971 expanded)
%              Maximal formula depth    :   13 (   5 average)
%              Maximal clause size      :   14 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
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
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t36_funct_2)).

fof(t35_funct_2,axiom,(
    ! [X1,X2,X3] :
      ( ( v1_funct_1(X3)
        & v1_funct_2(X3,X1,X2)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => ( ( k2_relset_1(X1,X2,X3) = X2
          & v2_funct_1(X3) )
       => ( X2 = k1_xboole_0
          | ( k5_relat_1(X3,k2_funct_1(X3)) = k6_partfun1(X1)
            & k5_relat_1(k2_funct_1(X3),X3) = k6_partfun1(X2) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t35_funct_2)).

fof(redefinition_k6_partfun1,axiom,(
    ! [X1] : k6_partfun1(X1) = k6_relat_1(X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k6_partfun1)).

fof(dt_k6_partfun1,axiom,(
    ! [X1] :
      ( v1_partfun1(k6_partfun1(X1),X1)
      & m1_subset_1(k6_partfun1(X1),k1_zfmisc_1(k2_zfmisc_1(X1,X1))) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k6_partfun1)).

fof(cc1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => v1_relat_1(X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc1_relset_1)).

fof(redefinition_r2_relset_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => ( r2_relset_1(X1,X2,X3,X4)
      <=> X3 = X4 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_r2_relset_1)).

fof(t59_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v2_funct_1(X1)
       => ( k1_relat_1(k5_relat_1(k2_funct_1(X1),X1)) = k2_relat_1(X1)
          & k2_relat_1(k5_relat_1(k2_funct_1(X1),X1)) = k2_relat_1(X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t59_funct_1)).

fof(t71_relat_1,axiom,(
    ! [X1] :
      ( k1_relat_1(k6_relat_1(X1)) = X1
      & k2_relat_1(k6_relat_1(X1)) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_relat_1)).

fof(t58_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v2_funct_1(X1)
       => ( k1_relat_1(k5_relat_1(X1,k2_funct_1(X1))) = k1_relat_1(X1)
          & k2_relat_1(k5_relat_1(X1,k2_funct_1(X1))) = k1_relat_1(X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t58_funct_1)).

fof(dt_k1_partfun1,axiom,(
    ! [X1,X2,X3,X4,X5,X6] :
      ( ( v1_funct_1(X5)
        & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
        & v1_funct_1(X6)
        & m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4))) )
     => ( v1_funct_1(k1_partfun1(X1,X2,X3,X4,X5,X6))
        & m1_subset_1(k1_partfun1(X1,X2,X3,X4,X5,X6),k1_zfmisc_1(k2_zfmisc_1(X1,X4))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k1_partfun1)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).

fof(d18_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( v4_relat_1(X2,X1)
      <=> r1_tarski(k1_relat_1(X2),X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d18_relat_1)).

fof(t27_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ! [X2] :
          ( ( v1_relat_1(X2)
            & v1_funct_1(X2) )
         => ( k1_relat_1(k5_relat_1(X2,X1)) = k1_relat_1(X2)
           => r1_tarski(k2_relat_1(X2),k1_relat_1(X1)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t27_funct_1)).

fof(redefinition_k1_partfun1,axiom,(
    ! [X1,X2,X3,X4,X5,X6] :
      ( ( v1_funct_1(X5)
        & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
        & v1_funct_1(X6)
        & m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4))) )
     => k1_partfun1(X1,X2,X3,X4,X5,X6) = k5_relat_1(X5,X6) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k1_partfun1)).

fof(cc2_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ( v4_relat_1(X3,X1)
        & v5_relat_1(X3,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc2_relset_1)).

fof(t80_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => k5_relat_1(X1,k6_relat_1(k2_relat_1(X1))) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t80_relat_1)).

fof(t55_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v2_funct_1(X1)
       => ( k2_relat_1(X1) = k1_relat_1(k2_funct_1(X1))
          & k1_relat_1(X1) = k2_relat_1(k2_funct_1(X1)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t55_funct_1)).

fof(dt_k2_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v1_relat_1(k2_funct_1(X1))
        & v1_funct_1(k2_funct_1(X1)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k2_funct_1)).

fof(t55_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( v1_relat_1(X2)
         => ! [X3] :
              ( v1_relat_1(X3)
             => k5_relat_1(k5_relat_1(X1,X2),X3) = k5_relat_1(X1,k5_relat_1(X2,X3)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t55_relat_1)).

fof(t78_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => k5_relat_1(k6_relat_1(k1_relat_1(X1)),X1) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t78_relat_1)).

fof(c_0_20,negated_conjecture,(
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

fof(c_0_21,plain,(
    ! [X48,X49,X50] :
      ( ( k5_relat_1(X50,k2_funct_1(X50)) = k6_partfun1(X48)
        | X49 = k1_xboole_0
        | k2_relset_1(X48,X49,X50) != X49
        | ~ v2_funct_1(X50)
        | ~ v1_funct_1(X50)
        | ~ v1_funct_2(X50,X48,X49)
        | ~ m1_subset_1(X50,k1_zfmisc_1(k2_zfmisc_1(X48,X49))) )
      & ( k5_relat_1(k2_funct_1(X50),X50) = k6_partfun1(X49)
        | X49 = k1_xboole_0
        | k2_relset_1(X48,X49,X50) != X49
        | ~ v2_funct_1(X50)
        | ~ v1_funct_1(X50)
        | ~ v1_funct_2(X50,X48,X49)
        | ~ m1_subset_1(X50,k1_zfmisc_1(k2_zfmisc_1(X48,X49))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t35_funct_2])])])).

fof(c_0_22,plain,(
    ! [X47] : k6_partfun1(X47) = k6_relat_1(X47) ),
    inference(variable_rename,[status(thm)],[redefinition_k6_partfun1])).

fof(c_0_23,negated_conjecture,
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
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_20])])])).

fof(c_0_24,plain,(
    ! [X40] :
      ( v1_partfun1(k6_partfun1(X40),X40)
      & m1_subset_1(k6_partfun1(X40),k1_zfmisc_1(k2_zfmisc_1(X40,X40))) ) ),
    inference(variable_rename,[status(thm)],[dt_k6_partfun1])).

cnf(c_0_25,plain,
    ( k5_relat_1(k2_funct_1(X1),X1) = k6_partfun1(X2)
    | X2 = k1_xboole_0
    | k2_relset_1(X3,X2,X1) != X2
    | ~ v2_funct_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_funct_2(X1,X3,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_26,plain,
    ( k6_partfun1(X1) = k6_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

fof(c_0_27,plain,(
    ! [X24,X25,X26] :
      ( ~ m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X24,X25)))
      | v1_relat_1(X26) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).

cnf(c_0_28,plain,
    ( k5_relat_1(X1,k2_funct_1(X1)) = k6_partfun1(X2)
    | X3 = k1_xboole_0
    | k2_relset_1(X2,X3,X1) != X3
    | ~ v2_funct_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_funct_2(X1,X2,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

fof(c_0_29,plain,(
    ! [X30,X31,X32,X33] :
      ( ( ~ r2_relset_1(X30,X31,X32,X33)
        | X32 = X33
        | ~ m1_subset_1(X32,k1_zfmisc_1(k2_zfmisc_1(X30,X31)))
        | ~ m1_subset_1(X33,k1_zfmisc_1(k2_zfmisc_1(X30,X31))) )
      & ( X32 != X33
        | r2_relset_1(X30,X31,X32,X33)
        | ~ m1_subset_1(X32,k1_zfmisc_1(k2_zfmisc_1(X30,X31)))
        | ~ m1_subset_1(X33,k1_zfmisc_1(k2_zfmisc_1(X30,X31))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_r2_relset_1])])])).

cnf(c_0_30,negated_conjecture,
    ( r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,esk2_0,esk2_0,esk1_0,esk3_0,esk4_0),k6_partfun1(esk1_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_31,plain,
    ( m1_subset_1(k6_partfun1(X1),k1_zfmisc_1(k2_zfmisc_1(X1,X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

fof(c_0_32,plain,(
    ! [X22] :
      ( ( k1_relat_1(k5_relat_1(k2_funct_1(X22),X22)) = k2_relat_1(X22)
        | ~ v2_funct_1(X22)
        | ~ v1_relat_1(X22)
        | ~ v1_funct_1(X22) )
      & ( k2_relat_1(k5_relat_1(k2_funct_1(X22),X22)) = k2_relat_1(X22)
        | ~ v2_funct_1(X22)
        | ~ v1_relat_1(X22)
        | ~ v1_funct_1(X22) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t59_funct_1])])])).

cnf(c_0_33,plain,
    ( X2 = k1_xboole_0
    | k5_relat_1(k2_funct_1(X1),X1) = k6_relat_1(X2)
    | k2_relset_1(X3,X2,X1) != X2
    | ~ v1_funct_1(X1)
    | ~ v2_funct_1(X1)
    | ~ v1_funct_2(X1,X3,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2))) ),
    inference(rw,[status(thm)],[c_0_25,c_0_26])).

cnf(c_0_34,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_35,negated_conjecture,
    ( k2_relset_1(esk1_0,esk2_0,esk3_0) = esk2_0 ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_36,negated_conjecture,
    ( v1_funct_2(esk3_0,esk1_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_37,negated_conjecture,
    ( v2_funct_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_38,negated_conjecture,
    ( v1_funct_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_39,negated_conjecture,
    ( esk2_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

fof(c_0_40,plain,(
    ! [X14] :
      ( k1_relat_1(k6_relat_1(X14)) = X14
      & k2_relat_1(k6_relat_1(X14)) = X14 ) ),
    inference(variable_rename,[status(thm)],[t71_relat_1])).

cnf(c_0_41,plain,
    ( v1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

fof(c_0_42,plain,(
    ! [X21] :
      ( ( k1_relat_1(k5_relat_1(X21,k2_funct_1(X21))) = k1_relat_1(X21)
        | ~ v2_funct_1(X21)
        | ~ v1_relat_1(X21)
        | ~ v1_funct_1(X21) )
      & ( k2_relat_1(k5_relat_1(X21,k2_funct_1(X21))) = k1_relat_1(X21)
        | ~ v2_funct_1(X21)
        | ~ v1_relat_1(X21)
        | ~ v1_funct_1(X21) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t58_funct_1])])])).

cnf(c_0_43,plain,
    ( X3 = k1_xboole_0
    | k5_relat_1(X1,k2_funct_1(X1)) = k6_relat_1(X2)
    | k2_relset_1(X2,X3,X1) != X3
    | ~ v1_funct_1(X1)
    | ~ v2_funct_1(X1)
    | ~ v1_funct_2(X1,X2,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(rw,[status(thm)],[c_0_28,c_0_26])).

cnf(c_0_44,plain,
    ( X3 = X4
    | ~ r2_relset_1(X1,X2,X3,X4)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_45,negated_conjecture,
    ( r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,esk2_0,esk2_0,esk1_0,esk3_0,esk4_0),k6_relat_1(esk1_0)) ),
    inference(rw,[status(thm)],[c_0_30,c_0_26])).

cnf(c_0_46,plain,
    ( m1_subset_1(k6_relat_1(X1),k1_zfmisc_1(k2_zfmisc_1(X1,X1))) ),
    inference(rw,[status(thm)],[c_0_31,c_0_26])).

fof(c_0_47,plain,(
    ! [X34,X35,X36,X37,X38,X39] :
      ( ( v1_funct_1(k1_partfun1(X34,X35,X36,X37,X38,X39))
        | ~ v1_funct_1(X38)
        | ~ m1_subset_1(X38,k1_zfmisc_1(k2_zfmisc_1(X34,X35)))
        | ~ v1_funct_1(X39)
        | ~ m1_subset_1(X39,k1_zfmisc_1(k2_zfmisc_1(X36,X37))) )
      & ( m1_subset_1(k1_partfun1(X34,X35,X36,X37,X38,X39),k1_zfmisc_1(k2_zfmisc_1(X34,X37)))
        | ~ v1_funct_1(X38)
        | ~ m1_subset_1(X38,k1_zfmisc_1(k2_zfmisc_1(X34,X35)))
        | ~ v1_funct_1(X39)
        | ~ m1_subset_1(X39,k1_zfmisc_1(k2_zfmisc_1(X36,X37))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k1_partfun1])])])).

fof(c_0_48,plain,(
    ! [X7,X8] :
      ( ( r1_tarski(X7,X8)
        | X7 != X8 )
      & ( r1_tarski(X8,X7)
        | X7 != X8 )
      & ( ~ r1_tarski(X7,X8)
        | ~ r1_tarski(X8,X7)
        | X7 = X8 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

fof(c_0_49,plain,(
    ! [X9,X10] :
      ( ( ~ v4_relat_1(X10,X9)
        | r1_tarski(k1_relat_1(X10),X9)
        | ~ v1_relat_1(X10) )
      & ( ~ r1_tarski(k1_relat_1(X10),X9)
        | v4_relat_1(X10,X9)
        | ~ v1_relat_1(X10) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d18_relat_1])])])).

fof(c_0_50,plain,(
    ! [X18,X19] :
      ( ~ v1_relat_1(X18)
      | ~ v1_funct_1(X18)
      | ~ v1_relat_1(X19)
      | ~ v1_funct_1(X19)
      | k1_relat_1(k5_relat_1(X19,X18)) != k1_relat_1(X19)
      | r1_tarski(k2_relat_1(X19),k1_relat_1(X18)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t27_funct_1])])])).

cnf(c_0_51,plain,
    ( k1_relat_1(k5_relat_1(k2_funct_1(X1),X1)) = k2_relat_1(X1)
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

cnf(c_0_52,negated_conjecture,
    ( k5_relat_1(k2_funct_1(esk3_0),esk3_0) = k6_relat_1(esk2_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_34]),c_0_35]),c_0_36]),c_0_37]),c_0_38])]),c_0_39])).

cnf(c_0_53,plain,
    ( k1_relat_1(k6_relat_1(X1)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_40])).

cnf(c_0_54,negated_conjecture,
    ( v1_relat_1(esk3_0) ),
    inference(spm,[status(thm)],[c_0_41,c_0_34])).

cnf(c_0_55,plain,
    ( k1_relat_1(k5_relat_1(X1,k2_funct_1(X1))) = k1_relat_1(X1)
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_42])).

cnf(c_0_56,negated_conjecture,
    ( k5_relat_1(esk3_0,k2_funct_1(esk3_0)) = k6_relat_1(esk1_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43,c_0_34]),c_0_35]),c_0_36]),c_0_37]),c_0_38])]),c_0_39])).

fof(c_0_57,plain,(
    ! [X41,X42,X43,X44,X45,X46] :
      ( ~ v1_funct_1(X45)
      | ~ m1_subset_1(X45,k1_zfmisc_1(k2_zfmisc_1(X41,X42)))
      | ~ v1_funct_1(X46)
      | ~ m1_subset_1(X46,k1_zfmisc_1(k2_zfmisc_1(X43,X44)))
      | k1_partfun1(X41,X42,X43,X44,X45,X46) = k5_relat_1(X45,X46) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_partfun1])])).

cnf(c_0_58,negated_conjecture,
    ( k1_partfun1(esk1_0,esk2_0,esk2_0,esk1_0,esk3_0,esk4_0) = k6_relat_1(esk1_0)
    | ~ m1_subset_1(k1_partfun1(esk1_0,esk2_0,esk2_0,esk1_0,esk3_0,esk4_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44,c_0_45]),c_0_46])])).

cnf(c_0_59,plain,
    ( m1_subset_1(k1_partfun1(X1,X2,X3,X4,X5,X6),k1_zfmisc_1(k2_zfmisc_1(X1,X4)))
    | ~ v1_funct_1(X5)
    | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X6)
    | ~ m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4))) ),
    inference(split_conjunct,[status(thm)],[c_0_47])).

cnf(c_0_60,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_61,negated_conjecture,
    ( v1_funct_1(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_62,plain,
    ( X1 = X2
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_48])).

cnf(c_0_63,plain,
    ( r1_tarski(k1_relat_1(X1),X2)
    | ~ v4_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_49])).

cnf(c_0_64,plain,
    ( r1_tarski(k2_relat_1(X2),k1_relat_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2)
    | k1_relat_1(k5_relat_1(X2,X1)) != k1_relat_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_50])).

cnf(c_0_65,negated_conjecture,
    ( k2_relat_1(esk3_0) = esk2_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51,c_0_52]),c_0_53]),c_0_37]),c_0_38]),c_0_54])])).

cnf(c_0_66,negated_conjecture,
    ( k1_relat_1(esk3_0) = esk1_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55,c_0_56]),c_0_53]),c_0_37]),c_0_38]),c_0_54])])).

fof(c_0_67,plain,(
    ! [X27,X28,X29] :
      ( ( v4_relat_1(X29,X27)
        | ~ m1_subset_1(X29,k1_zfmisc_1(k2_zfmisc_1(X27,X28))) )
      & ( v5_relat_1(X29,X28)
        | ~ m1_subset_1(X29,k1_zfmisc_1(k2_zfmisc_1(X27,X28))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).

cnf(c_0_68,plain,
    ( k1_partfun1(X2,X3,X5,X6,X1,X4) = k5_relat_1(X1,X4)
    | ~ v1_funct_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ v1_funct_1(X4)
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X5,X6))) ),
    inference(split_conjunct,[status(thm)],[c_0_57])).

cnf(c_0_69,negated_conjecture,
    ( k1_partfun1(esk1_0,esk2_0,esk2_0,esk1_0,esk3_0,esk4_0) = k6_relat_1(esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_58,c_0_59]),c_0_60]),c_0_34]),c_0_61]),c_0_38])])).

fof(c_0_70,plain,(
    ! [X16] :
      ( ~ v1_relat_1(X16)
      | k5_relat_1(X16,k6_relat_1(k2_relat_1(X16))) = X16 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t80_relat_1])])).

fof(c_0_71,plain,(
    ! [X20] :
      ( ( k2_relat_1(X20) = k1_relat_1(k2_funct_1(X20))
        | ~ v2_funct_1(X20)
        | ~ v1_relat_1(X20)
        | ~ v1_funct_1(X20) )
      & ( k1_relat_1(X20) = k2_relat_1(k2_funct_1(X20))
        | ~ v2_funct_1(X20)
        | ~ v1_relat_1(X20)
        | ~ v1_funct_1(X20) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t55_funct_1])])])).

fof(c_0_72,plain,(
    ! [X17] :
      ( ( v1_relat_1(k2_funct_1(X17))
        | ~ v1_relat_1(X17)
        | ~ v1_funct_1(X17) )
      & ( v1_funct_1(k2_funct_1(X17))
        | ~ v1_relat_1(X17)
        | ~ v1_funct_1(X17) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_funct_1])])])).

cnf(c_0_73,plain,
    ( X1 = k1_relat_1(X2)
    | ~ v4_relat_1(X2,X1)
    | ~ v1_relat_1(X2)
    | ~ r1_tarski(X1,k1_relat_1(X2)) ),
    inference(spm,[status(thm)],[c_0_62,c_0_63])).

cnf(c_0_74,negated_conjecture,
    ( r1_tarski(esk2_0,k1_relat_1(X1))
    | k1_relat_1(k5_relat_1(esk3_0,X1)) != esk1_0
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_64,c_0_65]),c_0_66]),c_0_38]),c_0_54])])).

cnf(c_0_75,plain,
    ( v4_relat_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_67])).

cnf(c_0_76,negated_conjecture,
    ( k6_relat_1(esk1_0) = k5_relat_1(esk3_0,esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_68,c_0_69]),c_0_60]),c_0_34]),c_0_61]),c_0_38])])).

cnf(c_0_77,plain,
    ( k5_relat_1(X1,k6_relat_1(k2_relat_1(X1))) = X1
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_70])).

cnf(c_0_78,plain,
    ( k1_relat_1(X1) = k2_relat_1(k2_funct_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_71])).

cnf(c_0_79,plain,
    ( v1_relat_1(k2_funct_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_72])).

fof(c_0_80,plain,(
    ! [X11,X12,X13] :
      ( ~ v1_relat_1(X11)
      | ~ v1_relat_1(X12)
      | ~ v1_relat_1(X13)
      | k5_relat_1(k5_relat_1(X11,X12),X13) = k5_relat_1(X11,k5_relat_1(X12,X13)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t55_relat_1])])])).

fof(c_0_81,plain,(
    ! [X15] :
      ( ~ v1_relat_1(X15)
      | k5_relat_1(k6_relat_1(k1_relat_1(X15)),X15) = X15 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t78_relat_1])])).

cnf(c_0_82,negated_conjecture,
    ( k1_relat_1(X1) = esk2_0
    | k1_relat_1(k5_relat_1(esk3_0,X1)) != esk1_0
    | ~ v1_funct_1(X1)
    | ~ v4_relat_1(X1,esk2_0)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_73,c_0_74])).

cnf(c_0_83,negated_conjecture,
    ( v4_relat_1(esk4_0,esk2_0) ),
    inference(spm,[status(thm)],[c_0_75,c_0_60])).

cnf(c_0_84,negated_conjecture,
    ( k1_relat_1(k5_relat_1(esk3_0,esk4_0)) = esk1_0 ),
    inference(spm,[status(thm)],[c_0_53,c_0_76])).

cnf(c_0_85,negated_conjecture,
    ( v1_relat_1(esk4_0) ),
    inference(spm,[status(thm)],[c_0_41,c_0_60])).

cnf(c_0_86,plain,
    ( k5_relat_1(k2_funct_1(X1),k6_relat_1(k1_relat_1(X1))) = k2_funct_1(X1)
    | ~ v2_funct_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_77,c_0_78]),c_0_79])).

cnf(c_0_87,plain,
    ( k5_relat_1(k5_relat_1(X1,X2),X3) = k5_relat_1(X1,k5_relat_1(X2,X3))
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_80])).

cnf(c_0_88,plain,
    ( k5_relat_1(k6_relat_1(k1_relat_1(X1)),X1) = X1
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_81])).

cnf(c_0_89,negated_conjecture,
    ( k1_relat_1(esk4_0) = esk2_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_82,c_0_83]),c_0_84]),c_0_61]),c_0_85])])).

cnf(c_0_90,negated_conjecture,
    ( k5_relat_1(k2_funct_1(esk3_0),k5_relat_1(esk3_0,esk4_0)) = k2_funct_1(esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_86,c_0_66]),c_0_76]),c_0_37]),c_0_38]),c_0_54])])).

cnf(c_0_91,negated_conjecture,
    ( k5_relat_1(k2_funct_1(esk3_0),k5_relat_1(esk3_0,X1)) = k5_relat_1(k6_relat_1(esk2_0),X1)
    | ~ v1_relat_1(k2_funct_1(esk3_0))
    | ~ v1_relat_1(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_87,c_0_52]),c_0_54])])).

cnf(c_0_92,negated_conjecture,
    ( k5_relat_1(k6_relat_1(esk2_0),esk4_0) = esk4_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_88,c_0_89]),c_0_85])])).

cnf(c_0_93,negated_conjecture,
    ( esk4_0 != k2_funct_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_94,negated_conjecture,
    ( ~ v1_relat_1(k2_funct_1(esk3_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_90,c_0_91]),c_0_92]),c_0_85])]),c_0_93])).

cnf(c_0_95,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_94,c_0_79]),c_0_38]),c_0_54])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n003.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 14:59:57 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.13/0.39  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.13/0.39  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.13/0.39  #
% 0.13/0.39  # Preprocessing time       : 0.029 s
% 0.13/0.39  # Presaturation interreduction done
% 0.13/0.39  
% 0.13/0.39  # Proof found!
% 0.13/0.39  # SZS status Theorem
% 0.13/0.39  # SZS output start CNFRefutation
% 0.13/0.39  fof(t36_funct_2, conjecture, ![X1, X2, X3]:(((v1_funct_1(X3)&v1_funct_2(X3,X1,X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>![X4]:(((v1_funct_1(X4)&v1_funct_2(X4,X2,X1))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X1))))=>(((k2_relset_1(X1,X2,X3)=X2&r2_relset_1(X1,X1,k1_partfun1(X1,X2,X2,X1,X3,X4),k6_partfun1(X1)))&v2_funct_1(X3))=>(X1=k1_xboole_0|X2=k1_xboole_0|X4=k2_funct_1(X3))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t36_funct_2)).
% 0.13/0.39  fof(t35_funct_2, axiom, ![X1, X2, X3]:(((v1_funct_1(X3)&v1_funct_2(X3,X1,X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>((k2_relset_1(X1,X2,X3)=X2&v2_funct_1(X3))=>(X2=k1_xboole_0|(k5_relat_1(X3,k2_funct_1(X3))=k6_partfun1(X1)&k5_relat_1(k2_funct_1(X3),X3)=k6_partfun1(X2))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t35_funct_2)).
% 0.13/0.39  fof(redefinition_k6_partfun1, axiom, ![X1]:k6_partfun1(X1)=k6_relat_1(X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k6_partfun1)).
% 0.13/0.39  fof(dt_k6_partfun1, axiom, ![X1]:(v1_partfun1(k6_partfun1(X1),X1)&m1_subset_1(k6_partfun1(X1),k1_zfmisc_1(k2_zfmisc_1(X1,X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k6_partfun1)).
% 0.13/0.39  fof(cc1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>v1_relat_1(X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc1_relset_1)).
% 0.13/0.39  fof(redefinition_r2_relset_1, axiom, ![X1, X2, X3, X4]:((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>(r2_relset_1(X1,X2,X3,X4)<=>X3=X4)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_r2_relset_1)).
% 0.13/0.39  fof(t59_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v2_funct_1(X1)=>(k1_relat_1(k5_relat_1(k2_funct_1(X1),X1))=k2_relat_1(X1)&k2_relat_1(k5_relat_1(k2_funct_1(X1),X1))=k2_relat_1(X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t59_funct_1)).
% 0.13/0.39  fof(t71_relat_1, axiom, ![X1]:(k1_relat_1(k6_relat_1(X1))=X1&k2_relat_1(k6_relat_1(X1))=X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t71_relat_1)).
% 0.13/0.39  fof(t58_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v2_funct_1(X1)=>(k1_relat_1(k5_relat_1(X1,k2_funct_1(X1)))=k1_relat_1(X1)&k2_relat_1(k5_relat_1(X1,k2_funct_1(X1)))=k1_relat_1(X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t58_funct_1)).
% 0.13/0.39  fof(dt_k1_partfun1, axiom, ![X1, X2, X3, X4, X5, X6]:((((v1_funct_1(X5)&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))&v1_funct_1(X6))&m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4))))=>(v1_funct_1(k1_partfun1(X1,X2,X3,X4,X5,X6))&m1_subset_1(k1_partfun1(X1,X2,X3,X4,X5,X6),k1_zfmisc_1(k2_zfmisc_1(X1,X4))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k1_partfun1)).
% 0.13/0.39  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.13/0.39  fof(d18_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(v4_relat_1(X2,X1)<=>r1_tarski(k1_relat_1(X2),X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d18_relat_1)).
% 0.13/0.39  fof(t27_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>![X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(k1_relat_1(k5_relat_1(X2,X1))=k1_relat_1(X2)=>r1_tarski(k2_relat_1(X2),k1_relat_1(X1))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t27_funct_1)).
% 0.13/0.39  fof(redefinition_k1_partfun1, axiom, ![X1, X2, X3, X4, X5, X6]:((((v1_funct_1(X5)&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))&v1_funct_1(X6))&m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4))))=>k1_partfun1(X1,X2,X3,X4,X5,X6)=k5_relat_1(X5,X6)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k1_partfun1)).
% 0.13/0.39  fof(cc2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(v4_relat_1(X3,X1)&v5_relat_1(X3,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc2_relset_1)).
% 0.13/0.39  fof(t80_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>k5_relat_1(X1,k6_relat_1(k2_relat_1(X1)))=X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t80_relat_1)).
% 0.13/0.39  fof(t55_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v2_funct_1(X1)=>(k2_relat_1(X1)=k1_relat_1(k2_funct_1(X1))&k1_relat_1(X1)=k2_relat_1(k2_funct_1(X1))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t55_funct_1)).
% 0.13/0.39  fof(dt_k2_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v1_relat_1(k2_funct_1(X1))&v1_funct_1(k2_funct_1(X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k2_funct_1)).
% 0.13/0.39  fof(t55_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>![X2]:(v1_relat_1(X2)=>![X3]:(v1_relat_1(X3)=>k5_relat_1(k5_relat_1(X1,X2),X3)=k5_relat_1(X1,k5_relat_1(X2,X3))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t55_relat_1)).
% 0.13/0.39  fof(t78_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>k5_relat_1(k6_relat_1(k1_relat_1(X1)),X1)=X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t78_relat_1)).
% 0.13/0.39  fof(c_0_20, negated_conjecture, ~(![X1, X2, X3]:(((v1_funct_1(X3)&v1_funct_2(X3,X1,X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>![X4]:(((v1_funct_1(X4)&v1_funct_2(X4,X2,X1))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X1))))=>(((k2_relset_1(X1,X2,X3)=X2&r2_relset_1(X1,X1,k1_partfun1(X1,X2,X2,X1,X3,X4),k6_partfun1(X1)))&v2_funct_1(X3))=>(X1=k1_xboole_0|X2=k1_xboole_0|X4=k2_funct_1(X3)))))), inference(assume_negation,[status(cth)],[t36_funct_2])).
% 0.13/0.39  fof(c_0_21, plain, ![X48, X49, X50]:((k5_relat_1(X50,k2_funct_1(X50))=k6_partfun1(X48)|X49=k1_xboole_0|(k2_relset_1(X48,X49,X50)!=X49|~v2_funct_1(X50))|(~v1_funct_1(X50)|~v1_funct_2(X50,X48,X49)|~m1_subset_1(X50,k1_zfmisc_1(k2_zfmisc_1(X48,X49)))))&(k5_relat_1(k2_funct_1(X50),X50)=k6_partfun1(X49)|X49=k1_xboole_0|(k2_relset_1(X48,X49,X50)!=X49|~v2_funct_1(X50))|(~v1_funct_1(X50)|~v1_funct_2(X50,X48,X49)|~m1_subset_1(X50,k1_zfmisc_1(k2_zfmisc_1(X48,X49)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t35_funct_2])])])).
% 0.13/0.39  fof(c_0_22, plain, ![X47]:k6_partfun1(X47)=k6_relat_1(X47), inference(variable_rename,[status(thm)],[redefinition_k6_partfun1])).
% 0.13/0.39  fof(c_0_23, negated_conjecture, (((v1_funct_1(esk3_0)&v1_funct_2(esk3_0,esk1_0,esk2_0))&m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0))))&(((v1_funct_1(esk4_0)&v1_funct_2(esk4_0,esk2_0,esk1_0))&m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk1_0))))&(((k2_relset_1(esk1_0,esk2_0,esk3_0)=esk2_0&r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,esk2_0,esk2_0,esk1_0,esk3_0,esk4_0),k6_partfun1(esk1_0)))&v2_funct_1(esk3_0))&((esk1_0!=k1_xboole_0&esk2_0!=k1_xboole_0)&esk4_0!=k2_funct_1(esk3_0))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_20])])])).
% 0.13/0.39  fof(c_0_24, plain, ![X40]:(v1_partfun1(k6_partfun1(X40),X40)&m1_subset_1(k6_partfun1(X40),k1_zfmisc_1(k2_zfmisc_1(X40,X40)))), inference(variable_rename,[status(thm)],[dt_k6_partfun1])).
% 0.13/0.39  cnf(c_0_25, plain, (k5_relat_1(k2_funct_1(X1),X1)=k6_partfun1(X2)|X2=k1_xboole_0|k2_relset_1(X3,X2,X1)!=X2|~v2_funct_1(X1)|~v1_funct_1(X1)|~v1_funct_2(X1,X3,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.13/0.39  cnf(c_0_26, plain, (k6_partfun1(X1)=k6_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.13/0.39  fof(c_0_27, plain, ![X24, X25, X26]:(~m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X24,X25)))|v1_relat_1(X26)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).
% 0.13/0.39  cnf(c_0_28, plain, (k5_relat_1(X1,k2_funct_1(X1))=k6_partfun1(X2)|X3=k1_xboole_0|k2_relset_1(X2,X3,X1)!=X3|~v2_funct_1(X1)|~v1_funct_1(X1)|~v1_funct_2(X1,X2,X3)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.13/0.39  fof(c_0_29, plain, ![X30, X31, X32, X33]:((~r2_relset_1(X30,X31,X32,X33)|X32=X33|(~m1_subset_1(X32,k1_zfmisc_1(k2_zfmisc_1(X30,X31)))|~m1_subset_1(X33,k1_zfmisc_1(k2_zfmisc_1(X30,X31)))))&(X32!=X33|r2_relset_1(X30,X31,X32,X33)|(~m1_subset_1(X32,k1_zfmisc_1(k2_zfmisc_1(X30,X31)))|~m1_subset_1(X33,k1_zfmisc_1(k2_zfmisc_1(X30,X31)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_r2_relset_1])])])).
% 0.13/0.39  cnf(c_0_30, negated_conjecture, (r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,esk2_0,esk2_0,esk1_0,esk3_0,esk4_0),k6_partfun1(esk1_0))), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.13/0.39  cnf(c_0_31, plain, (m1_subset_1(k6_partfun1(X1),k1_zfmisc_1(k2_zfmisc_1(X1,X1)))), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.13/0.39  fof(c_0_32, plain, ![X22]:((k1_relat_1(k5_relat_1(k2_funct_1(X22),X22))=k2_relat_1(X22)|~v2_funct_1(X22)|(~v1_relat_1(X22)|~v1_funct_1(X22)))&(k2_relat_1(k5_relat_1(k2_funct_1(X22),X22))=k2_relat_1(X22)|~v2_funct_1(X22)|(~v1_relat_1(X22)|~v1_funct_1(X22)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t59_funct_1])])])).
% 0.13/0.39  cnf(c_0_33, plain, (X2=k1_xboole_0|k5_relat_1(k2_funct_1(X1),X1)=k6_relat_1(X2)|k2_relset_1(X3,X2,X1)!=X2|~v1_funct_1(X1)|~v2_funct_1(X1)|~v1_funct_2(X1,X3,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))), inference(rw,[status(thm)],[c_0_25, c_0_26])).
% 0.13/0.39  cnf(c_0_34, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0)))), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.13/0.39  cnf(c_0_35, negated_conjecture, (k2_relset_1(esk1_0,esk2_0,esk3_0)=esk2_0), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.13/0.39  cnf(c_0_36, negated_conjecture, (v1_funct_2(esk3_0,esk1_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.13/0.39  cnf(c_0_37, negated_conjecture, (v2_funct_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.13/0.39  cnf(c_0_38, negated_conjecture, (v1_funct_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.13/0.39  cnf(c_0_39, negated_conjecture, (esk2_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.13/0.39  fof(c_0_40, plain, ![X14]:(k1_relat_1(k6_relat_1(X14))=X14&k2_relat_1(k6_relat_1(X14))=X14), inference(variable_rename,[status(thm)],[t71_relat_1])).
% 0.13/0.39  cnf(c_0_41, plain, (v1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.13/0.39  fof(c_0_42, plain, ![X21]:((k1_relat_1(k5_relat_1(X21,k2_funct_1(X21)))=k1_relat_1(X21)|~v2_funct_1(X21)|(~v1_relat_1(X21)|~v1_funct_1(X21)))&(k2_relat_1(k5_relat_1(X21,k2_funct_1(X21)))=k1_relat_1(X21)|~v2_funct_1(X21)|(~v1_relat_1(X21)|~v1_funct_1(X21)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t58_funct_1])])])).
% 0.13/0.39  cnf(c_0_43, plain, (X3=k1_xboole_0|k5_relat_1(X1,k2_funct_1(X1))=k6_relat_1(X2)|k2_relset_1(X2,X3,X1)!=X3|~v1_funct_1(X1)|~v2_funct_1(X1)|~v1_funct_2(X1,X2,X3)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(rw,[status(thm)],[c_0_28, c_0_26])).
% 0.13/0.39  cnf(c_0_44, plain, (X3=X4|~r2_relset_1(X1,X2,X3,X4)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.13/0.39  cnf(c_0_45, negated_conjecture, (r2_relset_1(esk1_0,esk1_0,k1_partfun1(esk1_0,esk2_0,esk2_0,esk1_0,esk3_0,esk4_0),k6_relat_1(esk1_0))), inference(rw,[status(thm)],[c_0_30, c_0_26])).
% 0.13/0.39  cnf(c_0_46, plain, (m1_subset_1(k6_relat_1(X1),k1_zfmisc_1(k2_zfmisc_1(X1,X1)))), inference(rw,[status(thm)],[c_0_31, c_0_26])).
% 0.13/0.39  fof(c_0_47, plain, ![X34, X35, X36, X37, X38, X39]:((v1_funct_1(k1_partfun1(X34,X35,X36,X37,X38,X39))|(~v1_funct_1(X38)|~m1_subset_1(X38,k1_zfmisc_1(k2_zfmisc_1(X34,X35)))|~v1_funct_1(X39)|~m1_subset_1(X39,k1_zfmisc_1(k2_zfmisc_1(X36,X37)))))&(m1_subset_1(k1_partfun1(X34,X35,X36,X37,X38,X39),k1_zfmisc_1(k2_zfmisc_1(X34,X37)))|(~v1_funct_1(X38)|~m1_subset_1(X38,k1_zfmisc_1(k2_zfmisc_1(X34,X35)))|~v1_funct_1(X39)|~m1_subset_1(X39,k1_zfmisc_1(k2_zfmisc_1(X36,X37)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k1_partfun1])])])).
% 0.13/0.39  fof(c_0_48, plain, ![X7, X8]:(((r1_tarski(X7,X8)|X7!=X8)&(r1_tarski(X8,X7)|X7!=X8))&(~r1_tarski(X7,X8)|~r1_tarski(X8,X7)|X7=X8)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.13/0.39  fof(c_0_49, plain, ![X9, X10]:((~v4_relat_1(X10,X9)|r1_tarski(k1_relat_1(X10),X9)|~v1_relat_1(X10))&(~r1_tarski(k1_relat_1(X10),X9)|v4_relat_1(X10,X9)|~v1_relat_1(X10))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d18_relat_1])])])).
% 0.13/0.39  fof(c_0_50, plain, ![X18, X19]:(~v1_relat_1(X18)|~v1_funct_1(X18)|(~v1_relat_1(X19)|~v1_funct_1(X19)|(k1_relat_1(k5_relat_1(X19,X18))!=k1_relat_1(X19)|r1_tarski(k2_relat_1(X19),k1_relat_1(X18))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t27_funct_1])])])).
% 0.13/0.39  cnf(c_0_51, plain, (k1_relat_1(k5_relat_1(k2_funct_1(X1),X1))=k2_relat_1(X1)|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.13/0.39  cnf(c_0_52, negated_conjecture, (k5_relat_1(k2_funct_1(esk3_0),esk3_0)=k6_relat_1(esk2_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33, c_0_34]), c_0_35]), c_0_36]), c_0_37]), c_0_38])]), c_0_39])).
% 0.13/0.39  cnf(c_0_53, plain, (k1_relat_1(k6_relat_1(X1))=X1), inference(split_conjunct,[status(thm)],[c_0_40])).
% 0.13/0.39  cnf(c_0_54, negated_conjecture, (v1_relat_1(esk3_0)), inference(spm,[status(thm)],[c_0_41, c_0_34])).
% 0.13/0.39  cnf(c_0_55, plain, (k1_relat_1(k5_relat_1(X1,k2_funct_1(X1)))=k1_relat_1(X1)|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_42])).
% 0.13/0.39  cnf(c_0_56, negated_conjecture, (k5_relat_1(esk3_0,k2_funct_1(esk3_0))=k6_relat_1(esk1_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43, c_0_34]), c_0_35]), c_0_36]), c_0_37]), c_0_38])]), c_0_39])).
% 0.13/0.39  fof(c_0_57, plain, ![X41, X42, X43, X44, X45, X46]:(~v1_funct_1(X45)|~m1_subset_1(X45,k1_zfmisc_1(k2_zfmisc_1(X41,X42)))|~v1_funct_1(X46)|~m1_subset_1(X46,k1_zfmisc_1(k2_zfmisc_1(X43,X44)))|k1_partfun1(X41,X42,X43,X44,X45,X46)=k5_relat_1(X45,X46)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_partfun1])])).
% 0.13/0.39  cnf(c_0_58, negated_conjecture, (k1_partfun1(esk1_0,esk2_0,esk2_0,esk1_0,esk3_0,esk4_0)=k6_relat_1(esk1_0)|~m1_subset_1(k1_partfun1(esk1_0,esk2_0,esk2_0,esk1_0,esk3_0,esk4_0),k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44, c_0_45]), c_0_46])])).
% 0.13/0.39  cnf(c_0_59, plain, (m1_subset_1(k1_partfun1(X1,X2,X3,X4,X5,X6),k1_zfmisc_1(k2_zfmisc_1(X1,X4)))|~v1_funct_1(X5)|~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~v1_funct_1(X6)|~m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))), inference(split_conjunct,[status(thm)],[c_0_47])).
% 0.13/0.39  cnf(c_0_60, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.13/0.39  cnf(c_0_61, negated_conjecture, (v1_funct_1(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.13/0.39  cnf(c_0_62, plain, (X1=X2|~r1_tarski(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_48])).
% 0.13/0.39  cnf(c_0_63, plain, (r1_tarski(k1_relat_1(X1),X2)|~v4_relat_1(X1,X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_49])).
% 0.13/0.39  cnf(c_0_64, plain, (r1_tarski(k2_relat_1(X2),k1_relat_1(X1))|~v1_relat_1(X1)|~v1_funct_1(X1)|~v1_relat_1(X2)|~v1_funct_1(X2)|k1_relat_1(k5_relat_1(X2,X1))!=k1_relat_1(X2)), inference(split_conjunct,[status(thm)],[c_0_50])).
% 0.13/0.39  cnf(c_0_65, negated_conjecture, (k2_relat_1(esk3_0)=esk2_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51, c_0_52]), c_0_53]), c_0_37]), c_0_38]), c_0_54])])).
% 0.13/0.39  cnf(c_0_66, negated_conjecture, (k1_relat_1(esk3_0)=esk1_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55, c_0_56]), c_0_53]), c_0_37]), c_0_38]), c_0_54])])).
% 0.13/0.39  fof(c_0_67, plain, ![X27, X28, X29]:((v4_relat_1(X29,X27)|~m1_subset_1(X29,k1_zfmisc_1(k2_zfmisc_1(X27,X28))))&(v5_relat_1(X29,X28)|~m1_subset_1(X29,k1_zfmisc_1(k2_zfmisc_1(X27,X28))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).
% 0.13/0.39  cnf(c_0_68, plain, (k1_partfun1(X2,X3,X5,X6,X1,X4)=k5_relat_1(X1,X4)|~v1_funct_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~v1_funct_1(X4)|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X5,X6)))), inference(split_conjunct,[status(thm)],[c_0_57])).
% 0.13/0.39  cnf(c_0_69, negated_conjecture, (k1_partfun1(esk1_0,esk2_0,esk2_0,esk1_0,esk3_0,esk4_0)=k6_relat_1(esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_58, c_0_59]), c_0_60]), c_0_34]), c_0_61]), c_0_38])])).
% 0.13/0.39  fof(c_0_70, plain, ![X16]:(~v1_relat_1(X16)|k5_relat_1(X16,k6_relat_1(k2_relat_1(X16)))=X16), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t80_relat_1])])).
% 0.13/0.39  fof(c_0_71, plain, ![X20]:((k2_relat_1(X20)=k1_relat_1(k2_funct_1(X20))|~v2_funct_1(X20)|(~v1_relat_1(X20)|~v1_funct_1(X20)))&(k1_relat_1(X20)=k2_relat_1(k2_funct_1(X20))|~v2_funct_1(X20)|(~v1_relat_1(X20)|~v1_funct_1(X20)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t55_funct_1])])])).
% 0.13/0.39  fof(c_0_72, plain, ![X17]:((v1_relat_1(k2_funct_1(X17))|(~v1_relat_1(X17)|~v1_funct_1(X17)))&(v1_funct_1(k2_funct_1(X17))|(~v1_relat_1(X17)|~v1_funct_1(X17)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_funct_1])])])).
% 0.13/0.39  cnf(c_0_73, plain, (X1=k1_relat_1(X2)|~v4_relat_1(X2,X1)|~v1_relat_1(X2)|~r1_tarski(X1,k1_relat_1(X2))), inference(spm,[status(thm)],[c_0_62, c_0_63])).
% 0.13/0.39  cnf(c_0_74, negated_conjecture, (r1_tarski(esk2_0,k1_relat_1(X1))|k1_relat_1(k5_relat_1(esk3_0,X1))!=esk1_0|~v1_funct_1(X1)|~v1_relat_1(X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_64, c_0_65]), c_0_66]), c_0_38]), c_0_54])])).
% 0.13/0.39  cnf(c_0_75, plain, (v4_relat_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_67])).
% 0.13/0.39  cnf(c_0_76, negated_conjecture, (k6_relat_1(esk1_0)=k5_relat_1(esk3_0,esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_68, c_0_69]), c_0_60]), c_0_34]), c_0_61]), c_0_38])])).
% 0.13/0.39  cnf(c_0_77, plain, (k5_relat_1(X1,k6_relat_1(k2_relat_1(X1)))=X1|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_70])).
% 0.13/0.39  cnf(c_0_78, plain, (k1_relat_1(X1)=k2_relat_1(k2_funct_1(X1))|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_71])).
% 0.13/0.39  cnf(c_0_79, plain, (v1_relat_1(k2_funct_1(X1))|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_72])).
% 0.13/0.39  fof(c_0_80, plain, ![X11, X12, X13]:(~v1_relat_1(X11)|(~v1_relat_1(X12)|(~v1_relat_1(X13)|k5_relat_1(k5_relat_1(X11,X12),X13)=k5_relat_1(X11,k5_relat_1(X12,X13))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t55_relat_1])])])).
% 0.13/0.39  fof(c_0_81, plain, ![X15]:(~v1_relat_1(X15)|k5_relat_1(k6_relat_1(k1_relat_1(X15)),X15)=X15), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t78_relat_1])])).
% 0.13/0.39  cnf(c_0_82, negated_conjecture, (k1_relat_1(X1)=esk2_0|k1_relat_1(k5_relat_1(esk3_0,X1))!=esk1_0|~v1_funct_1(X1)|~v4_relat_1(X1,esk2_0)|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_73, c_0_74])).
% 0.13/0.39  cnf(c_0_83, negated_conjecture, (v4_relat_1(esk4_0,esk2_0)), inference(spm,[status(thm)],[c_0_75, c_0_60])).
% 0.13/0.39  cnf(c_0_84, negated_conjecture, (k1_relat_1(k5_relat_1(esk3_0,esk4_0))=esk1_0), inference(spm,[status(thm)],[c_0_53, c_0_76])).
% 0.13/0.39  cnf(c_0_85, negated_conjecture, (v1_relat_1(esk4_0)), inference(spm,[status(thm)],[c_0_41, c_0_60])).
% 0.13/0.39  cnf(c_0_86, plain, (k5_relat_1(k2_funct_1(X1),k6_relat_1(k1_relat_1(X1)))=k2_funct_1(X1)|~v2_funct_1(X1)|~v1_funct_1(X1)|~v1_relat_1(X1)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_77, c_0_78]), c_0_79])).
% 0.13/0.39  cnf(c_0_87, plain, (k5_relat_1(k5_relat_1(X1,X2),X3)=k5_relat_1(X1,k5_relat_1(X2,X3))|~v1_relat_1(X1)|~v1_relat_1(X2)|~v1_relat_1(X3)), inference(split_conjunct,[status(thm)],[c_0_80])).
% 0.13/0.39  cnf(c_0_88, plain, (k5_relat_1(k6_relat_1(k1_relat_1(X1)),X1)=X1|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_81])).
% 0.13/0.39  cnf(c_0_89, negated_conjecture, (k1_relat_1(esk4_0)=esk2_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_82, c_0_83]), c_0_84]), c_0_61]), c_0_85])])).
% 0.13/0.39  cnf(c_0_90, negated_conjecture, (k5_relat_1(k2_funct_1(esk3_0),k5_relat_1(esk3_0,esk4_0))=k2_funct_1(esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_86, c_0_66]), c_0_76]), c_0_37]), c_0_38]), c_0_54])])).
% 0.13/0.39  cnf(c_0_91, negated_conjecture, (k5_relat_1(k2_funct_1(esk3_0),k5_relat_1(esk3_0,X1))=k5_relat_1(k6_relat_1(esk2_0),X1)|~v1_relat_1(k2_funct_1(esk3_0))|~v1_relat_1(X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_87, c_0_52]), c_0_54])])).
% 0.13/0.39  cnf(c_0_92, negated_conjecture, (k5_relat_1(k6_relat_1(esk2_0),esk4_0)=esk4_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_88, c_0_89]), c_0_85])])).
% 0.13/0.39  cnf(c_0_93, negated_conjecture, (esk4_0!=k2_funct_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.13/0.39  cnf(c_0_94, negated_conjecture, (~v1_relat_1(k2_funct_1(esk3_0))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_90, c_0_91]), c_0_92]), c_0_85])]), c_0_93])).
% 0.13/0.39  cnf(c_0_95, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_94, c_0_79]), c_0_38]), c_0_54])]), ['proof']).
% 0.13/0.39  # SZS output end CNFRefutation
% 0.13/0.39  # Proof object total steps             : 96
% 0.13/0.39  # Proof object clause steps            : 55
% 0.13/0.39  # Proof object formula steps           : 41
% 0.13/0.39  # Proof object conjectures             : 33
% 0.13/0.39  # Proof object clause conjectures      : 30
% 0.13/0.39  # Proof object formula conjectures     : 3
% 0.13/0.39  # Proof object initial clauses used    : 30
% 0.13/0.39  # Proof object initial formulas used   : 20
% 0.13/0.39  # Proof object generating inferences   : 21
% 0.13/0.39  # Proof object simplifying inferences  : 63
% 0.13/0.39  # Training examples: 0 positive, 0 negative
% 0.13/0.39  # Parsed axioms                        : 21
% 0.13/0.39  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.39  # Initial clauses                      : 46
% 0.13/0.39  # Removed in clause preprocessing      : 1
% 0.13/0.39  # Initial clauses in saturation        : 45
% 0.13/0.39  # Processed clauses                    : 266
% 0.13/0.39  # ...of these trivial                  : 13
% 0.13/0.39  # ...subsumed                          : 39
% 0.13/0.39  # ...remaining for further processing  : 214
% 0.13/0.39  # Other redundant clauses eliminated   : 3
% 0.13/0.39  # Clauses deleted for lack of memory   : 0
% 0.13/0.39  # Backward-subsumed                    : 1
% 0.13/0.39  # Backward-rewritten                   : 11
% 0.13/0.39  # Generated clauses                    : 467
% 0.13/0.39  # ...of the previous two non-trivial   : 376
% 0.13/0.39  # Contextual simplify-reflections      : 14
% 0.13/0.39  # Paramodulations                      : 464
% 0.13/0.39  # Factorizations                       : 0
% 0.13/0.39  # Equation resolutions                 : 3
% 0.13/0.39  # Propositional unsat checks           : 0
% 0.13/0.39  #    Propositional check models        : 0
% 0.13/0.39  #    Propositional check unsatisfiable : 0
% 0.13/0.39  #    Propositional clauses             : 0
% 0.13/0.39  #    Propositional clauses after purity: 0
% 0.13/0.39  #    Propositional unsat core size     : 0
% 0.13/0.39  #    Propositional preprocessing time  : 0.000
% 0.13/0.39  #    Propositional encoding time       : 0.000
% 0.13/0.39  #    Propositional solver time         : 0.000
% 0.13/0.39  #    Success case prop preproc time    : 0.000
% 0.13/0.39  #    Success case prop encoding time   : 0.000
% 0.13/0.39  #    Success case prop solver time     : 0.000
% 0.13/0.39  # Current number of processed clauses  : 155
% 0.13/0.39  #    Positive orientable unit clauses  : 47
% 0.13/0.39  #    Positive unorientable unit clauses: 0
% 0.13/0.39  #    Negative unit clauses             : 4
% 0.13/0.39  #    Non-unit-clauses                  : 104
% 0.13/0.39  # Current number of unprocessed clauses: 198
% 0.13/0.39  # ...number of literals in the above   : 1105
% 0.13/0.39  # Current number of archived formulas  : 0
% 0.13/0.39  # Current number of archived clauses   : 57
% 0.13/0.39  # Clause-clause subsumption calls (NU) : 1610
% 0.13/0.39  # Rec. Clause-clause subsumption calls : 612
% 0.13/0.39  # Non-unit clause-clause subsumptions  : 54
% 0.13/0.39  # Unit Clause-clause subsumption calls : 75
% 0.13/0.39  # Rewrite failures with RHS unbound    : 0
% 0.13/0.39  # BW rewrite match attempts            : 4
% 0.13/0.39  # BW rewrite match successes           : 2
% 0.13/0.39  # Condensation attempts                : 0
% 0.13/0.39  # Condensation successes               : 0
% 0.13/0.39  # Termbank termtop insertions          : 13489
% 0.13/0.39  
% 0.13/0.39  # -------------------------------------------------
% 0.13/0.39  # User time                : 0.047 s
% 0.13/0.39  # System time              : 0.006 s
% 0.13/0.39  # Total time               : 0.053 s
% 0.13/0.39  # Maximum resident set size: 1600 pages
%------------------------------------------------------------------------------
