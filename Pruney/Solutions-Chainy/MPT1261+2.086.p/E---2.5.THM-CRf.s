%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n006.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:11:39 EST 2020

% Result     : Theorem 0.21s
% Output     : CNFRefutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :  102 (1307 expanded)
%              Number of clauses        :   63 ( 597 expanded)
%              Number of leaves         :   19 ( 336 expanded)
%              Depth                    :   17
%              Number of atoms          :  210 (2227 expanded)
%              Number of equality atoms :   67 (1113 expanded)
%              Maximal formula depth    :    7 (   3 average)
%              Maximal clause size      :    7 (   2 average)
%              Maximal term depth       :    7 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t100_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_xboole_1)).

fof(t12_setfam_1,axiom,(
    ! [X1,X2] : k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_setfam_1)).

fof(t1_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( ( r1_tarski(X1,X2)
        & r1_tarski(X2,X3) )
     => r1_tarski(X1,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t1_xboole_1)).

fof(t3_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X2))
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_subset)).

fof(t77_tops_1,conjecture,(
    ! [X1] :
      ( ( v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ( v4_pre_topc(X2,X1)
          <=> k2_tops_1(X1,X2) = k7_subset_1(u1_struct_0(X1),X2,k1_tops_1(X1,X2)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t77_tops_1)).

fof(t3_boole,axiom,(
    ! [X1] : k4_xboole_0(X1,k1_xboole_0) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_boole)).

fof(t2_boole,axiom,(
    ! [X1] : k3_xboole_0(X1,k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_boole)).

fof(t36_xboole_1,axiom,(
    ! [X1,X2] : r1_tarski(k4_xboole_0(X1,X2),X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t36_xboole_1)).

fof(redefinition_k7_subset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => k7_subset_1(X1,X2,X3) = k4_xboole_0(X2,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k7_subset_1)).

fof(t48_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t48_xboole_1)).

fof(idempotence_k3_xboole_0,axiom,(
    ! [X1,X2] : k3_xboole_0(X1,X1) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',idempotence_k3_xboole_0)).

fof(redefinition_k4_subset_1,axiom,(
    ! [X1,X2,X3] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(X1))
        & m1_subset_1(X3,k1_zfmisc_1(X1)) )
     => k4_subset_1(X1,X2,X3) = k2_xboole_0(X2,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k4_subset_1)).

fof(l51_zfmisc_1,axiom,(
    ! [X1,X2] : k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l51_zfmisc_1)).

fof(t98_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X2) = k5_xboole_0(X1,k4_xboole_0(X2,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t98_xboole_1)).

fof(t28_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
     => k3_xboole_0(X1,X2) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t28_xboole_1)).

fof(t65_tops_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => k2_pre_topc(X1,X2) = k4_subset_1(u1_struct_0(X1),X2,k2_tops_1(X1,X2)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t65_tops_1)).

fof(t69_tops_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ( v4_pre_topc(X2,X1)
           => r1_tarski(k2_tops_1(X1,X2),X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_tops_1)).

fof(fc1_tops_1,axiom,(
    ! [X1,X2] :
      ( ( v2_pre_topc(X1)
        & l1_pre_topc(X1)
        & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) )
     => v4_pre_topc(k2_pre_topc(X1,X2),X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc1_tops_1)).

fof(l78_tops_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => k2_tops_1(X1,X2) = k7_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X2),k1_tops_1(X1,X2)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l78_tops_1)).

fof(c_0_19,plain,(
    ! [X5,X6] : k4_xboole_0(X5,X6) = k5_xboole_0(X5,k3_xboole_0(X5,X6)) ),
    inference(variable_rename,[status(thm)],[t100_xboole_1])).

fof(c_0_20,plain,(
    ! [X30,X31] : k1_setfam_1(k2_tarski(X30,X31)) = k3_xboole_0(X30,X31) ),
    inference(variable_rename,[status(thm)],[t12_setfam_1])).

fof(c_0_21,plain,(
    ! [X7,X8,X9] :
      ( ~ r1_tarski(X7,X8)
      | ~ r1_tarski(X8,X9)
      | r1_tarski(X7,X9) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_xboole_1])])).

fof(c_0_22,plain,(
    ! [X32,X33] :
      ( ( ~ m1_subset_1(X32,k1_zfmisc_1(X33))
        | r1_tarski(X32,X33) )
      & ( ~ r1_tarski(X32,X33)
        | m1_subset_1(X32,k1_zfmisc_1(X33)) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).

fof(c_0_23,negated_conjecture,(
    ~ ! [X1] :
        ( ( v2_pre_topc(X1)
          & l1_pre_topc(X1) )
       => ! [X2] :
            ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
           => ( v4_pre_topc(X2,X1)
            <=> k2_tops_1(X1,X2) = k7_subset_1(u1_struct_0(X1),X2,k1_tops_1(X1,X2)) ) ) ) ),
    inference(assume_negation,[status(cth)],[t77_tops_1])).

fof(c_0_24,plain,(
    ! [X15] : k4_xboole_0(X15,k1_xboole_0) = X15 ),
    inference(variable_rename,[status(thm)],[t3_boole])).

cnf(c_0_25,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_26,plain,
    ( k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

fof(c_0_27,plain,(
    ! [X12] : k3_xboole_0(X12,k1_xboole_0) = k1_xboole_0 ),
    inference(variable_rename,[status(thm)],[t2_boole])).

cnf(c_0_28,plain,
    ( r1_tarski(X1,X3)
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_29,plain,
    ( r1_tarski(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

fof(c_0_30,negated_conjecture,
    ( v2_pre_topc(esk1_0)
    & l1_pre_topc(esk1_0)
    & m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0)))
    & ( ~ v4_pre_topc(esk2_0,esk1_0)
      | k2_tops_1(esk1_0,esk2_0) != k7_subset_1(u1_struct_0(esk1_0),esk2_0,k1_tops_1(esk1_0,esk2_0)) )
    & ( v4_pre_topc(esk2_0,esk1_0)
      | k2_tops_1(esk1_0,esk2_0) = k7_subset_1(u1_struct_0(esk1_0),esk2_0,k1_tops_1(esk1_0,esk2_0)) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_23])])])).

fof(c_0_31,plain,(
    ! [X13,X14] : r1_tarski(k4_xboole_0(X13,X14),X13) ),
    inference(variable_rename,[status(thm)],[t36_xboole_1])).

fof(c_0_32,plain,(
    ! [X27,X28,X29] :
      ( ~ m1_subset_1(X28,k1_zfmisc_1(X27))
      | k7_subset_1(X27,X28,X29) = k4_xboole_0(X28,X29) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k7_subset_1])])).

cnf(c_0_33,plain,
    ( k4_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_34,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))) ),
    inference(rw,[status(thm)],[c_0_25,c_0_26])).

