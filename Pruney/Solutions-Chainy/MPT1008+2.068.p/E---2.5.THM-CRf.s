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
% DateTime   : Thu Dec  3 11:04:40 EST 2020

% Result     : Theorem 0.17s
% Output     : CNFRefutation 0.17s
% Verified   : 
% Statistics : Number of formulae       :   74 ( 819 expanded)
%              Number of clauses        :   40 ( 314 expanded)
%              Number of leaves         :   17 ( 237 expanded)
%              Depth                    :   11
%              Number of atoms          :  210 (1544 expanded)
%              Number of equality atoms :  102 ( 926 expanded)
%              Maximal formula depth    :   15 (   4 average)
%              Maximal clause size      :   25 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t62_funct_2,conjecture,(
    ! [X1,X2,X3] :
      ( ( v1_funct_1(X3)
        & v1_funct_2(X3,k1_tarski(X1),X2)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X1),X2))) )
     => ( X2 != k1_xboole_0
       => k2_relset_1(k1_tarski(X1),X2,X3) = k1_tarski(k1_funct_1(X3,X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t62_funct_2)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_enumset1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_enumset1)).

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

fof(redefinition_k2_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k2_relset_1(X1,X2,X3) = k2_relat_1(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k2_relset_1)).

fof(t209_relat_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v4_relat_1(X2,X1) )
     => X2 = k7_relat_1(X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t209_relat_1)).

fof(t14_funct_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v1_funct_1(X2) )
     => ( k1_relat_1(X2) = k1_tarski(X1)
       => k2_relat_1(X2) = k1_tarski(k1_funct_1(X2,X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t14_funct_1)).

fof(t142_zfmisc_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( r1_tarski(X4,k1_enumset1(X1,X2,X3))
    <=> ~ ( X4 != k1_xboole_0
          & X4 != k1_tarski(X1)
          & X4 != k1_tarski(X2)
          & X4 != k1_tarski(X3)
          & X4 != k2_tarski(X1,X2)
          & X4 != k2_tarski(X2,X3)
          & X4 != k2_tarski(X1,X3)
          & X4 != k1_enumset1(X1,X2,X3) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t142_zfmisc_1)).

fof(t87_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => r1_tarski(k1_relat_1(k7_relat_1(X2,X1)),X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t87_relat_1)).

fof(t6_funct_2,axiom,(
    ! [X1,X2,X3,X4] :
      ( ( v1_funct_1(X4)
        & v1_funct_2(X4,X1,X2)
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => ( r2_hidden(X3,X1)
       => ( X2 = k1_xboole_0
          | r2_hidden(k1_funct_1(X4,X3),k2_relset_1(X1,X2,X4)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t6_funct_2)).

fof(t7_ordinal1,axiom,(
    ! [X1,X2] :
      ~ ( r2_hidden(X1,X2)
        & r1_tarski(X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_ordinal1)).

fof(t64_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ( ( k1_relat_1(X1) = k1_xboole_0
          | k2_relat_1(X1) = k1_xboole_0 )
       => X1 = k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t64_relat_1)).

fof(t2_xboole_1,axiom,(
    ! [X1] : r1_tarski(k1_xboole_0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_xboole_1)).

fof(t60_relat_1,axiom,
    ( k1_relat_1(k1_xboole_0) = k1_xboole_0
    & k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t60_relat_1)).

fof(t29_mcart_1,axiom,(
    ! [X1] :
      ~ ( X1 != k1_xboole_0
        & ! [X2] :
            ~ ( r2_hidden(X2,X1)
              & ! [X3,X4,X5] :
                  ~ ( ( r2_hidden(X3,X1)
                      | r2_hidden(X4,X1) )
                    & X2 = k3_mcart_1(X3,X4,X5) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t29_mcart_1)).

fof(c_0_17,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( ( v1_funct_1(X3)
          & v1_funct_2(X3,k1_tarski(X1),X2)
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X1),X2))) )
       => ( X2 != k1_xboole_0
         => k2_relset_1(k1_tarski(X1),X2,X3) = k1_tarski(k1_funct_1(X3,X1)) ) ) ),
    inference(assume_negation,[status(cth)],[t62_funct_2])).

fof(c_0_18,negated_conjecture,
    ( v1_funct_1(esk4_0)
    & v1_funct_2(esk4_0,k1_tarski(esk2_0),esk3_0)
    & m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(esk2_0),esk3_0)))
    & esk3_0 != k1_xboole_0
    & k2_relset_1(k1_tarski(esk2_0),esk3_0,esk4_0) != k1_tarski(k1_funct_1(esk4_0,esk2_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_17])])])).

fof(c_0_19,plain,(
    ! [X7] : k2_tarski(X7,X7) = k1_tarski(X7) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_20,plain,(
    ! [X8,X9] : k1_enumset1(X8,X8,X9) = k2_tarski(X8,X9) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_21,plain,(
    ! [X10,X11,X12] : k2_enumset1(X10,X10,X11,X12) = k1_enumset1(X10,X11,X12) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_22,plain,(
    ! [X29,X30,X31] :
      ( ( v4_relat_1(X31,X29)
        | ~ m1_subset_1(X31,k1_zfmisc_1(k2_zfmisc_1(X29,X30))) )
      & ( v5_relat_1(X31,X30)
        | ~ m1_subset_1(X31,k1_zfmisc_1(k2_zfmisc_1(X29,X30))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).

cnf(c_0_23,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(esk2_0),esk3_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_24,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_25,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_26,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

fof(c_0_27,plain,(
    ! [X26,X27,X28] :
      ( ~ m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27)))
      | v1_relat_1(X28) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).

fof(c_0_28,plain,(
    ! [X32,X33,X34] :
      ( ~ m1_subset_1(X34,k1_zfmisc_1(k2_zfmisc_1(X32,X33)))
      | k2_relset_1(X32,X33,X34) = k2_relat_1(X34) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_relset_1])])).

fof(c_0_29,plain,(
    ! [X17,X18] :
      ( ~ v1_relat_1(X18)
      | ~ v4_relat_1(X18,X17)
      | X18 = k7_relat_1(X18,X17) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t209_relat_1])])).

cnf(c_0_30,plain,
    ( v4_relat_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_31,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),esk3_0))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_23,c_0_24]),c_0_25]),c_0_26])).

