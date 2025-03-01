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
% DateTime   : Thu Dec  3 11:11:06 EST 2020

% Result     : Theorem 0.55s
% Output     : CNFRefutation 0.55s
% Verified   : 
% Statistics : Number of formulae       :  133 (7529 expanded)
%              Number of clauses        :   82 (3547 expanded)
%              Number of leaves         :   25 (1955 expanded)
%              Depth                    :   22
%              Number of atoms          :  253 (10656 expanded)
%              Number of equality atoms :   78 (5621 expanded)
%              Maximal formula depth    :    9 (   3 average)
%              Maximal clause size      :    9 (   2 average)
%              Maximal term depth       :    9 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t69_tops_1,conjecture,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ( v4_pre_topc(X2,X1)
           => r1_tarski(k2_tops_1(X1,X2),X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_tops_1)).

fof(t3_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X2))
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_subset)).

fof(t100_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_xboole_1)).

fof(t12_setfam_1,axiom,(
    ! [X1,X2] : k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_setfam_1)).

fof(t28_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
     => k3_xboole_0(X1,X2) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t28_xboole_1)).

fof(t1_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( ( r1_tarski(X1,X2)
        & r1_tarski(X2,X3) )
     => r1_tarski(X1,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t1_xboole_1)).

fof(t36_xboole_1,axiom,(
    ! [X1,X2] : r1_tarski(k4_xboole_0(X1,X2),X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t36_xboole_1)).

fof(commutativity_k2_tarski,axiom,(
    ! [X1,X2] : k2_tarski(X1,X2) = k2_tarski(X2,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_tarski)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).

fof(t44_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( r1_tarski(k4_xboole_0(X1,X2),X3)
     => r1_tarski(X1,k2_xboole_0(X2,X3)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t44_xboole_1)).

fof(l51_zfmisc_1,axiom,(
    ! [X1,X2] : k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l51_zfmisc_1)).

fof(t17_xboole_1,axiom,(
    ! [X1,X2] : r1_tarski(k3_xboole_0(X1,X2),X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t17_xboole_1)).

fof(t38_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,k4_xboole_0(X2,X1))
     => X1 = k1_xboole_0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t38_xboole_1)).

fof(t43_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( r1_tarski(X1,k2_xboole_0(X2,X3))
     => r1_tarski(k4_xboole_0(X1,X2),X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t43_xboole_1)).

fof(t3_xboole_1,axiom,(
    ! [X1] :
      ( r1_tarski(X1,k1_xboole_0)
     => X1 = k1_xboole_0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_xboole_1)).

fof(t3_boole,axiom,(
    ! [X1] : k4_xboole_0(X1,k1_xboole_0) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_boole)).

fof(t48_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t48_xboole_1)).

fof(d5_subset_1,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => k3_subset_1(X1,X2) = k4_xboole_0(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d5_subset_1)).

fof(dt_k3_subset_1,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => m1_subset_1(k3_subset_1(X1,X2),k1_zfmisc_1(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k3_subset_1)).

fof(t62_tops_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => k2_tops_1(X1,X2) = k2_tops_1(X1,k3_subset_1(u1_struct_0(X1),X2)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t62_tops_1)).

fof(t7_xboole_1,axiom,(
    ! [X1,X2] : r1_tarski(X1,k2_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_xboole_1)).

fof(redefinition_k4_subset_1,axiom,(
    ! [X1,X2,X3] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(X1))
        & m1_subset_1(X3,k1_zfmisc_1(X1)) )
     => k4_subset_1(X1,X2,X3) = k2_xboole_0(X2,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k4_subset_1)).

fof(t65_tops_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => k2_pre_topc(X1,X2) = k4_subset_1(u1_struct_0(X1),X2,k2_tops_1(X1,X2)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t65_tops_1)).

fof(dt_k2_tops_1,axiom,(
    ! [X1,X2] :
      ( ( l1_pre_topc(X1)
        & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) )
     => m1_subset_1(k2_tops_1(X1,X2),k1_zfmisc_1(u1_struct_0(X1))) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k2_tops_1)).

fof(t52_pre_topc,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ( ( v4_pre_topc(X2,X1)
             => k2_pre_topc(X1,X2) = X2 )
            & ( ( v2_pre_topc(X1)
                & k2_pre_topc(X1,X2) = X2 )
             => v4_pre_topc(X2,X1) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t52_pre_topc)).

fof(c_0_25,negated_conjecture,(
    ~ ! [X1] :
        ( l1_pre_topc(X1)
       => ! [X2] :
            ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
           => ( v4_pre_topc(X2,X1)
             => r1_tarski(k2_tops_1(X1,X2),X2) ) ) ) ),
    inference(assume_negation,[status(cth)],[t69_tops_1])).

fof(c_0_26,plain,(
    ! [X44,X45] :
      ( ( ~ m1_subset_1(X44,k1_zfmisc_1(X45))
        | r1_tarski(X44,X45) )
      & ( ~ r1_tarski(X44,X45)
        | m1_subset_1(X44,k1_zfmisc_1(X45)) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).

fof(c_0_27,negated_conjecture,
    ( l1_pre_topc(esk1_0)
    & m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0)))
    & v4_pre_topc(esk2_0,esk1_0)
    & ~ r1_tarski(k2_tops_1(esk1_0,esk2_0),esk2_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_25])])])).

fof(c_0_28,plain,(
    ! [X6,X7] : k4_xboole_0(X6,X7) = k5_xboole_0(X6,k3_xboole_0(X6,X7)) ),
    inference(variable_rename,[status(thm)],[t100_xboole_1])).

fof(c_0_29,plain,(
    ! [X42,X43] : k1_setfam_1(k2_tarski(X42,X43)) = k3_xboole_0(X42,X43) ),
    inference(variable_rename,[status(thm)],[t12_setfam_1])).

fof(c_0_30,plain,(
    ! [X13,X14] :
      ( ~ r1_tarski(X13,X14)
      | k3_xboole_0(X13,X14) = X13 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t28_xboole_1])])).

fof(c_0_31,plain,(
    ! [X10,X11,X12] :
      ( ~ r1_tarski(X10,X11)
      | ~ r1_tarski(X11,X12)
      | r1_tarski(X10,X12) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_xboole_1])])).

