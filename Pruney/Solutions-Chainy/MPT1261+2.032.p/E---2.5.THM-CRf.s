%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n016.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:11:31 EST 2020

% Result     : Theorem 0.47s
% Output     : CNFRefutation 0.47s
% Verified   : 
% Statistics : Number of formulae       :  175 (3766 expanded)
%              Number of clauses        :  116 (1741 expanded)
%              Number of leaves         :   29 ( 966 expanded)
%              Depth                    :   21
%              Number of atoms          :  317 (5810 expanded)
%              Number of equality atoms :  128 (3354 expanded)
%              Maximal formula depth    :    9 (   3 average)
%              Maximal clause size      :    9 (   2 average)
%              Maximal term depth       :    7 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t100_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t100_xboole_1)).

fof(t12_setfam_1,axiom,(
    ! [X1,X2] : k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t12_setfam_1)).

fof(dt_k6_subset_1,axiom,(
    ! [X1,X2] : m1_subset_1(k6_subset_1(X1,X2),k1_zfmisc_1(X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k6_subset_1)).

fof(redefinition_k6_subset_1,axiom,(
    ! [X1,X2] : k6_subset_1(X1,X2) = k4_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k6_subset_1)).

fof(t48_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t48_xboole_1)).

fof(t3_boole,axiom,(
    ! [X1] : k4_xboole_0(X1,k1_xboole_0) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_boole)).

fof(t2_boole,axiom,(
    ! [X1] : k3_xboole_0(X1,k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_boole)).

fof(d5_subset_1,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => k3_subset_1(X1,X2) = k4_xboole_0(X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d5_subset_1)).

fof(redefinition_k4_subset_1,axiom,(
    ! [X1,X2,X3] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(X1))
        & m1_subset_1(X3,k1_zfmisc_1(X1)) )
     => k4_subset_1(X1,X2,X3) = k2_xboole_0(X2,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k4_subset_1)).

fof(l51_zfmisc_1,axiom,(
    ! [X1,X2] : k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l51_zfmisc_1)).

fof(t25_subset_1,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => k4_subset_1(X1,X2,k3_subset_1(X1,X2)) = k2_subset_1(X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t25_subset_1)).

fof(d4_subset_1,axiom,(
    ! [X1] : k2_subset_1(X1) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d4_subset_1)).

fof(redefinition_k7_subset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => k7_subset_1(X1,X2,X3) = k4_xboole_0(X2,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k7_subset_1)).

fof(t38_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,k4_xboole_0(X2,X1))
     => X1 = k1_xboole_0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t38_xboole_1)).

fof(commutativity_k2_tarski,axiom,(
    ! [X1,X2] : k2_tarski(X1,X2) = k2_tarski(X2,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k2_tarski)).

fof(t43_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( r1_tarski(X1,k2_xboole_0(X2,X3))
     => r1_tarski(k4_xboole_0(X1,X2),X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t43_xboole_1)).

fof(t77_tops_1,conjecture,(
    ! [X1] :
      ( ( v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ( v4_pre_topc(X2,X1)
          <=> k2_tops_1(X1,X2) = k7_subset_1(u1_struct_0(X1),X2,k1_tops_1(X1,X2)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t77_tops_1)).

fof(t74_tops_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => k1_tops_1(X1,X2) = k7_subset_1(u1_struct_0(X1),X2,k2_tops_1(X1,X2)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t74_tops_1)).

fof(t36_xboole_1,axiom,(
    ! [X1,X2] : r1_tarski(k4_xboole_0(X1,X2),X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t36_xboole_1)).

fof(t69_tops_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ( v4_pre_topc(X2,X1)
           => r1_tarski(k2_tops_1(X1,X2),X2) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_tops_1)).

fof(t3_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X2))
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_subset)).

fof(involutiveness_k3_subset_1,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => k3_subset_1(X1,k3_subset_1(X1,X2)) = X2 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',involutiveness_k3_subset_1)).

fof(t62_tops_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => k2_tops_1(X1,X2) = k2_tops_1(X1,k3_subset_1(u1_struct_0(X1),X2)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t62_tops_1)).

fof(dt_k3_subset_1,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => m1_subset_1(k3_subset_1(X1,X2),k1_zfmisc_1(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k3_subset_1)).

fof(t1_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( ( r1_tarski(X1,X2)
        & r1_tarski(X2,X3) )
     => r1_tarski(X1,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t1_xboole_1)).

fof(dt_k2_tops_1,axiom,(
    ! [X1,X2] :
      ( ( l1_pre_topc(X1)
        & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) )
     => m1_subset_1(k2_tops_1(X1,X2),k1_zfmisc_1(u1_struct_0(X1))) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k2_tops_1)).

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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t52_pre_topc)).

fof(t65_tops_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => k2_pre_topc(X1,X2) = k4_subset_1(u1_struct_0(X1),X2,k2_tops_1(X1,X2)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t65_tops_1)).

fof(t6_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,k2_xboole_0(X1,X2)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t6_xboole_1)).

fof(c_0_29,plain,(
    ! [X4,X5] : k4_xboole_0(X4,X5) = k5_xboole_0(X4,k3_xboole_0(X4,X5)) ),
    inference(variable_rename,[status(thm)],[t100_xboole_1])).

fof(c_0_30,plain,(
    ! [X48,X49] : k1_setfam_1(k2_tarski(X48,X49)) = k3_xboole_0(X48,X49) ),
    inference(variable_rename,[status(thm)],[t12_setfam_1])).

fof(c_0_31,plain,(
    ! [X34,X35] : m1_subset_1(k6_subset_1(X34,X35),k1_zfmisc_1(X34)) ),
    inference(variable_rename,[status(thm)],[dt_k6_subset_1])).

fof(c_0_32,plain,(
    ! [X41,X42] : k6_subset_1(X41,X42) = k4_xboole_0(X41,X42) ),
    inference(variable_rename,[status(thm)],[redefinition_k6_subset_1])).

cnf(c_0_33,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_34,plain,
    ( k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

fof(c_0_35,plain,(
    ! [X21,X22] : k4_xboole_0(X21,k4_xboole_0(X21,X22)) = k3_xboole_0(X21,X22) ),
    inference(variable_rename,[status(thm)],[t48_xboole_1])).

fof(c_0_36,plain,(
    ! [X14] : k4_xboole_0(X14,k1_xboole_0) = X14 ),
    inference(variable_rename,[status(thm)],[t3_boole])).

fof(c_0_37,plain,(
    ! [X9] : k3_xboole_0(X9,k1_xboole_0) = k1_xboole_0 ),
    inference(variable_rename,[status(thm)],[t2_boole])).

cnf(c_0_38,plain,
    ( m1_subset_1(k6_subset_1(X1,X2),k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

cnf(c_0_39,plain,
    ( k6_subset_1(X1,X2) = k4_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

cnf(c_0_40,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))) ),
    inference(rw,[status(thm)],[c_0_33,c_0_34])).

cnf(c_0_41,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

cnf(c_0_42,plain,
    ( k4_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

cnf(c_0_43,plain,
    ( k3_xboole_0(X1,k1_xboole_0) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

fof(c_0_44,plain,(
    ! [X30,X31] :
      ( ~ m1_subset_1(X31,k1_zfmisc_1(X30))
      | k3_subset_1(X30,X31) = k4_xboole_0(X30,X31) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d5_subset_1])])).

cnf(c_0_45,plain,
    ( m1_subset_1(k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))),k1_zfmisc_1(X1)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_38,c_0_39]),c_0_40])).

cnf(c_0_46,plain,
    ( k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2)))))) = k1_setfam_1(k2_tarski(X1,X2)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_41,c_0_34]),c_0_40]),c_0_40])).

fof(c_0_47,plain,(
    ! [X38,X39,X40] :
      ( ~ m1_subset_1(X39,k1_zfmisc_1(X38))
      | ~ m1_subset_1(X40,k1_zfmisc_1(X38))
      | k4_subset_1(X38,X39,X40) = k2_xboole_0(X39,X40) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k4_subset_1])])).

fof(c_0_48,plain,(
    ! [X27,X28] : k3_tarski(k2_tarski(X27,X28)) = k2_xboole_0(X27,X28) ),
    inference(variable_rename,[status(thm)],[l51_zfmisc_1])).

cnf(c_0_49,plain,
    ( k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,k1_xboole_0))) = X1 ),
    inference(rw,[status(thm)],[c_0_42,c_0_40])).

cnf(c_0_50,plain,
    ( k1_setfam_1(k2_tarski(X1,k1_xboole_0)) = k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_43,c_0_34])).

fof(c_0_51,plain,(
    ! [X46,X47] :
      ( ~ m1_subset_1(X47,k1_zfmisc_1(X46))
      | k4_subset_1(X46,X47,k3_subset_1(X46,X47)) = k2_subset_1(X46) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t25_subset_1])])).

fof(c_0_52,plain,(
    ! [X29] : k2_subset_1(X29) = X29 ),
    inference(variable_rename,[status(thm)],[d4_subset_1])).

cnf(c_0_53,plain,
    ( k3_subset_1(X2,X1) = k4_xboole_0(X2,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_44])).

cnf(c_0_54,plain,
    ( m1_subset_1(k1_setfam_1(k2_tarski(X1,X2)),k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_45,c_0_46])).

fof(c_0_55,plain,(
    ! [X43,X44,X45] :
      ( ~ m1_subset_1(X44,k1_zfmisc_1(X43))
      | k7_subset_1(X43,X44,X45) = k4_xboole_0(X44,X45) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k7_subset_1])])).

cnf(c_0_56,plain,
    ( k4_subset_1(X2,X1,X3) = k2_xboole_0(X1,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_47])).

cnf(c_0_57,plain,
    ( k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_48])).

cnf(c_0_58,plain,
    ( k5_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(rw,[status(thm)],[c_0_49,c_0_50])).

cnf(c_0_59,plain,
    ( k4_subset_1(X2,X1,k3_subset_1(X2,X1)) = k2_subset_1(X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_51])).

cnf(c_0_60,plain,
    ( k2_subset_1(X1) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_52])).