cnf(c_0_35,plain,
    ( k3_xboole_0(X1,k1_xboole_0) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_36,plain,
    ( r1_tarski(X1,X2)
    | ~ m1_subset_1(X3,k1_zfmisc_1(X2))
    | ~ r1_tarski(X1,X3) ),
    inference(spm,[status(thm)],[c_0_28,c_0_29])).

cnf(c_0_37,negated_conjecture,
    ( m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_38,plain,
    ( r1_tarski(k4_xboole_0(X1,X2),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

cnf(c_0_39,plain,
    ( k7_subset_1(X2,X1,X3) = k4_xboole_0(X1,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

cnf(c_0_40,plain,
    ( k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,k1_xboole_0))) = X1 ),
    inference(rw,[status(thm)],[c_0_33,c_0_34])).

cnf(c_0_41,plain,
    ( k1_setfam_1(k2_tarski(X1,k1_xboole_0)) = k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_35,c_0_26])).

cnf(c_0_42,negated_conjecture,
    ( r1_tarski(X1,u1_struct_0(esk1_0))
    | ~ r1_tarski(X1,esk2_0) ),
    inference(spm,[status(thm)],[c_0_36,c_0_37])).

cnf(c_0_43,plain,
    ( r1_tarski(k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))),X1) ),
    inference(rw,[status(thm)],[c_0_38,c_0_34])).

cnf(c_0_44,plain,
    ( k7_subset_1(X2,X1,X3) = k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X3)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(rw,[status(thm)],[c_0_39,c_0_34])).

cnf(c_0_45,plain,
    ( k5_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(rw,[status(thm)],[c_0_40,c_0_41])).

cnf(c_0_46,negated_conjecture,
    ( r1_tarski(X1,u1_struct_0(esk1_0))
    | ~ r1_tarski(X2,esk2_0)
    | ~ r1_tarski(X1,X2) ),
    inference(spm,[status(thm)],[c_0_28,c_0_42])).

cnf(c_0_47,plain,
    ( r1_tarski(k7_subset_1(X1,X2,X3),X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_43,c_0_44])).

cnf(c_0_48,negated_conjecture,
    ( v4_pre_topc(esk2_0,esk1_0)
    | k2_tops_1(esk1_0,esk2_0) = k7_subset_1(u1_struct_0(esk1_0),esk2_0,k1_tops_1(esk1_0,esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_49,plain,
    ( k7_subset_1(X1,X2,X3) = k7_subset_1(X4,X2,X3)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X4)) ),
    inference(spm,[status(thm)],[c_0_44,c_0_44])).

cnf(c_0_50,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_51,plain,
    ( r1_tarski(X1,X1) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43,c_0_41]),c_0_45])).

fof(c_0_52,plain,(
    ! [X16,X17] : k4_xboole_0(X16,k4_xboole_0(X16,X17)) = k3_xboole_0(X16,X17) ),
    inference(variable_rename,[status(thm)],[t48_xboole_1])).

fof(c_0_53,plain,(
    ! [X4] : k3_xboole_0(X4,X4) = X4 ),
    inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[idempotence_k3_xboole_0])])).

fof(c_0_54,plain,(
    ! [X24,X25,X26] :
      ( ~ m1_subset_1(X25,k1_zfmisc_1(X24))
      | ~ m1_subset_1(X26,k1_zfmisc_1(X24))
      | k4_subset_1(X24,X25,X26) = k2_xboole_0(X25,X26) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k4_subset_1])])).

fof(c_0_55,plain,(
    ! [X22,X23] : k3_tarski(k2_tarski(X22,X23)) = k2_xboole_0(X22,X23) ),
    inference(variable_rename,[status(thm)],[l51_zfmisc_1])).

cnf(c_0_56,negated_conjecture,
    ( r1_tarski(X1,u1_struct_0(esk1_0))
    | ~ m1_subset_1(esk2_0,k1_zfmisc_1(X2))
    | ~ r1_tarski(X1,k7_subset_1(X2,esk2_0,X3)) ),
    inference(spm,[status(thm)],[c_0_46,c_0_47])).

cnf(c_0_57,negated_conjecture,
    ( k7_subset_1(X1,esk2_0,k1_tops_1(esk1_0,esk2_0)) = k2_tops_1(esk1_0,esk2_0)
    | v4_pre_topc(esk2_0,esk1_0)
    | ~ m1_subset_1(esk2_0,k1_zfmisc_1(X1)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48,c_0_49]),c_0_37])])).

cnf(c_0_58,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_50,c_0_51])).

fof(c_0_59,plain,(
    ! [X18,X19] : k2_xboole_0(X18,X19) = k5_xboole_0(X18,k4_xboole_0(X19,X18)) ),
    inference(variable_rename,[status(thm)],[t98_xboole_1])).

fof(c_0_60,plain,(
    ! [X10,X11] :
      ( ~ r1_tarski(X10,X11)
      | k3_xboole_0(X10,X11) = X10 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t28_xboole_1])])).

cnf(c_0_61,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_52])).

cnf(c_0_62,plain,
    ( k3_xboole_0(X1,X1) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_53])).

cnf(c_0_63,plain,
    ( k4_subset_1(X2,X1,X3) = k2_xboole_0(X1,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_54])).

cnf(c_0_64,plain,
    ( k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_55])).

