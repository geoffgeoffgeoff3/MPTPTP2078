%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n020.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:04:52 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   75 ( 347 expanded)
%              Number of clauses        :   43 ( 140 expanded)
%              Number of leaves         :   16 (  98 expanded)
%              Depth                    :   14
%              Number of atoms          :  181 ( 652 expanded)
%              Number of equality atoms :   72 ( 297 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal clause size      :   13 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t64_funct_2,conjecture,(
    ! [X1,X2,X3,X4] :
      ( ( v1_funct_1(X4)
        & v1_funct_2(X4,k1_tarski(X1),X2)
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X1),X2))) )
     => ( X2 != k1_xboole_0
       => r1_tarski(k7_relset_1(k1_tarski(X1),X2,X4,X3),k1_tarski(k1_funct_1(X4,X1))) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t64_funct_2)).

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

fof(l45_zfmisc_1,axiom,(
    ! [X1,X2,X3] :
      ( r1_tarski(X1,k2_tarski(X2,X3))
    <=> ~ ( X1 != k1_xboole_0
          & X1 != k1_tarski(X2)
          & X1 != k1_tarski(X3)
          & X1 != k2_tarski(X2,X3) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l45_zfmisc_1)).

fof(d18_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( v4_relat_1(X2,X1)
      <=> r1_tarski(k1_relat_1(X2),X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d18_relat_1)).

fof(t4_subset_1,axiom,(
    ! [X1] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t4_subset_1)).

fof(redefinition_k7_relset_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k7_relset_1(X1,X2,X3,X4) = k9_relat_1(X3,X4) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k7_relset_1)).

fof(t144_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => r1_tarski(k9_relat_1(X2,X1),k2_relat_1(X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t144_relat_1)).

fof(t3_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X2))
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_subset)).

fof(t64_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ( ( k1_relat_1(X1) = k1_xboole_0
          | k2_relat_1(X1) = k1_xboole_0 )
       => X1 = k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t64_relat_1)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d10_xboole_0)).

fof(t60_relat_1,axiom,
    ( k1_relat_1(k1_xboole_0) = k1_xboole_0
    & k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t60_relat_1)).

fof(t14_funct_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v1_funct_1(X2) )
     => ( k1_relat_1(X2) = k1_tarski(X1)
       => k2_relat_1(X2) = k1_tarski(k1_funct_1(X2,X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t14_funct_1)).

fof(c_0_16,negated_conjecture,(
    ~ ! [X1,X2,X3,X4] :
        ( ( v1_funct_1(X4)
          & v1_funct_2(X4,k1_tarski(X1),X2)
          & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X1),X2))) )
       => ( X2 != k1_xboole_0
         => r1_tarski(k7_relset_1(k1_tarski(X1),X2,X4,X3),k1_tarski(k1_funct_1(X4,X1))) ) ) ),
    inference(assume_negation,[status(cth)],[t64_funct_2])).

fof(c_0_17,negated_conjecture,
    ( v1_funct_1(esk4_0)
    & v1_funct_2(esk4_0,k1_tarski(esk1_0),esk2_0)
    & m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(esk1_0),esk2_0)))
    & esk2_0 != k1_xboole_0
    & ~ r1_tarski(k7_relset_1(k1_tarski(esk1_0),esk2_0,esk4_0,esk3_0),k1_tarski(k1_funct_1(esk4_0,esk1_0))) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_16])])])).