cnf(c_0_61,plain,
    ( k3_subset_1(X2,X1) = k5_xboole_0(X2,k1_setfam_1(k2_tarski(X2,X1)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(rw,[status(thm)],[c_0_53,c_0_40])).

cnf(c_0_62,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_54,c_0_50])).

fof(c_0_63,plain,(
    ! [X12,X13] :
      ( ~ r1_tarski(X12,k4_xboole_0(X13,X12))
      | X12 = k1_xboole_0 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t38_xboole_1])])).

fof(c_0_64,plain,(
    ! [X25,X26] : k2_tarski(X25,X26) = k2_tarski(X26,X25) ),
    inference(variable_rename,[status(thm)],[commutativity_k2_tarski])).

fof(c_0_65,plain,(
    ! [X15,X16,X17] :
      ( ~ r1_tarski(X15,k2_xboole_0(X16,X17))
      | r1_tarski(k4_xboole_0(X15,X16),X17) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t43_xboole_1])])).

cnf(c_0_66,plain,
    ( k7_subset_1(X2,X1,X3) = k4_xboole_0(X1,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_55])).

cnf(c_0_67,plain,
    ( k4_subset_1(X2,X1,X3) = k3_tarski(k2_tarski(X1,X3))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X2))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(rw,[status(thm)],[c_0_56,c_0_57])).

cnf(c_0_68,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X1)) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45,c_0_50]),c_0_58])).

cnf(c_0_69,plain,
    ( k4_subset_1(X2,X1,k3_subset_1(X2,X1)) = X2
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(rw,[status(thm)],[c_0_59,c_0_60])).

cnf(c_0_70,plain,
    ( k3_subset_1(X1,k1_xboole_0) = X1 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_61,c_0_62]),c_0_50]),c_0_58])).

cnf(c_0_71,plain,
    ( X1 = k1_xboole_0
    | ~ r1_tarski(X1,k4_xboole_0(X2,X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_63])).

cnf(c_0_72,plain,
    ( k2_tarski(X1,X2) = k2_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_64])).

cnf(c_0_73,plain,
    ( r1_tarski(k4_xboole_0(X1,X2),X3)
    | ~ r1_tarski(X1,k2_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_65])).

cnf(c_0_74,plain,
    ( k7_subset_1(X2,X1,X3) = k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X3)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(rw,[status(thm)],[c_0_66,c_0_40])).

cnf(c_0_75,plain,
    ( k4_subset_1(X1,X2,X1) = k3_tarski(k2_tarski(X2,X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_67,c_0_68])).

cnf(c_0_76,plain,
    ( k4_subset_1(X1,k1_xboole_0,X1) = X1 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_69,c_0_62]),c_0_70])).

fof(c_0_77,negated_conjecture,(
    ~ ! [X1] :
        ( ( v2_pre_topc(X1)
          & l1_pre_topc(X1) )
       => ! [X2] :
            ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
           => ( v4_pre_topc(X2,X1)
            <=> k2_tops_1(X1,X2) = k7_subset_1(u1_struct_0(X1),X2,k1_tops_1(X1,X2)) ) ) ) ),
    inference(assume_negation,[status(cth)],[t77_tops_1])).

cnf(c_0_78,plain,
    ( X1 = k1_xboole_0
    | ~ r1_tarski(X1,k5_xboole_0(X2,k1_setfam_1(k2_tarski(X2,X1)))) ),
    inference(rw,[status(thm)],[c_0_71,c_0_40])).

cnf(c_0_79,plain,
    ( k1_setfam_1(k2_tarski(k1_xboole_0,X1)) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_50,c_0_72])).

cnf(c_0_80,plain,
    ( r1_tarski(k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))),X3)
    | ~ r1_tarski(X1,k3_tarski(k2_tarski(X2,X3))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_73,c_0_57]),c_0_40])).

cnf(c_0_81,plain,
    ( k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))) = k7_subset_1(X1,X1,X2) ),
    inference(spm,[status(thm)],[c_0_74,c_0_68])).

cnf(c_0_82,plain,
    ( k3_tarski(k2_tarski(k1_xboole_0,X1)) = X1 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_75,c_0_62]),c_0_76])).

fof(c_0_83,plain,(
    ! [X62,X63] :
      ( ~ l1_pre_topc(X62)
      | ~ m1_subset_1(X63,k1_zfmisc_1(u1_struct_0(X62)))
      | k1_tops_1(X62,X63) = k7_subset_1(u1_struct_0(X62),X63,k2_tops_1(X62,X63)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t74_tops_1])])])).

fof(c_0_84,negated_conjecture,
    ( v2_pre_topc(esk1_0)
    & l1_pre_topc(esk1_0)
    & m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0)))
    & ( ~ v4_pre_topc(esk2_0,esk1_0)
      | k2_tops_1(esk1_0,esk2_0) != k7_subset_1(u1_struct_0(esk1_0),esk2_0,k1_tops_1(esk1_0,esk2_0)) )
    & ( v4_pre_topc(esk2_0,esk1_0)
      | k2_tops_1(esk1_0,esk2_0) = k7_subset_1(u1_struct_0(esk1_0),esk2_0,k1_tops_1(esk1_0,esk2_0)) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_77])])])).

cnf(c_0_85,plain,
    ( X1 = k1_xboole_0
    | ~ r1_tarski(X1,k1_xboole_0) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_78,c_0_79]),c_0_58])).

cnf(c_0_86,plain,
    ( r1_tarski(k7_subset_1(X1,X1,X2),X3)
    | ~ r1_tarski(X1,k3_tarski(k2_tarski(X2,X3))) ),
    inference(rw,[status(thm)],[c_0_80,c_0_81])).

cnf(c_0_87,plain,
    ( k3_tarski(k2_tarski(X1,k1_xboole_0)) = X1 ),
    inference(spm,[status(thm)],[c_0_82,c_0_72])).

cnf(c_0_88,plain,
    ( k1_tops_1(X1,X2) = k7_subset_1(u1_struct_0(X1),X2,k2_tops_1(X1,X2))
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_83])).

cnf(c_0_89,negated_conjecture,
    ( m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_84])).

cnf(c_0_90,negated_conjecture,
    ( l1_pre_topc(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_84])).

fof(c_0_91,plain,(
    ! [X10,X11] : r1_tarski(k4_xboole_0(X10,X11),X10) ),
    inference(variable_rename,[status(thm)],[t36_xboole_1])).

fof(c_0_92,plain,(
    ! [X60,X61] :
      ( ~ l1_pre_topc(X60)
      | ~ m1_subset_1(X61,k1_zfmisc_1(u1_struct_0(X60)))
      | ~ v4_pre_topc(X61,X60)
      | r1_tarski(k2_tops_1(X60,X61),X61) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t69_tops_1])])])).

cnf(c_0_93,plain,
    ( k7_subset_1(X1,X1,k7_subset_1(X1,X1,X2)) = k1_setfam_1(k2_tarski(X1,X2)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_46,c_0_81]),c_0_81])).

cnf(c_0_94,plain,
    ( k7_subset_1(X1,X1,X2) = k1_xboole_0
    | ~ r1_tarski(X1,X2) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_85,c_0_86]),c_0_87])).

cnf(c_0_95,plain,
    ( k7_subset_1(X1,X1,k1_xboole_0) = X1 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_81,c_0_50]),c_0_58])).

cnf(c_0_96,negated_conjecture,
    ( k7_subset_1(u1_struct_0(esk1_0),esk2_0,k2_tops_1(esk1_0,esk2_0)) = k1_tops_1(esk1_0,esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_88,c_0_89]),c_0_90])])).

cnf(c_0_97,negated_conjecture,
    ( k7_subset_1(u1_struct_0(esk1_0),esk2_0,X1) = k5_xboole_0(esk2_0,k1_setfam_1(k2_tarski(esk2_0,X1))) ),
    inference(spm,[status(thm)],[c_0_74,c_0_89])).

fof(c_0_98,plain,(
    ! [X50,X51] :
      ( ( ~ m1_subset_1(X50,k1_zfmisc_1(X51))
        | r1_tarski(X50,X51) )
      & ( ~ r1_tarski(X50,X51)
        | m1_subset_1(X50,k1_zfmisc_1(X51)) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).

cnf(c_0_99,plain,
    ( r1_tarski(k4_xboole_0(X1,X2),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_91])).

cnf(c_0_100,negated_conjecture,
    ( v4_pre_topc(esk2_0,esk1_0)
    | k2_tops_1(esk1_0,esk2_0) = k7_subset_1(u1_struct_0(esk1_0),esk2_0,k1_tops_1(esk1_0,esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_84])).

cnf(c_0_101,plain,
    ( r1_tarski(k2_tops_1(X1,X2),X2)
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v4_pre_topc(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_92])).

cnf(c_0_102,plain,
    ( k1_setfam_1(k2_tarski(X1,X2)) = X1
    | ~ r1_tarski(X1,X2) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_93,c_0_94]),c_0_95])).

cnf(c_0_103,negated_conjecture,
    ( ~ v4_pre_topc(esk2_0,esk1_0)
    | k2_tops_1(esk1_0,esk2_0) != k7_subset_1(u1_struct_0(esk1_0),esk2_0,k1_tops_1(esk1_0,esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_84])).

cnf(c_0_104,negated_conjecture,
    ( k5_xboole_0(esk2_0,k1_setfam_1(k2_tarski(esk2_0,k2_tops_1(esk1_0,esk2_0)))) = k1_tops_1(esk1_0,esk2_0) ),
    inference(rw,[status(thm)],[c_0_96,c_0_97])).

fof(c_0_105,plain,(
    ! [X36,X37] :
      ( ~ m1_subset_1(X37,k1_zfmisc_1(X36))
      | k3_subset_1(X36,k3_subset_1(X36,X37)) = X37 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[involutiveness_k3_subset_1])])).

cnf(c_0_106,plain,
    ( k7_subset_1(X1,X1,X2) = k3_subset_1(X1,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(rw,[status(thm)],[c_0_61,c_0_81])).

cnf(c_0_107,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_98])).

cnf(c_0_108,plain,
    ( r1_tarski(k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))),X1) ),
    inference(rw,[status(thm)],[c_0_99,c_0_40])).