cnf(c_0_32,plain,
    ( r1_tarski(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_33,negated_conjecture,
    ( m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

fof(c_0_34,plain,(
    ! [X15,X16] : r1_tarski(k4_xboole_0(X15,X16),X15) ),
    inference(variable_rename,[status(thm)],[t36_xboole_1])).

cnf(c_0_35,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_36,plain,
    ( k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_37,plain,
    ( k3_xboole_0(X1,X2) = X1
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

fof(c_0_38,plain,(
    ! [X31,X32] : k2_tarski(X31,X32) = k2_tarski(X32,X31) ),
    inference(variable_rename,[status(thm)],[commutativity_k2_tarski])).

cnf(c_0_39,plain,
    ( r1_tarski(X1,X3)
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

cnf(c_0_40,negated_conjecture,
    ( r1_tarski(esk2_0,u1_struct_0(esk1_0)) ),
    inference(spm,[status(thm)],[c_0_32,c_0_33])).

cnf(c_0_41,plain,
    ( r1_tarski(k4_xboole_0(X1,X2),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_42,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))) ),
    inference(rw,[status(thm)],[c_0_35,c_0_36])).

cnf(c_0_43,plain,
    ( k1_setfam_1(k2_tarski(X1,X2)) = X1
    | ~ r1_tarski(X1,X2) ),
    inference(rw,[status(thm)],[c_0_37,c_0_36])).

cnf(c_0_44,plain,
    ( k2_tarski(X1,X2) = k2_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_38])).

cnf(c_0_45,negated_conjecture,
    ( r1_tarski(X1,u1_struct_0(esk1_0))
    | ~ r1_tarski(X1,esk2_0) ),
    inference(spm,[status(thm)],[c_0_39,c_0_40])).

cnf(c_0_46,plain,
    ( r1_tarski(k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))),X1) ),
    inference(rw,[status(thm)],[c_0_41,c_0_42])).

cnf(c_0_47,plain,
    ( k1_setfam_1(k2_tarski(X1,X2)) = X2
    | ~ r1_tarski(X2,X1) ),
    inference(spm,[status(thm)],[c_0_43,c_0_44])).

fof(c_0_48,plain,(
    ! [X4,X5] :
      ( ( r1_tarski(X4,X5)
        | X4 != X5 )
      & ( r1_tarski(X5,X4)
        | X4 != X5 )
      & ( ~ r1_tarski(X4,X5)
        | ~ r1_tarski(X5,X4)
        | X4 = X5 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

fof(c_0_49,plain,(
    ! [X24,X25,X26] :
      ( ~ r1_tarski(k4_xboole_0(X24,X25),X26)
      | r1_tarski(X24,k2_xboole_0(X25,X26)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t44_xboole_1])])).

fof(c_0_50,plain,(
    ! [X33,X34] : k3_tarski(k2_tarski(X33,X34)) = k2_xboole_0(X33,X34) ),
    inference(variable_rename,[status(thm)],[l51_zfmisc_1])).

cnf(c_0_51,negated_conjecture,
    ( r1_tarski(X1,u1_struct_0(esk1_0))
    | ~ r1_tarski(X2,esk2_0)
    | ~ r1_tarski(X1,X2) ),
    inference(spm,[status(thm)],[c_0_39,c_0_45])).

cnf(c_0_52,plain,
    ( r1_tarski(k5_xboole_0(X1,X2),X1)
    | ~ r1_tarski(X2,X1) ),
    inference(spm,[status(thm)],[c_0_46,c_0_47])).

cnf(c_0_53,plain,
    ( r1_tarski(X1,X2)
    | X2 != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_48])).

fof(c_0_54,plain,(
    ! [X8,X9] : r1_tarski(k3_xboole_0(X8,X9),X8) ),
    inference(variable_rename,[status(thm)],[t17_xboole_1])).

fof(c_0_55,plain,(
    ! [X17,X18] :
      ( ~ r1_tarski(X17,k4_xboole_0(X18,X17))
      | X17 = k1_xboole_0 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t38_xboole_1])])).

fof(c_0_56,plain,(
    ! [X21,X22,X23] :
      ( ~ r1_tarski(X21,k2_xboole_0(X22,X23))
      | r1_tarski(k4_xboole_0(X21,X22),X23) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t43_xboole_1])])).

cnf(c_0_57,plain,
    ( r1_tarski(X1,k2_xboole_0(X2,X3))
    | ~ r1_tarski(k4_xboole_0(X1,X2),X3) ),
    inference(split_conjunct,[status(thm)],[c_0_49])).

cnf(c_0_58,plain,
    ( k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_50])).

cnf(c_0_59,negated_conjecture,
    ( r1_tarski(X1,u1_struct_0(esk1_0))
    | ~ r1_tarski(X1,k5_xboole_0(esk2_0,X2))
    | ~ r1_tarski(X2,esk2_0) ),
    inference(spm,[status(thm)],[c_0_51,c_0_52])).

cnf(c_0_60,plain,
    ( r1_tarski(X1,X1) ),
    inference(er,[status(thm)],[c_0_53])).

cnf(c_0_61,plain,
    ( r1_tarski(k3_xboole_0(X1,X2),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_54])).

fof(c_0_62,plain,(
    ! [X20] :
      ( ~ r1_tarski(X20,k1_xboole_0)
      | X20 = k1_xboole_0 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_xboole_1])])).

cnf(c_0_63,plain,
    ( X1 = k1_xboole_0
    | ~ r1_tarski(X1,k4_xboole_0(X2,X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_55])).

cnf(c_0_64,plain,
    ( r1_tarski(k4_xboole_0(X1,X2),X3)
    | ~ r1_tarski(X1,k2_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_56])).

cnf(c_0_65,plain,
    ( r1_tarski(X1,k3_tarski(k2_tarski(X2,X3)))
    | ~ r1_tarski(k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))),X3) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_57,c_0_58]),c_0_42])).

cnf(c_0_66,negated_conjecture,
    ( r1_tarski(k5_xboole_0(esk2_0,X1),u1_struct_0(esk1_0))
    | ~ r1_tarski(X1,esk2_0) ),
    inference(spm,[status(thm)],[c_0_59,c_0_60])).

cnf(c_0_67,plain,
    ( r1_tarski(k1_setfam_1(k2_tarski(X1,X2)),X1) ),
    inference(rw,[status(thm)],[c_0_61,c_0_36])).

fof(c_0_68,plain,(
    ! [X19] : k4_xboole_0(X19,k1_xboole_0) = X19 ),
    inference(variable_rename,[status(thm)],[t3_boole])).

cnf(c_0_69,plain,
    ( X1 = k1_xboole_0
    | ~ r1_tarski(X1,k1_xboole_0) ),
    inference(split_conjunct,[status(thm)],[c_0_62])).

fof(c_0_70,plain,(
    ! [X27,X28] : k4_xboole_0(X27,k4_xboole_0(X27,X28)) = k3_xboole_0(X27,X28) ),
    inference(variable_rename,[status(thm)],[t48_xboole_1])).

fof(c_0_71,plain,(
    ! [X35,X36] :
      ( ~ m1_subset_1(X36,k1_zfmisc_1(X35))
      | k3_subset_1(X35,X36) = k4_xboole_0(X35,X36) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d5_subset_1])])).

cnf(c_0_72,plain,
    ( X1 = k1_xboole_0
    | ~ r1_tarski(X1,k5_xboole_0(X2,k1_setfam_1(k2_tarski(X2,X1)))) ),
    inference(rw,[status(thm)],[c_0_63,c_0_42])).

cnf(c_0_73,plain,
    ( r1_tarski(k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))),X3)
    | ~ r1_tarski(X1,k3_tarski(k2_tarski(X2,X3))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_64,c_0_58]),c_0_42])).

cnf(c_0_74,negated_conjecture,
    ( r1_tarski(esk2_0,k3_tarski(k2_tarski(X1,u1_struct_0(esk1_0)))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_65,c_0_66]),c_0_67])])).

cnf(c_0_75,plain,
    ( k4_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_68])).

cnf(c_0_76,plain,
    ( k1_setfam_1(k2_tarski(k1_xboole_0,X1)) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_69,c_0_67])).

cnf(c_0_77,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_70])).

cnf(c_0_78,plain,
    ( k3_subset_1(X2,X1) = k4_xboole_0(X2,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_71])).

cnf(c_0_79,plain,
    ( k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))) = k1_xboole_0
    | ~ r1_tarski(X1,k3_tarski(k2_tarski(X2,k5_xboole_0(X3,k1_setfam_1(k2_tarski(X3,k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))))))))) ),
    inference(spm,[status(thm)],[c_0_72,c_0_73])).

cnf(c_0_80,negated_conjecture,
    ( r1_tarski(esk2_0,k3_tarski(k2_tarski(u1_struct_0(esk1_0),X1))) ),
    inference(spm,[status(thm)],[c_0_74,c_0_44])).