fof(c_0_65,plain,(
    ! [X38,X39] :
      ( ~ l1_pre_topc(X38)
      | ~ m1_subset_1(X39,k1_zfmisc_1(u1_struct_0(X38)))
      | k2_pre_topc(X38,X39) = k4_subset_1(u1_struct_0(X38),X39,k2_tops_1(X38,X39)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t65_tops_1])])])).

cnf(c_0_66,negated_conjecture,
    ( r1_tarski(k7_subset_1(X1,esk2_0,X2),u1_struct_0(esk1_0))
    | ~ m1_subset_1(esk2_0,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_56,c_0_51])).

cnf(c_0_67,negated_conjecture,
    ( k7_subset_1(esk2_0,esk2_0,k1_tops_1(esk1_0,esk2_0)) = k2_tops_1(esk1_0,esk2_0)
    | v4_pre_topc(esk2_0,esk1_0) ),
    inference(spm,[status(thm)],[c_0_57,c_0_58])).

fof(c_0_68,plain,(
    ! [X40,X41] :
      ( ~ l1_pre_topc(X40)
      | ~ m1_subset_1(X41,k1_zfmisc_1(u1_struct_0(X40)))
      | ~ v4_pre_topc(X41,X40)
      | r1_tarski(k2_tops_1(X40,X41),X41) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t69_tops_1])])])).

cnf(c_0_69,plain,
    ( k2_xboole_0(X1,X2) = k5_xboole_0(X1,k4_xboole_0(X2,X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_59])).

cnf(c_0_70,plain,
    ( k3_xboole_0(X1,X2) = X1
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_60])).

cnf(c_0_71,plain,
    ( k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2)))))) = k1_setfam_1(k2_tarski(X1,X2)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_61,c_0_26]),c_0_34]),c_0_34])).

cnf(c_0_72,plain,
    ( k1_setfam_1(k2_tarski(X1,X1)) = X1 ),
    inference(rw,[status(thm)],[c_0_62,c_0_26])).

cnf(c_0_73,plain,
    ( k4_subset_1(X2,X1,X3) = k3_tarski(k2_tarski(X1,X3))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X2))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(rw,[status(thm)],[c_0_63,c_0_64])).

cnf(c_0_74,plain,
    ( k2_pre_topc(X1,X2) = k4_subset_1(u1_struct_0(X1),X2,k2_tops_1(X1,X2))
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_65])).

cnf(c_0_75,negated_conjecture,
    ( v4_pre_topc(esk2_0,esk1_0)
    | r1_tarski(k2_tops_1(esk1_0,esk2_0),u1_struct_0(esk1_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_66,c_0_67]),c_0_58])])).

cnf(c_0_76,plain,
    ( r1_tarski(k2_tops_1(X1,X2),X2)
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v4_pre_topc(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_68])).

cnf(c_0_77,plain,
    ( k3_tarski(k2_tarski(X1,X2)) = k5_xboole_0(X1,k5_xboole_0(X2,k1_setfam_1(k2_tarski(X2,X1)))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_69,c_0_64]),c_0_34])).

cnf(c_0_78,plain,
    ( k1_setfam_1(k2_tarski(X1,X2)) = X1
    | ~ r1_tarski(X1,X2) ),
    inference(rw,[status(thm)],[c_0_70,c_0_26])).

cnf(c_0_79,plain,
    ( k5_xboole_0(X1,X1) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_71,c_0_41]),c_0_45]),c_0_72])).

cnf(c_0_80,plain,
    ( k3_tarski(k2_tarski(X1,k2_tops_1(X2,X1))) = k2_pre_topc(X2,X1)
    | ~ l1_pre_topc(X2)
    | ~ m1_subset_1(k2_tops_1(X2,X1),k1_zfmisc_1(u1_struct_0(X2)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2))) ),
    inference(spm,[status(thm)],[c_0_73,c_0_74])).

cnf(c_0_81,negated_conjecture,
    ( v4_pre_topc(esk2_0,esk1_0)
    | m1_subset_1(k2_tops_1(esk1_0,esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(spm,[status(thm)],[c_0_50,c_0_75])).

cnf(c_0_82,negated_conjecture,
    ( l1_pre_topc(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_83,negated_conjecture,
    ( r1_tarski(X1,u1_struct_0(esk1_0))
    | ~ v4_pre_topc(esk2_0,X2)
    | ~ l1_pre_topc(X2)
    | ~ m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(X2)))
    | ~ r1_tarski(X1,k2_tops_1(X2,esk2_0)) ),
    inference(spm,[status(thm)],[c_0_46,c_0_76])).

fof(c_0_84,plain,(
    ! [X34,X35] :
      ( ~ v2_pre_topc(X34)
      | ~ l1_pre_topc(X34)
      | ~ m1_subset_1(X35,k1_zfmisc_1(u1_struct_0(X34)))
      | v4_pre_topc(k2_pre_topc(X34,X35),X34) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[fc1_tops_1])])).

cnf(c_0_85,plain,
    ( k3_tarski(k2_tarski(X1,X2)) = X1
    | ~ r1_tarski(X2,X1) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_77,c_0_78]),c_0_79]),c_0_45])).

cnf(c_0_86,negated_conjecture,
    ( k3_tarski(k2_tarski(esk2_0,k2_tops_1(esk1_0,esk2_0))) = k2_pre_topc(esk1_0,esk2_0)
    | v4_pre_topc(esk2_0,esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_80,c_0_81]),c_0_82]),c_0_37])])).

cnf(c_0_87,negated_conjecture,
    ( v4_pre_topc(esk2_0,esk1_0)
    | r1_tarski(k2_tops_1(esk1_0,esk2_0),esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47,c_0_48]),c_0_37])])).

cnf(c_0_88,negated_conjecture,
    ( r1_tarski(k2_tops_1(X1,esk2_0),u1_struct_0(esk1_0))
    | ~ v4_pre_topc(esk2_0,X1)
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(spm,[status(thm)],[c_0_83,c_0_51])).

cnf(c_0_89,plain,
    ( v4_pre_topc(k2_pre_topc(X1,X2),X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_84])).

cnf(c_0_90,negated_conjecture,
    ( k2_pre_topc(esk1_0,esk2_0) = esk2_0
    | v4_pre_topc(esk2_0,esk1_0) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_85,c_0_86]),c_0_87])).