cnf(c_0_109,negated_conjecture,
    ( k5_xboole_0(esk2_0,k1_setfam_1(k2_tarski(esk2_0,k1_tops_1(esk1_0,esk2_0)))) = k2_tops_1(esk1_0,esk2_0)
    | v4_pre_topc(esk2_0,esk1_0) ),
    inference(rw,[status(thm)],[c_0_100,c_0_97])).

cnf(c_0_110,negated_conjecture,
    ( r1_tarski(k2_tops_1(esk1_0,esk2_0),esk2_0)
    | ~ v4_pre_topc(esk2_0,esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_101,c_0_89]),c_0_90])])).

cnf(c_0_111,plain,
    ( k1_setfam_1(k2_tarski(X1,X2)) = X2
    | ~ r1_tarski(X2,X1) ),
    inference(spm,[status(thm)],[c_0_102,c_0_72])).

cnf(c_0_112,negated_conjecture,
    ( k5_xboole_0(esk2_0,k1_setfam_1(k2_tarski(esk2_0,k1_tops_1(esk1_0,esk2_0)))) != k2_tops_1(esk1_0,esk2_0)
    | ~ v4_pre_topc(esk2_0,esk1_0) ),
    inference(rw,[status(thm)],[c_0_103,c_0_97])).

cnf(c_0_113,negated_conjecture,
    ( m1_subset_1(k1_tops_1(esk1_0,esk2_0),k1_zfmisc_1(esk2_0)) ),
    inference(spm,[status(thm)],[c_0_45,c_0_104])).

cnf(c_0_114,plain,
    ( k3_subset_1(X2,k3_subset_1(X2,X1)) = X1
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_105])).

cnf(c_0_115,negated_conjecture,
    ( k7_subset_1(esk2_0,esk2_0,k2_tops_1(esk1_0,esk2_0)) = k1_tops_1(esk1_0,esk2_0) ),
    inference(rw,[status(thm)],[c_0_104,c_0_81])).

cnf(c_0_116,plain,
    ( k7_subset_1(X1,X1,X2) = k3_subset_1(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(spm,[status(thm)],[c_0_106,c_0_107])).

cnf(c_0_117,negated_conjecture,
    ( r1_tarski(k2_tops_1(esk1_0,esk2_0),esk2_0) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_108,c_0_109]),c_0_110])).

cnf(c_0_118,plain,
    ( k7_subset_1(X1,X1,X2) = k5_xboole_0(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(spm,[status(thm)],[c_0_81,c_0_111])).

cnf(c_0_119,negated_conjecture,
    ( k7_subset_1(esk2_0,esk2_0,k1_tops_1(esk1_0,esk2_0)) != k2_tops_1(esk1_0,esk2_0)
    | ~ v4_pre_topc(esk2_0,esk1_0) ),
    inference(rw,[status(thm)],[c_0_112,c_0_81])).

cnf(c_0_120,negated_conjecture,
    ( k7_subset_1(esk2_0,esk2_0,k1_tops_1(esk1_0,esk2_0)) = k3_subset_1(esk2_0,k1_tops_1(esk1_0,esk2_0)) ),
    inference(spm,[status(thm)],[c_0_106,c_0_113])).

cnf(c_0_121,plain,
    ( k3_subset_1(X1,k3_subset_1(X1,X2)) = X2
    | ~ r1_tarski(X2,X1) ),
    inference(spm,[status(thm)],[c_0_114,c_0_107])).

cnf(c_0_122,negated_conjecture,
    ( k3_subset_1(esk2_0,k2_tops_1(esk1_0,esk2_0)) = k1_tops_1(esk1_0,esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_115,c_0_116]),c_0_117])])).

fof(c_0_123,plain,(
    ! [X56,X57] :
      ( ~ l1_pre_topc(X56)
      | ~ m1_subset_1(X57,k1_zfmisc_1(u1_struct_0(X56)))
      | k2_tops_1(X56,X57) = k2_tops_1(X56,k3_subset_1(u1_struct_0(X56),X57)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t62_tops_1])])])).

fof(c_0_124,plain,(
    ! [X32,X33] :
      ( ~ m1_subset_1(X33,k1_zfmisc_1(X32))
      | m1_subset_1(k3_subset_1(X32,X33),k1_zfmisc_1(X32)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k3_subset_1])])).

cnf(c_0_125,plain,
    ( k5_xboole_0(X1,X2) = k3_subset_1(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(spm,[status(thm)],[c_0_116,c_0_118])).

cnf(c_0_126,plain,
    ( r1_tarski(k1_setfam_1(k2_tarski(X1,X2)),X1) ),
    inference(spm,[status(thm)],[c_0_108,c_0_46])).

cnf(c_0_127,negated_conjecture,
    ( k3_subset_1(esk2_0,k1_tops_1(esk1_0,esk2_0)) != k2_tops_1(esk1_0,esk2_0)
    | ~ v4_pre_topc(esk2_0,esk1_0) ),
    inference(rw,[status(thm)],[c_0_119,c_0_120])).

cnf(c_0_128,negated_conjecture,
    ( k3_subset_1(esk2_0,k1_tops_1(esk1_0,esk2_0)) = k2_tops_1(esk1_0,esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_121,c_0_122]),c_0_117])])).

fof(c_0_129,plain,(
    ! [X6,X7,X8] :
      ( ~ r1_tarski(X6,X7)
      | ~ r1_tarski(X7,X8)
      | r1_tarski(X6,X8) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_xboole_1])])).

fof(c_0_130,plain,(
    ! [X54,X55] :
      ( ~ l1_pre_topc(X54)
      | ~ m1_subset_1(X55,k1_zfmisc_1(u1_struct_0(X54)))
      | m1_subset_1(k2_tops_1(X54,X55),k1_zfmisc_1(u1_struct_0(X54))) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_tops_1])])).

cnf(c_0_131,plain,
    ( k2_tops_1(X1,X2) = k2_tops_1(X1,k3_subset_1(u1_struct_0(X1),X2))
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_123])).

cnf(c_0_132,plain,
    ( r1_tarski(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_98])).

cnf(c_0_133,plain,
    ( m1_subset_1(k3_subset_1(X2,X1),k1_zfmisc_1(X2))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_124])).

cnf(c_0_134,plain,
    ( k7_subset_1(X1,X1,X2) = k3_subset_1(X1,k1_setfam_1(k2_tarski(X1,X2))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_81,c_0_125]),c_0_126])])).

cnf(c_0_135,negated_conjecture,
    ( k1_setfam_1(k2_tarski(esk2_0,k1_tops_1(esk1_0,esk2_0))) = k1_tops_1(esk1_0,esk2_0)
    | v4_pre_topc(esk2_0,esk1_0) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_46,c_0_109]),c_0_104])).

cnf(c_0_136,negated_conjecture,
    ( ~ v4_pre_topc(esk2_0,esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_127,c_0_128])])).

cnf(c_0_137,plain,
    ( r1_tarski(X1,X3)
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_129])).

cnf(c_0_138,plain,
    ( m1_subset_1(k1_setfam_1(k2_tarski(X1,X2)),k1_zfmisc_1(X2)) ),
    inference(spm,[status(thm)],[c_0_54,c_0_72])).

cnf(c_0_139,plain,
    ( m1_subset_1(k2_tops_1(X1,X2),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_130])).

cnf(c_0_140,negated_conjecture,
    ( k2_tops_1(esk1_0,k3_subset_1(u1_struct_0(esk1_0),esk2_0)) = k2_tops_1(esk1_0,esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_131,c_0_89]),c_0_90])])).

cnf(c_0_141,plain,
    ( r1_tarski(k3_subset_1(X1,X2),X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_132,c_0_133])).

fof(c_0_142,plain,(
    ! [X52,X53] :
      ( ( ~ v4_pre_topc(X53,X52)
        | k2_pre_topc(X52,X53) = X53
        | ~ m1_subset_1(X53,k1_zfmisc_1(u1_struct_0(X52)))
        | ~ l1_pre_topc(X52) )
      & ( ~ v2_pre_topc(X52)
        | k2_pre_topc(X52,X53) != X53
        | v4_pre_topc(X53,X52)
        | ~ m1_subset_1(X53,k1_zfmisc_1(u1_struct_0(X52)))
        | ~ l1_pre_topc(X52) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t52_pre_topc])])])])).

cnf(c_0_143,plain,
    ( k3_subset_1(X1,k1_setfam_1(k2_tarski(X1,k3_subset_1(X1,k1_setfam_1(k2_tarski(X1,X2)))))) = k1_setfam_1(k2_tarski(X1,X2)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_93,c_0_134]),c_0_134])).

cnf(c_0_144,negated_conjecture,
    ( k1_setfam_1(k2_tarski(esk2_0,k1_tops_1(esk1_0,esk2_0))) = k1_tops_1(esk1_0,esk2_0) ),
    inference(sr,[status(thm)],[c_0_135,c_0_136])).

cnf(c_0_145,negated_conjecture,
    ( r1_tarski(X1,esk2_0)
    | ~ r1_tarski(X1,k2_tops_1(esk1_0,esk2_0)) ),
    inference(spm,[status(thm)],[c_0_137,c_0_117])).

cnf(c_0_146,plain,
    ( r1_tarski(k1_setfam_1(k2_tarski(X1,X2)),X2) ),
    inference(spm,[status(thm)],[c_0_132,c_0_138])).

cnf(c_0_147,plain,
    ( k4_subset_1(X1,k3_subset_1(X1,X2),k3_subset_1(X1,k3_subset_1(X1,X2))) = X1
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_69,c_0_133])).

cnf(c_0_148,negated_conjecture,
    ( k3_subset_1(esk2_0,k3_subset_1(esk2_0,k1_tops_1(esk1_0,esk2_0))) = k1_tops_1(esk1_0,esk2_0) ),
    inference(spm,[status(thm)],[c_0_114,c_0_113])).

cnf(c_0_149,negated_conjecture,
    ( m1_subset_1(k2_tops_1(esk1_0,esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ m1_subset_1(k3_subset_1(u1_struct_0(esk1_0),esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_139,c_0_140]),c_0_90])])).

cnf(c_0_150,negated_conjecture,
    ( r1_tarski(k3_subset_1(u1_struct_0(esk1_0),esk2_0),u1_struct_0(esk1_0)) ),
    inference(spm,[status(thm)],[c_0_141,c_0_89])).