fof(c_0_18,plain,(
    ! [X7] : k2_tarski(X7,X7) = k1_tarski(X7) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_19,plain,(
    ! [X8,X9] : k1_enumset1(X8,X8,X9) = k2_tarski(X8,X9) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_20,plain,(
    ! [X10,X11,X12] : k2_enumset1(X10,X10,X11,X12) = k1_enumset1(X10,X11,X12) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_21,plain,(
    ! [X32,X33,X34] :
      ( ( v4_relat_1(X34,X32)
        | ~ m1_subset_1(X34,k1_zfmisc_1(k2_zfmisc_1(X32,X33))) )
      & ( v5_relat_1(X34,X33)
        | ~ m1_subset_1(X34,k1_zfmisc_1(k2_zfmisc_1(X32,X33))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).

cnf(c_0_22,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(esk1_0),esk2_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_23,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_24,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_25,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

fof(c_0_26,plain,(
    ! [X29,X30,X31] :
      ( ~ m1_subset_1(X31,k1_zfmisc_1(k2_zfmisc_1(X29,X30)))
      | v1_relat_1(X31) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).

fof(c_0_27,plain,(
    ! [X13,X14,X15] :
      ( ( ~ r1_tarski(X13,k2_tarski(X14,X15))
        | X13 = k1_xboole_0
        | X13 = k1_tarski(X14)
        | X13 = k1_tarski(X15)
        | X13 = k2_tarski(X14,X15) )
      & ( X13 != k1_xboole_0
        | r1_tarski(X13,k2_tarski(X14,X15)) )
      & ( X13 != k1_tarski(X14)
        | r1_tarski(X13,k2_tarski(X14,X15)) )
      & ( X13 != k1_tarski(X15)
        | r1_tarski(X13,k2_tarski(X14,X15)) )
      & ( X13 != k2_tarski(X14,X15)
        | r1_tarski(X13,k2_tarski(X14,X15)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l45_zfmisc_1])])])).

fof(c_0_28,plain,(
    ! [X22,X23] :
      ( ( ~ v4_relat_1(X23,X22)
        | r1_tarski(k1_relat_1(X23),X22)
        | ~ v1_relat_1(X23) )
      & ( ~ r1_tarski(k1_relat_1(X23),X22)
        | v4_relat_1(X23,X22)
        | ~ v1_relat_1(X23) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d18_relat_1])])])).

cnf(c_0_29,plain,
    ( v4_relat_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_30,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0),esk2_0))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_22,c_0_23]),c_0_24]),c_0_25])).

cnf(c_0_31,plain,
    ( v1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_32,plain,
    ( r1_tarski(X1,k2_tarski(X2,X3))
    | X1 != k1_tarski(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_33,plain,
    ( X1 = k1_xboole_0
    | X1 = k1_tarski(X2)
    | X1 = k1_tarski(X3)
    | X1 = k2_tarski(X2,X3)
    | ~ r1_tarski(X1,k2_tarski(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_34,plain,
    ( r1_tarski(k1_relat_1(X1),X2)
    | ~ v4_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_35,negated_conjecture,
    ( v4_relat_1(esk4_0,k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0)) ),
    inference(spm,[status(thm)],[c_0_29,c_0_30])).

cnf(c_0_36,negated_conjecture,
    ( v1_relat_1(esk4_0) ),
    inference(spm,[status(thm)],[c_0_31,c_0_30])).

fof(c_0_37,plain,(
    ! [X16] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X16)) ),
    inference(variable_rename,[status(thm)],[t4_subset_1])).

fof(c_0_38,plain,(
    ! [X35,X36,X37,X38] :
      ( ~ m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X35,X36)))
      | k7_relset_1(X35,X36,X37,X38) = k9_relat_1(X37,X38) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k7_relset_1])])).

cnf(c_0_39,plain,
    ( r1_tarski(X1,k2_enumset1(X2,X2,X2,X3))
    | X1 != k2_enumset1(X2,X2,X2,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_32,c_0_23]),c_0_24]),c_0_24]),c_0_25]),c_0_25])).

cnf(c_0_40,plain,
    ( X1 = k1_xboole_0
    | X1 = k2_enumset1(X3,X3,X3,X3)
    | X1 = k2_enumset1(X2,X2,X2,X3)
    | X1 = k2_enumset1(X2,X2,X2,X2)
    | ~ r1_tarski(X1,k2_enumset1(X2,X2,X2,X3)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_33,c_0_23]),c_0_23]),c_0_24]),c_0_24]),c_0_24]),c_0_24]),c_0_25]),c_0_25]),c_0_25]),c_0_25])).

cnf(c_0_41,negated_conjecture,
    ( r1_tarski(k1_relat_1(esk4_0),k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34,c_0_35]),c_0_36])])).

fof(c_0_42,plain,(
    ! [X24,X25] :
      ( ~ v1_relat_1(X25)
      | r1_tarski(k9_relat_1(X25,X24),k2_relat_1(X25)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t144_relat_1])])).