cnf(c_0_32,plain,
    ( v1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_33,negated_conjecture,
    ( k2_relset_1(k1_tarski(esk2_0),esk3_0,esk4_0) != k1_tarski(k1_funct_1(esk4_0,esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_34,plain,
    ( k2_relset_1(X2,X3,X1) = k2_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

fof(c_0_35,plain,(
    ! [X22,X23] :
      ( ~ v1_relat_1(X23)
      | ~ v1_funct_1(X23)
      | k1_relat_1(X23) != k1_tarski(X22)
      | k2_relat_1(X23) = k1_tarski(k1_funct_1(X23,X22)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t14_funct_1])])).

fof(c_0_36,plain,(
    ! [X13,X14,X15,X16] :
      ( ( ~ r1_tarski(X16,k1_enumset1(X13,X14,X15))
        | X16 = k1_xboole_0
        | X16 = k1_tarski(X13)
        | X16 = k1_tarski(X14)
        | X16 = k1_tarski(X15)
        | X16 = k2_tarski(X13,X14)
        | X16 = k2_tarski(X14,X15)
        | X16 = k2_tarski(X13,X15)
        | X16 = k1_enumset1(X13,X14,X15) )
      & ( X16 != k1_xboole_0
        | r1_tarski(X16,k1_enumset1(X13,X14,X15)) )
      & ( X16 != k1_tarski(X13)
        | r1_tarski(X16,k1_enumset1(X13,X14,X15)) )
      & ( X16 != k1_tarski(X14)
        | r1_tarski(X16,k1_enumset1(X13,X14,X15)) )
      & ( X16 != k1_tarski(X15)
        | r1_tarski(X16,k1_enumset1(X13,X14,X15)) )
      & ( X16 != k2_tarski(X13,X14)
        | r1_tarski(X16,k1_enumset1(X13,X14,X15)) )
      & ( X16 != k2_tarski(X14,X15)
        | r1_tarski(X16,k1_enumset1(X13,X14,X15)) )
      & ( X16 != k2_tarski(X13,X15)
        | r1_tarski(X16,k1_enumset1(X13,X14,X15)) )
      & ( X16 != k1_enumset1(X13,X14,X15)
        | r1_tarski(X16,k1_enumset1(X13,X14,X15)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t142_zfmisc_1])])])).

fof(c_0_37,plain,(
    ! [X20,X21] :
      ( ~ v1_relat_1(X21)
      | r1_tarski(k1_relat_1(k7_relat_1(X21,X20)),X20) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t87_relat_1])])).

cnf(c_0_38,plain,
    ( X1 = k7_relat_1(X1,X2)
    | ~ v1_relat_1(X1)
    | ~ v4_relat_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_39,negated_conjecture,
    ( v4_relat_1(esk4_0,k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0)) ),
    inference(spm,[status(thm)],[c_0_30,c_0_31])).

cnf(c_0_40,negated_conjecture,
    ( v1_relat_1(esk4_0) ),
    inference(spm,[status(thm)],[c_0_32,c_0_31])).

cnf(c_0_41,negated_conjecture,
    ( k2_relset_1(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),esk3_0,esk4_0) != k2_enumset1(k1_funct_1(esk4_0,esk2_0),k1_funct_1(esk4_0,esk2_0),k1_funct_1(esk4_0,esk2_0),k1_funct_1(esk4_0,esk2_0)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_33,c_0_24]),c_0_24]),c_0_25]),c_0_25]),c_0_26]),c_0_26])).

cnf(c_0_42,negated_conjecture,
    ( k2_relset_1(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),esk3_0,esk4_0) = k2_relat_1(esk4_0) ),
    inference(spm,[status(thm)],[c_0_34,c_0_31])).