fof(c_0_151,plain,(
    ! [X58,X59] :
      ( ~ l1_pre_topc(X58)
      | ~ m1_subset_1(X59,k1_zfmisc_1(u1_struct_0(X58)))
      | k2_pre_topc(X58,X59) = k4_subset_1(u1_struct_0(X58),X59,k2_tops_1(X58,X59)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t65_tops_1])])])).

cnf(c_0_152,plain,
    ( v4_pre_topc(X2,X1)
    | ~ v2_pre_topc(X1)
    | k2_pre_topc(X1,X2) != X2
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_142])).

fof(c_0_153,plain,(
    ! [X23,X24] : k2_xboole_0(X23,k2_xboole_0(X23,X24)) = k2_xboole_0(X23,X24) ),
    inference(variable_rename,[status(thm)],[t6_xboole_1])).

cnf(c_0_154,negated_conjecture,
    ( k3_tarski(k2_tarski(X1,k1_tops_1(esk1_0,esk2_0))) = k4_subset_1(esk2_0,X1,k1_tops_1(esk1_0,esk2_0))
    | ~ m1_subset_1(X1,k1_zfmisc_1(esk2_0)) ),
    inference(spm,[status(thm)],[c_0_67,c_0_113])).

cnf(c_0_155,negated_conjecture,
    ( k3_subset_1(esk2_0,k1_setfam_1(k2_tarski(esk2_0,k2_tops_1(esk1_0,esk2_0)))) = k1_tops_1(esk1_0,esk2_0) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_143,c_0_144]),c_0_128])).

cnf(c_0_156,negated_conjecture,
    ( r1_tarski(k1_setfam_1(k2_tarski(X1,k2_tops_1(esk1_0,esk2_0))),esk2_0) ),
    inference(spm,[status(thm)],[c_0_145,c_0_146])).

cnf(c_0_157,negated_conjecture,
    ( k4_subset_1(esk2_0,k3_subset_1(esk2_0,k1_tops_1(esk1_0,esk2_0)),k1_tops_1(esk1_0,esk2_0)) = esk2_0 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_147,c_0_113]),c_0_148])).

cnf(c_0_158,negated_conjecture,
    ( m1_subset_1(k2_tops_1(esk1_0,esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_149,c_0_107]),c_0_150])])).

cnf(c_0_159,plain,
    ( k2_pre_topc(X1,X2) = k4_subset_1(u1_struct_0(X1),X2,k2_tops_1(X1,X2))
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_151])).

cnf(c_0_160,plain,
    ( v4_pre_topc(X1,X2)
    | k2_pre_topc(X2,X1) != X1
    | ~ v2_pre_topc(X2)
    | ~ l1_pre_topc(X2)
    | ~ r1_tarski(X1,u1_struct_0(X2)) ),
    inference(spm,[status(thm)],[c_0_152,c_0_107])).

cnf(c_0_161,negated_conjecture,
    ( v2_pre_topc(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_84])).

cnf(c_0_162,plain,
    ( k2_xboole_0(X1,k2_xboole_0(X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_153])).

cnf(c_0_163,negated_conjecture,
    ( k3_tarski(k2_tarski(k1_setfam_1(k2_tarski(esk2_0,X1)),k1_tops_1(esk1_0,esk2_0))) = k4_subset_1(esk2_0,k1_setfam_1(k2_tarski(esk2_0,X1)),k1_tops_1(esk1_0,esk2_0)) ),
    inference(spm,[status(thm)],[c_0_154,c_0_54])).

cnf(c_0_164,negated_conjecture,
    ( k1_setfam_1(k2_tarski(esk2_0,k2_tops_1(esk1_0,esk2_0))) = k2_tops_1(esk1_0,esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_121,c_0_155]),c_0_128]),c_0_156])])).

cnf(c_0_165,negated_conjecture,
    ( k4_subset_1(esk2_0,k2_tops_1(esk1_0,esk2_0),k1_tops_1(esk1_0,esk2_0)) = esk2_0 ),
    inference(rw,[status(thm)],[c_0_157,c_0_128])).

cnf(c_0_166,negated_conjecture,
    ( k4_subset_1(u1_struct_0(esk1_0),X1,k2_tops_1(esk1_0,esk2_0)) = k3_tarski(k2_tarski(X1,k2_tops_1(esk1_0,esk2_0)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(spm,[status(thm)],[c_0_67,c_0_158])).

cnf(c_0_167,negated_conjecture,
    ( k4_subset_1(u1_struct_0(esk1_0),esk2_0,k2_tops_1(esk1_0,esk2_0)) = k2_pre_topc(esk1_0,esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_159,c_0_89]),c_0_90])])).

cnf(c_0_168,negated_conjecture,
    ( v4_pre_topc(X1,esk1_0)
    | k2_pre_topc(esk1_0,X1) != X1
    | ~ r1_tarski(X1,u1_struct_0(esk1_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_160,c_0_161]),c_0_90])])).

cnf(c_0_169,negated_conjecture,
    ( r1_tarski(esk2_0,u1_struct_0(esk1_0)) ),
    inference(spm,[status(thm)],[c_0_132,c_0_89])).

cnf(c_0_170,plain,
    ( k3_tarski(k2_tarski(X1,k3_tarski(k2_tarski(X1,X2)))) = k3_tarski(k2_tarski(X1,X2)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_162,c_0_57]),c_0_57]),c_0_57])).

cnf(c_0_171,negated_conjecture,
    ( k3_tarski(k2_tarski(k2_tops_1(esk1_0,esk2_0),k1_tops_1(esk1_0,esk2_0))) = esk2_0 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_163,c_0_164]),c_0_165])).

cnf(c_0_172,negated_conjecture,
    ( k3_tarski(k2_tarski(esk2_0,k2_tops_1(esk1_0,esk2_0))) = k2_pre_topc(esk1_0,esk2_0) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_166,c_0_89]),c_0_167])).

cnf(c_0_173,negated_conjecture,
    ( k2_pre_topc(esk1_0,esk2_0) != esk2_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_136,c_0_168]),c_0_169])])).