cnf(c_0_43,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

fof(c_0_44,plain,(
    ! [X17,X18] :
      ( ( ~ m1_subset_1(X17,k1_zfmisc_1(X18))
        | r1_tarski(X17,X18) )
      & ( ~ r1_tarski(X17,X18)
        | m1_subset_1(X17,k1_zfmisc_1(X18)) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).

cnf(c_0_45,negated_conjecture,
    ( ~ r1_tarski(k7_relset_1(k1_tarski(esk1_0),esk2_0,esk4_0,esk3_0),k1_tarski(k1_funct_1(esk4_0,esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_46,plain,
    ( k7_relset_1(X2,X3,X1,X4) = k9_relat_1(X1,X4)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_38])).

fof(c_0_47,plain,(
    ! [X26] :
      ( ( k1_relat_1(X26) != k1_xboole_0
        | X26 = k1_xboole_0
        | ~ v1_relat_1(X26) )
      & ( k2_relat_1(X26) != k1_xboole_0
        | X26 = k1_xboole_0
        | ~ v1_relat_1(X26) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t64_relat_1])])])).

cnf(c_0_48,plain,
    ( r1_tarski(k2_enumset1(X1,X1,X1,X1),k2_enumset1(X1,X1,X1,X2)) ),
    inference(er,[status(thm)],[c_0_39])).

cnf(c_0_49,negated_conjecture,
    ( k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0) = k1_relat_1(esk4_0)
    | k1_relat_1(esk4_0) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_40,c_0_41])).

fof(c_0_50,plain,(
    ! [X5,X6] :
      ( ( r1_tarski(X5,X6)
        | X5 != X6 )
      & ( r1_tarski(X6,X5)
        | X5 != X6 )
      & ( ~ r1_tarski(X5,X6)
        | ~ r1_tarski(X6,X5)
        | X5 = X6 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

cnf(c_0_51,plain,
    ( r1_tarski(k9_relat_1(X1,X2),k2_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_42])).

cnf(c_0_52,plain,
    ( v1_relat_1(k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_31,c_0_43])).

cnf(c_0_53,plain,
    ( k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[t60_relat_1])).

cnf(c_0_54,plain,
    ( r1_tarski(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_44])).

cnf(c_0_55,negated_conjecture,
    ( ~ r1_tarski(k7_relset_1(k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0),esk2_0,esk4_0,esk3_0),k2_enumset1(k1_funct_1(esk4_0,esk1_0),k1_funct_1(esk4_0,esk1_0),k1_funct_1(esk4_0,esk1_0),k1_funct_1(esk4_0,esk1_0))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_45,c_0_23]),c_0_23]),c_0_24]),c_0_24]),c_0_25]),c_0_25])).

cnf(c_0_56,negated_conjecture,
    ( k7_relset_1(k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0),esk2_0,esk4_0,X1) = k9_relat_1(esk4_0,X1) ),
    inference(spm,[status(thm)],[c_0_46,c_0_30])).

cnf(c_0_57,plain,
    ( X1 = k1_xboole_0
    | k1_relat_1(X1) != k1_xboole_0
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_47])).

cnf(c_0_58,negated_conjecture,
    ( k1_relat_1(esk4_0) = k1_xboole_0
    | r1_tarski(k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0),k1_relat_1(esk4_0)) ),
    inference(spm,[status(thm)],[c_0_48,c_0_49])).

cnf(c_0_59,plain,
    ( X1 = X2
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_50])).

cnf(c_0_60,plain,
    ( r1_tarski(k9_relat_1(k1_xboole_0,X1),k1_xboole_0) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51,c_0_52]),c_0_53])).

cnf(c_0_61,plain,
    ( r1_tarski(k1_xboole_0,X1) ),
    inference(spm,[status(thm)],[c_0_54,c_0_43])).

fof(c_0_62,plain,(
    ! [X27,X28] :
      ( ~ v1_relat_1(X28)
      | ~ v1_funct_1(X28)
      | k1_relat_1(X28) != k1_tarski(X27)
      | k2_relat_1(X28) = k1_tarski(k1_funct_1(X28,X27)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t14_funct_1])])).

cnf(c_0_63,negated_conjecture,
    ( ~ r1_tarski(k9_relat_1(esk4_0,esk3_0),k2_enumset1(k1_funct_1(esk4_0,esk1_0),k1_funct_1(esk4_0,esk1_0),k1_funct_1(esk4_0,esk1_0),k1_funct_1(esk4_0,esk1_0))) ),
    inference(rw,[status(thm)],[c_0_55,c_0_56])).

cnf(c_0_64,negated_conjecture,
    ( esk4_0 = k1_xboole_0
    | r1_tarski(k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0),k1_relat_1(esk4_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57,c_0_58]),c_0_36])])).

cnf(c_0_65,plain,
    ( k9_relat_1(k1_xboole_0,X1) = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_59,c_0_60]),c_0_61])])).

cnf(c_0_66,plain,
    ( k2_relat_1(X1) = k1_tarski(k1_funct_1(X1,X2))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | k1_relat_1(X1) != k1_tarski(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_62])).

cnf(c_0_67,negated_conjecture,
    ( r1_tarski(k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0),k1_relat_1(esk4_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_63,c_0_64]),c_0_65]),c_0_61])])).