cnf(c_0_43,plain,
    ( k2_relat_1(X1) = k1_tarski(k1_funct_1(X1,X2))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | k1_relat_1(X1) != k1_tarski(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

fof(c_0_44,plain,(
    ! [X40,X41,X42,X43] :
      ( ~ v1_funct_1(X43)
      | ~ v1_funct_2(X43,X40,X41)
      | ~ m1_subset_1(X43,k1_zfmisc_1(k2_zfmisc_1(X40,X41)))
      | ~ r2_hidden(X42,X40)
      | X41 = k1_xboole_0
      | r2_hidden(k1_funct_1(X43,X42),k2_relset_1(X40,X41,X43)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t6_funct_2])])).

cnf(c_0_45,negated_conjecture,
    ( v1_funct_2(esk4_0,k1_tarski(esk2_0),esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_46,plain,
    ( X1 = k1_xboole_0
    | X1 = k1_tarski(X2)
    | X1 = k1_tarski(X3)
    | X1 = k1_tarski(X4)
    | X1 = k2_tarski(X2,X3)
    | X1 = k2_tarski(X3,X4)
    | X1 = k2_tarski(X2,X4)
    | X1 = k1_enumset1(X2,X3,X4)
    | ~ r1_tarski(X1,k1_enumset1(X2,X3,X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

cnf(c_0_47,plain,
    ( r1_tarski(k1_relat_1(k7_relat_1(X1,X2)),X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_48,negated_conjecture,
    ( k7_relat_1(esk4_0,k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0)) = esk4_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38,c_0_39]),c_0_40])])).

cnf(c_0_49,negated_conjecture,
    ( k2_enumset1(k1_funct_1(esk4_0,esk2_0),k1_funct_1(esk4_0,esk2_0),k1_funct_1(esk4_0,esk2_0),k1_funct_1(esk4_0,esk2_0)) != k2_relat_1(esk4_0) ),
    inference(rw,[status(thm)],[c_0_41,c_0_42])).

cnf(c_0_50,plain,
    ( k2_relat_1(X1) = k2_enumset1(k1_funct_1(X1,X2),k1_funct_1(X1,X2),k1_funct_1(X1,X2),k1_funct_1(X1,X2))
    | k1_relat_1(X1) != k2_enumset1(X2,X2,X2,X2)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_43,c_0_24]),c_0_24]),c_0_25]),c_0_25]),c_0_26]),c_0_26])).

cnf(c_0_51,negated_conjecture,
    ( v1_funct_1(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

fof(c_0_52,plain,(
    ! [X24,X25] :
      ( ~ r2_hidden(X24,X25)
      | ~ r1_tarski(X25,X24) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t7_ordinal1])])).

cnf(c_0_53,plain,
    ( X3 = k1_xboole_0
    | r2_hidden(k1_funct_1(X1,X4),k2_relset_1(X2,X3,X1))
    | ~ v1_funct_1(X1)
    | ~ v1_funct_2(X1,X2,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ r2_hidden(X4,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_44])).

cnf(c_0_54,negated_conjecture,
    ( v1_funct_2(esk4_0,k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),esk3_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_45,c_0_24]),c_0_25]),c_0_26])).

cnf(c_0_55,negated_conjecture,
    ( esk3_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

fof(c_0_56,plain,(
    ! [X19] :
      ( ( k1_relat_1(X19) != k1_xboole_0
        | X19 = k1_xboole_0
        | ~ v1_relat_1(X19) )
      & ( k2_relat_1(X19) != k1_xboole_0
        | X19 = k1_xboole_0
        | ~ v1_relat_1(X19) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t64_relat_1])])])).

cnf(c_0_57,plain,
    ( X1 = k1_xboole_0
    | X1 = k2_enumset1(X4,X4,X4,X4)
    | X1 = k2_enumset1(X3,X3,X3,X4)
    | X1 = k2_enumset1(X3,X3,X3,X3)
    | X1 = k2_enumset1(X2,X2,X3,X4)
    | X1 = k2_enumset1(X2,X2,X2,X4)
    | X1 = k2_enumset1(X2,X2,X2,X3)
    | X1 = k2_enumset1(X2,X2,X2,X2)
    | ~ r1_tarski(X1,k2_enumset1(X2,X2,X3,X4)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_46,c_0_24]),c_0_24]),c_0_24]),c_0_25]),c_0_25]),c_0_25]),c_0_25]),c_0_25]),c_0_25]),c_0_26]),c_0_26]),c_0_26]),c_0_26]),c_0_26]),c_0_26]),c_0_26]),c_0_26])).

cnf(c_0_58,negated_conjecture,
    ( r1_tarski(k1_relat_1(esk4_0),k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47,c_0_48]),c_0_40])])).

cnf(c_0_59,negated_conjecture,
    ( k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0) != k1_relat_1(esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49,c_0_50]),c_0_51]),c_0_40])])).

cnf(c_0_60,plain,
    ( ~ r2_hidden(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_52])).

cnf(c_0_61,negated_conjecture,
    ( r2_hidden(k1_funct_1(esk4_0,X1),k2_relat_1(esk4_0))
    | ~ r2_hidden(X1,k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53,c_0_42]),c_0_54]),c_0_31]),c_0_51])]),c_0_55])).