cnf(c_0_81,plain,
    ( k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,k1_xboole_0))) = X1 ),
    inference(rw,[status(thm)],[c_0_75,c_0_42])).

cnf(c_0_82,plain,
    ( k1_setfam_1(k2_tarski(X1,k1_xboole_0)) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_76,c_0_44])).

cnf(c_0_83,plain,
    ( k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2)))))) = k1_setfam_1(k2_tarski(X1,X2)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_77,c_0_36]),c_0_42]),c_0_42])).

cnf(c_0_84,plain,
    ( k3_subset_1(X2,X1) = k5_xboole_0(X2,k1_setfam_1(k2_tarski(X2,X1)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(rw,[status(thm)],[c_0_78,c_0_42])).

cnf(c_0_85,negated_conjecture,
    ( k5_xboole_0(esk2_0,k1_setfam_1(k2_tarski(esk2_0,u1_struct_0(esk1_0)))) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_79,c_0_80])).

cnf(c_0_86,plain,
    ( k5_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(rw,[status(thm)],[c_0_81,c_0_82])).

cnf(c_0_87,plain,
    ( k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,k1_setfam_1(k2_tarski(X1,X2))))) = k1_setfam_1(k2_tarski(X1,k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))))) ),
    inference(spm,[status(thm)],[c_0_83,c_0_83])).

cnf(c_0_88,plain,
    ( k5_xboole_0(X1,k1_setfam_1(k2_tarski(X2,X1))) = k3_subset_1(X1,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_84,c_0_44])).

cnf(c_0_89,negated_conjecture,
    ( k1_setfam_1(k2_tarski(esk2_0,u1_struct_0(esk1_0))) = esk2_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_83,c_0_85]),c_0_82]),c_0_86])).

cnf(c_0_90,plain,
    ( k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,k1_setfam_1(k2_tarski(X2,X1))))) = k1_setfam_1(k2_tarski(X1,k5_xboole_0(X1,k1_setfam_1(k2_tarski(X2,X1))))) ),
    inference(spm,[status(thm)],[c_0_87,c_0_44])).

cnf(c_0_91,negated_conjecture,
    ( k5_xboole_0(u1_struct_0(esk1_0),esk2_0) = k3_subset_1(u1_struct_0(esk1_0),esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_88,c_0_89]),c_0_33])])).

cnf(c_0_92,plain,
    ( k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,k3_subset_1(X1,X2)))) = k1_setfam_1(k2_tarski(X1,X2))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_83,c_0_84])).

cnf(c_0_93,negated_conjecture,
    ( k1_setfam_1(k2_tarski(u1_struct_0(esk1_0),k3_subset_1(u1_struct_0(esk1_0),esk2_0))) = k3_subset_1(u1_struct_0(esk1_0),esk2_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_90,c_0_89]),c_0_44]),c_0_89]),c_0_91]),c_0_91])).

fof(c_0_94,plain,(
    ! [X37,X38] :
      ( ~ m1_subset_1(X38,k1_zfmisc_1(X37))
      | m1_subset_1(k3_subset_1(X37,X38),k1_zfmisc_1(X37)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k3_subset_1])])).

fof(c_0_95,plain,(
    ! [X50,X51] :
      ( ~ l1_pre_topc(X50)
      | ~ m1_subset_1(X51,k1_zfmisc_1(u1_struct_0(X50)))
      | k2_tops_1(X50,X51) = k2_tops_1(X50,k3_subset_1(u1_struct_0(X50),X51)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t62_tops_1])])])).

cnf(c_0_96,plain,
    ( k5_xboole_0(X1,X2) = k3_subset_1(X1,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_84,c_0_47]),c_0_32])).

cnf(c_0_97,negated_conjecture,
    ( k5_xboole_0(u1_struct_0(esk1_0),k3_subset_1(u1_struct_0(esk1_0),esk2_0)) = esk2_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_92,c_0_93]),c_0_44]),c_0_89]),c_0_33])])).

fof(c_0_98,plain,(
    ! [X29,X30] : r1_tarski(X29,k2_xboole_0(X29,X30)) ),
    inference(variable_rename,[status(thm)],[t7_xboole_1])).

cnf(c_0_99,plain,
    ( m1_subset_1(k3_subset_1(X2,X1),k1_zfmisc_1(X2))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_94])).

cnf(c_0_100,plain,
    ( k3_subset_1(X1,k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2)))) = k1_setfam_1(k2_tarski(X1,X2))
    | ~ m1_subset_1(k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))),k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_83,c_0_84])).

cnf(c_0_101,plain,
    ( k2_tops_1(X1,X2) = k2_tops_1(X1,k3_subset_1(u1_struct_0(X1),X2))
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_95])).

cnf(c_0_102,negated_conjecture,
    ( k3_subset_1(u1_struct_0(esk1_0),k3_subset_1(u1_struct_0(esk1_0),esk2_0)) = esk2_0
    | ~ m1_subset_1(k3_subset_1(u1_struct_0(esk1_0),esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(spm,[status(thm)],[c_0_96,c_0_97])).

cnf(c_0_103,negated_conjecture,
    ( l1_pre_topc(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_104,plain,
    ( r1_tarski(k5_xboole_0(X1,k1_setfam_1(k2_tarski(X2,X1))),X1) ),
    inference(spm,[status(thm)],[c_0_46,c_0_44])).

cnf(c_0_105,plain,
    ( r1_tarski(X1,k2_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_98])).

fof(c_0_106,plain,(
    ! [X39,X40,X41] :
      ( ~ m1_subset_1(X40,k1_zfmisc_1(X39))
      | ~ m1_subset_1(X41,k1_zfmisc_1(X39))
      | k4_subset_1(X39,X40,X41) = k2_xboole_0(X40,X41) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k4_subset_1])])).

fof(c_0_107,plain,(
    ! [X52,X53] :
      ( ~ l1_pre_topc(X52)
      | ~ m1_subset_1(X53,k1_zfmisc_1(u1_struct_0(X52)))
      | k2_pre_topc(X52,X53) = k4_subset_1(u1_struct_0(X52),X53,k2_tops_1(X52,X53)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t65_tops_1])])])).

cnf(c_0_108,plain,
    ( m1_subset_1(k1_setfam_1(k2_tarski(X1,X2)),k1_zfmisc_1(X1))
    | ~ m1_subset_1(k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))),k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_99,c_0_100])).

fof(c_0_109,plain,(
    ! [X48,X49] :
      ( ~ l1_pre_topc(X48)
      | ~ m1_subset_1(X49,k1_zfmisc_1(u1_struct_0(X48)))
      | m1_subset_1(k2_tops_1(X48,X49),k1_zfmisc_1(u1_struct_0(X48))) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_tops_1])])).

cnf(c_0_110,negated_conjecture,
    ( k2_tops_1(esk1_0,k3_subset_1(u1_struct_0(esk1_0),esk2_0)) = k2_tops_1(esk1_0,esk2_0)
    | ~ m1_subset_1(k3_subset_1(u1_struct_0(esk1_0),esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_101,c_0_102]),c_0_103])])).

cnf(c_0_111,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_112,negated_conjecture,
    ( r1_tarski(k3_subset_1(u1_struct_0(esk1_0),esk2_0),u1_struct_0(esk1_0)) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_104,c_0_89]),c_0_91])).

cnf(c_0_113,plain,
    ( r1_tarski(X1,k3_tarski(k2_tarski(X1,X2))) ),
    inference(rw,[status(thm)],[c_0_105,c_0_58])).

cnf(c_0_114,plain,
    ( k4_subset_1(X2,X1,X3) = k2_xboole_0(X1,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_106])).