cnf(c_0_91,negated_conjecture,
    ( v2_pre_topc(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_92,negated_conjecture,
    ( m1_subset_1(k2_tops_1(X1,esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ v4_pre_topc(esk2_0,X1)
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(spm,[status(thm)],[c_0_50,c_0_88])).

cnf(c_0_93,negated_conjecture,
    ( v4_pre_topc(esk2_0,esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_89,c_0_90]),c_0_82]),c_0_91]),c_0_37])])).

cnf(c_0_94,negated_conjecture,
    ( k3_tarski(k2_tarski(esk2_0,k2_tops_1(esk1_0,esk2_0))) = k2_pre_topc(esk1_0,esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_80,c_0_92]),c_0_82]),c_0_37]),c_0_93])])).

fof(c_0_95,plain,(
    ! [X36,X37] :
      ( ~ l1_pre_topc(X36)
      | ~ m1_subset_1(X37,k1_zfmisc_1(u1_struct_0(X36)))
      | k2_tops_1(X36,X37) = k7_subset_1(u1_struct_0(X36),k2_pre_topc(X36,X37),k1_tops_1(X36,X37)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l78_tops_1])])])).

cnf(c_0_96,negated_conjecture,
    ( k2_pre_topc(esk1_0,esk2_0) = esk2_0
    | ~ r1_tarski(k2_tops_1(esk1_0,esk2_0),esk2_0) ),
    inference(spm,[status(thm)],[c_0_85,c_0_94])).

cnf(c_0_97,negated_conjecture,
    ( ~ v4_pre_topc(esk2_0,esk1_0)
    | k2_tops_1(esk1_0,esk2_0) != k7_subset_1(u1_struct_0(esk1_0),esk2_0,k1_tops_1(esk1_0,esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_98,plain,
    ( k2_tops_1(X1,X2) = k7_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X2),k1_tops_1(X1,X2))
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_95])).

cnf(c_0_99,negated_conjecture,
    ( k2_pre_topc(esk1_0,esk2_0) = esk2_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_96,c_0_76]),c_0_93]),c_0_82]),c_0_37])])).

cnf(c_0_100,negated_conjecture,
    ( k7_subset_1(u1_struct_0(esk1_0),esk2_0,k1_tops_1(esk1_0,esk2_0)) != k2_tops_1(esk1_0,esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_97,c_0_93])])).