cnf(c_0_62,plain,
    ( X1 = k1_xboole_0
    | k1_relat_1(X1) != k1_xboole_0
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_56])).

cnf(c_0_63,negated_conjecture,
    ( k1_relat_1(esk4_0) = k1_xboole_0 ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_57,c_0_58]),c_0_59])).

fof(c_0_64,plain,(
    ! [X6] : r1_tarski(k1_xboole_0,X6) ),
    inference(variable_rename,[status(thm)],[t2_xboole_1])).

cnf(c_0_65,negated_conjecture,
    ( ~ r2_hidden(X1,k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0))
    | ~ r1_tarski(k2_relat_1(esk4_0),k1_funct_1(esk4_0,X1)) ),
    inference(spm,[status(thm)],[c_0_60,c_0_61])).

cnf(c_0_66,negated_conjecture,
    ( esk4_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_62,c_0_63]),c_0_40])])).

cnf(c_0_67,plain,
    ( k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[t60_relat_1])).

cnf(c_0_68,plain,
    ( r1_tarski(k1_xboole_0,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_64])).

fof(c_0_69,plain,(
    ! [X35,X37,X38,X39] :
      ( ( r2_hidden(esk1_1(X35),X35)
        | X35 = k1_xboole_0 )
      & ( ~ r2_hidden(X37,X35)
        | esk1_1(X35) != k3_mcart_1(X37,X38,X39)
        | X35 = k1_xboole_0 )
      & ( ~ r2_hidden(X38,X35)
        | esk1_1(X35) != k3_mcart_1(X37,X38,X39)
        | X35 = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[t29_mcart_1])])])])])])).

cnf(c_0_70,negated_conjecture,
    ( ~ r2_hidden(X1,k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_65,c_0_66]),c_0_67]),c_0_66]),c_0_68])])).

cnf(c_0_71,plain,
    ( r2_hidden(esk1_1(X1),X1)
    | X1 = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_69])).

cnf(c_0_72,negated_conjecture,
    ( k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0) != k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_59,c_0_63])).