cnf(c_0_115,plain,
    ( k2_pre_topc(X1,X2) = k4_subset_1(u1_struct_0(X1),X2,k2_tops_1(X1,X2))
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_107])).

cnf(c_0_116,negated_conjecture,
    ( m1_subset_1(k3_subset_1(u1_struct_0(esk1_0),esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_108,c_0_93]),c_0_97]),c_0_33])])).

cnf(c_0_117,plain,
    ( m1_subset_1(k2_tops_1(X1,X2),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_109])).

cnf(c_0_118,negated_conjecture,
    ( k2_tops_1(esk1_0,k3_subset_1(u1_struct_0(esk1_0),esk2_0)) = k2_tops_1(esk1_0,esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_110,c_0_111]),c_0_112])])).

cnf(c_0_119,plain,
    ( r1_tarski(X1,k3_tarski(k2_tarski(X2,X1))) ),
    inference(spm,[status(thm)],[c_0_113,c_0_44])).

cnf(c_0_120,plain,
    ( k4_subset_1(X2,X1,X3) = k3_tarski(k2_tarski(X1,X3))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X2))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(rw,[status(thm)],[c_0_114,c_0_58])).

cnf(c_0_121,plain,
    ( k4_subset_1(u1_struct_0(X1),k3_subset_1(u1_struct_0(X1),X2),k2_tops_1(X1,X2)) = k2_pre_topc(X1,k3_subset_1(u1_struct_0(X1),X2))
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_115,c_0_101]),c_0_99])).

cnf(c_0_122,negated_conjecture,
    ( k3_subset_1(u1_struct_0(esk1_0),k3_subset_1(u1_struct_0(esk1_0),esk2_0)) = esk2_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_102,c_0_116])])).

cnf(c_0_123,negated_conjecture,
    ( m1_subset_1(k2_tops_1(esk1_0,esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ m1_subset_1(k3_subset_1(u1_struct_0(esk1_0),esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_117,c_0_118]),c_0_103])])).

cnf(c_0_124,plain,
    ( r1_tarski(X1,k4_subset_1(X2,X3,X1))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X2)) ),
    inference(spm,[status(thm)],[c_0_119,c_0_120])).

cnf(c_0_125,negated_conjecture,
    ( k4_subset_1(u1_struct_0(esk1_0),esk2_0,k2_tops_1(esk1_0,esk2_0)) = k2_pre_topc(esk1_0,esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_121,c_0_122]),c_0_118]),c_0_103]),c_0_116])])).

cnf(c_0_126,negated_conjecture,
    ( m1_subset_1(k2_tops_1(esk1_0,esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_123,c_0_111]),c_0_112])])).

fof(c_0_127,plain,(
    ! [X46,X47] :
      ( ( ~ v4_pre_topc(X47,X46)
        | k2_pre_topc(X46,X47) = X47
        | ~ m1_subset_1(X47,k1_zfmisc_1(u1_struct_0(X46)))
        | ~ l1_pre_topc(X46) )
      & ( ~ v2_pre_topc(X46)
        | k2_pre_topc(X46,X47) != X47
        | v4_pre_topc(X47,X46)
        | ~ m1_subset_1(X47,k1_zfmisc_1(u1_struct_0(X46)))
        | ~ l1_pre_topc(X46) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t52_pre_topc])])])])).

cnf(c_0_128,negated_conjecture,
    ( r1_tarski(k2_tops_1(esk1_0,esk2_0),k2_pre_topc(esk1_0,esk2_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_124,c_0_125]),c_0_126]),c_0_33])])).

cnf(c_0_129,plain,
    ( k2_pre_topc(X2,X1) = X1
    | ~ v4_pre_topc(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))
    | ~ l1_pre_topc(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_127])).

cnf(c_0_130,negated_conjecture,
    ( v4_pre_topc(esk2_0,esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_131,negated_conjecture,
    ( ~ r1_tarski(k2_tops_1(esk1_0,esk2_0),esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_132,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_128,c_0_129]),c_0_130]),c_0_103]),c_0_33])]),c_0_131]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.33  % Computer   : n020.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % WCLimit    : 600