cnf(c_0_68,plain,
    ( k2_relat_1(X1) = k2_enumset1(k1_funct_1(X1,X2),k1_funct_1(X1,X2),k1_funct_1(X1,X2),k1_funct_1(X1,X2))
    | k1_relat_1(X1) != k2_enumset1(X2,X2,X2,X2)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_66,c_0_23]),c_0_23]),c_0_24]),c_0_24]),c_0_25]),c_0_25])).

cnf(c_0_69,negated_conjecture,
    ( k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0) = k1_relat_1(esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_59,c_0_67]),c_0_41])])).

cnf(c_0_70,negated_conjecture,
    ( k2_enumset1(k1_funct_1(X1,esk1_0),k1_funct_1(X1,esk1_0),k1_funct_1(X1,esk1_0),k1_funct_1(X1,esk1_0)) = k2_relat_1(X1)
    | k1_relat_1(X1) != k1_relat_1(esk4_0)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_68,c_0_69])).

cnf(c_0_71,negated_conjecture,
    ( v1_funct_1(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_72,negated_conjecture,
    ( k2_enumset1(k1_funct_1(esk4_0,esk1_0),k1_funct_1(esk4_0,esk1_0),k1_funct_1(esk4_0,esk1_0),k1_funct_1(esk4_0,esk1_0)) = k2_relat_1(esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(er,[status(thm)],[c_0_70]),c_0_71]),c_0_36])])).

cnf(c_0_73,negated_conjecture,
    ( r1_tarski(k9_relat_1(esk4_0,X1),k2_relat_1(esk4_0)) ),
    inference(spm,[status(thm)],[c_0_51,c_0_36])).