cnf(c_0_174,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_170,c_0_171]),c_0_72]),c_0_172]),c_0_173]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.33  % Computer   : n016.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % WCLimit    : 600
% 0.13/0.33  % DateTime   : Tue Dec  1 09:57:19 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.47/0.63  # AutoSched0-Mode selected heuristic G_E___107_C36_F1_PI_AE_Q4_CS_SP_PS_S0Y
% 0.47/0.63  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.47/0.63  #
% 0.47/0.63  # Preprocessing time       : 0.028 s
% 0.47/0.63  # Presaturation interreduction done
% 0.47/0.63  
% 0.47/0.63  # Proof found!
% 0.47/0.63  # SZS status Theorem
% 0.47/0.63  # SZS output start CNFRefutation
% 0.47/0.63  fof(t100_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t100_xboole_1)).
% 0.47/0.63  fof(t12_setfam_1, axiom, ![X1, X2]:k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t12_setfam_1)).
% 0.47/0.63  fof(dt_k6_subset_1, axiom, ![X1, X2]:m1_subset_1(k6_subset_1(X1,X2),k1_zfmisc_1(X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k6_subset_1)).
% 0.47/0.63  fof(redefinition_k6_subset_1, axiom, ![X1, X2]:k6_subset_1(X1,X2)=k4_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k6_subset_1)).
% 0.47/0.63  fof(t48_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,k4_xboole_0(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t48_xboole_1)).
% 0.47/0.63  fof(t3_boole, axiom, ![X1]:k4_xboole_0(X1,k1_xboole_0)=X1, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t3_boole)).
% 0.47/0.63  fof(t2_boole, axiom, ![X1]:k3_xboole_0(X1,k1_xboole_0)=k1_xboole_0, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t2_boole)).
% 0.47/0.63  fof(d5_subset_1, axiom, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>k3_subset_1(X1,X2)=k4_xboole_0(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d5_subset_1)).
% 0.47/0.63  fof(redefinition_k4_subset_1, axiom, ![X1, X2, X3]:((m1_subset_1(X2,k1_zfmisc_1(X1))&m1_subset_1(X3,k1_zfmisc_1(X1)))=>k4_subset_1(X1,X2,X3)=k2_xboole_0(X2,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k4_subset_1)).
% 0.47/0.63  fof(l51_zfmisc_1, axiom, ![X1, X2]:k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l51_zfmisc_1)).
% 0.47/0.63  fof(t25_subset_1, axiom, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>k4_subset_1(X1,X2,k3_subset_1(X1,X2))=k2_subset_1(X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t25_subset_1)).
% 0.47/0.63  fof(d4_subset_1, axiom, ![X1]:k2_subset_1(X1)=X1, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d4_subset_1)).
% 0.47/0.63  fof(redefinition_k7_subset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>k7_subset_1(X1,X2,X3)=k4_xboole_0(X2,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k7_subset_1)).
% 0.47/0.63  fof(t38_xboole_1, axiom, ![X1, X2]:(r1_tarski(X1,k4_xboole_0(X2,X1))=>X1=k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t38_xboole_1)).
% 0.47/0.63  fof(commutativity_k2_tarski, axiom, ![X1, X2]:k2_tarski(X1,X2)=k2_tarski(X2,X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', commutativity_k2_tarski)).
% 0.47/0.63  fof(t43_xboole_1, axiom, ![X1, X2, X3]:(r1_tarski(X1,k2_xboole_0(X2,X3))=>r1_tarski(k4_xboole_0(X1,X2),X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t43_xboole_1)).
% 0.47/0.63  fof(t77_tops_1, conjecture, ![X1]:((v2_pre_topc(X1)&l1_pre_topc(X1))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>(v4_pre_topc(X2,X1)<=>k2_tops_1(X1,X2)=k7_subset_1(u1_struct_0(X1),X2,k1_tops_1(X1,X2))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t77_tops_1)).
% 0.47/0.63  fof(t74_tops_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>k1_tops_1(X1,X2)=k7_subset_1(u1_struct_0(X1),X2,k2_tops_1(X1,X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t74_tops_1)).
% 0.47/0.63  fof(t36_xboole_1, axiom, ![X1, X2]:r1_tarski(k4_xboole_0(X1,X2),X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t36_xboole_1)).
% 0.47/0.63  fof(t69_tops_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>(v4_pre_topc(X2,X1)=>r1_tarski(k2_tops_1(X1,X2),X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t69_tops_1)).
% 0.47/0.63  fof(t3_subset, axiom, ![X1, X2]:(m1_subset_1(X1,k1_zfmisc_1(X2))<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t3_subset)).
% 0.47/0.63  fof(involutiveness_k3_subset_1, axiom, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>k3_subset_1(X1,k3_subset_1(X1,X2))=X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', involutiveness_k3_subset_1)).
% 0.47/0.63  fof(t62_tops_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>k2_tops_1(X1,X2)=k2_tops_1(X1,k3_subset_1(u1_struct_0(X1),X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t62_tops_1)).
% 0.47/0.63  fof(dt_k3_subset_1, axiom, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>m1_subset_1(k3_subset_1(X1,X2),k1_zfmisc_1(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k3_subset_1)).
% 0.47/0.63  fof(t1_xboole_1, axiom, ![X1, X2, X3]:((r1_tarski(X1,X2)&r1_tarski(X2,X3))=>r1_tarski(X1,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t1_xboole_1)).
% 0.47/0.63  fof(dt_k2_tops_1, axiom, ![X1, X2]:((l1_pre_topc(X1)&m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))))=>m1_subset_1(k2_tops_1(X1,X2),k1_zfmisc_1(u1_struct_0(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k2_tops_1)).
% 0.47/0.63  fof(t52_pre_topc, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>((v4_pre_topc(X2,X1)=>k2_pre_topc(X1,X2)=X2)&((v2_pre_topc(X1)&k2_pre_topc(X1,X2)=X2)=>v4_pre_topc(X2,X1))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t52_pre_topc)).
% 0.47/0.63  fof(t65_tops_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>k2_pre_topc(X1,X2)=k4_subset_1(u1_struct_0(X1),X2,k2_tops_1(X1,X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t65_tops_1)).
% 0.47/0.63  fof(t6_xboole_1, axiom, ![X1, X2]:k2_xboole_0(X1,k2_xboole_0(X1,X2))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t6_xboole_1)).
% 0.47/0.63  fof(c_0_29, plain, ![X4, X5]:k4_xboole_0(X4,X5)=k5_xboole_0(X4,k3_xboole_0(X4,X5)), inference(variable_rename,[status(thm)],[t100_xboole_1])).
% 0.47/0.63  fof(c_0_30, plain, ![X48, X49]:k1_setfam_1(k2_tarski(X48,X49))=k3_xboole_0(X48,X49), inference(variable_rename,[status(thm)],[t12_setfam_1])).
% 0.47/0.63  fof(c_0_31, plain, ![X34, X35]:m1_subset_1(k6_subset_1(X34,X35),k1_zfmisc_1(X34)), inference(variable_rename,[status(thm)],[dt_k6_subset_1])).
% 0.47/0.63  fof(c_0_32, plain, ![X41, X42]:k6_subset_1(X41,X42)=k4_xboole_0(X41,X42), inference(variable_rename,[status(thm)],[redefinition_k6_subset_1])).
% 0.47/0.63  cnf(c_0_33, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.47/0.63  cnf(c_0_34, plain, (k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.47/0.63  fof(c_0_35, plain, ![X21, X22]:k4_xboole_0(X21,k4_xboole_0(X21,X22))=k3_xboole_0(X21,X22), inference(variable_rename,[status(thm)],[t48_xboole_1])).
% 0.47/0.63  fof(c_0_36, plain, ![X14]:k4_xboole_0(X14,k1_xboole_0)=X14, inference(variable_rename,[status(thm)],[t3_boole])).
% 0.47/0.63  fof(c_0_37, plain, ![X9]:k3_xboole_0(X9,k1_xboole_0)=k1_xboole_0, inference(variable_rename,[status(thm)],[t2_boole])).
% 0.47/0.63  cnf(c_0_38, plain, (m1_subset_1(k6_subset_1(X1,X2),k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_31])).
% 0.47/0.63  cnf(c_0_39, plain, (k6_subset_1(X1,X2)=k4_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.47/0.63  cnf(c_0_40, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2)))), inference(rw,[status(thm)],[c_0_33, c_0_34])).
% 0.47/0.63  cnf(c_0_41, plain, (k4_xboole_0(X1,k4_xboole_0(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.47/0.63  cnf(c_0_42, plain, (k4_xboole_0(X1,k1_xboole_0)=X1), inference(split_conjunct,[status(thm)],[c_0_36])).
% 0.47/0.63  cnf(c_0_43, plain, (k3_xboole_0(X1,k1_xboole_0)=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_37])).
% 0.47/0.63  fof(c_0_44, plain, ![X30, X31]:(~m1_subset_1(X31,k1_zfmisc_1(X30))|k3_subset_1(X30,X31)=k4_xboole_0(X30,X31)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d5_subset_1])])).
% 0.47/0.63  cnf(c_0_45, plain, (m1_subset_1(k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))),k1_zfmisc_1(X1))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_38, c_0_39]), c_0_40])).
% 0.47/0.63  cnf(c_0_46, plain, (k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))))))=k1_setfam_1(k2_tarski(X1,X2))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_41, c_0_34]), c_0_40]), c_0_40])).
% 0.47/0.63  fof(c_0_47, plain, ![X38, X39, X40]:(~m1_subset_1(X39,k1_zfmisc_1(X38))|~m1_subset_1(X40,k1_zfmisc_1(X38))|k4_subset_1(X38,X39,X40)=k2_xboole_0(X39,X40)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k4_subset_1])])).
% 0.47/0.63  fof(c_0_48, plain, ![X27, X28]:k3_tarski(k2_tarski(X27,X28))=k2_xboole_0(X27,X28), inference(variable_rename,[status(thm)],[l51_zfmisc_1])).
% 0.47/0.63  cnf(c_0_49, plain, (k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,k1_xboole_0)))=X1), inference(rw,[status(thm)],[c_0_42, c_0_40])).
% 0.47/0.63  cnf(c_0_50, plain, (k1_setfam_1(k2_tarski(X1,k1_xboole_0))=k1_xboole_0), inference(rw,[status(thm)],[c_0_43, c_0_34])).
% 0.47/0.63  fof(c_0_51, plain, ![X46, X47]:(~m1_subset_1(X47,k1_zfmisc_1(X46))|k4_subset_1(X46,X47,k3_subset_1(X46,X47))=k2_subset_1(X46)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t25_subset_1])])).
% 0.47/0.63  fof(c_0_52, plain, ![X29]:k2_subset_1(X29)=X29, inference(variable_rename,[status(thm)],[d4_subset_1])).
% 0.47/0.63  cnf(c_0_53, plain, (k3_subset_1(X2,X1)=k4_xboole_0(X2,X1)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_44])).
% 0.47/0.63  cnf(c_0_54, plain, (m1_subset_1(k1_setfam_1(k2_tarski(X1,X2)),k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_45, c_0_46])).
% 0.47/0.63  fof(c_0_55, plain, ![X43, X44, X45]:(~m1_subset_1(X44,k1_zfmisc_1(X43))|k7_subset_1(X43,X44,X45)=k4_xboole_0(X44,X45)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k7_subset_1])])).
% 0.47/0.63  cnf(c_0_56, plain, (k4_subset_1(X2,X1,X3)=k2_xboole_0(X1,X3)|~m1_subset_1(X1,k1_zfmisc_1(X2))|~m1_subset_1(X3,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_47])).
% 0.47/0.63  cnf(c_0_57, plain, (k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_48])).
% 0.47/0.63  cnf(c_0_58, plain, (k5_xboole_0(X1,k1_xboole_0)=X1), inference(rw,[status(thm)],[c_0_49, c_0_50])).
% 0.47/0.63  cnf(c_0_59, plain, (k4_subset_1(X2,X1,k3_subset_1(X2,X1))=k2_subset_1(X2)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_51])).
% 0.47/0.63  cnf(c_0_60, plain, (k2_subset_1(X1)=X1), inference(split_conjunct,[status(thm)],[c_0_52])).
% 0.47/0.63  cnf(c_0_61, plain, (k3_subset_1(X2,X1)=k5_xboole_0(X2,k1_setfam_1(k2_tarski(X2,X1)))|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(rw,[status(thm)],[c_0_53, c_0_40])).
% 0.47/0.63  cnf(c_0_62, plain, (m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_54, c_0_50])).
% 0.47/0.63  fof(c_0_63, plain, ![X12, X13]:(~r1_tarski(X12,k4_xboole_0(X13,X12))|X12=k1_xboole_0), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t38_xboole_1])])).
% 0.47/0.63  fof(c_0_64, plain, ![X25, X26]:k2_tarski(X25,X26)=k2_tarski(X26,X25), inference(variable_rename,[status(thm)],[commutativity_k2_tarski])).
% 0.47/0.63  fof(c_0_65, plain, ![X15, X16, X17]:(~r1_tarski(X15,k2_xboole_0(X16,X17))|r1_tarski(k4_xboole_0(X15,X16),X17)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t43_xboole_1])])).
% 0.47/0.63  cnf(c_0_66, plain, (k7_subset_1(X2,X1,X3)=k4_xboole_0(X1,X3)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_55])).
% 0.47/0.63  cnf(c_0_67, plain, (k4_subset_1(X2,X1,X3)=k3_tarski(k2_tarski(X1,X3))|~m1_subset_1(X3,k1_zfmisc_1(X2))|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(rw,[status(thm)],[c_0_56, c_0_57])).
% 0.47/0.63  cnf(c_0_68, plain, (m1_subset_1(X1,k1_zfmisc_1(X1))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45, c_0_50]), c_0_58])).
% 0.47/0.63  cnf(c_0_69, plain, (k4_subset_1(X2,X1,k3_subset_1(X2,X1))=X2|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(rw,[status(thm)],[c_0_59, c_0_60])).
% 0.47/0.63  cnf(c_0_70, plain, (k3_subset_1(X1,k1_xboole_0)=X1), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_61, c_0_62]), c_0_50]), c_0_58])).
% 0.47/0.63  cnf(c_0_71, plain, (X1=k1_xboole_0|~r1_tarski(X1,k4_xboole_0(X2,X1))), inference(split_conjunct,[status(thm)],[c_0_63])).
% 0.47/0.63  cnf(c_0_72, plain, (k2_tarski(X1,X2)=k2_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_64])).
% 0.47/0.63  cnf(c_0_73, plain, (r1_tarski(k4_xboole_0(X1,X2),X3)|~r1_tarski(X1,k2_xboole_0(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_65])).
% 0.47/0.63  cnf(c_0_74, plain, (k7_subset_1(X2,X1,X3)=k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X3)))|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(rw,[status(thm)],[c_0_66, c_0_40])).
% 0.47/0.63  cnf(c_0_75, plain, (k4_subset_1(X1,X2,X1)=k3_tarski(k2_tarski(X2,X1))|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_67, c_0_68])).
% 0.47/0.63  cnf(c_0_76, plain, (k4_subset_1(X1,k1_xboole_0,X1)=X1), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_69, c_0_62]), c_0_70])).
% 0.47/0.63  fof(c_0_77, negated_conjecture, ~(![X1]:((v2_pre_topc(X1)&l1_pre_topc(X1))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>(v4_pre_topc(X2,X1)<=>k2_tops_1(X1,X2)=k7_subset_1(u1_struct_0(X1),X2,k1_tops_1(X1,X2)))))), inference(assume_negation,[status(cth)],[t77_tops_1])).
% 0.47/0.63  cnf(c_0_78, plain, (X1=k1_xboole_0|~r1_tarski(X1,k5_xboole_0(X2,k1_setfam_1(k2_tarski(X2,X1))))), inference(rw,[status(thm)],[c_0_71, c_0_40])).
% 0.47/0.63  cnf(c_0_79, plain, (k1_setfam_1(k2_tarski(k1_xboole_0,X1))=k1_xboole_0), inference(spm,[status(thm)],[c_0_50, c_0_72])).
% 0.47/0.63  cnf(c_0_80, plain, (r1_tarski(k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))),X3)|~r1_tarski(X1,k3_tarski(k2_tarski(X2,X3)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_73, c_0_57]), c_0_40])).
% 0.47/0.63  cnf(c_0_81, plain, (k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2)))=k7_subset_1(X1,X1,X2)), inference(spm,[status(thm)],[c_0_74, c_0_68])).
% 0.47/0.63  cnf(c_0_82, plain, (k3_tarski(k2_tarski(k1_xboole_0,X1))=X1), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_75, c_0_62]), c_0_76])).
% 0.47/0.63  fof(c_0_83, plain, ![X62, X63]:(~l1_pre_topc(X62)|(~m1_subset_1(X63,k1_zfmisc_1(u1_struct_0(X62)))|k1_tops_1(X62,X63)=k7_subset_1(u1_struct_0(X62),X63,k2_tops_1(X62,X63)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t74_tops_1])])])).
% 0.47/0.63  fof(c_0_84, negated_conjecture, ((v2_pre_topc(esk1_0)&l1_pre_topc(esk1_0))&(m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0)))&((~v4_pre_topc(esk2_0,esk1_0)|k2_tops_1(esk1_0,esk2_0)!=k7_subset_1(u1_struct_0(esk1_0),esk2_0,k1_tops_1(esk1_0,esk2_0)))&(v4_pre_topc(esk2_0,esk1_0)|k2_tops_1(esk1_0,esk2_0)=k7_subset_1(u1_struct_0(esk1_0),esk2_0,k1_tops_1(esk1_0,esk2_0)))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_77])])])).
% 0.47/0.63  cnf(c_0_85, plain, (X1=k1_xboole_0|~r1_tarski(X1,k1_xboole_0)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_78, c_0_79]), c_0_58])).
% 0.47/0.63  cnf(c_0_86, plain, (r1_tarski(k7_subset_1(X1,X1,X2),X3)|~r1_tarski(X1,k3_tarski(k2_tarski(X2,X3)))), inference(rw,[status(thm)],[c_0_80, c_0_81])).
% 0.47/0.63  cnf(c_0_87, plain, (k3_tarski(k2_tarski(X1,k1_xboole_0))=X1), inference(spm,[status(thm)],[c_0_82, c_0_72])).
% 0.47/0.63  cnf(c_0_88, plain, (k1_tops_1(X1,X2)=k7_subset_1(u1_struct_0(X1),X2,k2_tops_1(X1,X2))|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_83])).
% 0.47/0.63  cnf(c_0_89, negated_conjecture, (m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_84])).
% 0.47/0.63  cnf(c_0_90, negated_conjecture, (l1_pre_topc(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_84])).
% 0.47/0.63  fof(c_0_91, plain, ![X10, X11]:r1_tarski(k4_xboole_0(X10,X11),X10), inference(variable_rename,[status(thm)],[t36_xboole_1])).
% 0.47/0.63  fof(c_0_92, plain, ![X60, X61]:(~l1_pre_topc(X60)|(~m1_subset_1(X61,k1_zfmisc_1(u1_struct_0(X60)))|(~v4_pre_topc(X61,X60)|r1_tarski(k2_tops_1(X60,X61),X61)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t69_tops_1])])])).
% 0.47/0.63  cnf(c_0_93, plain, (k7_subset_1(X1,X1,k7_subset_1(X1,X1,X2))=k1_setfam_1(k2_tarski(X1,X2))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_46, c_0_81]), c_0_81])).
% 0.47/0.63  cnf(c_0_94, plain, (k7_subset_1(X1,X1,X2)=k1_xboole_0|~r1_tarski(X1,X2)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_85, c_0_86]), c_0_87])).
% 0.47/0.63  cnf(c_0_95, plain, (k7_subset_1(X1,X1,k1_xboole_0)=X1), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_81, c_0_50]), c_0_58])).
% 0.47/0.63  cnf(c_0_96, negated_conjecture, (k7_subset_1(u1_struct_0(esk1_0),esk2_0,k2_tops_1(esk1_0,esk2_0))=k1_tops_1(esk1_0,esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_88, c_0_89]), c_0_90])])).
% 0.47/0.63  cnf(c_0_97, negated_conjecture, (k7_subset_1(u1_struct_0(esk1_0),esk2_0,X1)=k5_xboole_0(esk2_0,k1_setfam_1(k2_tarski(esk2_0,X1)))), inference(spm,[status(thm)],[c_0_74, c_0_89])).
% 0.47/0.63  fof(c_0_98, plain, ![X50, X51]:((~m1_subset_1(X50,k1_zfmisc_1(X51))|r1_tarski(X50,X51))&(~r1_tarski(X50,X51)|m1_subset_1(X50,k1_zfmisc_1(X51)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).
% 0.47/0.63  cnf(c_0_99, plain, (r1_tarski(k4_xboole_0(X1,X2),X1)), inference(split_conjunct,[status(thm)],[c_0_91])).
% 0.47/0.63  cnf(c_0_100, negated_conjecture, (v4_pre_topc(esk2_0,esk1_0)|k2_tops_1(esk1_0,esk2_0)=k7_subset_1(u1_struct_0(esk1_0),esk2_0,k1_tops_1(esk1_0,esk2_0))), inference(split_conjunct,[status(thm)],[c_0_84])).
% 0.47/0.63  cnf(c_0_101, plain, (r1_tarski(k2_tops_1(X1,X2),X2)|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))|~v4_pre_topc(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_92])).
% 0.47/0.63  cnf(c_0_102, plain, (k1_setfam_1(k2_tarski(X1,X2))=X1|~r1_tarski(X1,X2)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_93, c_0_94]), c_0_95])).
% 0.47/0.63  cnf(c_0_103, negated_conjecture, (~v4_pre_topc(esk2_0,esk1_0)|k2_tops_1(esk1_0,esk2_0)!=k7_subset_1(u1_struct_0(esk1_0),esk2_0,k1_tops_1(esk1_0,esk2_0))), inference(split_conjunct,[status(thm)],[c_0_84])).
% 0.47/0.63  cnf(c_0_104, negated_conjecture, (k5_xboole_0(esk2_0,k1_setfam_1(k2_tarski(esk2_0,k2_tops_1(esk1_0,esk2_0))))=k1_tops_1(esk1_0,esk2_0)), inference(rw,[status(thm)],[c_0_96, c_0_97])).
% 0.47/0.63  fof(c_0_105, plain, ![X36, X37]:(~m1_subset_1(X37,k1_zfmisc_1(X36))|k3_subset_1(X36,k3_subset_1(X36,X37))=X37), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[involutiveness_k3_subset_1])])).
% 0.47/0.63  cnf(c_0_106, plain, (k7_subset_1(X1,X1,X2)=k3_subset_1(X1,X2)|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(rw,[status(thm)],[c_0_61, c_0_81])).
% 0.47/0.63  cnf(c_0_107, plain, (m1_subset_1(X1,k1_zfmisc_1(X2))|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_98])).
% 0.47/0.63  cnf(c_0_108, plain, (r1_tarski(k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))),X1)), inference(rw,[status(thm)],[c_0_99, c_0_40])).
% 0.47/0.63  cnf(c_0_109, negated_conjecture, (k5_xboole_0(esk2_0,k1_setfam_1(k2_tarski(esk2_0,k1_tops_1(esk1_0,esk2_0))))=k2_tops_1(esk1_0,esk2_0)|v4_pre_topc(esk2_0,esk1_0)), inference(rw,[status(thm)],[c_0_100, c_0_97])).
% 0.47/0.63  cnf(c_0_110, negated_conjecture, (r1_tarski(k2_tops_1(esk1_0,esk2_0),esk2_0)|~v4_pre_topc(esk2_0,esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_101, c_0_89]), c_0_90])])).
% 0.47/0.63  cnf(c_0_111, plain, (k1_setfam_1(k2_tarski(X1,X2))=X2|~r1_tarski(X2,X1)), inference(spm,[status(thm)],[c_0_102, c_0_72])).
% 0.47/0.63  cnf(c_0_112, negated_conjecture, (k5_xboole_0(esk2_0,k1_setfam_1(k2_tarski(esk2_0,k1_tops_1(esk1_0,esk2_0))))!=k2_tops_1(esk1_0,esk2_0)|~v4_pre_topc(esk2_0,esk1_0)), inference(rw,[status(thm)],[c_0_103, c_0_97])).
% 0.47/0.63  cnf(c_0_113, negated_conjecture, (m1_subset_1(k1_tops_1(esk1_0,esk2_0),k1_zfmisc_1(esk2_0))), inference(spm,[status(thm)],[c_0_45, c_0_104])).
% 0.47/0.63  cnf(c_0_114, plain, (k3_subset_1(X2,k3_subset_1(X2,X1))=X1|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_105])).
% 0.47/0.63  cnf(c_0_115, negated_conjecture, (k7_subset_1(esk2_0,esk2_0,k2_tops_1(esk1_0,esk2_0))=k1_tops_1(esk1_0,esk2_0)), inference(rw,[status(thm)],[c_0_104, c_0_81])).
% 0.47/0.63  cnf(c_0_116, plain, (k7_subset_1(X1,X1,X2)=k3_subset_1(X1,X2)|~r1_tarski(X2,X1)), inference(spm,[status(thm)],[c_0_106, c_0_107])).
% 0.47/0.63  cnf(c_0_117, negated_conjecture, (r1_tarski(k2_tops_1(esk1_0,esk2_0),esk2_0)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_108, c_0_109]), c_0_110])).
% 0.47/0.63  cnf(c_0_118, plain, (k7_subset_1(X1,X1,X2)=k5_xboole_0(X1,X2)|~r1_tarski(X2,X1)), inference(spm,[status(thm)],[c_0_81, c_0_111])).
% 0.47/0.63  cnf(c_0_119, negated_conjecture, (k7_subset_1(esk2_0,esk2_0,k1_tops_1(esk1_0,esk2_0))!=k2_tops_1(esk1_0,esk2_0)|~v4_pre_topc(esk2_0,esk1_0)), inference(rw,[status(thm)],[c_0_112, c_0_81])).
% 0.47/0.63  cnf(c_0_120, negated_conjecture, (k7_subset_1(esk2_0,esk2_0,k1_tops_1(esk1_0,esk2_0))=k3_subset_1(esk2_0,k1_tops_1(esk1_0,esk2_0))), inference(spm,[status(thm)],[c_0_106, c_0_113])).
% 0.47/0.63  cnf(c_0_121, plain, (k3_subset_1(X1,k3_subset_1(X1,X2))=X2|~r1_tarski(X2,X1)), inference(spm,[status(thm)],[c_0_114, c_0_107])).
% 0.47/0.63  cnf(c_0_122, negated_conjecture, (k3_subset_1(esk2_0,k2_tops_1(esk1_0,esk2_0))=k1_tops_1(esk1_0,esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_115, c_0_116]), c_0_117])])).
% 0.47/0.63  fof(c_0_123, plain, ![X56, X57]:(~l1_pre_topc(X56)|(~m1_subset_1(X57,k1_zfmisc_1(u1_struct_0(X56)))|k2_tops_1(X56,X57)=k2_tops_1(X56,k3_subset_1(u1_struct_0(X56),X57)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t62_tops_1])])])).
% 0.47/0.63  fof(c_0_124, plain, ![X32, X33]:(~m1_subset_1(X33,k1_zfmisc_1(X32))|m1_subset_1(k3_subset_1(X32,X33),k1_zfmisc_1(X32))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k3_subset_1])])).
% 0.47/0.63  cnf(c_0_125, plain, (k5_xboole_0(X1,X2)=k3_subset_1(X1,X2)|~r1_tarski(X2,X1)), inference(spm,[status(thm)],[c_0_116, c_0_118])).
% 0.47/0.63  cnf(c_0_126, plain, (r1_tarski(k1_setfam_1(k2_tarski(X1,X2)),X1)), inference(spm,[status(thm)],[c_0_108, c_0_46])).
% 0.47/0.63  cnf(c_0_127, negated_conjecture, (k3_subset_1(esk2_0,k1_tops_1(esk1_0,esk2_0))!=k2_tops_1(esk1_0,esk2_0)|~v4_pre_topc(esk2_0,esk1_0)), inference(rw,[status(thm)],[c_0_119, c_0_120])).
% 0.47/0.63  cnf(c_0_128, negated_conjecture, (k3_subset_1(esk2_0,k1_tops_1(esk1_0,esk2_0))=k2_tops_1(esk1_0,esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_121, c_0_122]), c_0_117])])).
% 0.47/0.63  fof(c_0_129, plain, ![X6, X7, X8]:(~r1_tarski(X6,X7)|~r1_tarski(X7,X8)|r1_tarski(X6,X8)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_xboole_1])])).
% 0.47/0.63  fof(c_0_130, plain, ![X54, X55]:(~l1_pre_topc(X54)|~m1_subset_1(X55,k1_zfmisc_1(u1_struct_0(X54)))|m1_subset_1(k2_tops_1(X54,X55),k1_zfmisc_1(u1_struct_0(X54)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_tops_1])])).
% 0.47/0.63  cnf(c_0_131, plain, (k2_tops_1(X1,X2)=k2_tops_1(X1,k3_subset_1(u1_struct_0(X1),X2))|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_123])).
% 0.47/0.63  cnf(c_0_132, plain, (r1_tarski(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_98])).
% 0.47/0.63  cnf(c_0_133, plain, (m1_subset_1(k3_subset_1(X2,X1),k1_zfmisc_1(X2))|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_124])).
% 0.47/0.63  cnf(c_0_134, plain, (k7_subset_1(X1,X1,X2)=k3_subset_1(X1,k1_setfam_1(k2_tarski(X1,X2)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_81, c_0_125]), c_0_126])])).
% 0.47/0.63  cnf(c_0_135, negated_conjecture, (k1_setfam_1(k2_tarski(esk2_0,k1_tops_1(esk1_0,esk2_0)))=k1_tops_1(esk1_0,esk2_0)|v4_pre_topc(esk2_0,esk1_0)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_46, c_0_109]), c_0_104])).
% 0.47/0.63  cnf(c_0_136, negated_conjecture, (~v4_pre_topc(esk2_0,esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_127, c_0_128])])).
% 0.47/0.63  cnf(c_0_137, plain, (r1_tarski(X1,X3)|~r1_tarski(X1,X2)|~r1_tarski(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_129])).
% 0.47/0.63  cnf(c_0_138, plain, (m1_subset_1(k1_setfam_1(k2_tarski(X1,X2)),k1_zfmisc_1(X2))), inference(spm,[status(thm)],[c_0_54, c_0_72])).
% 0.47/0.63  cnf(c_0_139, plain, (m1_subset_1(k2_tops_1(X1,X2),k1_zfmisc_1(u1_struct_0(X1)))|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_130])).
% 0.47/0.63  cnf(c_0_140, negated_conjecture, (k2_tops_1(esk1_0,k3_subset_1(u1_struct_0(esk1_0),esk2_0))=k2_tops_1(esk1_0,esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_131, c_0_89]), c_0_90])])).
% 0.47/0.63  cnf(c_0_141, plain, (r1_tarski(k3_subset_1(X1,X2),X1)|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_132, c_0_133])).
% 0.47/0.63  fof(c_0_142, plain, ![X52, X53]:((~v4_pre_topc(X53,X52)|k2_pre_topc(X52,X53)=X53|~m1_subset_1(X53,k1_zfmisc_1(u1_struct_0(X52)))|~l1_pre_topc(X52))&(~v2_pre_topc(X52)|k2_pre_topc(X52,X53)!=X53|v4_pre_topc(X53,X52)|~m1_subset_1(X53,k1_zfmisc_1(u1_struct_0(X52)))|~l1_pre_topc(X52))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t52_pre_topc])])])])).
% 0.47/0.63  cnf(c_0_143, plain, (k3_subset_1(X1,k1_setfam_1(k2_tarski(X1,k3_subset_1(X1,k1_setfam_1(k2_tarski(X1,X2))))))=k1_setfam_1(k2_tarski(X1,X2))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_93, c_0_134]), c_0_134])).
% 0.47/0.63  cnf(c_0_144, negated_conjecture, (k1_setfam_1(k2_tarski(esk2_0,k1_tops_1(esk1_0,esk2_0)))=k1_tops_1(esk1_0,esk2_0)), inference(sr,[status(thm)],[c_0_135, c_0_136])).
% 0.47/0.63  cnf(c_0_145, negated_conjecture, (r1_tarski(X1,esk2_0)|~r1_tarski(X1,k2_tops_1(esk1_0,esk2_0))), inference(spm,[status(thm)],[c_0_137, c_0_117])).
% 0.47/0.63  cnf(c_0_146, plain, (r1_tarski(k1_setfam_1(k2_tarski(X1,X2)),X2)), inference(spm,[status(thm)],[c_0_132, c_0_138])).
% 0.47/0.63  cnf(c_0_147, plain, (k4_subset_1(X1,k3_subset_1(X1,X2),k3_subset_1(X1,k3_subset_1(X1,X2)))=X1|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_69, c_0_133])).
% 0.47/0.63  cnf(c_0_148, negated_conjecture, (k3_subset_1(esk2_0,k3_subset_1(esk2_0,k1_tops_1(esk1_0,esk2_0)))=k1_tops_1(esk1_0,esk2_0)), inference(spm,[status(thm)],[c_0_114, c_0_113])).
% 0.47/0.63  cnf(c_0_149, negated_conjecture, (m1_subset_1(k2_tops_1(esk1_0,esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0)))|~m1_subset_1(k3_subset_1(u1_struct_0(esk1_0),esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_139, c_0_140]), c_0_90])])).
% 0.47/0.63  cnf(c_0_150, negated_conjecture, (r1_tarski(k3_subset_1(u1_struct_0(esk1_0),esk2_0),u1_struct_0(esk1_0))), inference(spm,[status(thm)],[c_0_141, c_0_89])).
% 0.47/0.63  fof(c_0_151, plain, ![X58, X59]:(~l1_pre_topc(X58)|(~m1_subset_1(X59,k1_zfmisc_1(u1_struct_0(X58)))|k2_pre_topc(X58,X59)=k4_subset_1(u1_struct_0(X58),X59,k2_tops_1(X58,X59)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t65_tops_1])])])).
% 0.47/0.63  cnf(c_0_152, plain, (v4_pre_topc(X2,X1)|~v2_pre_topc(X1)|k2_pre_topc(X1,X2)!=X2|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_142])).
% 0.47/0.63  fof(c_0_153, plain, ![X23, X24]:k2_xboole_0(X23,k2_xboole_0(X23,X24))=k2_xboole_0(X23,X24), inference(variable_rename,[status(thm)],[t6_xboole_1])).
% 0.47/0.63  cnf(c_0_154, negated_conjecture, (k3_tarski(k2_tarski(X1,k1_tops_1(esk1_0,esk2_0)))=k4_subset_1(esk2_0,X1,k1_tops_1(esk1_0,esk2_0))|~m1_subset_1(X1,k1_zfmisc_1(esk2_0))), inference(spm,[status(thm)],[c_0_67, c_0_113])).
% 0.47/0.63  cnf(c_0_155, negated_conjecture, (k3_subset_1(esk2_0,k1_setfam_1(k2_tarski(esk2_0,k2_tops_1(esk1_0,esk2_0))))=k1_tops_1(esk1_0,esk2_0)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_143, c_0_144]), c_0_128])).
% 0.47/0.63  cnf(c_0_156, negated_conjecture, (r1_tarski(k1_setfam_1(k2_tarski(X1,k2_tops_1(esk1_0,esk2_0))),esk2_0)), inference(spm,[status(thm)],[c_0_145, c_0_146])).
% 0.47/0.63  cnf(c_0_157, negated_conjecture, (k4_subset_1(esk2_0,k3_subset_1(esk2_0,k1_tops_1(esk1_0,esk2_0)),k1_tops_1(esk1_0,esk2_0))=esk2_0), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_147, c_0_113]), c_0_148])).
% 0.47/0.63  cnf(c_0_158, negated_conjecture, (m1_subset_1(k2_tops_1(esk1_0,esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_149, c_0_107]), c_0_150])])).
% 0.47/0.63  cnf(c_0_159, plain, (k2_pre_topc(X1,X2)=k4_subset_1(u1_struct_0(X1),X2,k2_tops_1(X1,X2))|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_151])).
% 0.47/0.63  cnf(c_0_160, plain, (v4_pre_topc(X1,X2)|k2_pre_topc(X2,X1)!=X1|~v2_pre_topc(X2)|~l1_pre_topc(X2)|~r1_tarski(X1,u1_struct_0(X2))), inference(spm,[status(thm)],[c_0_152, c_0_107])).
% 0.47/0.63  cnf(c_0_161, negated_conjecture, (v2_pre_topc(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_84])).
% 0.47/0.63  cnf(c_0_162, plain, (k2_xboole_0(X1,k2_xboole_0(X1,X2))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_153])).
% 0.47/0.63  cnf(c_0_163, negated_conjecture, (k3_tarski(k2_tarski(k1_setfam_1(k2_tarski(esk2_0,X1)),k1_tops_1(esk1_0,esk2_0)))=k4_subset_1(esk2_0,k1_setfam_1(k2_tarski(esk2_0,X1)),k1_tops_1(esk1_0,esk2_0))), inference(spm,[status(thm)],[c_0_154, c_0_54])).
% 0.47/0.63  cnf(c_0_164, negated_conjecture, (k1_setfam_1(k2_tarski(esk2_0,k2_tops_1(esk1_0,esk2_0)))=k2_tops_1(esk1_0,esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_121, c_0_155]), c_0_128]), c_0_156])])).
% 0.47/0.63  cnf(c_0_165, negated_conjecture, (k4_subset_1(esk2_0,k2_tops_1(esk1_0,esk2_0),k1_tops_1(esk1_0,esk2_0))=esk2_0), inference(rw,[status(thm)],[c_0_157, c_0_128])).
% 0.47/0.63  cnf(c_0_166, negated_conjecture, (k4_subset_1(u1_struct_0(esk1_0),X1,k2_tops_1(esk1_0,esk2_0))=k3_tarski(k2_tarski(X1,k2_tops_1(esk1_0,esk2_0)))|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(spm,[status(thm)],[c_0_67, c_0_158])).
% 0.47/0.63  cnf(c_0_167, negated_conjecture, (k4_subset_1(u1_struct_0(esk1_0),esk2_0,k2_tops_1(esk1_0,esk2_0))=k2_pre_topc(esk1_0,esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_159, c_0_89]), c_0_90])])).
% 0.47/0.63  cnf(c_0_168, negated_conjecture, (v4_pre_topc(X1,esk1_0)|k2_pre_topc(esk1_0,X1)!=X1|~r1_tarski(X1,u1_struct_0(esk1_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_160, c_0_161]), c_0_90])])).
% 0.47/0.63  cnf(c_0_169, negated_conjecture, (r1_tarski(esk2_0,u1_struct_0(esk1_0))), inference(spm,[status(thm)],[c_0_132, c_0_89])).
% 0.47/0.63  cnf(c_0_170, plain, (k3_tarski(k2_tarski(X1,k3_tarski(k2_tarski(X1,X2))))=k3_tarski(k2_tarski(X1,X2))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_162, c_0_57]), c_0_57]), c_0_57])).
% 0.47/0.63  cnf(c_0_171, negated_conjecture, (k3_tarski(k2_tarski(k2_tops_1(esk1_0,esk2_0),k1_tops_1(esk1_0,esk2_0)))=esk2_0), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_163, c_0_164]), c_0_165])).
% 0.47/0.63  cnf(c_0_172, negated_conjecture, (k3_tarski(k2_tarski(esk2_0,k2_tops_1(esk1_0,esk2_0)))=k2_pre_topc(esk1_0,esk2_0)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_166, c_0_89]), c_0_167])).
% 0.47/0.63  cnf(c_0_173, negated_conjecture, (k2_pre_topc(esk1_0,esk2_0)!=esk2_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_136, c_0_168]), c_0_169])])).
% 0.47/0.63  cnf(c_0_174, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_170, c_0_171]), c_0_72]), c_0_172]), c_0_173]), ['proof']).
% 0.47/0.63  # SZS output end CNFRefutation
% 0.47/0.63  # Proof object total steps             : 175
% 0.47/0.63  # Proof object clause steps            : 116
% 0.47/0.63  # Proof object formula steps           : 59
% 0.47/0.63  # Proof object conjectures             : 46
% 0.47/0.63  # Proof object clause conjectures      : 43
% 0.47/0.63  # Proof object formula conjectures     : 3
% 0.47/0.63  # Proof object initial clauses used    : 34
% 0.47/0.63  # Proof object initial formulas used   : 29
% 0.47/0.63  # Proof object generating inferences   : 55
% 0.47/0.63  # Proof object simplifying inferences  : 79
% 0.47/0.63  # Training examples: 0 positive, 0 negative
% 0.47/0.63  # Parsed axioms                        : 30
% 0.47/0.63  # Removed by relevancy pruning/SinE    : 0
% 0.47/0.63  # Initial clauses                      : 36
% 0.47/0.63  # Removed in clause preprocessing      : 5
% 0.47/0.63  # Initial clauses in saturation        : 31
% 0.47/0.63  # Processed clauses                    : 2359
% 0.47/0.63  # ...of these trivial                  : 112
% 0.47/0.63  # ...subsumed                          : 1368
% 0.47/0.63  # ...remaining for further processing  : 879
% 0.47/0.63  # Other redundant clauses eliminated   : 0
% 0.47/0.63  # Clauses deleted for lack of memory   : 0
% 0.47/0.63  # Backward-subsumed                    : 46
% 0.47/0.63  # Backward-rewritten                   : 84
% 0.47/0.63  # Generated clauses                    : 13936
% 0.47/0.63  # ...of the previous two non-trivial   : 9894
% 0.47/0.63  # Contextual simplify-reflections      : 3
% 0.47/0.63  # Paramodulations                      : 13927
% 0.47/0.63  # Factorizations                       : 0
% 0.47/0.63  # Equation resolutions                 : 0
% 0.47/0.63  # Propositional unsat checks           : 0
% 0.47/0.63  #    Propositional check models        : 0
% 0.47/0.63  #    Propositional check unsatisfiable : 0
% 0.47/0.63  #    Propositional clauses             : 0
% 0.47/0.63  #    Propositional clauses after purity: 0
% 0.47/0.64  #    Propositional unsat core size     : 0
% 0.47/0.64  #    Propositional preprocessing time  : 0.000
% 0.47/0.64  #    Propositional encoding time       : 0.000
% 0.47/0.64  #    Propositional solver time         : 0.000
% 0.47/0.64  #    Success case prop preproc time    : 0.000
% 0.47/0.64  #    Success case prop encoding time   : 0.000
% 0.47/0.64  #    Success case prop solver time     : 0.000
% 0.47/0.64  # Current number of processed clauses  : 709
% 0.47/0.64  #    Positive orientable unit clauses  : 207
% 0.47/0.64  #    Positive unorientable unit clauses: 1
% 0.47/0.64  #    Negative unit clauses             : 6
% 0.47/0.64  #    Non-unit-clauses                  : 495
% 0.47/0.64  # Current number of unprocessed clauses: 7196
% 0.47/0.64  # ...number of literals in the above   : 18974
% 0.47/0.64  # Current number of archived formulas  : 0
% 0.47/0.64  # Current number of archived clauses   : 175
% 0.47/0.64  # Clause-clause subsumption calls (NU) : 30183
% 0.47/0.64  # Rec. Clause-clause subsumption calls : 27543
% 0.47/0.64  # Non-unit clause-clause subsumptions  : 1142
% 0.47/0.64  # Unit Clause-clause subsumption calls : 988
% 0.47/0.64  # Rewrite failures with RHS unbound    : 0
% 0.47/0.64  # BW rewrite match attempts            : 537
% 0.47/0.64  # BW rewrite match successes           : 56
% 0.47/0.64  # Condensation attempts                : 0
% 0.47/0.64  # Condensation successes               : 0
% 0.47/0.64  # Termbank termtop insertions          : 198105
% 0.47/0.64  
% 0.47/0.64  # -------------------------------------------------
% 0.47/0.64  # User time                : 0.284 s
% 0.47/0.64  # System time              : 0.015 s
% 0.47/0.64  # Total time               : 0.299 s
% 0.47/0.64  # Maximum resident set size: 1596 pages
%------------------------------------------------------------------------------