% 0.13/0.33  % DateTime   : Tue Dec  1 10:34:52 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.55/0.77  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.55/0.77  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.55/0.77  #
% 0.55/0.77  # Preprocessing time       : 0.028 s
% 0.55/0.77  # Presaturation interreduction done
% 0.55/0.77  
% 0.55/0.77  # Proof found!
% 0.55/0.77  # SZS status Theorem
% 0.55/0.77  # SZS output start CNFRefutation
% 0.55/0.77  fof(t69_tops_1, conjecture, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>(v4_pre_topc(X2,X1)=>r1_tarski(k2_tops_1(X1,X2),X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t69_tops_1)).
% 0.55/0.77  fof(t3_subset, axiom, ![X1, X2]:(m1_subset_1(X1,k1_zfmisc_1(X2))<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_subset)).
% 0.55/0.77  fof(t100_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t100_xboole_1)).
% 0.55/0.77  fof(t12_setfam_1, axiom, ![X1, X2]:k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t12_setfam_1)).
% 0.55/0.77  fof(t28_xboole_1, axiom, ![X1, X2]:(r1_tarski(X1,X2)=>k3_xboole_0(X1,X2)=X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t28_xboole_1)).
% 0.55/0.77  fof(t1_xboole_1, axiom, ![X1, X2, X3]:((r1_tarski(X1,X2)&r1_tarski(X2,X3))=>r1_tarski(X1,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t1_xboole_1)).
% 0.55/0.77  fof(t36_xboole_1, axiom, ![X1, X2]:r1_tarski(k4_xboole_0(X1,X2),X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t36_xboole_1)).
% 0.55/0.77  fof(commutativity_k2_tarski, axiom, ![X1, X2]:k2_tarski(X1,X2)=k2_tarski(X2,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', commutativity_k2_tarski)).
% 0.55/0.77  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.55/0.77  fof(t44_xboole_1, axiom, ![X1, X2, X3]:(r1_tarski(k4_xboole_0(X1,X2),X3)=>r1_tarski(X1,k2_xboole_0(X2,X3))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t44_xboole_1)).
% 0.55/0.77  fof(l51_zfmisc_1, axiom, ![X1, X2]:k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l51_zfmisc_1)).
% 0.55/0.77  fof(t17_xboole_1, axiom, ![X1, X2]:r1_tarski(k3_xboole_0(X1,X2),X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t17_xboole_1)).
% 0.55/0.77  fof(t38_xboole_1, axiom, ![X1, X2]:(r1_tarski(X1,k4_xboole_0(X2,X1))=>X1=k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t38_xboole_1)).
% 0.55/0.77  fof(t43_xboole_1, axiom, ![X1, X2, X3]:(r1_tarski(X1,k2_xboole_0(X2,X3))=>r1_tarski(k4_xboole_0(X1,X2),X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t43_xboole_1)).
% 0.55/0.77  fof(t3_xboole_1, axiom, ![X1]:(r1_tarski(X1,k1_xboole_0)=>X1=k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_xboole_1)).
% 0.55/0.77  fof(t3_boole, axiom, ![X1]:k4_xboole_0(X1,k1_xboole_0)=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_boole)).
% 0.55/0.77  fof(t48_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,k4_xboole_0(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t48_xboole_1)).
% 0.55/0.77  fof(d5_subset_1, axiom, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>k3_subset_1(X1,X2)=k4_xboole_0(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d5_subset_1)).
% 0.55/0.77  fof(dt_k3_subset_1, axiom, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>m1_subset_1(k3_subset_1(X1,X2),k1_zfmisc_1(X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k3_subset_1)).
% 0.55/0.77  fof(t62_tops_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>k2_tops_1(X1,X2)=k2_tops_1(X1,k3_subset_1(u1_struct_0(X1),X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t62_tops_1)).
% 0.55/0.77  fof(t7_xboole_1, axiom, ![X1, X2]:r1_tarski(X1,k2_xboole_0(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t7_xboole_1)).
% 0.55/0.77  fof(redefinition_k4_subset_1, axiom, ![X1, X2, X3]:((m1_subset_1(X2,k1_zfmisc_1(X1))&m1_subset_1(X3,k1_zfmisc_1(X1)))=>k4_subset_1(X1,X2,X3)=k2_xboole_0(X2,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k4_subset_1)).
% 0.55/0.77  fof(t65_tops_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>k2_pre_topc(X1,X2)=k4_subset_1(u1_struct_0(X1),X2,k2_tops_1(X1,X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t65_tops_1)).
% 0.55/0.77  fof(dt_k2_tops_1, axiom, ![X1, X2]:((l1_pre_topc(X1)&m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))))=>m1_subset_1(k2_tops_1(X1,X2),k1_zfmisc_1(u1_struct_0(X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k2_tops_1)).
% 0.55/0.77  fof(t52_pre_topc, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>((v4_pre_topc(X2,X1)=>k2_pre_topc(X1,X2)=X2)&((v2_pre_topc(X1)&k2_pre_topc(X1,X2)=X2)=>v4_pre_topc(X2,X1))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t52_pre_topc)).
% 0.55/0.77  fof(c_0_25, negated_conjecture, ~(![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>(v4_pre_topc(X2,X1)=>r1_tarski(k2_tops_1(X1,X2),X2))))), inference(assume_negation,[status(cth)],[t69_tops_1])).
% 0.55/0.77  fof(c_0_26, plain, ![X44, X45]:((~m1_subset_1(X44,k1_zfmisc_1(X45))|r1_tarski(X44,X45))&(~r1_tarski(X44,X45)|m1_subset_1(X44,k1_zfmisc_1(X45)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).
% 0.55/0.77  fof(c_0_27, negated_conjecture, (l1_pre_topc(esk1_0)&(m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0)))&(v4_pre_topc(esk2_0,esk1_0)&~r1_tarski(k2_tops_1(esk1_0,esk2_0),esk2_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_25])])])).
% 0.55/0.77  fof(c_0_28, plain, ![X6, X7]:k4_xboole_0(X6,X7)=k5_xboole_0(X6,k3_xboole_0(X6,X7)), inference(variable_rename,[status(thm)],[t100_xboole_1])).
% 0.55/0.77  fof(c_0_29, plain, ![X42, X43]:k1_setfam_1(k2_tarski(X42,X43))=k3_xboole_0(X42,X43), inference(variable_rename,[status(thm)],[t12_setfam_1])).
% 0.55/0.77  fof(c_0_30, plain, ![X13, X14]:(~r1_tarski(X13,X14)|k3_xboole_0(X13,X14)=X13), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t28_xboole_1])])).
% 0.55/0.77  fof(c_0_31, plain, ![X10, X11, X12]:(~r1_tarski(X10,X11)|~r1_tarski(X11,X12)|r1_tarski(X10,X12)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_xboole_1])])).
% 0.55/0.77  cnf(c_0_32, plain, (r1_tarski(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.55/0.77  cnf(c_0_33, negated_conjecture, (m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.55/0.77  fof(c_0_34, plain, ![X15, X16]:r1_tarski(k4_xboole_0(X15,X16),X15), inference(variable_rename,[status(thm)],[t36_xboole_1])).
% 0.55/0.77  cnf(c_0_35, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.55/0.77  cnf(c_0_36, plain, (k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.55/0.77  cnf(c_0_37, plain, (k3_xboole_0(X1,X2)=X1|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.55/0.77  fof(c_0_38, plain, ![X31, X32]:k2_tarski(X31,X32)=k2_tarski(X32,X31), inference(variable_rename,[status(thm)],[commutativity_k2_tarski])).
% 0.55/0.77  cnf(c_0_39, plain, (r1_tarski(X1,X3)|~r1_tarski(X1,X2)|~r1_tarski(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_31])).
% 0.55/0.77  cnf(c_0_40, negated_conjecture, (r1_tarski(esk2_0,u1_struct_0(esk1_0))), inference(spm,[status(thm)],[c_0_32, c_0_33])).
% 0.55/0.77  cnf(c_0_41, plain, (r1_tarski(k4_xboole_0(X1,X2),X1)), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.55/0.77  cnf(c_0_42, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2)))), inference(rw,[status(thm)],[c_0_35, c_0_36])).
% 0.55/0.77  cnf(c_0_43, plain, (k1_setfam_1(k2_tarski(X1,X2))=X1|~r1_tarski(X1,X2)), inference(rw,[status(thm)],[c_0_37, c_0_36])).
% 0.55/0.77  cnf(c_0_44, plain, (k2_tarski(X1,X2)=k2_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_38])).
% 0.55/0.77  cnf(c_0_45, negated_conjecture, (r1_tarski(X1,u1_struct_0(esk1_0))|~r1_tarski(X1,esk2_0)), inference(spm,[status(thm)],[c_0_39, c_0_40])).
% 0.55/0.77  cnf(c_0_46, plain, (r1_tarski(k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))),X1)), inference(rw,[status(thm)],[c_0_41, c_0_42])).
% 0.55/0.77  cnf(c_0_47, plain, (k1_setfam_1(k2_tarski(X1,X2))=X2|~r1_tarski(X2,X1)), inference(spm,[status(thm)],[c_0_43, c_0_44])).
% 0.55/0.77  fof(c_0_48, plain, ![X4, X5]:(((r1_tarski(X4,X5)|X4!=X5)&(r1_tarski(X5,X4)|X4!=X5))&(~r1_tarski(X4,X5)|~r1_tarski(X5,X4)|X4=X5)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.55/0.77  fof(c_0_49, plain, ![X24, X25, X26]:(~r1_tarski(k4_xboole_0(X24,X25),X26)|r1_tarski(X24,k2_xboole_0(X25,X26))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t44_xboole_1])])).
% 0.55/0.77  fof(c_0_50, plain, ![X33, X34]:k3_tarski(k2_tarski(X33,X34))=k2_xboole_0(X33,X34), inference(variable_rename,[status(thm)],[l51_zfmisc_1])).
% 0.55/0.77  cnf(c_0_51, negated_conjecture, (r1_tarski(X1,u1_struct_0(esk1_0))|~r1_tarski(X2,esk2_0)|~r1_tarski(X1,X2)), inference(spm,[status(thm)],[c_0_39, c_0_45])).
% 0.55/0.77  cnf(c_0_52, plain, (r1_tarski(k5_xboole_0(X1,X2),X1)|~r1_tarski(X2,X1)), inference(spm,[status(thm)],[c_0_46, c_0_47])).
% 0.55/0.77  cnf(c_0_53, plain, (r1_tarski(X1,X2)|X2!=X1), inference(split_conjunct,[status(thm)],[c_0_48])).
% 0.55/0.77  fof(c_0_54, plain, ![X8, X9]:r1_tarski(k3_xboole_0(X8,X9),X8), inference(variable_rename,[status(thm)],[t17_xboole_1])).
% 0.55/0.77  fof(c_0_55, plain, ![X17, X18]:(~r1_tarski(X17,k4_xboole_0(X18,X17))|X17=k1_xboole_0), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t38_xboole_1])])).
% 0.55/0.77  fof(c_0_56, plain, ![X21, X22, X23]:(~r1_tarski(X21,k2_xboole_0(X22,X23))|r1_tarski(k4_xboole_0(X21,X22),X23)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t43_xboole_1])])).
% 0.55/0.77  cnf(c_0_57, plain, (r1_tarski(X1,k2_xboole_0(X2,X3))|~r1_tarski(k4_xboole_0(X1,X2),X3)), inference(split_conjunct,[status(thm)],[c_0_49])).
% 0.55/0.77  cnf(c_0_58, plain, (k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_50])).
% 0.55/0.77  cnf(c_0_59, negated_conjecture, (r1_tarski(X1,u1_struct_0(esk1_0))|~r1_tarski(X1,k5_xboole_0(esk2_0,X2))|~r1_tarski(X2,esk2_0)), inference(spm,[status(thm)],[c_0_51, c_0_52])).
% 0.55/0.77  cnf(c_0_60, plain, (r1_tarski(X1,X1)), inference(er,[status(thm)],[c_0_53])).
% 0.55/0.77  cnf(c_0_61, plain, (r1_tarski(k3_xboole_0(X1,X2),X1)), inference(split_conjunct,[status(thm)],[c_0_54])).
% 0.55/0.77  fof(c_0_62, plain, ![X20]:(~r1_tarski(X20,k1_xboole_0)|X20=k1_xboole_0), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_xboole_1])])).
% 0.55/0.77  cnf(c_0_63, plain, (X1=k1_xboole_0|~r1_tarski(X1,k4_xboole_0(X2,X1))), inference(split_conjunct,[status(thm)],[c_0_55])).
% 0.55/0.77  cnf(c_0_64, plain, (r1_tarski(k4_xboole_0(X1,X2),X3)|~r1_tarski(X1,k2_xboole_0(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_56])).
% 0.55/0.77  cnf(c_0_65, plain, (r1_tarski(X1,k3_tarski(k2_tarski(X2,X3)))|~r1_tarski(k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))),X3)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_57, c_0_58]), c_0_42])).
% 0.55/0.77  cnf(c_0_66, negated_conjecture, (r1_tarski(k5_xboole_0(esk2_0,X1),u1_struct_0(esk1_0))|~r1_tarski(X1,esk2_0)), inference(spm,[status(thm)],[c_0_59, c_0_60])).
% 0.55/0.77  cnf(c_0_67, plain, (r1_tarski(k1_setfam_1(k2_tarski(X1,X2)),X1)), inference(rw,[status(thm)],[c_0_61, c_0_36])).
% 0.55/0.77  fof(c_0_68, plain, ![X19]:k4_xboole_0(X19,k1_xboole_0)=X19, inference(variable_rename,[status(thm)],[t3_boole])).
% 0.55/0.77  cnf(c_0_69, plain, (X1=k1_xboole_0|~r1_tarski(X1,k1_xboole_0)), inference(split_conjunct,[status(thm)],[c_0_62])).
% 0.55/0.77  fof(c_0_70, plain, ![X27, X28]:k4_xboole_0(X27,k4_xboole_0(X27,X28))=k3_xboole_0(X27,X28), inference(variable_rename,[status(thm)],[t48_xboole_1])).
% 0.55/0.77  fof(c_0_71, plain, ![X35, X36]:(~m1_subset_1(X36,k1_zfmisc_1(X35))|k3_subset_1(X35,X36)=k4_xboole_0(X35,X36)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d5_subset_1])])).
% 0.55/0.77  cnf(c_0_72, plain, (X1=k1_xboole_0|~r1_tarski(X1,k5_xboole_0(X2,k1_setfam_1(k2_tarski(X2,X1))))), inference(rw,[status(thm)],[c_0_63, c_0_42])).
% 0.55/0.77  cnf(c_0_73, plain, (r1_tarski(k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))),X3)|~r1_tarski(X1,k3_tarski(k2_tarski(X2,X3)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_64, c_0_58]), c_0_42])).
% 0.55/0.77  cnf(c_0_74, negated_conjecture, (r1_tarski(esk2_0,k3_tarski(k2_tarski(X1,u1_struct_0(esk1_0))))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_65, c_0_66]), c_0_67])])).
% 0.55/0.77  cnf(c_0_75, plain, (k4_xboole_0(X1,k1_xboole_0)=X1), inference(split_conjunct,[status(thm)],[c_0_68])).
% 0.55/0.77  cnf(c_0_76, plain, (k1_setfam_1(k2_tarski(k1_xboole_0,X1))=k1_xboole_0), inference(spm,[status(thm)],[c_0_69, c_0_67])).
% 0.55/0.77  cnf(c_0_77, plain, (k4_xboole_0(X1,k4_xboole_0(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_70])).
% 0.55/0.77  cnf(c_0_78, plain, (k3_subset_1(X2,X1)=k4_xboole_0(X2,X1)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_71])).
% 0.55/0.77  cnf(c_0_79, plain, (k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2)))=k1_xboole_0|~r1_tarski(X1,k3_tarski(k2_tarski(X2,k5_xboole_0(X3,k1_setfam_1(k2_tarski(X3,k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2)))))))))), inference(spm,[status(thm)],[c_0_72, c_0_73])).
% 0.55/0.77  cnf(c_0_80, negated_conjecture, (r1_tarski(esk2_0,k3_tarski(k2_tarski(u1_struct_0(esk1_0),X1)))), inference(spm,[status(thm)],[c_0_74, c_0_44])).
% 0.55/0.77  cnf(c_0_81, plain, (k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,k1_xboole_0)))=X1), inference(rw,[status(thm)],[c_0_75, c_0_42])).
% 0.55/0.77  cnf(c_0_82, plain, (k1_setfam_1(k2_tarski(X1,k1_xboole_0))=k1_xboole_0), inference(spm,[status(thm)],[c_0_76, c_0_44])).
% 0.55/0.77  cnf(c_0_83, plain, (k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))))))=k1_setfam_1(k2_tarski(X1,X2))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_77, c_0_36]), c_0_42]), c_0_42])).
% 0.55/0.77  cnf(c_0_84, plain, (k3_subset_1(X2,X1)=k5_xboole_0(X2,k1_setfam_1(k2_tarski(X2,X1)))|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(rw,[status(thm)],[c_0_78, c_0_42])).
% 0.55/0.77  cnf(c_0_85, negated_conjecture, (k5_xboole_0(esk2_0,k1_setfam_1(k2_tarski(esk2_0,u1_struct_0(esk1_0))))=k1_xboole_0), inference(spm,[status(thm)],[c_0_79, c_0_80])).
% 0.55/0.77  cnf(c_0_86, plain, (k5_xboole_0(X1,k1_xboole_0)=X1), inference(rw,[status(thm)],[c_0_81, c_0_82])).
% 0.55/0.77  cnf(c_0_87, plain, (k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,k1_setfam_1(k2_tarski(X1,X2)))))=k1_setfam_1(k2_tarski(X1,k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2)))))), inference(spm,[status(thm)],[c_0_83, c_0_83])).
% 0.55/0.77  cnf(c_0_88, plain, (k5_xboole_0(X1,k1_setfam_1(k2_tarski(X2,X1)))=k3_subset_1(X1,X2)|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_84, c_0_44])).
% 0.55/0.77  cnf(c_0_89, negated_conjecture, (k1_setfam_1(k2_tarski(esk2_0,u1_struct_0(esk1_0)))=esk2_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_83, c_0_85]), c_0_82]), c_0_86])).
% 0.55/0.77  cnf(c_0_90, plain, (k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,k1_setfam_1(k2_tarski(X2,X1)))))=k1_setfam_1(k2_tarski(X1,k5_xboole_0(X1,k1_setfam_1(k2_tarski(X2,X1)))))), inference(spm,[status(thm)],[c_0_87, c_0_44])).
% 0.55/0.77  cnf(c_0_91, negated_conjecture, (k5_xboole_0(u1_struct_0(esk1_0),esk2_0)=k3_subset_1(u1_struct_0(esk1_0),esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_88, c_0_89]), c_0_33])])).
% 0.55/0.77  cnf(c_0_92, plain, (k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,k3_subset_1(X1,X2))))=k1_setfam_1(k2_tarski(X1,X2))|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_83, c_0_84])).
% 0.55/0.77  cnf(c_0_93, negated_conjecture, (k1_setfam_1(k2_tarski(u1_struct_0(esk1_0),k3_subset_1(u1_struct_0(esk1_0),esk2_0)))=k3_subset_1(u1_struct_0(esk1_0),esk2_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_90, c_0_89]), c_0_44]), c_0_89]), c_0_91]), c_0_91])).
% 0.55/0.77  fof(c_0_94, plain, ![X37, X38]:(~m1_subset_1(X38,k1_zfmisc_1(X37))|m1_subset_1(k3_subset_1(X37,X38),k1_zfmisc_1(X37))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k3_subset_1])])).
% 0.55/0.77  fof(c_0_95, plain, ![X50, X51]:(~l1_pre_topc(X50)|(~m1_subset_1(X51,k1_zfmisc_1(u1_struct_0(X50)))|k2_tops_1(X50,X51)=k2_tops_1(X50,k3_subset_1(u1_struct_0(X50),X51)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t62_tops_1])])])).
% 0.55/0.77  cnf(c_0_96, plain, (k5_xboole_0(X1,X2)=k3_subset_1(X1,X2)|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_84, c_0_47]), c_0_32])).
% 0.55/0.77  cnf(c_0_97, negated_conjecture, (k5_xboole_0(u1_struct_0(esk1_0),k3_subset_1(u1_struct_0(esk1_0),esk2_0))=esk2_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_92, c_0_93]), c_0_44]), c_0_89]), c_0_33])])).
% 0.55/0.77  fof(c_0_98, plain, ![X29, X30]:r1_tarski(X29,k2_xboole_0(X29,X30)), inference(variable_rename,[status(thm)],[t7_xboole_1])).
% 0.55/0.77  cnf(c_0_99, plain, (m1_subset_1(k3_subset_1(X2,X1),k1_zfmisc_1(X2))|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_94])).
% 0.55/0.77  cnf(c_0_100, plain, (k3_subset_1(X1,k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))))=k1_setfam_1(k2_tarski(X1,X2))|~m1_subset_1(k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))),k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_83, c_0_84])).
% 0.55/0.77  cnf(c_0_101, plain, (k2_tops_1(X1,X2)=k2_tops_1(X1,k3_subset_1(u1_struct_0(X1),X2))|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_95])).
% 0.55/0.77  cnf(c_0_102, negated_conjecture, (k3_subset_1(u1_struct_0(esk1_0),k3_subset_1(u1_struct_0(esk1_0),esk2_0))=esk2_0|~m1_subset_1(k3_subset_1(u1_struct_0(esk1_0),esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(spm,[status(thm)],[c_0_96, c_0_97])).
% 0.55/0.77  cnf(c_0_103, negated_conjecture, (l1_pre_topc(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.55/0.77  cnf(c_0_104, plain, (r1_tarski(k5_xboole_0(X1,k1_setfam_1(k2_tarski(X2,X1))),X1)), inference(spm,[status(thm)],[c_0_46, c_0_44])).
% 0.55/0.77  cnf(c_0_105, plain, (r1_tarski(X1,k2_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_98])).
% 0.55/0.77  fof(c_0_106, plain, ![X39, X40, X41]:(~m1_subset_1(X40,k1_zfmisc_1(X39))|~m1_subset_1(X41,k1_zfmisc_1(X39))|k4_subset_1(X39,X40,X41)=k2_xboole_0(X40,X41)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k4_subset_1])])).
% 0.55/0.77  fof(c_0_107, plain, ![X52, X53]:(~l1_pre_topc(X52)|(~m1_subset_1(X53,k1_zfmisc_1(u1_struct_0(X52)))|k2_pre_topc(X52,X53)=k4_subset_1(u1_struct_0(X52),X53,k2_tops_1(X52,X53)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t65_tops_1])])])).
% 0.55/0.77  cnf(c_0_108, plain, (m1_subset_1(k1_setfam_1(k2_tarski(X1,X2)),k1_zfmisc_1(X1))|~m1_subset_1(k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))),k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_99, c_0_100])).
% 0.55/0.77  fof(c_0_109, plain, ![X48, X49]:(~l1_pre_topc(X48)|~m1_subset_1(X49,k1_zfmisc_1(u1_struct_0(X48)))|m1_subset_1(k2_tops_1(X48,X49),k1_zfmisc_1(u1_struct_0(X48)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_tops_1])])).
% 0.55/0.77  cnf(c_0_110, negated_conjecture, (k2_tops_1(esk1_0,k3_subset_1(u1_struct_0(esk1_0),esk2_0))=k2_tops_1(esk1_0,esk2_0)|~m1_subset_1(k3_subset_1(u1_struct_0(esk1_0),esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_101, c_0_102]), c_0_103])])).
% 0.55/0.77  cnf(c_0_111, plain, (m1_subset_1(X1,k1_zfmisc_1(X2))|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.55/0.77  cnf(c_0_112, negated_conjecture, (r1_tarski(k3_subset_1(u1_struct_0(esk1_0),esk2_0),u1_struct_0(esk1_0))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_104, c_0_89]), c_0_91])).
% 0.55/0.77  cnf(c_0_113, plain, (r1_tarski(X1,k3_tarski(k2_tarski(X1,X2)))), inference(rw,[status(thm)],[c_0_105, c_0_58])).
% 0.55/0.77  cnf(c_0_114, plain, (k4_subset_1(X2,X1,X3)=k2_xboole_0(X1,X3)|~m1_subset_1(X1,k1_zfmisc_1(X2))|~m1_subset_1(X3,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_106])).
% 0.55/0.77  cnf(c_0_115, plain, (k2_pre_topc(X1,X2)=k4_subset_1(u1_struct_0(X1),X2,k2_tops_1(X1,X2))|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_107])).
% 0.55/0.77  cnf(c_0_116, negated_conjecture, (m1_subset_1(k3_subset_1(u1_struct_0(esk1_0),esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_108, c_0_93]), c_0_97]), c_0_33])])).
% 0.55/0.77  cnf(c_0_117, plain, (m1_subset_1(k2_tops_1(X1,X2),k1_zfmisc_1(u1_struct_0(X1)))|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_109])).
% 0.55/0.77  cnf(c_0_118, negated_conjecture, (k2_tops_1(esk1_0,k3_subset_1(u1_struct_0(esk1_0),esk2_0))=k2_tops_1(esk1_0,esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_110, c_0_111]), c_0_112])])).
% 0.55/0.77  cnf(c_0_119, plain, (r1_tarski(X1,k3_tarski(k2_tarski(X2,X1)))), inference(spm,[status(thm)],[c_0_113, c_0_44])).
% 0.55/0.77  cnf(c_0_120, plain, (k4_subset_1(X2,X1,X3)=k3_tarski(k2_tarski(X1,X3))|~m1_subset_1(X3,k1_zfmisc_1(X2))|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(rw,[status(thm)],[c_0_114, c_0_58])).
% 0.55/0.77  cnf(c_0_121, plain, (k4_subset_1(u1_struct_0(X1),k3_subset_1(u1_struct_0(X1),X2),k2_tops_1(X1,X2))=k2_pre_topc(X1,k3_subset_1(u1_struct_0(X1),X2))|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_115, c_0_101]), c_0_99])).
% 0.55/0.77  cnf(c_0_122, negated_conjecture, (k3_subset_1(u1_struct_0(esk1_0),k3_subset_1(u1_struct_0(esk1_0),esk2_0))=esk2_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_102, c_0_116])])).
% 0.55/0.77  cnf(c_0_123, negated_conjecture, (m1_subset_1(k2_tops_1(esk1_0,esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0)))|~m1_subset_1(k3_subset_1(u1_struct_0(esk1_0),esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_117, c_0_118]), c_0_103])])).
% 0.55/0.77  cnf(c_0_124, plain, (r1_tarski(X1,k4_subset_1(X2,X3,X1))|~m1_subset_1(X1,k1_zfmisc_1(X2))|~m1_subset_1(X3,k1_zfmisc_1(X2))), inference(spm,[status(thm)],[c_0_119, c_0_120])).
% 0.55/0.77  cnf(c_0_125, negated_conjecture, (k4_subset_1(u1_struct_0(esk1_0),esk2_0,k2_tops_1(esk1_0,esk2_0))=k2_pre_topc(esk1_0,esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_121, c_0_122]), c_0_118]), c_0_103]), c_0_116])])).
% 0.55/0.77  cnf(c_0_126, negated_conjecture, (m1_subset_1(k2_tops_1(esk1_0,esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_123, c_0_111]), c_0_112])])).
% 0.55/0.77  fof(c_0_127, plain, ![X46, X47]:((~v4_pre_topc(X47,X46)|k2_pre_topc(X46,X47)=X47|~m1_subset_1(X47,k1_zfmisc_1(u1_struct_0(X46)))|~l1_pre_topc(X46))&(~v2_pre_topc(X46)|k2_pre_topc(X46,X47)!=X47|v4_pre_topc(X47,X46)|~m1_subset_1(X47,k1_zfmisc_1(u1_struct_0(X46)))|~l1_pre_topc(X46))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t52_pre_topc])])])])).
% 0.55/0.77  cnf(c_0_128, negated_conjecture, (r1_tarski(k2_tops_1(esk1_0,esk2_0),k2_pre_topc(esk1_0,esk2_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_124, c_0_125]), c_0_126]), c_0_33])])).
% 0.55/0.77  cnf(c_0_129, plain, (k2_pre_topc(X2,X1)=X1|~v4_pre_topc(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))|~l1_pre_topc(X2)), inference(split_conjunct,[status(thm)],[c_0_127])).
% 0.55/0.77  cnf(c_0_130, negated_conjecture, (v4_pre_topc(esk2_0,esk1_0)), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.55/0.77  cnf(c_0_131, negated_conjecture, (~r1_tarski(k2_tops_1(esk1_0,esk2_0),esk2_0)), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.55/0.77  cnf(c_0_132, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_128, c_0_129]), c_0_130]), c_0_103]), c_0_33])]), c_0_131]), ['proof']).
% 0.55/0.77  # SZS output end CNFRefutation
% 0.55/0.77  # Proof object total steps             : 133
% 0.55/0.77  # Proof object clause steps            : 82
% 0.55/0.77  # Proof object formula steps           : 51
% 0.55/0.77  # Proof object conjectures             : 30
% 0.55/0.77  # Proof object clause conjectures      : 27
% 0.55/0.77  # Proof object formula conjectures     : 3
% 0.55/0.77  # Proof object initial clauses used    : 29
% 0.55/0.77  # Proof object initial formulas used   : 25
% 0.55/0.77  # Proof object generating inferences   : 38
% 0.55/0.77  # Proof object simplifying inferences  : 60
% 0.55/0.77  # Training examples: 0 positive, 0 negative
% 0.55/0.77  # Parsed axioms                        : 25
% 0.55/0.77  # Removed by relevancy pruning/SinE    : 0
% 0.55/0.77  # Initial clauses                      : 32
% 0.55/0.77  # Removed in clause preprocessing      : 3
% 0.55/0.77  # Initial clauses in saturation        : 29
% 0.55/0.77  # Processed clauses                    : 4766
% 0.55/0.77  # ...of these trivial                  : 73
% 0.55/0.77  # ...subsumed                          : 3930
% 0.55/0.77  # ...remaining for further processing  : 763
% 0.55/0.77  # Other redundant clauses eliminated   : 2
% 0.55/0.77  # Clauses deleted for lack of memory   : 0
% 0.55/0.77  # Backward-subsumed                    : 14
% 0.55/0.77  # Backward-rewritten                   : 47
% 0.55/0.77  # Generated clauses                    : 32838
% 0.55/0.77  # ...of the previous two non-trivial   : 26046
% 0.55/0.77  # Contextual simplify-reflections      : 17
% 0.55/0.77  # Paramodulations                      : 32836
% 0.55/0.77  # Factorizations                       : 0
% 0.55/0.78  # Equation resolutions                 : 2
% 0.55/0.78  # Propositional unsat checks           : 0
% 0.55/0.78  #    Propositional check models        : 0
% 0.55/0.78  #    Propositional check unsatisfiable : 0
% 0.55/0.78  #    Propositional clauses             : 0
% 0.55/0.78  #    Propositional clauses after purity: 0
% 0.55/0.78  #    Propositional unsat core size     : 0
% 0.55/0.78  #    Propositional preprocessing time  : 0.000
% 0.55/0.78  #    Propositional encoding time       : 0.000
% 0.55/0.78  #    Propositional solver time         : 0.000
% 0.55/0.78  #    Success case prop preproc time    : 0.000
% 0.55/0.78  #    Success case prop encoding time   : 0.000
% 0.55/0.78  #    Success case prop solver time     : 0.000
% 0.55/0.78  # Current number of processed clauses  : 672
% 0.55/0.78  #    Positive orientable unit clauses  : 99
% 0.55/0.78  #    Positive unorientable unit clauses: 1
% 0.55/0.78  #    Negative unit clauses             : 4
% 0.55/0.78  #    Non-unit-clauses                  : 568
% 0.55/0.78  # Current number of unprocessed clauses: 21156
% 0.55/0.78  # ...number of literals in the above   : 59086
% 0.55/0.78  # Current number of archived formulas  : 0
% 0.55/0.78  # Current number of archived clauses   : 92
% 0.55/0.78  # Clause-clause subsumption calls (NU) : 76965
% 0.55/0.78  # Rec. Clause-clause subsumption calls : 62500
% 0.55/0.78  # Non-unit clause-clause subsumptions  : 3183
% 0.55/0.78  # Unit Clause-clause subsumption calls : 850
% 0.55/0.78  # Rewrite failures with RHS unbound    : 0
% 0.55/0.78  # BW rewrite match attempts            : 1283
% 0.55/0.78  # BW rewrite match successes           : 38
% 0.55/0.78  # Condensation attempts                : 0
% 0.55/0.78  # Condensation successes               : 0
% 0.55/0.78  # Termbank termtop insertions          : 544648
% 0.55/0.78  
% 0.55/0.78  # -------------------------------------------------
% 0.55/0.78  # User time                : 0.423 s
% 0.55/0.78  # System time              : 0.015 s
% 0.55/0.78  # Total time               : 0.438 s
% 0.55/0.78  # Maximum resident set size: 1592 pages
%------------------------------------------------------------------------------