cnf(c_0_74,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_63,c_0_72]),c_0_73])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n020.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 15:08:07 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.13/0.38  # AutoSched0-Mode selected heuristic G_E___208_C12_02_nc_F1_SE_CS_SP_PS_S002A
% 0.13/0.38  # and selection function SelectNegativeLiterals.
% 0.13/0.38  #
% 0.13/0.38  # Preprocessing time       : 0.028 s
% 0.13/0.38  # Presaturation interreduction done
% 0.13/0.38  
% 0.13/0.38  # Proof found!
% 0.13/0.38  # SZS status Theorem
% 0.13/0.38  # SZS output start CNFRefutation
% 0.13/0.38  fof(t64_funct_2, conjecture, ![X1, X2, X3, X4]:(((v1_funct_1(X4)&v1_funct_2(X4,k1_tarski(X1),X2))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X1),X2))))=>(X2!=k1_xboole_0=>r1_tarski(k7_relset_1(k1_tarski(X1),X2,X4,X3),k1_tarski(k1_funct_1(X4,X1))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t64_funct_2)).
% 0.13/0.38  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t69_enumset1)).
% 0.13/0.38  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t70_enumset1)).
% 0.13/0.38  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t71_enumset1)).
% 0.13/0.38  fof(cc2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(v4_relat_1(X3,X1)&v5_relat_1(X3,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc2_relset_1)).
% 0.13/0.38  fof(cc1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>v1_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc1_relset_1)).
% 0.13/0.38  fof(l45_zfmisc_1, axiom, ![X1, X2, X3]:(r1_tarski(X1,k2_tarski(X2,X3))<=>~((((X1!=k1_xboole_0&X1!=k1_tarski(X2))&X1!=k1_tarski(X3))&X1!=k2_tarski(X2,X3)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l45_zfmisc_1)).
% 0.13/0.38  fof(d18_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(v4_relat_1(X2,X1)<=>r1_tarski(k1_relat_1(X2),X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d18_relat_1)).
% 0.13/0.38  fof(t4_subset_1, axiom, ![X1]:m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t4_subset_1)).
% 0.13/0.38  fof(redefinition_k7_relset_1, axiom, ![X1, X2, X3, X4]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k7_relset_1(X1,X2,X3,X4)=k9_relat_1(X3,X4)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k7_relset_1)).
% 0.13/0.38  fof(t144_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>r1_tarski(k9_relat_1(X2,X1),k2_relat_1(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t144_relat_1)).
% 0.13/0.38  fof(t3_subset, axiom, ![X1, X2]:(m1_subset_1(X1,k1_zfmisc_1(X2))<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t3_subset)).
% 0.13/0.38  fof(t64_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>((k1_relat_1(X1)=k1_xboole_0|k2_relat_1(X1)=k1_xboole_0)=>X1=k1_xboole_0)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t64_relat_1)).
% 0.13/0.38  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.13/0.38  fof(t60_relat_1, axiom, (k1_relat_1(k1_xboole_0)=k1_xboole_0&k2_relat_1(k1_xboole_0)=k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t60_relat_1)).
% 0.13/0.38  fof(t14_funct_1, axiom, ![X1, X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(k1_relat_1(X2)=k1_tarski(X1)=>k2_relat_1(X2)=k1_tarski(k1_funct_1(X2,X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t14_funct_1)).
% 0.13/0.38  fof(c_0_16, negated_conjecture, ~(![X1, X2, X3, X4]:(((v1_funct_1(X4)&v1_funct_2(X4,k1_tarski(X1),X2))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X1),X2))))=>(X2!=k1_xboole_0=>r1_tarski(k7_relset_1(k1_tarski(X1),X2,X4,X3),k1_tarski(k1_funct_1(X4,X1)))))), inference(assume_negation,[status(cth)],[t64_funct_2])).
% 0.13/0.38  fof(c_0_17, negated_conjecture, (((v1_funct_1(esk4_0)&v1_funct_2(esk4_0,k1_tarski(esk1_0),esk2_0))&m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(esk1_0),esk2_0))))&(esk2_0!=k1_xboole_0&~r1_tarski(k7_relset_1(k1_tarski(esk1_0),esk2_0,esk4_0,esk3_0),k1_tarski(k1_funct_1(esk4_0,esk1_0))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_16])])])).
% 0.13/0.38  fof(c_0_18, plain, ![X7]:k2_tarski(X7,X7)=k1_tarski(X7), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.13/0.38  fof(c_0_19, plain, ![X8, X9]:k1_enumset1(X8,X8,X9)=k2_tarski(X8,X9), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.13/0.38  fof(c_0_20, plain, ![X10, X11, X12]:k2_enumset1(X10,X10,X11,X12)=k1_enumset1(X10,X11,X12), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.13/0.38  fof(c_0_21, plain, ![X32, X33, X34]:((v4_relat_1(X34,X32)|~m1_subset_1(X34,k1_zfmisc_1(k2_zfmisc_1(X32,X33))))&(v5_relat_1(X34,X33)|~m1_subset_1(X34,k1_zfmisc_1(k2_zfmisc_1(X32,X33))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).
% 0.13/0.38  cnf(c_0_22, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(esk1_0),esk2_0)))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.13/0.38  cnf(c_0_23, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.13/0.38  cnf(c_0_24, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.13/0.38  cnf(c_0_25, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.13/0.38  fof(c_0_26, plain, ![X29, X30, X31]:(~m1_subset_1(X31,k1_zfmisc_1(k2_zfmisc_1(X29,X30)))|v1_relat_1(X31)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).
% 0.13/0.38  fof(c_0_27, plain, ![X13, X14, X15]:((~r1_tarski(X13,k2_tarski(X14,X15))|(X13=k1_xboole_0|X13=k1_tarski(X14)|X13=k1_tarski(X15)|X13=k2_tarski(X14,X15)))&((((X13!=k1_xboole_0|r1_tarski(X13,k2_tarski(X14,X15)))&(X13!=k1_tarski(X14)|r1_tarski(X13,k2_tarski(X14,X15))))&(X13!=k1_tarski(X15)|r1_tarski(X13,k2_tarski(X14,X15))))&(X13!=k2_tarski(X14,X15)|r1_tarski(X13,k2_tarski(X14,X15))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l45_zfmisc_1])])])).
% 0.13/0.38  fof(c_0_28, plain, ![X22, X23]:((~v4_relat_1(X23,X22)|r1_tarski(k1_relat_1(X23),X22)|~v1_relat_1(X23))&(~r1_tarski(k1_relat_1(X23),X22)|v4_relat_1(X23,X22)|~v1_relat_1(X23))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d18_relat_1])])])).
% 0.13/0.38  cnf(c_0_29, plain, (v4_relat_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.13/0.38  cnf(c_0_30, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0),esk2_0)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_22, c_0_23]), c_0_24]), c_0_25])).
% 0.13/0.38  cnf(c_0_31, plain, (v1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.13/0.38  cnf(c_0_32, plain, (r1_tarski(X1,k2_tarski(X2,X3))|X1!=k1_tarski(X2)), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.13/0.38  cnf(c_0_33, plain, (X1=k1_xboole_0|X1=k1_tarski(X2)|X1=k1_tarski(X3)|X1=k2_tarski(X2,X3)|~r1_tarski(X1,k2_tarski(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.13/0.38  cnf(c_0_34, plain, (r1_tarski(k1_relat_1(X1),X2)|~v4_relat_1(X1,X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.13/0.38  cnf(c_0_35, negated_conjecture, (v4_relat_1(esk4_0,k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0))), inference(spm,[status(thm)],[c_0_29, c_0_30])).
% 0.13/0.38  cnf(c_0_36, negated_conjecture, (v1_relat_1(esk4_0)), inference(spm,[status(thm)],[c_0_31, c_0_30])).
% 0.13/0.38  fof(c_0_37, plain, ![X16]:m1_subset_1(k1_xboole_0,k1_zfmisc_1(X16)), inference(variable_rename,[status(thm)],[t4_subset_1])).
% 0.13/0.38  fof(c_0_38, plain, ![X35, X36, X37, X38]:(~m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X35,X36)))|k7_relset_1(X35,X36,X37,X38)=k9_relat_1(X37,X38)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k7_relset_1])])).
% 0.13/0.38  cnf(c_0_39, plain, (r1_tarski(X1,k2_enumset1(X2,X2,X2,X3))|X1!=k2_enumset1(X2,X2,X2,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_32, c_0_23]), c_0_24]), c_0_24]), c_0_25]), c_0_25])).
% 0.13/0.38  cnf(c_0_40, plain, (X1=k1_xboole_0|X1=k2_enumset1(X3,X3,X3,X3)|X1=k2_enumset1(X2,X2,X2,X3)|X1=k2_enumset1(X2,X2,X2,X2)|~r1_tarski(X1,k2_enumset1(X2,X2,X2,X3))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_33, c_0_23]), c_0_23]), c_0_24]), c_0_24]), c_0_24]), c_0_24]), c_0_25]), c_0_25]), c_0_25]), c_0_25])).
% 0.13/0.38  cnf(c_0_41, negated_conjecture, (r1_tarski(k1_relat_1(esk4_0),k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34, c_0_35]), c_0_36])])).
% 0.13/0.38  fof(c_0_42, plain, ![X24, X25]:(~v1_relat_1(X25)|r1_tarski(k9_relat_1(X25,X24),k2_relat_1(X25))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t144_relat_1])])).
% 0.13/0.38  cnf(c_0_43, plain, (m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_37])).
% 0.13/0.38  fof(c_0_44, plain, ![X17, X18]:((~m1_subset_1(X17,k1_zfmisc_1(X18))|r1_tarski(X17,X18))&(~r1_tarski(X17,X18)|m1_subset_1(X17,k1_zfmisc_1(X18)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).
% 0.13/0.38  cnf(c_0_45, negated_conjecture, (~r1_tarski(k7_relset_1(k1_tarski(esk1_0),esk2_0,esk4_0,esk3_0),k1_tarski(k1_funct_1(esk4_0,esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.13/0.38  cnf(c_0_46, plain, (k7_relset_1(X2,X3,X1,X4)=k9_relat_1(X1,X4)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_38])).
% 0.13/0.38  fof(c_0_47, plain, ![X26]:((k1_relat_1(X26)!=k1_xboole_0|X26=k1_xboole_0|~v1_relat_1(X26))&(k2_relat_1(X26)!=k1_xboole_0|X26=k1_xboole_0|~v1_relat_1(X26))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t64_relat_1])])])).
% 0.13/0.38  cnf(c_0_48, plain, (r1_tarski(k2_enumset1(X1,X1,X1,X1),k2_enumset1(X1,X1,X1,X2))), inference(er,[status(thm)],[c_0_39])).
% 0.13/0.38  cnf(c_0_49, negated_conjecture, (k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0)=k1_relat_1(esk4_0)|k1_relat_1(esk4_0)=k1_xboole_0), inference(spm,[status(thm)],[c_0_40, c_0_41])).
% 0.13/0.38  fof(c_0_50, plain, ![X5, X6]:(((r1_tarski(X5,X6)|X5!=X6)&(r1_tarski(X6,X5)|X5!=X6))&(~r1_tarski(X5,X6)|~r1_tarski(X6,X5)|X5=X6)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.13/0.38  cnf(c_0_51, plain, (r1_tarski(k9_relat_1(X1,X2),k2_relat_1(X1))|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_42])).
% 0.13/0.38  cnf(c_0_52, plain, (v1_relat_1(k1_xboole_0)), inference(spm,[status(thm)],[c_0_31, c_0_43])).
% 0.13/0.38  cnf(c_0_53, plain, (k2_relat_1(k1_xboole_0)=k1_xboole_0), inference(split_conjunct,[status(thm)],[t60_relat_1])).
% 0.13/0.38  cnf(c_0_54, plain, (r1_tarski(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_44])).
% 0.13/0.38  cnf(c_0_55, negated_conjecture, (~r1_tarski(k7_relset_1(k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0),esk2_0,esk4_0,esk3_0),k2_enumset1(k1_funct_1(esk4_0,esk1_0),k1_funct_1(esk4_0,esk1_0),k1_funct_1(esk4_0,esk1_0),k1_funct_1(esk4_0,esk1_0)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_45, c_0_23]), c_0_23]), c_0_24]), c_0_24]), c_0_25]), c_0_25])).
% 0.13/0.38  cnf(c_0_56, negated_conjecture, (k7_relset_1(k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0),esk2_0,esk4_0,X1)=k9_relat_1(esk4_0,X1)), inference(spm,[status(thm)],[c_0_46, c_0_30])).
% 0.13/0.38  cnf(c_0_57, plain, (X1=k1_xboole_0|k1_relat_1(X1)!=k1_xboole_0|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_47])).
% 0.13/0.38  cnf(c_0_58, negated_conjecture, (k1_relat_1(esk4_0)=k1_xboole_0|r1_tarski(k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0),k1_relat_1(esk4_0))), inference(spm,[status(thm)],[c_0_48, c_0_49])).
% 0.13/0.38  cnf(c_0_59, plain, (X1=X2|~r1_tarski(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_50])).
% 0.13/0.38  cnf(c_0_60, plain, (r1_tarski(k9_relat_1(k1_xboole_0,X1),k1_xboole_0)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51, c_0_52]), c_0_53])).
% 0.13/0.38  cnf(c_0_61, plain, (r1_tarski(k1_xboole_0,X1)), inference(spm,[status(thm)],[c_0_54, c_0_43])).
% 0.13/0.38  fof(c_0_62, plain, ![X27, X28]:(~v1_relat_1(X28)|~v1_funct_1(X28)|(k1_relat_1(X28)!=k1_tarski(X27)|k2_relat_1(X28)=k1_tarski(k1_funct_1(X28,X27)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t14_funct_1])])).
% 0.13/0.38  cnf(c_0_63, negated_conjecture, (~r1_tarski(k9_relat_1(esk4_0,esk3_0),k2_enumset1(k1_funct_1(esk4_0,esk1_0),k1_funct_1(esk4_0,esk1_0),k1_funct_1(esk4_0,esk1_0),k1_funct_1(esk4_0,esk1_0)))), inference(rw,[status(thm)],[c_0_55, c_0_56])).
% 0.13/0.38  cnf(c_0_64, negated_conjecture, (esk4_0=k1_xboole_0|r1_tarski(k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0),k1_relat_1(esk4_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57, c_0_58]), c_0_36])])).
% 0.13/0.38  cnf(c_0_65, plain, (k9_relat_1(k1_xboole_0,X1)=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_59, c_0_60]), c_0_61])])).
% 0.13/0.38  cnf(c_0_66, plain, (k2_relat_1(X1)=k1_tarski(k1_funct_1(X1,X2))|~v1_relat_1(X1)|~v1_funct_1(X1)|k1_relat_1(X1)!=k1_tarski(X2)), inference(split_conjunct,[status(thm)],[c_0_62])).
% 0.13/0.38  cnf(c_0_67, negated_conjecture, (r1_tarski(k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0),k1_relat_1(esk4_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_63, c_0_64]), c_0_65]), c_0_61])])).
% 0.13/0.38  cnf(c_0_68, plain, (k2_relat_1(X1)=k2_enumset1(k1_funct_1(X1,X2),k1_funct_1(X1,X2),k1_funct_1(X1,X2),k1_funct_1(X1,X2))|k1_relat_1(X1)!=k2_enumset1(X2,X2,X2,X2)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_66, c_0_23]), c_0_23]), c_0_24]), c_0_24]), c_0_25]), c_0_25])).
% 0.13/0.38  cnf(c_0_69, negated_conjecture, (k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0)=k1_relat_1(esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_59, c_0_67]), c_0_41])])).
% 0.13/0.38  cnf(c_0_70, negated_conjecture, (k2_enumset1(k1_funct_1(X1,esk1_0),k1_funct_1(X1,esk1_0),k1_funct_1(X1,esk1_0),k1_funct_1(X1,esk1_0))=k2_relat_1(X1)|k1_relat_1(X1)!=k1_relat_1(esk4_0)|~v1_funct_1(X1)|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_68, c_0_69])).
% 0.13/0.38  cnf(c_0_71, negated_conjecture, (v1_funct_1(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.13/0.38  cnf(c_0_72, negated_conjecture, (k2_enumset1(k1_funct_1(esk4_0,esk1_0),k1_funct_1(esk4_0,esk1_0),k1_funct_1(esk4_0,esk1_0),k1_funct_1(esk4_0,esk1_0))=k2_relat_1(esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(er,[status(thm)],[c_0_70]), c_0_71]), c_0_36])])).
% 0.13/0.38  cnf(c_0_73, negated_conjecture, (r1_tarski(k9_relat_1(esk4_0,X1),k2_relat_1(esk4_0))), inference(spm,[status(thm)],[c_0_51, c_0_36])).
% 0.13/0.38  cnf(c_0_74, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_63, c_0_72]), c_0_73])]), ['proof']).
% 0.13/0.38  # SZS output end CNFRefutation
% 0.13/0.38  # Proof object total steps             : 75
% 0.13/0.38  # Proof object clause steps            : 43
% 0.13/0.38  # Proof object formula steps           : 32
% 0.13/0.38  # Proof object conjectures             : 22
% 0.13/0.38  # Proof object clause conjectures      : 19
% 0.13/0.38  # Proof object formula conjectures     : 3
% 0.13/0.38  # Proof object initial clauses used    : 19
% 0.13/0.38  # Proof object initial formulas used   : 16
% 0.13/0.38  # Proof object generating inferences   : 16
% 0.13/0.38  # Proof object simplifying inferences  : 50
% 0.13/0.38  # Training examples: 0 positive, 0 negative
% 0.13/0.38  # Parsed axioms                        : 17
% 0.13/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.38  # Initial clauses                      : 32
% 0.13/0.38  # Removed in clause preprocessing      : 3
% 0.13/0.38  # Initial clauses in saturation        : 29
% 0.13/0.38  # Processed clauses                    : 188
% 0.13/0.38  # ...of these trivial                  : 4
% 0.13/0.38  # ...subsumed                          : 25
% 0.13/0.38  # ...remaining for further processing  : 159
% 0.13/0.38  # Other redundant clauses eliminated   : 6
% 0.13/0.38  # Clauses deleted for lack of memory   : 0
% 0.13/0.38  # Backward-subsumed                    : 3
% 0.13/0.38  # Backward-rewritten                   : 34
% 0.13/0.38  # Generated clauses                    : 445
% 0.13/0.38  # ...of the previous two non-trivial   : 224
% 0.13/0.38  # Contextual simplify-reflections      : 0
% 0.13/0.38  # Paramodulations                      : 437
% 0.13/0.38  # Factorizations                       : 1
% 0.13/0.38  # Equation resolutions                 : 7
% 0.13/0.38  # Propositional unsat checks           : 0
% 0.13/0.38  #    Propositional check models        : 0
% 0.13/0.38  #    Propositional check unsatisfiable : 0
% 0.13/0.38  #    Propositional clauses             : 0
% 0.13/0.38  #    Propositional clauses after purity: 0
% 0.13/0.38  #    Propositional unsat core size     : 0
% 0.13/0.38  #    Propositional preprocessing time  : 0.000
% 0.13/0.38  #    Propositional encoding time       : 0.000
% 0.13/0.38  #    Propositional solver time         : 0.000
% 0.13/0.38  #    Success case prop preproc time    : 0.000
% 0.13/0.38  #    Success case prop encoding time   : 0.000
% 0.13/0.38  #    Success case prop solver time     : 0.000
% 0.13/0.38  # Current number of processed clauses  : 89
% 0.13/0.38  #    Positive orientable unit clauses  : 44
% 0.13/0.38  #    Positive unorientable unit clauses: 0
% 0.13/0.38  #    Negative unit clauses             : 1
% 0.13/0.38  #    Non-unit-clauses                  : 44
% 0.13/0.38  # Current number of unprocessed clauses: 28
% 0.13/0.38  # ...number of literals in the above   : 77
% 0.13/0.38  # Current number of archived formulas  : 0
% 0.13/0.38  # Current number of archived clauses   : 67
% 0.13/0.38  # Clause-clause subsumption calls (NU) : 435
% 0.13/0.38  # Rec. Clause-clause subsumption calls : 360
% 0.13/0.38  # Non-unit clause-clause subsumptions  : 24
% 0.13/0.38  # Unit Clause-clause subsumption calls : 158
% 0.13/0.38  # Rewrite failures with RHS unbound    : 0
% 0.13/0.38  # BW rewrite match attempts            : 26
% 0.13/0.38  # BW rewrite match successes           : 10
% 0.13/0.38  # Condensation attempts                : 0
% 0.13/0.38  # Condensation successes               : 0
% 0.13/0.38  # Termbank termtop insertions          : 7703
% 0.13/0.38  
% 0.13/0.38  # -------------------------------------------------
% 0.13/0.38  # User time                : 0.040 s
% 0.13/0.38  # System time              : 0.003 s
% 0.13/0.38  # Total time               : 0.042 s
% 0.13/0.38  # Maximum resident set size: 1588 pages
%------------------------------------------------------------------------------