cnf(c_0_73,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_70,c_0_71]),c_0_72]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.31  % Computer   : n003.cluster.edu
% 0.13/0.31  % Model      : x86_64 x86_64
% 0.13/0.31  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.31  % Memory     : 8042.1875MB
% 0.13/0.31  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.31  % CPULimit   : 60
% 0.13/0.31  % WCLimit    : 600
% 0.13/0.31  % DateTime   : Tue Dec  1 18:00:27 EST 2020
% 0.13/0.31  % CPUTime    : 
% 0.17/0.31  # Version: 2.5pre002
% 0.17/0.31  # No SInE strategy applied
% 0.17/0.31  # Trying AutoSched0 for 299 seconds
% 0.17/0.35  # AutoSched0-Mode selected heuristic G_E___300_C18_F1_SE_CS_SP_S0Y
% 0.17/0.35  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.17/0.35  #
% 0.17/0.35  # Preprocessing time       : 0.028 s
% 0.17/0.35  
% 0.17/0.35  # Proof found!
% 0.17/0.35  # SZS status Theorem
% 0.17/0.35  # SZS output start CNFRefutation
% 0.17/0.35  fof(t62_funct_2, conjecture, ![X1, X2, X3]:(((v1_funct_1(X3)&v1_funct_2(X3,k1_tarski(X1),X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X1),X2))))=>(X2!=k1_xboole_0=>k2_relset_1(k1_tarski(X1),X2,X3)=k1_tarski(k1_funct_1(X3,X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t62_funct_2)).
% 0.17/0.35  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t69_enumset1)).
% 0.17/0.35  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t70_enumset1)).
% 0.17/0.35  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t71_enumset1)).
% 0.17/0.35  fof(cc2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(v4_relat_1(X3,X1)&v5_relat_1(X3,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc2_relset_1)).
% 0.17/0.35  fof(cc1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>v1_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc1_relset_1)).
% 0.17/0.35  fof(redefinition_k2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k2_relset_1(X1,X2,X3)=k2_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k2_relset_1)).
% 0.17/0.35  fof(t209_relat_1, axiom, ![X1, X2]:((v1_relat_1(X2)&v4_relat_1(X2,X1))=>X2=k7_relat_1(X2,X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t209_relat_1)).
% 0.17/0.35  fof(t14_funct_1, axiom, ![X1, X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(k1_relat_1(X2)=k1_tarski(X1)=>k2_relat_1(X2)=k1_tarski(k1_funct_1(X2,X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t14_funct_1)).
% 0.17/0.35  fof(t142_zfmisc_1, axiom, ![X1, X2, X3, X4]:(r1_tarski(X4,k1_enumset1(X1,X2,X3))<=>~((((((((X4!=k1_xboole_0&X4!=k1_tarski(X1))&X4!=k1_tarski(X2))&X4!=k1_tarski(X3))&X4!=k2_tarski(X1,X2))&X4!=k2_tarski(X2,X3))&X4!=k2_tarski(X1,X3))&X4!=k1_enumset1(X1,X2,X3)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t142_zfmisc_1)).
% 0.17/0.35  fof(t87_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>r1_tarski(k1_relat_1(k7_relat_1(X2,X1)),X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t87_relat_1)).
% 0.17/0.35  fof(t6_funct_2, axiom, ![X1, X2, X3, X4]:(((v1_funct_1(X4)&v1_funct_2(X4,X1,X2))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>(r2_hidden(X3,X1)=>(X2=k1_xboole_0|r2_hidden(k1_funct_1(X4,X3),k2_relset_1(X1,X2,X4))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t6_funct_2)).
% 0.17/0.35  fof(t7_ordinal1, axiom, ![X1, X2]:~((r2_hidden(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t7_ordinal1)).
% 0.17/0.35  fof(t64_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>((k1_relat_1(X1)=k1_xboole_0|k2_relat_1(X1)=k1_xboole_0)=>X1=k1_xboole_0)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t64_relat_1)).
% 0.17/0.35  fof(t2_xboole_1, axiom, ![X1]:r1_tarski(k1_xboole_0,X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t2_xboole_1)).
% 0.17/0.35  fof(t60_relat_1, axiom, (k1_relat_1(k1_xboole_0)=k1_xboole_0&k2_relat_1(k1_xboole_0)=k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t60_relat_1)).
% 0.17/0.35  fof(t29_mcart_1, axiom, ![X1]:~((X1!=k1_xboole_0&![X2]:~((r2_hidden(X2,X1)&![X3, X4, X5]:~(((r2_hidden(X3,X1)|r2_hidden(X4,X1))&X2=k3_mcart_1(X3,X4,X5))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t29_mcart_1)).
% 0.17/0.35  fof(c_0_17, negated_conjecture, ~(![X1, X2, X3]:(((v1_funct_1(X3)&v1_funct_2(X3,k1_tarski(X1),X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X1),X2))))=>(X2!=k1_xboole_0=>k2_relset_1(k1_tarski(X1),X2,X3)=k1_tarski(k1_funct_1(X3,X1))))), inference(assume_negation,[status(cth)],[t62_funct_2])).
% 0.17/0.35  fof(c_0_18, negated_conjecture, (((v1_funct_1(esk4_0)&v1_funct_2(esk4_0,k1_tarski(esk2_0),esk3_0))&m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(esk2_0),esk3_0))))&(esk3_0!=k1_xboole_0&k2_relset_1(k1_tarski(esk2_0),esk3_0,esk4_0)!=k1_tarski(k1_funct_1(esk4_0,esk2_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_17])])])).
% 0.17/0.35  fof(c_0_19, plain, ![X7]:k2_tarski(X7,X7)=k1_tarski(X7), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.17/0.35  fof(c_0_20, plain, ![X8, X9]:k1_enumset1(X8,X8,X9)=k2_tarski(X8,X9), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.17/0.35  fof(c_0_21, plain, ![X10, X11, X12]:k2_enumset1(X10,X10,X11,X12)=k1_enumset1(X10,X11,X12), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.17/0.35  fof(c_0_22, plain, ![X29, X30, X31]:((v4_relat_1(X31,X29)|~m1_subset_1(X31,k1_zfmisc_1(k2_zfmisc_1(X29,X30))))&(v5_relat_1(X31,X30)|~m1_subset_1(X31,k1_zfmisc_1(k2_zfmisc_1(X29,X30))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).
% 0.17/0.35  cnf(c_0_23, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(esk2_0),esk3_0)))), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.17/0.35  cnf(c_0_24, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.17/0.35  cnf(c_0_25, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.17/0.35  cnf(c_0_26, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.17/0.35  fof(c_0_27, plain, ![X26, X27, X28]:(~m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27)))|v1_relat_1(X28)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).
% 0.17/0.35  fof(c_0_28, plain, ![X32, X33, X34]:(~m1_subset_1(X34,k1_zfmisc_1(k2_zfmisc_1(X32,X33)))|k2_relset_1(X32,X33,X34)=k2_relat_1(X34)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_relset_1])])).
% 0.17/0.35  fof(c_0_29, plain, ![X17, X18]:(~v1_relat_1(X18)|~v4_relat_1(X18,X17)|X18=k7_relat_1(X18,X17)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t209_relat_1])])).
% 0.17/0.35  cnf(c_0_30, plain, (v4_relat_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.17/0.35  cnf(c_0_31, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),esk3_0)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_23, c_0_24]), c_0_25]), c_0_26])).
% 0.17/0.35  cnf(c_0_32, plain, (v1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.17/0.35  cnf(c_0_33, negated_conjecture, (k2_relset_1(k1_tarski(esk2_0),esk3_0,esk4_0)!=k1_tarski(k1_funct_1(esk4_0,esk2_0))), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.17/0.35  cnf(c_0_34, plain, (k2_relset_1(X2,X3,X1)=k2_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.17/0.35  fof(c_0_35, plain, ![X22, X23]:(~v1_relat_1(X23)|~v1_funct_1(X23)|(k1_relat_1(X23)!=k1_tarski(X22)|k2_relat_1(X23)=k1_tarski(k1_funct_1(X23,X22)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t14_funct_1])])).
% 0.17/0.35  fof(c_0_36, plain, ![X13, X14, X15, X16]:((~r1_tarski(X16,k1_enumset1(X13,X14,X15))|(X16=k1_xboole_0|X16=k1_tarski(X13)|X16=k1_tarski(X14)|X16=k1_tarski(X15)|X16=k2_tarski(X13,X14)|X16=k2_tarski(X14,X15)|X16=k2_tarski(X13,X15)|X16=k1_enumset1(X13,X14,X15)))&((((((((X16!=k1_xboole_0|r1_tarski(X16,k1_enumset1(X13,X14,X15)))&(X16!=k1_tarski(X13)|r1_tarski(X16,k1_enumset1(X13,X14,X15))))&(X16!=k1_tarski(X14)|r1_tarski(X16,k1_enumset1(X13,X14,X15))))&(X16!=k1_tarski(X15)|r1_tarski(X16,k1_enumset1(X13,X14,X15))))&(X16!=k2_tarski(X13,X14)|r1_tarski(X16,k1_enumset1(X13,X14,X15))))&(X16!=k2_tarski(X14,X15)|r1_tarski(X16,k1_enumset1(X13,X14,X15))))&(X16!=k2_tarski(X13,X15)|r1_tarski(X16,k1_enumset1(X13,X14,X15))))&(X16!=k1_enumset1(X13,X14,X15)|r1_tarski(X16,k1_enumset1(X13,X14,X15))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t142_zfmisc_1])])])).
% 0.17/0.35  fof(c_0_37, plain, ![X20, X21]:(~v1_relat_1(X21)|r1_tarski(k1_relat_1(k7_relat_1(X21,X20)),X20)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t87_relat_1])])).
% 0.17/0.35  cnf(c_0_38, plain, (X1=k7_relat_1(X1,X2)|~v1_relat_1(X1)|~v4_relat_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.17/0.35  cnf(c_0_39, negated_conjecture, (v4_relat_1(esk4_0,k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0))), inference(spm,[status(thm)],[c_0_30, c_0_31])).
% 0.17/0.35  cnf(c_0_40, negated_conjecture, (v1_relat_1(esk4_0)), inference(spm,[status(thm)],[c_0_32, c_0_31])).
% 0.17/0.35  cnf(c_0_41, negated_conjecture, (k2_relset_1(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),esk3_0,esk4_0)!=k2_enumset1(k1_funct_1(esk4_0,esk2_0),k1_funct_1(esk4_0,esk2_0),k1_funct_1(esk4_0,esk2_0),k1_funct_1(esk4_0,esk2_0))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_33, c_0_24]), c_0_24]), c_0_25]), c_0_25]), c_0_26]), c_0_26])).
% 0.17/0.35  cnf(c_0_42, negated_conjecture, (k2_relset_1(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),esk3_0,esk4_0)=k2_relat_1(esk4_0)), inference(spm,[status(thm)],[c_0_34, c_0_31])).
% 0.17/0.35  cnf(c_0_43, plain, (k2_relat_1(X1)=k1_tarski(k1_funct_1(X1,X2))|~v1_relat_1(X1)|~v1_funct_1(X1)|k1_relat_1(X1)!=k1_tarski(X2)), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.17/0.35  fof(c_0_44, plain, ![X40, X41, X42, X43]:(~v1_funct_1(X43)|~v1_funct_2(X43,X40,X41)|~m1_subset_1(X43,k1_zfmisc_1(k2_zfmisc_1(X40,X41)))|(~r2_hidden(X42,X40)|(X41=k1_xboole_0|r2_hidden(k1_funct_1(X43,X42),k2_relset_1(X40,X41,X43))))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t6_funct_2])])).
% 0.17/0.35  cnf(c_0_45, negated_conjecture, (v1_funct_2(esk4_0,k1_tarski(esk2_0),esk3_0)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.17/0.35  cnf(c_0_46, plain, (X1=k1_xboole_0|X1=k1_tarski(X2)|X1=k1_tarski(X3)|X1=k1_tarski(X4)|X1=k2_tarski(X2,X3)|X1=k2_tarski(X3,X4)|X1=k2_tarski(X2,X4)|X1=k1_enumset1(X2,X3,X4)|~r1_tarski(X1,k1_enumset1(X2,X3,X4))), inference(split_conjunct,[status(thm)],[c_0_36])).
% 0.17/0.35  cnf(c_0_47, plain, (r1_tarski(k1_relat_1(k7_relat_1(X1,X2)),X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_37])).
% 0.17/0.35  cnf(c_0_48, negated_conjecture, (k7_relat_1(esk4_0,k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0))=esk4_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38, c_0_39]), c_0_40])])).
% 0.17/0.35  cnf(c_0_49, negated_conjecture, (k2_enumset1(k1_funct_1(esk4_0,esk2_0),k1_funct_1(esk4_0,esk2_0),k1_funct_1(esk4_0,esk2_0),k1_funct_1(esk4_0,esk2_0))!=k2_relat_1(esk4_0)), inference(rw,[status(thm)],[c_0_41, c_0_42])).
% 0.17/0.35  cnf(c_0_50, plain, (k2_relat_1(X1)=k2_enumset1(k1_funct_1(X1,X2),k1_funct_1(X1,X2),k1_funct_1(X1,X2),k1_funct_1(X1,X2))|k1_relat_1(X1)!=k2_enumset1(X2,X2,X2,X2)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_43, c_0_24]), c_0_24]), c_0_25]), c_0_25]), c_0_26]), c_0_26])).
% 0.17/0.35  cnf(c_0_51, negated_conjecture, (v1_funct_1(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.17/0.35  fof(c_0_52, plain, ![X24, X25]:(~r2_hidden(X24,X25)|~r1_tarski(X25,X24)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t7_ordinal1])])).
% 0.17/0.35  cnf(c_0_53, plain, (X3=k1_xboole_0|r2_hidden(k1_funct_1(X1,X4),k2_relset_1(X2,X3,X1))|~v1_funct_1(X1)|~v1_funct_2(X1,X2,X3)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~r2_hidden(X4,X2)), inference(split_conjunct,[status(thm)],[c_0_44])).
% 0.17/0.35  cnf(c_0_54, negated_conjecture, (v1_funct_2(esk4_0,k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),esk3_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_45, c_0_24]), c_0_25]), c_0_26])).
% 0.17/0.35  cnf(c_0_55, negated_conjecture, (esk3_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.17/0.35  fof(c_0_56, plain, ![X19]:((k1_relat_1(X19)!=k1_xboole_0|X19=k1_xboole_0|~v1_relat_1(X19))&(k2_relat_1(X19)!=k1_xboole_0|X19=k1_xboole_0|~v1_relat_1(X19))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t64_relat_1])])])).
% 0.17/0.35  cnf(c_0_57, plain, (X1=k1_xboole_0|X1=k2_enumset1(X4,X4,X4,X4)|X1=k2_enumset1(X3,X3,X3,X4)|X1=k2_enumset1(X3,X3,X3,X3)|X1=k2_enumset1(X2,X2,X3,X4)|X1=k2_enumset1(X2,X2,X2,X4)|X1=k2_enumset1(X2,X2,X2,X3)|X1=k2_enumset1(X2,X2,X2,X2)|~r1_tarski(X1,k2_enumset1(X2,X2,X3,X4))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_46, c_0_24]), c_0_24]), c_0_24]), c_0_25]), c_0_25]), c_0_25]), c_0_25]), c_0_25]), c_0_25]), c_0_26]), c_0_26]), c_0_26]), c_0_26]), c_0_26]), c_0_26]), c_0_26]), c_0_26])).
% 0.17/0.35  cnf(c_0_58, negated_conjecture, (r1_tarski(k1_relat_1(esk4_0),k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47, c_0_48]), c_0_40])])).
% 0.17/0.35  cnf(c_0_59, negated_conjecture, (k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0)!=k1_relat_1(esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49, c_0_50]), c_0_51]), c_0_40])])).
% 0.17/0.35  cnf(c_0_60, plain, (~r2_hidden(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_52])).
% 0.17/0.35  cnf(c_0_61, negated_conjecture, (r2_hidden(k1_funct_1(esk4_0,X1),k2_relat_1(esk4_0))|~r2_hidden(X1,k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53, c_0_42]), c_0_54]), c_0_31]), c_0_51])]), c_0_55])).
% 0.17/0.35  cnf(c_0_62, plain, (X1=k1_xboole_0|k1_relat_1(X1)!=k1_xboole_0|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_56])).
% 0.17/0.35  cnf(c_0_63, negated_conjecture, (k1_relat_1(esk4_0)=k1_xboole_0), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_57, c_0_58]), c_0_59])).
% 0.17/0.35  fof(c_0_64, plain, ![X6]:r1_tarski(k1_xboole_0,X6), inference(variable_rename,[status(thm)],[t2_xboole_1])).
% 0.17/0.35  cnf(c_0_65, negated_conjecture, (~r2_hidden(X1,k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0))|~r1_tarski(k2_relat_1(esk4_0),k1_funct_1(esk4_0,X1))), inference(spm,[status(thm)],[c_0_60, c_0_61])).
% 0.17/0.35  cnf(c_0_66, negated_conjecture, (esk4_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_62, c_0_63]), c_0_40])])).
% 0.17/0.35  cnf(c_0_67, plain, (k2_relat_1(k1_xboole_0)=k1_xboole_0), inference(split_conjunct,[status(thm)],[t60_relat_1])).
% 0.17/0.35  cnf(c_0_68, plain, (r1_tarski(k1_xboole_0,X1)), inference(split_conjunct,[status(thm)],[c_0_64])).
% 0.17/0.35  fof(c_0_69, plain, ![X35, X37, X38, X39]:((r2_hidden(esk1_1(X35),X35)|X35=k1_xboole_0)&((~r2_hidden(X37,X35)|esk1_1(X35)!=k3_mcart_1(X37,X38,X39)|X35=k1_xboole_0)&(~r2_hidden(X38,X35)|esk1_1(X35)!=k3_mcart_1(X37,X38,X39)|X35=k1_xboole_0))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[t29_mcart_1])])])])])])).
% 0.17/0.35  cnf(c_0_70, negated_conjecture, (~r2_hidden(X1,k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_65, c_0_66]), c_0_67]), c_0_66]), c_0_68])])).
% 0.17/0.35  cnf(c_0_71, plain, (r2_hidden(esk1_1(X1),X1)|X1=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_69])).
% 0.17/0.35  cnf(c_0_72, negated_conjecture, (k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0)!=k1_xboole_0), inference(rw,[status(thm)],[c_0_59, c_0_63])).
% 0.17/0.35  cnf(c_0_73, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_70, c_0_71]), c_0_72]), ['proof']).
% 0.17/0.35  # SZS output end CNFRefutation
% 0.17/0.35  # Proof object total steps             : 74
% 0.17/0.35  # Proof object clause steps            : 40
% 0.17/0.35  # Proof object formula steps           : 34
% 0.17/0.35  # Proof object conjectures             : 25
% 0.17/0.35  # Proof object clause conjectures      : 22
% 0.17/0.35  # Proof object formula conjectures     : 3
% 0.17/0.35  # Proof object initial clauses used    : 21
% 0.17/0.35  # Proof object initial formulas used   : 17
% 0.17/0.35  # Proof object generating inferences   : 11
% 0.17/0.35  # Proof object simplifying inferences  : 58
% 0.17/0.35  # Training examples: 0 positive, 0 negative
% 0.17/0.35  # Parsed axioms                        : 17
% 0.17/0.35  # Removed by relevancy pruning/SinE    : 0
% 0.17/0.35  # Initial clauses                      : 34
% 0.17/0.35  # Removed in clause preprocessing      : 3
% 0.17/0.35  # Initial clauses in saturation        : 31
% 0.17/0.35  # Processed clauses                    : 72
% 0.17/0.35  # ...of these trivial                  : 0
% 0.17/0.35  # ...subsumed                          : 5
% 0.17/0.35  # ...remaining for further processing  : 67
% 0.17/0.35  # Other redundant clauses eliminated   : 8
% 0.17/0.35  # Clauses deleted for lack of memory   : 0
% 0.17/0.35  # Backward-subsumed                    : 0
% 0.17/0.35  # Backward-rewritten                   : 15
% 0.17/0.35  # Generated clauses                    : 49
% 0.17/0.35  # ...of the previous two non-trivial   : 60
% 0.17/0.35  # Contextual simplify-reflections      : 0
% 0.17/0.35  # Paramodulations                      : 41
% 0.17/0.35  # Factorizations                       : 0
% 0.17/0.35  # Equation resolutions                 : 8
% 0.17/0.35  # Propositional unsat checks           : 0
% 0.17/0.35  #    Propositional check models        : 0
% 0.17/0.35  #    Propositional check unsatisfiable : 0
% 0.17/0.35  #    Propositional clauses             : 0
% 0.17/0.35  #    Propositional clauses after purity: 0
% 0.17/0.35  #    Propositional unsat core size     : 0
% 0.17/0.35  #    Propositional preprocessing time  : 0.000
% 0.17/0.35  #    Propositional encoding time       : 0.000
% 0.17/0.35  #    Propositional solver time         : 0.000
% 0.17/0.35  #    Success case prop preproc time    : 0.000
% 0.17/0.35  #    Success case prop encoding time   : 0.000
% 0.17/0.35  #    Success case prop solver time     : 0.000
% 0.17/0.35  # Current number of processed clauses  : 44
% 0.17/0.35  #    Positive orientable unit clauses  : 15
% 0.17/0.35  #    Positive unorientable unit clauses: 0
% 0.17/0.35  #    Negative unit clauses             : 4
% 0.17/0.35  #    Non-unit-clauses                  : 25
% 0.17/0.35  # Current number of unprocessed clauses: 19
% 0.17/0.35  # ...number of literals in the above   : 88
% 0.17/0.35  # Current number of archived formulas  : 0
% 0.17/0.35  # Current number of archived clauses   : 18
% 0.17/0.35  # Clause-clause subsumption calls (NU) : 238
% 0.17/0.35  # Rec. Clause-clause subsumption calls : 96
% 0.17/0.35  # Non-unit clause-clause subsumptions  : 4
% 0.17/0.35  # Unit Clause-clause subsumption calls : 8
% 0.17/0.35  # Rewrite failures with RHS unbound    : 0
% 0.17/0.35  # BW rewrite match attempts            : 24
% 0.17/0.35  # BW rewrite match successes           : 3
% 0.17/0.35  # Condensation attempts                : 0
% 0.17/0.35  # Condensation successes               : 0
% 0.17/0.35  # Termbank termtop insertions          : 3223
% 0.17/0.35  
% 0.17/0.35  # -------------------------------------------------
% 0.17/0.35  # User time                : 0.035 s
% 0.17/0.35  # System time              : 0.001 s
% 0.17/0.35  # Total time               : 0.036 s
% 0.17/0.35  # Maximum resident set size: 1596 pages
%------------------------------------------------------------------------------