cnf(c_0_101,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_98,c_0_99]),c_0_82]),c_0_37])]),c_0_100]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.34  % Computer   : n006.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 15:34:37 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  # Version: 2.5pre002
% 0.14/0.34  # No SInE strategy applied
% 0.14/0.34  # Trying AutoSched0 for 299 seconds
% 0.21/0.45  # AutoSched0-Mode selected heuristic G_E___302_C18_F1_URBAN_RG_S04BN
% 0.21/0.45  # and selection function PSelectComplexExceptUniqMaxHorn.
% 0.21/0.45  #
% 0.21/0.45  # Preprocessing time       : 0.028 s
% 0.21/0.45  
% 0.21/0.45  # Proof found!
% 0.21/0.45  # SZS status Theorem
% 0.21/0.45  # SZS output start CNFRefutation
% 0.21/0.45  fof(t100_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t100_xboole_1)).
% 0.21/0.45  fof(t12_setfam_1, axiom, ![X1, X2]:k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t12_setfam_1)).
% 0.21/0.45  fof(t1_xboole_1, axiom, ![X1, X2, X3]:((r1_tarski(X1,X2)&r1_tarski(X2,X3))=>r1_tarski(X1,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t1_xboole_1)).
% 0.21/0.45  fof(t3_subset, axiom, ![X1, X2]:(m1_subset_1(X1,k1_zfmisc_1(X2))<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_subset)).
% 0.21/0.45  fof(t77_tops_1, conjecture, ![X1]:((v2_pre_topc(X1)&l1_pre_topc(X1))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>(v4_pre_topc(X2,X1)<=>k2_tops_1(X1,X2)=k7_subset_1(u1_struct_0(X1),X2,k1_tops_1(X1,X2))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t77_tops_1)).
% 0.21/0.45  fof(t3_boole, axiom, ![X1]:k4_xboole_0(X1,k1_xboole_0)=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_boole)).
% 0.21/0.45  fof(t2_boole, axiom, ![X1]:k3_xboole_0(X1,k1_xboole_0)=k1_xboole_0, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t2_boole)).
% 0.21/0.45  fof(t36_xboole_1, axiom, ![X1, X2]:r1_tarski(k4_xboole_0(X1,X2),X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t36_xboole_1)).
% 0.21/0.45  fof(redefinition_k7_subset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>k7_subset_1(X1,X2,X3)=k4_xboole_0(X2,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k7_subset_1)).
% 0.21/0.45  fof(t48_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,k4_xboole_0(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t48_xboole_1)).
% 0.21/0.45  fof(idempotence_k3_xboole_0, axiom, ![X1, X2]:k3_xboole_0(X1,X1)=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', idempotence_k3_xboole_0)).
% 0.21/0.45  fof(redefinition_k4_subset_1, axiom, ![X1, X2, X3]:((m1_subset_1(X2,k1_zfmisc_1(X1))&m1_subset_1(X3,k1_zfmisc_1(X1)))=>k4_subset_1(X1,X2,X3)=k2_xboole_0(X2,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k4_subset_1)).
% 0.21/0.45  fof(l51_zfmisc_1, axiom, ![X1, X2]:k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l51_zfmisc_1)).
% 0.21/0.45  fof(t98_xboole_1, axiom, ![X1, X2]:k2_xboole_0(X1,X2)=k5_xboole_0(X1,k4_xboole_0(X2,X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t98_xboole_1)).
% 0.21/0.45  fof(t28_xboole_1, axiom, ![X1, X2]:(r1_tarski(X1,X2)=>k3_xboole_0(X1,X2)=X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t28_xboole_1)).
% 0.21/0.45  fof(t65_tops_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>k2_pre_topc(X1,X2)=k4_subset_1(u1_struct_0(X1),X2,k2_tops_1(X1,X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t65_tops_1)).
% 0.21/0.45  fof(t69_tops_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>(v4_pre_topc(X2,X1)=>r1_tarski(k2_tops_1(X1,X2),X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t69_tops_1)).
% 0.21/0.45  fof(fc1_tops_1, axiom, ![X1, X2]:(((v2_pre_topc(X1)&l1_pre_topc(X1))&m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))))=>v4_pre_topc(k2_pre_topc(X1,X2),X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc1_tops_1)).
% 0.21/0.45  fof(l78_tops_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>k2_tops_1(X1,X2)=k7_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X2),k1_tops_1(X1,X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l78_tops_1)).
% 0.21/0.45  fof(c_0_19, plain, ![X5, X6]:k4_xboole_0(X5,X6)=k5_xboole_0(X5,k3_xboole_0(X5,X6)), inference(variable_rename,[status(thm)],[t100_xboole_1])).
% 0.21/0.45  fof(c_0_20, plain, ![X30, X31]:k1_setfam_1(k2_tarski(X30,X31))=k3_xboole_0(X30,X31), inference(variable_rename,[status(thm)],[t12_setfam_1])).
% 0.21/0.45  fof(c_0_21, plain, ![X7, X8, X9]:(~r1_tarski(X7,X8)|~r1_tarski(X8,X9)|r1_tarski(X7,X9)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_xboole_1])])).
% 0.21/0.45  fof(c_0_22, plain, ![X32, X33]:((~m1_subset_1(X32,k1_zfmisc_1(X33))|r1_tarski(X32,X33))&(~r1_tarski(X32,X33)|m1_subset_1(X32,k1_zfmisc_1(X33)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).
% 0.21/0.45  fof(c_0_23, negated_conjecture, ~(![X1]:((v2_pre_topc(X1)&l1_pre_topc(X1))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>(v4_pre_topc(X2,X1)<=>k2_tops_1(X1,X2)=k7_subset_1(u1_struct_0(X1),X2,k1_tops_1(X1,X2)))))), inference(assume_negation,[status(cth)],[t77_tops_1])).
% 0.21/0.45  fof(c_0_24, plain, ![X15]:k4_xboole_0(X15,k1_xboole_0)=X15, inference(variable_rename,[status(thm)],[t3_boole])).
% 0.21/0.45  cnf(c_0_25, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.21/0.45  cnf(c_0_26, plain, (k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.21/0.45  fof(c_0_27, plain, ![X12]:k3_xboole_0(X12,k1_xboole_0)=k1_xboole_0, inference(variable_rename,[status(thm)],[t2_boole])).
% 0.21/0.45  cnf(c_0_28, plain, (r1_tarski(X1,X3)|~r1_tarski(X1,X2)|~r1_tarski(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.21/0.45  cnf(c_0_29, plain, (r1_tarski(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.21/0.45  fof(c_0_30, negated_conjecture, ((v2_pre_topc(esk1_0)&l1_pre_topc(esk1_0))&(m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0)))&((~v4_pre_topc(esk2_0,esk1_0)|k2_tops_1(esk1_0,esk2_0)!=k7_subset_1(u1_struct_0(esk1_0),esk2_0,k1_tops_1(esk1_0,esk2_0)))&(v4_pre_topc(esk2_0,esk1_0)|k2_tops_1(esk1_0,esk2_0)=k7_subset_1(u1_struct_0(esk1_0),esk2_0,k1_tops_1(esk1_0,esk2_0)))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_23])])])).
% 0.21/0.45  fof(c_0_31, plain, ![X13, X14]:r1_tarski(k4_xboole_0(X13,X14),X13), inference(variable_rename,[status(thm)],[t36_xboole_1])).
% 0.21/0.45  fof(c_0_32, plain, ![X27, X28, X29]:(~m1_subset_1(X28,k1_zfmisc_1(X27))|k7_subset_1(X27,X28,X29)=k4_xboole_0(X28,X29)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k7_subset_1])])).
% 0.21/0.45  cnf(c_0_33, plain, (k4_xboole_0(X1,k1_xboole_0)=X1), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.21/0.45  cnf(c_0_34, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2)))), inference(rw,[status(thm)],[c_0_25, c_0_26])).
% 0.21/0.45  cnf(c_0_35, plain, (k3_xboole_0(X1,k1_xboole_0)=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.21/0.45  cnf(c_0_36, plain, (r1_tarski(X1,X2)|~m1_subset_1(X3,k1_zfmisc_1(X2))|~r1_tarski(X1,X3)), inference(spm,[status(thm)],[c_0_28, c_0_29])).
% 0.21/0.45  cnf(c_0_37, negated_conjecture, (m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.21/0.45  cnf(c_0_38, plain, (r1_tarski(k4_xboole_0(X1,X2),X1)), inference(split_conjunct,[status(thm)],[c_0_31])).
% 0.21/0.45  cnf(c_0_39, plain, (k7_subset_1(X2,X1,X3)=k4_xboole_0(X1,X3)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.21/0.45  cnf(c_0_40, plain, (k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,k1_xboole_0)))=X1), inference(rw,[status(thm)],[c_0_33, c_0_34])).
% 0.21/0.45  cnf(c_0_41, plain, (k1_setfam_1(k2_tarski(X1,k1_xboole_0))=k1_xboole_0), inference(rw,[status(thm)],[c_0_35, c_0_26])).
% 0.21/0.45  cnf(c_0_42, negated_conjecture, (r1_tarski(X1,u1_struct_0(esk1_0))|~r1_tarski(X1,esk2_0)), inference(spm,[status(thm)],[c_0_36, c_0_37])).
% 0.21/0.45  cnf(c_0_43, plain, (r1_tarski(k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))),X1)), inference(rw,[status(thm)],[c_0_38, c_0_34])).
% 0.21/0.45  cnf(c_0_44, plain, (k7_subset_1(X2,X1,X3)=k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X3)))|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(rw,[status(thm)],[c_0_39, c_0_34])).
% 0.21/0.45  cnf(c_0_45, plain, (k5_xboole_0(X1,k1_xboole_0)=X1), inference(rw,[status(thm)],[c_0_40, c_0_41])).
% 0.21/0.45  cnf(c_0_46, negated_conjecture, (r1_tarski(X1,u1_struct_0(esk1_0))|~r1_tarski(X2,esk2_0)|~r1_tarski(X1,X2)), inference(spm,[status(thm)],[c_0_28, c_0_42])).
% 0.21/0.45  cnf(c_0_47, plain, (r1_tarski(k7_subset_1(X1,X2,X3),X2)|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_43, c_0_44])).
% 0.21/0.45  cnf(c_0_48, negated_conjecture, (v4_pre_topc(esk2_0,esk1_0)|k2_tops_1(esk1_0,esk2_0)=k7_subset_1(u1_struct_0(esk1_0),esk2_0,k1_tops_1(esk1_0,esk2_0))), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.21/0.45  cnf(c_0_49, plain, (k7_subset_1(X1,X2,X3)=k7_subset_1(X4,X2,X3)|~m1_subset_1(X2,k1_zfmisc_1(X1))|~m1_subset_1(X2,k1_zfmisc_1(X4))), inference(spm,[status(thm)],[c_0_44, c_0_44])).
% 0.21/0.45  cnf(c_0_50, plain, (m1_subset_1(X1,k1_zfmisc_1(X2))|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.21/0.45  cnf(c_0_51, plain, (r1_tarski(X1,X1)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43, c_0_41]), c_0_45])).
% 0.21/0.45  fof(c_0_52, plain, ![X16, X17]:k4_xboole_0(X16,k4_xboole_0(X16,X17))=k3_xboole_0(X16,X17), inference(variable_rename,[status(thm)],[t48_xboole_1])).
% 0.21/0.45  fof(c_0_53, plain, ![X4]:k3_xboole_0(X4,X4)=X4, inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[idempotence_k3_xboole_0])])).
% 0.21/0.45  fof(c_0_54, plain, ![X24, X25, X26]:(~m1_subset_1(X25,k1_zfmisc_1(X24))|~m1_subset_1(X26,k1_zfmisc_1(X24))|k4_subset_1(X24,X25,X26)=k2_xboole_0(X25,X26)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k4_subset_1])])).
% 0.21/0.45  fof(c_0_55, plain, ![X22, X23]:k3_tarski(k2_tarski(X22,X23))=k2_xboole_0(X22,X23), inference(variable_rename,[status(thm)],[l51_zfmisc_1])).
% 0.21/0.45  cnf(c_0_56, negated_conjecture, (r1_tarski(X1,u1_struct_0(esk1_0))|~m1_subset_1(esk2_0,k1_zfmisc_1(X2))|~r1_tarski(X1,k7_subset_1(X2,esk2_0,X3))), inference(spm,[status(thm)],[c_0_46, c_0_47])).
% 0.21/0.45  cnf(c_0_57, negated_conjecture, (k7_subset_1(X1,esk2_0,k1_tops_1(esk1_0,esk2_0))=k2_tops_1(esk1_0,esk2_0)|v4_pre_topc(esk2_0,esk1_0)|~m1_subset_1(esk2_0,k1_zfmisc_1(X1))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48, c_0_49]), c_0_37])])).
% 0.21/0.45  cnf(c_0_58, plain, (m1_subset_1(X1,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_50, c_0_51])).
% 0.21/0.45  fof(c_0_59, plain, ![X18, X19]:k2_xboole_0(X18,X19)=k5_xboole_0(X18,k4_xboole_0(X19,X18)), inference(variable_rename,[status(thm)],[t98_xboole_1])).
% 0.21/0.45  fof(c_0_60, plain, ![X10, X11]:(~r1_tarski(X10,X11)|k3_xboole_0(X10,X11)=X10), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t28_xboole_1])])).
% 0.21/0.45  cnf(c_0_61, plain, (k4_xboole_0(X1,k4_xboole_0(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_52])).
% 0.21/0.45  cnf(c_0_62, plain, (k3_xboole_0(X1,X1)=X1), inference(split_conjunct,[status(thm)],[c_0_53])).
% 0.21/0.45  cnf(c_0_63, plain, (k4_subset_1(X2,X1,X3)=k2_xboole_0(X1,X3)|~m1_subset_1(X1,k1_zfmisc_1(X2))|~m1_subset_1(X3,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_54])).
% 0.21/0.45  cnf(c_0_64, plain, (k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_55])).
% 0.21/0.45  fof(c_0_65, plain, ![X38, X39]:(~l1_pre_topc(X38)|(~m1_subset_1(X39,k1_zfmisc_1(u1_struct_0(X38)))|k2_pre_topc(X38,X39)=k4_subset_1(u1_struct_0(X38),X39,k2_tops_1(X38,X39)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t65_tops_1])])])).
% 0.21/0.45  cnf(c_0_66, negated_conjecture, (r1_tarski(k7_subset_1(X1,esk2_0,X2),u1_struct_0(esk1_0))|~m1_subset_1(esk2_0,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_56, c_0_51])).
% 0.21/0.45  cnf(c_0_67, negated_conjecture, (k7_subset_1(esk2_0,esk2_0,k1_tops_1(esk1_0,esk2_0))=k2_tops_1(esk1_0,esk2_0)|v4_pre_topc(esk2_0,esk1_0)), inference(spm,[status(thm)],[c_0_57, c_0_58])).
% 0.21/0.45  fof(c_0_68, plain, ![X40, X41]:(~l1_pre_topc(X40)|(~m1_subset_1(X41,k1_zfmisc_1(u1_struct_0(X40)))|(~v4_pre_topc(X41,X40)|r1_tarski(k2_tops_1(X40,X41),X41)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t69_tops_1])])])).
% 0.21/0.45  cnf(c_0_69, plain, (k2_xboole_0(X1,X2)=k5_xboole_0(X1,k4_xboole_0(X2,X1))), inference(split_conjunct,[status(thm)],[c_0_59])).
% 0.21/0.45  cnf(c_0_70, plain, (k3_xboole_0(X1,X2)=X1|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_60])).
% 0.21/0.45  cnf(c_0_71, plain, (k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))))))=k1_setfam_1(k2_tarski(X1,X2))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_61, c_0_26]), c_0_34]), c_0_34])).
% 0.21/0.45  cnf(c_0_72, plain, (k1_setfam_1(k2_tarski(X1,X1))=X1), inference(rw,[status(thm)],[c_0_62, c_0_26])).
% 0.21/0.45  cnf(c_0_73, plain, (k4_subset_1(X2,X1,X3)=k3_tarski(k2_tarski(X1,X3))|~m1_subset_1(X3,k1_zfmisc_1(X2))|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(rw,[status(thm)],[c_0_63, c_0_64])).
% 0.21/0.45  cnf(c_0_74, plain, (k2_pre_topc(X1,X2)=k4_subset_1(u1_struct_0(X1),X2,k2_tops_1(X1,X2))|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_65])).
% 0.21/0.45  cnf(c_0_75, negated_conjecture, (v4_pre_topc(esk2_0,esk1_0)|r1_tarski(k2_tops_1(esk1_0,esk2_0),u1_struct_0(esk1_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_66, c_0_67]), c_0_58])])).
% 0.21/0.45  cnf(c_0_76, plain, (r1_tarski(k2_tops_1(X1,X2),X2)|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))|~v4_pre_topc(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_68])).
% 0.21/0.45  cnf(c_0_77, plain, (k3_tarski(k2_tarski(X1,X2))=k5_xboole_0(X1,k5_xboole_0(X2,k1_setfam_1(k2_tarski(X2,X1))))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_69, c_0_64]), c_0_34])).
% 0.21/0.45  cnf(c_0_78, plain, (k1_setfam_1(k2_tarski(X1,X2))=X1|~r1_tarski(X1,X2)), inference(rw,[status(thm)],[c_0_70, c_0_26])).
% 0.21/0.45  cnf(c_0_79, plain, (k5_xboole_0(X1,X1)=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_71, c_0_41]), c_0_45]), c_0_72])).
% 0.21/0.45  cnf(c_0_80, plain, (k3_tarski(k2_tarski(X1,k2_tops_1(X2,X1)))=k2_pre_topc(X2,X1)|~l1_pre_topc(X2)|~m1_subset_1(k2_tops_1(X2,X1),k1_zfmisc_1(u1_struct_0(X2)))|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))), inference(spm,[status(thm)],[c_0_73, c_0_74])).
% 0.21/0.45  cnf(c_0_81, negated_conjecture, (v4_pre_topc(esk2_0,esk1_0)|m1_subset_1(k2_tops_1(esk1_0,esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(spm,[status(thm)],[c_0_50, c_0_75])).
% 0.21/0.45  cnf(c_0_82, negated_conjecture, (l1_pre_topc(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.21/0.45  cnf(c_0_83, negated_conjecture, (r1_tarski(X1,u1_struct_0(esk1_0))|~v4_pre_topc(esk2_0,X2)|~l1_pre_topc(X2)|~m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(X2)))|~r1_tarski(X1,k2_tops_1(X2,esk2_0))), inference(spm,[status(thm)],[c_0_46, c_0_76])).
% 0.21/0.45  fof(c_0_84, plain, ![X34, X35]:(~v2_pre_topc(X34)|~l1_pre_topc(X34)|~m1_subset_1(X35,k1_zfmisc_1(u1_struct_0(X34)))|v4_pre_topc(k2_pre_topc(X34,X35),X34)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[fc1_tops_1])])).
% 0.21/0.45  cnf(c_0_85, plain, (k3_tarski(k2_tarski(X1,X2))=X1|~r1_tarski(X2,X1)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_77, c_0_78]), c_0_79]), c_0_45])).
% 0.21/0.45  cnf(c_0_86, negated_conjecture, (k3_tarski(k2_tarski(esk2_0,k2_tops_1(esk1_0,esk2_0)))=k2_pre_topc(esk1_0,esk2_0)|v4_pre_topc(esk2_0,esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_80, c_0_81]), c_0_82]), c_0_37])])).
% 0.21/0.45  cnf(c_0_87, negated_conjecture, (v4_pre_topc(esk2_0,esk1_0)|r1_tarski(k2_tops_1(esk1_0,esk2_0),esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47, c_0_48]), c_0_37])])).
% 0.21/0.45  cnf(c_0_88, negated_conjecture, (r1_tarski(k2_tops_1(X1,esk2_0),u1_struct_0(esk1_0))|~v4_pre_topc(esk2_0,X1)|~l1_pre_topc(X1)|~m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(X1)))), inference(spm,[status(thm)],[c_0_83, c_0_51])).
% 0.21/0.45  cnf(c_0_89, plain, (v4_pre_topc(k2_pre_topc(X1,X2),X1)|~v2_pre_topc(X1)|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_84])).
% 0.21/0.45  cnf(c_0_90, negated_conjecture, (k2_pre_topc(esk1_0,esk2_0)=esk2_0|v4_pre_topc(esk2_0,esk1_0)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_85, c_0_86]), c_0_87])).
% 0.21/0.45  cnf(c_0_91, negated_conjecture, (v2_pre_topc(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.21/0.45  cnf(c_0_92, negated_conjecture, (m1_subset_1(k2_tops_1(X1,esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0)))|~v4_pre_topc(esk2_0,X1)|~l1_pre_topc(X1)|~m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(X1)))), inference(spm,[status(thm)],[c_0_50, c_0_88])).
% 0.21/0.45  cnf(c_0_93, negated_conjecture, (v4_pre_topc(esk2_0,esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_89, c_0_90]), c_0_82]), c_0_91]), c_0_37])])).
% 0.21/0.45  cnf(c_0_94, negated_conjecture, (k3_tarski(k2_tarski(esk2_0,k2_tops_1(esk1_0,esk2_0)))=k2_pre_topc(esk1_0,esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_80, c_0_92]), c_0_82]), c_0_37]), c_0_93])])).
% 0.21/0.45  fof(c_0_95, plain, ![X36, X37]:(~l1_pre_topc(X36)|(~m1_subset_1(X37,k1_zfmisc_1(u1_struct_0(X36)))|k2_tops_1(X36,X37)=k7_subset_1(u1_struct_0(X36),k2_pre_topc(X36,X37),k1_tops_1(X36,X37)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l78_tops_1])])])).
% 0.21/0.45  cnf(c_0_96, negated_conjecture, (k2_pre_topc(esk1_0,esk2_0)=esk2_0|~r1_tarski(k2_tops_1(esk1_0,esk2_0),esk2_0)), inference(spm,[status(thm)],[c_0_85, c_0_94])).
% 0.21/0.45  cnf(c_0_97, negated_conjecture, (~v4_pre_topc(esk2_0,esk1_0)|k2_tops_1(esk1_0,esk2_0)!=k7_subset_1(u1_struct_0(esk1_0),esk2_0,k1_tops_1(esk1_0,esk2_0))), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.21/0.45  cnf(c_0_98, plain, (k2_tops_1(X1,X2)=k7_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X2),k1_tops_1(X1,X2))|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_95])).
% 0.21/0.45  cnf(c_0_99, negated_conjecture, (k2_pre_topc(esk1_0,esk2_0)=esk2_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_96, c_0_76]), c_0_93]), c_0_82]), c_0_37])])).
% 0.21/0.45  cnf(c_0_100, negated_conjecture, (k7_subset_1(u1_struct_0(esk1_0),esk2_0,k1_tops_1(esk1_0,esk2_0))!=k2_tops_1(esk1_0,esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_97, c_0_93])])).
% 0.21/0.45  cnf(c_0_101, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_98, c_0_99]), c_0_82]), c_0_37])]), c_0_100]), ['proof']).
% 0.21/0.45  # SZS output end CNFRefutation
% 0.21/0.45  # Proof object total steps             : 102
% 0.21/0.45  # Proof object clause steps            : 63
% 0.21/0.45  # Proof object formula steps           : 39
% 0.21/0.45  # Proof object conjectures             : 28
% 0.21/0.45  # Proof object clause conjectures      : 25
% 0.21/0.45  # Proof object formula conjectures     : 3
% 0.21/0.45  # Proof object initial clauses used    : 24
% 0.21/0.45  # Proof object initial formulas used   : 19
% 0.21/0.45  # Proof object generating inferences   : 27
% 0.21/0.45  # Proof object simplifying inferences  : 47
% 0.21/0.45  # Training examples: 0 positive, 0 negative
% 0.21/0.45  # Parsed axioms                        : 20
% 0.21/0.45  # Removed by relevancy pruning/SinE    : 0
% 0.21/0.45  # Initial clauses                      : 25
% 0.21/0.45  # Removed in clause preprocessing      : 3
% 0.21/0.45  # Initial clauses in saturation        : 22
% 0.21/0.45  # Processed clauses                    : 824
% 0.21/0.45  # ...of these trivial                  : 27
% 0.21/0.45  # ...subsumed                          : 490
% 0.21/0.45  # ...remaining for further processing  : 307
% 0.21/0.45  # Other redundant clauses eliminated   : 0
% 0.21/0.45  # Clauses deleted for lack of memory   : 0
% 0.21/0.45  # Backward-subsumed                    : 14
% 0.21/0.45  # Backward-rewritten                   : 61
% 0.21/0.45  # Generated clauses                    : 2256
% 0.21/0.45  # ...of the previous two non-trivial   : 1897
% 0.21/0.45  # Contextual simplify-reflections      : 8
% 0.21/0.45  # Paramodulations                      : 2256
% 0.21/0.45  # Factorizations                       : 0
% 0.21/0.45  # Equation resolutions                 : 0
% 0.21/0.45  # Propositional unsat checks           : 0
% 0.21/0.45  #    Propositional check models        : 0
% 0.21/0.45  #    Propositional check unsatisfiable : 0
% 0.21/0.45  #    Propositional clauses             : 0
% 0.21/0.45  #    Propositional clauses after purity: 0
% 0.21/0.45  #    Propositional unsat core size     : 0
% 0.21/0.45  #    Propositional preprocessing time  : 0.000
% 0.21/0.45  #    Propositional encoding time       : 0.000
% 0.21/0.45  #    Propositional solver time         : 0.000
% 0.21/0.45  #    Success case prop preproc time    : 0.000
% 0.21/0.45  #    Success case prop encoding time   : 0.000
% 0.21/0.45  #    Success case prop solver time     : 0.000
% 0.21/0.45  # Current number of processed clauses  : 232
% 0.21/0.45  #    Positive orientable unit clauses  : 36
% 0.21/0.45  #    Positive unorientable unit clauses: 1
% 0.21/0.45  #    Negative unit clauses             : 2
% 0.21/0.45  #    Non-unit-clauses                  : 193
% 0.21/0.45  # Current number of unprocessed clauses: 997
% 0.21/0.45  # ...number of literals in the above   : 3505
% 0.21/0.45  # Current number of archived formulas  : 0
% 0.21/0.45  # Current number of archived clauses   : 78
% 0.21/0.45  # Clause-clause subsumption calls (NU) : 20130
% 0.21/0.45  # Rec. Clause-clause subsumption calls : 8796
% 0.21/0.45  # Non-unit clause-clause subsumptions  : 505
% 0.21/0.45  # Unit Clause-clause subsumption calls : 192
% 0.21/0.45  # Rewrite failures with RHS unbound    : 0
% 0.21/0.45  # BW rewrite match attempts            : 55
% 0.21/0.45  # BW rewrite match successes           : 10
% 0.21/0.45  # Condensation attempts                : 0
% 0.21/0.45  # Condensation successes               : 0
% 0.21/0.45  # Termbank termtop insertions          : 42396
% 0.21/0.45  
% 0.21/0.45  # -------------------------------------------------
% 0.21/0.45  # User time                : 0.107 s
% 0.21/0.45  # System time              : 0.005 s
% 0.21/0.45  # Total time               : 0.112 s
% 0.21/0.45  # Maximum resident set size: 1584 pages
%------------------------------------------------------------------------------
