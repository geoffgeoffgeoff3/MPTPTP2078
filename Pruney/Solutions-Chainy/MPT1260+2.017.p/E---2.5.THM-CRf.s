%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n019.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:11:17 EST 2020

% Result     : Theorem 0.57s
% Output     : CNFRefutation 0.57s
% Verified   : 
% Statistics : Number of formulae       :  109 ( 442 expanded)
%              Number of clauses        :   62 ( 193 expanded)
%              Number of leaves         :   23 ( 112 expanded)
%              Depth                    :   14
%              Number of atoms          :  278 (1107 expanded)
%              Number of equality atoms :   78 ( 383 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal clause size      :    7 (   2 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t100_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_xboole_1)).

fof(t12_setfam_1,axiom,(
    ! [X1,X2] : k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_setfam_1)).

fof(d5_subset_1,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => k3_subset_1(X1,X2) = k4_xboole_0(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d5_subset_1)).

fof(redefinition_k7_subset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => k7_subset_1(X1,X2,X3) = k4_xboole_0(X2,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k7_subset_1)).

fof(t76_tops_1,conjecture,(
    ! [X1] :
      ( ( v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ( v3_pre_topc(X2,X1)
          <=> k2_tops_1(X1,X2) = k7_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X2),X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t76_tops_1)).

fof(dt_k6_subset_1,axiom,(
    ! [X1,X2] : m1_subset_1(k6_subset_1(X1,X2),k1_zfmisc_1(X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k6_subset_1)).

fof(redefinition_k6_subset_1,axiom,(
    ! [X1,X2] : k6_subset_1(X1,X2) = k4_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k6_subset_1)).

fof(involutiveness_k3_subset_1,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => k3_subset_1(X1,k3_subset_1(X1,X2)) = X2 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',involutiveness_k3_subset_1)).

fof(l32_xboole_1,axiom,(
    ! [X1,X2] :
      ( k4_xboole_0(X1,X2) = k1_xboole_0
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l32_xboole_1)).

fof(t46_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,k2_xboole_0(X1,X2)) = k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t46_xboole_1)).

fof(t74_tops_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => k1_tops_1(X1,X2) = k7_subset_1(u1_struct_0(X1),X2,k2_tops_1(X1,X2)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t74_tops_1)).

fof(t32_subset_1,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => ! [X3] :
          ( m1_subset_1(X3,k1_zfmisc_1(X1))
         => k7_subset_1(X1,X2,X3) = k9_subset_1(X1,X2,k3_subset_1(X1,X3)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t32_subset_1)).

fof(idempotence_k9_subset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(X1))
     => k9_subset_1(X1,X2,X2) = X2 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',idempotence_k9_subset_1)).

fof(existence_m1_subset_1,axiom,(
    ! [X1] :
    ? [X2] : m1_subset_1(X2,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',existence_m1_subset_1)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).

fof(t3_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X2))
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_subset)).

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

fof(dt_k2_pre_topc,axiom,(
    ! [X1,X2] :
      ( ( l1_pre_topc(X1)
        & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) )
     => m1_subset_1(k2_pre_topc(X1,X2),k1_zfmisc_1(u1_struct_0(X1))) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k2_pre_topc)).

fof(t56_tops_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ! [X3] :
              ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
             => ( ( v3_pre_topc(X2,X1)
                  & r1_tarski(X2,X3) )
               => r1_tarski(X2,k1_tops_1(X1,X3)) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t56_tops_1)).

fof(fc9_tops_1,axiom,(
    ! [X1,X2] :
      ( ( v2_pre_topc(X1)
        & l1_pre_topc(X1)
        & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) )
     => v3_pre_topc(k1_tops_1(X1,X2),X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc9_tops_1)).

fof(l78_tops_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => k2_tops_1(X1,X2) = k7_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X2),k1_tops_1(X1,X2)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l78_tops_1)).

fof(c_0_23,plain,(
    ! [X18,X19] : k4_xboole_0(X18,X19) = k5_xboole_0(X18,k3_xboole_0(X18,X19)) ),
    inference(variable_rename,[status(thm)],[t100_xboole_1])).

fof(c_0_24,plain,(
    ! [X51,X52] : k1_setfam_1(k2_tarski(X51,X52)) = k3_xboole_0(X51,X52) ),
    inference(variable_rename,[status(thm)],[t12_setfam_1])).

fof(c_0_25,plain,(
    ! [X24,X25] :
      ( ~ m1_subset_1(X25,k1_zfmisc_1(X24))
      | k3_subset_1(X24,X25) = k4_xboole_0(X24,X25) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d5_subset_1])])).

cnf(c_0_26,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_27,plain,
    ( k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

fof(c_0_28,plain,(
    ! [X45,X46,X47] :
      ( ~ m1_subset_1(X46,k1_zfmisc_1(X45))
      | k7_subset_1(X45,X46,X47) = k4_xboole_0(X46,X47) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k7_subset_1])])).

fof(c_0_29,negated_conjecture,(
    ~ ! [X1] :
        ( ( v2_pre_topc(X1)
          & l1_pre_topc(X1) )
       => ! [X2] :
            ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
           => ( v3_pre_topc(X2,X1)
            <=> k2_tops_1(X1,X2) = k7_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X2),X2) ) ) ) ),
    inference(assume_negation,[status(cth)],[t76_tops_1])).

cnf(c_0_30,plain,
    ( k3_subset_1(X2,X1) = k4_xboole_0(X2,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_31,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))) ),
    inference(rw,[status(thm)],[c_0_26,c_0_27])).

cnf(c_0_32,plain,
    ( k7_subset_1(X2,X1,X3) = k4_xboole_0(X1,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

fof(c_0_33,plain,(
    ! [X28,X29] : m1_subset_1(k6_subset_1(X28,X29),k1_zfmisc_1(X28)) ),
    inference(variable_rename,[status(thm)],[dt_k6_subset_1])).

fof(c_0_34,plain,(
    ! [X43,X44] : k6_subset_1(X43,X44) = k4_xboole_0(X43,X44) ),
    inference(variable_rename,[status(thm)],[redefinition_k6_subset_1])).

fof(c_0_35,negated_conjecture,
    ( v2_pre_topc(esk3_0)
    & l1_pre_topc(esk3_0)
    & m1_subset_1(esk4_0,k1_zfmisc_1(u1_struct_0(esk3_0)))
    & ( ~ v3_pre_topc(esk4_0,esk3_0)
      | k2_tops_1(esk3_0,esk4_0) != k7_subset_1(u1_struct_0(esk3_0),k2_pre_topc(esk3_0,esk4_0),esk4_0) )
    & ( v3_pre_topc(esk4_0,esk3_0)
      | k2_tops_1(esk3_0,esk4_0) = k7_subset_1(u1_struct_0(esk3_0),k2_pre_topc(esk3_0,esk4_0),esk4_0) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_29])])])).

cnf(c_0_36,plain,
    ( k3_subset_1(X2,X1) = k5_xboole_0(X2,k1_setfam_1(k2_tarski(X2,X1)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(rw,[status(thm)],[c_0_30,c_0_31])).

cnf(c_0_37,plain,
    ( k7_subset_1(X2,X1,X3) = k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X3)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(rw,[status(thm)],[c_0_32,c_0_31])).

cnf(c_0_38,plain,
    ( m1_subset_1(k6_subset_1(X1,X2),k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_39,plain,
    ( k6_subset_1(X1,X2) = k4_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

fof(c_0_40,plain,(
    ! [X35,X36] :
      ( ~ m1_subset_1(X36,k1_zfmisc_1(X35))
      | k3_subset_1(X35,k3_subset_1(X35,X36)) = X36 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[involutiveness_k3_subset_1])])).

cnf(c_0_41,negated_conjecture,
    ( v3_pre_topc(esk4_0,esk3_0)
    | k2_tops_1(esk3_0,esk4_0) = k7_subset_1(u1_struct_0(esk3_0),k2_pre_topc(esk3_0,esk4_0),esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

cnf(c_0_42,plain,
    ( k7_subset_1(X1,X2,X3) = k3_subset_1(X2,X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(X2))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_36,c_0_37])).

cnf(c_0_43,plain,
    ( m1_subset_1(k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))),k1_zfmisc_1(X1)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_38,c_0_39]),c_0_31])).

fof(c_0_44,plain,(
    ! [X16,X17] :
      ( ( k4_xboole_0(X16,X17) != k1_xboole_0
        | r1_tarski(X16,X17) )
      & ( ~ r1_tarski(X16,X17)
        | k4_xboole_0(X16,X17) = k1_xboole_0 ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l32_xboole_1])])).

fof(c_0_45,plain,(
    ! [X20,X21] : k4_xboole_0(X20,k2_xboole_0(X20,X21)) = k1_xboole_0 ),
    inference(variable_rename,[status(thm)],[t46_xboole_1])).

fof(c_0_46,plain,(
    ! [X70,X71] :
      ( ~ l1_pre_topc(X70)
      | ~ m1_subset_1(X71,k1_zfmisc_1(u1_struct_0(X70)))
      | k1_tops_1(X70,X71) = k7_subset_1(u1_struct_0(X70),X71,k2_tops_1(X70,X71)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t74_tops_1])])])).

fof(c_0_47,plain,(
    ! [X48,X49,X50] :
      ( ~ m1_subset_1(X49,k1_zfmisc_1(X48))
      | ~ m1_subset_1(X50,k1_zfmisc_1(X48))
      | k7_subset_1(X48,X49,X50) = k9_subset_1(X48,X49,k3_subset_1(X48,X50)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t32_subset_1])])])).

cnf(c_0_48,plain,
    ( k3_subset_1(X2,k3_subset_1(X2,X1)) = X1
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_40])).

cnf(c_0_49,negated_conjecture,
    ( k3_subset_1(k2_pre_topc(esk3_0,esk4_0),esk4_0) = k2_tops_1(esk3_0,esk4_0)
    | v3_pre_topc(esk4_0,esk3_0)
    | ~ m1_subset_1(k2_pre_topc(esk3_0,esk4_0),k1_zfmisc_1(u1_struct_0(esk3_0)))
    | ~ m1_subset_1(esk4_0,k1_zfmisc_1(k2_pre_topc(esk3_0,esk4_0))) ),
    inference(spm,[status(thm)],[c_0_41,c_0_42])).

cnf(c_0_50,plain,
    ( m1_subset_1(k7_subset_1(X1,X2,X3),k1_zfmisc_1(X2))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_43,c_0_37])).

fof(c_0_51,plain,(
    ! [X32,X33,X34] :
      ( ~ m1_subset_1(X34,k1_zfmisc_1(X32))
      | k9_subset_1(X32,X33,X33) = X33 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[idempotence_k9_subset_1])])).

fof(c_0_52,plain,(
    ! [X30] : m1_subset_1(esk2_1(X30),X30) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[existence_m1_subset_1])])).

cnf(c_0_53,plain,
    ( r1_tarski(X1,X2)
    | k4_xboole_0(X1,X2) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_44])).

cnf(c_0_54,plain,
    ( k4_xboole_0(X1,k2_xboole_0(X1,X2)) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_45])).

fof(c_0_55,plain,(
    ! [X14,X15] :
      ( ( r1_tarski(X14,X15)
        | X14 != X15 )
      & ( r1_tarski(X15,X14)
        | X14 != X15 )
      & ( ~ r1_tarski(X14,X15)
        | ~ r1_tarski(X15,X14)
        | X14 = X15 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

fof(c_0_56,plain,(
    ! [X53,X54] :
      ( ( ~ m1_subset_1(X53,k1_zfmisc_1(X54))
        | r1_tarski(X53,X54) )
      & ( ~ r1_tarski(X53,X54)
        | m1_subset_1(X53,k1_zfmisc_1(X54)) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).

cnf(c_0_57,plain,
    ( k1_tops_1(X1,X2) = k7_subset_1(u1_struct_0(X1),X2,k2_tops_1(X1,X2))
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_46])).

cnf(c_0_58,plain,
    ( k7_subset_1(X1,X2,X3) = k7_subset_1(X4,X2,X3)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X4)) ),
    inference(spm,[status(thm)],[c_0_37,c_0_37])).

cnf(c_0_59,plain,
    ( k7_subset_1(X2,X1,X3) = k9_subset_1(X2,X1,k3_subset_1(X2,X3))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_47])).

cnf(c_0_60,negated_conjecture,
    ( k3_subset_1(k2_pre_topc(esk3_0,esk4_0),k2_tops_1(esk3_0,esk4_0)) = esk4_0
    | v3_pre_topc(esk4_0,esk3_0)
    | ~ m1_subset_1(k2_pre_topc(esk3_0,esk4_0),k1_zfmisc_1(u1_struct_0(esk3_0)))
    | ~ m1_subset_1(esk4_0,k1_zfmisc_1(k2_pre_topc(esk3_0,esk4_0))) ),
    inference(spm,[status(thm)],[c_0_48,c_0_49])).

cnf(c_0_61,negated_conjecture,
    ( v3_pre_topc(esk4_0,esk3_0)
    | m1_subset_1(k2_tops_1(esk3_0,esk4_0),k1_zfmisc_1(k2_pre_topc(esk3_0,esk4_0)))
    | ~ m1_subset_1(k2_pre_topc(esk3_0,esk4_0),k1_zfmisc_1(u1_struct_0(esk3_0))) ),
    inference(spm,[status(thm)],[c_0_50,c_0_41])).

cnf(c_0_62,plain,
    ( k9_subset_1(X2,X3,X3) = X3
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_51])).

cnf(c_0_63,plain,
    ( m1_subset_1(esk2_1(X1),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_52])).

cnf(c_0_64,plain,
    ( r1_tarski(X1,X2)
    | k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))) != k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_53,c_0_31])).

cnf(c_0_65,plain,
    ( k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,k2_xboole_0(X1,X2)))) = k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_54,c_0_31])).

fof(c_0_66,plain,(
    ! [X40,X41,X42] :
      ( ~ m1_subset_1(X41,k1_zfmisc_1(X40))
      | ~ m1_subset_1(X42,k1_zfmisc_1(X40))
      | k4_subset_1(X40,X41,X42) = k2_xboole_0(X41,X42) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k4_subset_1])])).

fof(c_0_67,plain,(
    ! [X68,X69] :
      ( ~ l1_pre_topc(X68)
      | ~ m1_subset_1(X69,k1_zfmisc_1(u1_struct_0(X68)))
      | k2_pre_topc(X68,X69) = k4_subset_1(u1_struct_0(X68),X69,k2_tops_1(X68,X69)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t65_tops_1])])])).

fof(c_0_68,plain,(
    ! [X57,X58] :
      ( ~ l1_pre_topc(X57)
      | ~ m1_subset_1(X58,k1_zfmisc_1(u1_struct_0(X57)))
      | m1_subset_1(k2_tops_1(X57,X58),k1_zfmisc_1(u1_struct_0(X57))) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_tops_1])])).

cnf(c_0_69,plain,
    ( X1 = X2
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_55])).

cnf(c_0_70,plain,
    ( r1_tarski(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_56])).

cnf(c_0_71,plain,
    ( k7_subset_1(X1,X2,k2_tops_1(X3,X2)) = k1_tops_1(X3,X2)
    | ~ l1_pre_topc(X3)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X3)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_57,c_0_58])).

cnf(c_0_72,negated_conjecture,
    ( k7_subset_1(k2_pre_topc(esk3_0,esk4_0),X1,k2_tops_1(esk3_0,esk4_0)) = k9_subset_1(k2_pre_topc(esk3_0,esk4_0),X1,esk4_0)
    | v3_pre_topc(esk4_0,esk3_0)
    | ~ m1_subset_1(k2_pre_topc(esk3_0,esk4_0),k1_zfmisc_1(u1_struct_0(esk3_0)))
    | ~ m1_subset_1(esk4_0,k1_zfmisc_1(k2_pre_topc(esk3_0,esk4_0)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_pre_topc(esk3_0,esk4_0))) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_59,c_0_60]),c_0_61])).

cnf(c_0_73,plain,
    ( k9_subset_1(X1,X2,X2) = X2 ),
    inference(spm,[status(thm)],[c_0_62,c_0_63])).

cnf(c_0_74,negated_conjecture,
    ( l1_pre_topc(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

cnf(c_0_75,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(u1_struct_0(esk3_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

fof(c_0_76,plain,(
    ! [X55,X56] :
      ( ~ l1_pre_topc(X55)
      | ~ m1_subset_1(X56,k1_zfmisc_1(u1_struct_0(X55)))
      | m1_subset_1(k2_pre_topc(X55,X56),k1_zfmisc_1(u1_struct_0(X55))) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_pre_topc])])).

cnf(c_0_77,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_56])).

cnf(c_0_78,plain,
    ( r1_tarski(X1,k2_xboole_0(X1,X2)) ),
    inference(spm,[status(thm)],[c_0_64,c_0_65])).

cnf(c_0_79,plain,
    ( k4_subset_1(X2,X1,X3) = k2_xboole_0(X1,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_66])).

cnf(c_0_80,plain,
    ( k2_pre_topc(X1,X2) = k4_subset_1(u1_struct_0(X1),X2,k2_tops_1(X1,X2))
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_67])).

cnf(c_0_81,plain,
    ( m1_subset_1(k2_tops_1(X1,X2),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_68])).

cnf(c_0_82,plain,
    ( X1 = X2
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ r1_tarski(X1,X2) ),
    inference(spm,[status(thm)],[c_0_69,c_0_70])).

cnf(c_0_83,negated_conjecture,
    ( k1_tops_1(esk3_0,esk4_0) = esk4_0
    | v3_pre_topc(esk4_0,esk3_0)
    | ~ m1_subset_1(k2_pre_topc(esk3_0,esk4_0),k1_zfmisc_1(u1_struct_0(esk3_0)))
    | ~ m1_subset_1(esk4_0,k1_zfmisc_1(k2_pre_topc(esk3_0,esk4_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_71,c_0_72]),c_0_73]),c_0_74]),c_0_75])])).

cnf(c_0_84,plain,
    ( m1_subset_1(k2_pre_topc(X1,X2),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_76])).

cnf(c_0_85,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(k2_xboole_0(X1,X2))) ),
    inference(spm,[status(thm)],[c_0_77,c_0_78])).

cnf(c_0_86,plain,
    ( k2_xboole_0(X1,k2_tops_1(X2,X1)) = k2_pre_topc(X2,X1)
    | ~ l1_pre_topc(X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2))) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_79,c_0_80]),c_0_81])).

cnf(c_0_87,plain,
    ( X1 = X2
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(spm,[status(thm)],[c_0_82,c_0_70])).

fof(c_0_88,plain,(
    ! [X63,X64,X65] :
      ( ~ l1_pre_topc(X63)
      | ~ m1_subset_1(X64,k1_zfmisc_1(u1_struct_0(X63)))
      | ~ m1_subset_1(X65,k1_zfmisc_1(u1_struct_0(X63)))
      | ~ v3_pre_topc(X64,X63)
      | ~ r1_tarski(X64,X65)
      | r1_tarski(X64,k1_tops_1(X63,X65)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t56_tops_1])])])).

fof(c_0_89,plain,(
    ! [X59,X60] :
      ( ~ v2_pre_topc(X59)
      | ~ l1_pre_topc(X59)
      | ~ m1_subset_1(X60,k1_zfmisc_1(u1_struct_0(X59)))
      | v3_pre_topc(k1_tops_1(X59,X60),X59) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[fc9_tops_1])])).

cnf(c_0_90,negated_conjecture,
    ( k1_tops_1(esk3_0,esk4_0) = esk4_0
    | v3_pre_topc(esk4_0,esk3_0)
    | ~ m1_subset_1(esk4_0,k1_zfmisc_1(k2_pre_topc(esk3_0,esk4_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_83,c_0_84]),c_0_74]),c_0_75])])).

cnf(c_0_91,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(k2_pre_topc(X2,X1)))
    | ~ l1_pre_topc(X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2))) ),
    inference(spm,[status(thm)],[c_0_85,c_0_86])).

cnf(c_0_92,plain,
    ( k7_subset_1(X1,X2,X3) = X2
    | ~ m1_subset_1(X2,k1_zfmisc_1(k7_subset_1(X1,X2,X3)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_87,c_0_50])).

cnf(c_0_93,plain,
    ( r1_tarski(X2,k1_tops_1(X1,X3))
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v3_pre_topc(X2,X1)
    | ~ r1_tarski(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_88])).

cnf(c_0_94,plain,
    ( r1_tarski(X1,X2)
    | X2 != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_55])).

cnf(c_0_95,plain,
    ( v3_pre_topc(k1_tops_1(X1,X2),X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_89])).

cnf(c_0_96,negated_conjecture,
    ( k1_tops_1(esk3_0,esk4_0) = esk4_0
    | v3_pre_topc(esk4_0,esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_90,c_0_91]),c_0_74]),c_0_75])])).

cnf(c_0_97,negated_conjecture,
    ( v2_pre_topc(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

fof(c_0_98,plain,(
    ! [X61,X62] :
      ( ~ l1_pre_topc(X61)
      | ~ m1_subset_1(X62,k1_zfmisc_1(u1_struct_0(X61)))
      | k2_tops_1(X61,X62) = k7_subset_1(u1_struct_0(X61),k2_pre_topc(X61,X62),k1_tops_1(X61,X62)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l78_tops_1])])])).

cnf(c_0_99,plain,
    ( k1_tops_1(X1,X2) = X2
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k1_tops_1(X1,X2)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(spm,[status(thm)],[c_0_92,c_0_57])).

cnf(c_0_100,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(k1_tops_1(X2,X3)))
    | ~ v3_pre_topc(X1,X2)
    | ~ l1_pre_topc(X2)
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))
    | ~ r1_tarski(X1,X3) ),
    inference(spm,[status(thm)],[c_0_77,c_0_93])).

cnf(c_0_101,plain,
    ( r1_tarski(X1,X1) ),
    inference(er,[status(thm)],[c_0_94])).

cnf(c_0_102,negated_conjecture,
    ( ~ v3_pre_topc(esk4_0,esk3_0)
    | k2_tops_1(esk3_0,esk4_0) != k7_subset_1(u1_struct_0(esk3_0),k2_pre_topc(esk3_0,esk4_0),esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

cnf(c_0_103,negated_conjecture,
    ( v3_pre_topc(esk4_0,esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_95,c_0_96]),c_0_97]),c_0_74]),c_0_75])])).

cnf(c_0_104,plain,
    ( k2_tops_1(X1,X2) = k7_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X2),k1_tops_1(X1,X2))
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_98])).

cnf(c_0_105,plain,
    ( k1_tops_1(X1,X2) = X2
    | ~ v3_pre_topc(X2,X1)
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_99,c_0_100]),c_0_101])])).

cnf(c_0_106,negated_conjecture,
    ( k7_subset_1(u1_struct_0(esk3_0),k2_pre_topc(esk3_0,esk4_0),esk4_0) != k2_tops_1(esk3_0,esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_102,c_0_103])])).

cnf(c_0_107,plain,
    ( k7_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X2),X2) = k2_tops_1(X1,X2)
    | ~ v3_pre_topc(X2,X1)
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(spm,[status(thm)],[c_0_104,c_0_105])).

cnf(c_0_108,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_106,c_0_107]),c_0_103]),c_0_74]),c_0_75])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.05/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.05/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n019.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 11:11:07 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.57/0.76  # AutoSched0-Mode selected heuristic G_E___300_C18_F1_SE_CS_SP_S0Y
% 0.57/0.76  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.57/0.76  #
% 0.57/0.76  # Preprocessing time       : 0.029 s
% 0.57/0.76  
% 0.57/0.76  # Proof found!
% 0.57/0.76  # SZS status Theorem
% 0.57/0.76  # SZS output start CNFRefutation
% 0.57/0.76  fof(t100_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t100_xboole_1)).
% 0.57/0.76  fof(t12_setfam_1, axiom, ![X1, X2]:k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t12_setfam_1)).
% 0.57/0.76  fof(d5_subset_1, axiom, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>k3_subset_1(X1,X2)=k4_xboole_0(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d5_subset_1)).
% 0.57/0.76  fof(redefinition_k7_subset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>k7_subset_1(X1,X2,X3)=k4_xboole_0(X2,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k7_subset_1)).
% 0.57/0.76  fof(t76_tops_1, conjecture, ![X1]:((v2_pre_topc(X1)&l1_pre_topc(X1))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>(v3_pre_topc(X2,X1)<=>k2_tops_1(X1,X2)=k7_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X2),X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t76_tops_1)).
% 0.57/0.76  fof(dt_k6_subset_1, axiom, ![X1, X2]:m1_subset_1(k6_subset_1(X1,X2),k1_zfmisc_1(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k6_subset_1)).
% 0.57/0.76  fof(redefinition_k6_subset_1, axiom, ![X1, X2]:k6_subset_1(X1,X2)=k4_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k6_subset_1)).
% 0.57/0.76  fof(involutiveness_k3_subset_1, axiom, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>k3_subset_1(X1,k3_subset_1(X1,X2))=X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', involutiveness_k3_subset_1)).
% 0.57/0.76  fof(l32_xboole_1, axiom, ![X1, X2]:(k4_xboole_0(X1,X2)=k1_xboole_0<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l32_xboole_1)).
% 0.57/0.76  fof(t46_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,k2_xboole_0(X1,X2))=k1_xboole_0, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t46_xboole_1)).
% 0.57/0.76  fof(t74_tops_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>k1_tops_1(X1,X2)=k7_subset_1(u1_struct_0(X1),X2,k2_tops_1(X1,X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t74_tops_1)).
% 0.57/0.76  fof(t32_subset_1, axiom, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(X1))=>k7_subset_1(X1,X2,X3)=k9_subset_1(X1,X2,k3_subset_1(X1,X3)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t32_subset_1)).
% 0.57/0.76  fof(idempotence_k9_subset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(X1))=>k9_subset_1(X1,X2,X2)=X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', idempotence_k9_subset_1)).
% 0.57/0.76  fof(existence_m1_subset_1, axiom, ![X1]:?[X2]:m1_subset_1(X2,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', existence_m1_subset_1)).
% 0.57/0.76  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.57/0.76  fof(t3_subset, axiom, ![X1, X2]:(m1_subset_1(X1,k1_zfmisc_1(X2))<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_subset)).
% 0.57/0.76  fof(redefinition_k4_subset_1, axiom, ![X1, X2, X3]:((m1_subset_1(X2,k1_zfmisc_1(X1))&m1_subset_1(X3,k1_zfmisc_1(X1)))=>k4_subset_1(X1,X2,X3)=k2_xboole_0(X2,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k4_subset_1)).
% 0.57/0.76  fof(t65_tops_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>k2_pre_topc(X1,X2)=k4_subset_1(u1_struct_0(X1),X2,k2_tops_1(X1,X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t65_tops_1)).
% 0.57/0.76  fof(dt_k2_tops_1, axiom, ![X1, X2]:((l1_pre_topc(X1)&m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))))=>m1_subset_1(k2_tops_1(X1,X2),k1_zfmisc_1(u1_struct_0(X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k2_tops_1)).
% 0.57/0.76  fof(dt_k2_pre_topc, axiom, ![X1, X2]:((l1_pre_topc(X1)&m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))))=>m1_subset_1(k2_pre_topc(X1,X2),k1_zfmisc_1(u1_struct_0(X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k2_pre_topc)).
% 0.57/0.76  fof(t56_tops_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))=>((v3_pre_topc(X2,X1)&r1_tarski(X2,X3))=>r1_tarski(X2,k1_tops_1(X1,X3)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t56_tops_1)).
% 0.57/0.76  fof(fc9_tops_1, axiom, ![X1, X2]:(((v2_pre_topc(X1)&l1_pre_topc(X1))&m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))))=>v3_pre_topc(k1_tops_1(X1,X2),X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc9_tops_1)).
% 0.57/0.76  fof(l78_tops_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>k2_tops_1(X1,X2)=k7_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X2),k1_tops_1(X1,X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l78_tops_1)).
% 0.57/0.76  fof(c_0_23, plain, ![X18, X19]:k4_xboole_0(X18,X19)=k5_xboole_0(X18,k3_xboole_0(X18,X19)), inference(variable_rename,[status(thm)],[t100_xboole_1])).
% 0.57/0.76  fof(c_0_24, plain, ![X51, X52]:k1_setfam_1(k2_tarski(X51,X52))=k3_xboole_0(X51,X52), inference(variable_rename,[status(thm)],[t12_setfam_1])).
% 0.57/0.76  fof(c_0_25, plain, ![X24, X25]:(~m1_subset_1(X25,k1_zfmisc_1(X24))|k3_subset_1(X24,X25)=k4_xboole_0(X24,X25)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d5_subset_1])])).
% 0.57/0.76  cnf(c_0_26, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.57/0.76  cnf(c_0_27, plain, (k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.57/0.76  fof(c_0_28, plain, ![X45, X46, X47]:(~m1_subset_1(X46,k1_zfmisc_1(X45))|k7_subset_1(X45,X46,X47)=k4_xboole_0(X46,X47)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k7_subset_1])])).
% 0.57/0.76  fof(c_0_29, negated_conjecture, ~(![X1]:((v2_pre_topc(X1)&l1_pre_topc(X1))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>(v3_pre_topc(X2,X1)<=>k2_tops_1(X1,X2)=k7_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X2),X2))))), inference(assume_negation,[status(cth)],[t76_tops_1])).
% 0.57/0.76  cnf(c_0_30, plain, (k3_subset_1(X2,X1)=k4_xboole_0(X2,X1)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.57/0.76  cnf(c_0_31, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2)))), inference(rw,[status(thm)],[c_0_26, c_0_27])).
% 0.57/0.76  cnf(c_0_32, plain, (k7_subset_1(X2,X1,X3)=k4_xboole_0(X1,X3)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.57/0.76  fof(c_0_33, plain, ![X28, X29]:m1_subset_1(k6_subset_1(X28,X29),k1_zfmisc_1(X28)), inference(variable_rename,[status(thm)],[dt_k6_subset_1])).
% 0.57/0.76  fof(c_0_34, plain, ![X43, X44]:k6_subset_1(X43,X44)=k4_xboole_0(X43,X44), inference(variable_rename,[status(thm)],[redefinition_k6_subset_1])).
% 0.57/0.76  fof(c_0_35, negated_conjecture, ((v2_pre_topc(esk3_0)&l1_pre_topc(esk3_0))&(m1_subset_1(esk4_0,k1_zfmisc_1(u1_struct_0(esk3_0)))&((~v3_pre_topc(esk4_0,esk3_0)|k2_tops_1(esk3_0,esk4_0)!=k7_subset_1(u1_struct_0(esk3_0),k2_pre_topc(esk3_0,esk4_0),esk4_0))&(v3_pre_topc(esk4_0,esk3_0)|k2_tops_1(esk3_0,esk4_0)=k7_subset_1(u1_struct_0(esk3_0),k2_pre_topc(esk3_0,esk4_0),esk4_0))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_29])])])).
% 0.57/0.76  cnf(c_0_36, plain, (k3_subset_1(X2,X1)=k5_xboole_0(X2,k1_setfam_1(k2_tarski(X2,X1)))|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(rw,[status(thm)],[c_0_30, c_0_31])).
% 0.57/0.76  cnf(c_0_37, plain, (k7_subset_1(X2,X1,X3)=k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X3)))|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(rw,[status(thm)],[c_0_32, c_0_31])).
% 0.57/0.76  cnf(c_0_38, plain, (m1_subset_1(k6_subset_1(X1,X2),k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.57/0.76  cnf(c_0_39, plain, (k6_subset_1(X1,X2)=k4_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.57/0.76  fof(c_0_40, plain, ![X35, X36]:(~m1_subset_1(X36,k1_zfmisc_1(X35))|k3_subset_1(X35,k3_subset_1(X35,X36))=X36), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[involutiveness_k3_subset_1])])).
% 0.57/0.76  cnf(c_0_41, negated_conjecture, (v3_pre_topc(esk4_0,esk3_0)|k2_tops_1(esk3_0,esk4_0)=k7_subset_1(u1_struct_0(esk3_0),k2_pre_topc(esk3_0,esk4_0),esk4_0)), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.57/0.76  cnf(c_0_42, plain, (k7_subset_1(X1,X2,X3)=k3_subset_1(X2,X3)|~m1_subset_1(X3,k1_zfmisc_1(X2))|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_36, c_0_37])).
% 0.57/0.76  cnf(c_0_43, plain, (m1_subset_1(k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))),k1_zfmisc_1(X1))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_38, c_0_39]), c_0_31])).
% 0.57/0.76  fof(c_0_44, plain, ![X16, X17]:((k4_xboole_0(X16,X17)!=k1_xboole_0|r1_tarski(X16,X17))&(~r1_tarski(X16,X17)|k4_xboole_0(X16,X17)=k1_xboole_0)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l32_xboole_1])])).
% 0.57/0.76  fof(c_0_45, plain, ![X20, X21]:k4_xboole_0(X20,k2_xboole_0(X20,X21))=k1_xboole_0, inference(variable_rename,[status(thm)],[t46_xboole_1])).
% 0.57/0.76  fof(c_0_46, plain, ![X70, X71]:(~l1_pre_topc(X70)|(~m1_subset_1(X71,k1_zfmisc_1(u1_struct_0(X70)))|k1_tops_1(X70,X71)=k7_subset_1(u1_struct_0(X70),X71,k2_tops_1(X70,X71)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t74_tops_1])])])).
% 0.57/0.76  fof(c_0_47, plain, ![X48, X49, X50]:(~m1_subset_1(X49,k1_zfmisc_1(X48))|(~m1_subset_1(X50,k1_zfmisc_1(X48))|k7_subset_1(X48,X49,X50)=k9_subset_1(X48,X49,k3_subset_1(X48,X50)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t32_subset_1])])])).
% 0.57/0.76  cnf(c_0_48, plain, (k3_subset_1(X2,k3_subset_1(X2,X1))=X1|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_40])).
% 0.57/0.76  cnf(c_0_49, negated_conjecture, (k3_subset_1(k2_pre_topc(esk3_0,esk4_0),esk4_0)=k2_tops_1(esk3_0,esk4_0)|v3_pre_topc(esk4_0,esk3_0)|~m1_subset_1(k2_pre_topc(esk3_0,esk4_0),k1_zfmisc_1(u1_struct_0(esk3_0)))|~m1_subset_1(esk4_0,k1_zfmisc_1(k2_pre_topc(esk3_0,esk4_0)))), inference(spm,[status(thm)],[c_0_41, c_0_42])).
% 0.57/0.76  cnf(c_0_50, plain, (m1_subset_1(k7_subset_1(X1,X2,X3),k1_zfmisc_1(X2))|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_43, c_0_37])).
% 0.57/0.76  fof(c_0_51, plain, ![X32, X33, X34]:(~m1_subset_1(X34,k1_zfmisc_1(X32))|k9_subset_1(X32,X33,X33)=X33), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[idempotence_k9_subset_1])])).
% 0.57/0.76  fof(c_0_52, plain, ![X30]:m1_subset_1(esk2_1(X30),X30), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[existence_m1_subset_1])])).
% 0.57/0.76  cnf(c_0_53, plain, (r1_tarski(X1,X2)|k4_xboole_0(X1,X2)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_44])).
% 0.57/0.76  cnf(c_0_54, plain, (k4_xboole_0(X1,k2_xboole_0(X1,X2))=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_45])).
% 0.57/0.76  fof(c_0_55, plain, ![X14, X15]:(((r1_tarski(X14,X15)|X14!=X15)&(r1_tarski(X15,X14)|X14!=X15))&(~r1_tarski(X14,X15)|~r1_tarski(X15,X14)|X14=X15)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.57/0.76  fof(c_0_56, plain, ![X53, X54]:((~m1_subset_1(X53,k1_zfmisc_1(X54))|r1_tarski(X53,X54))&(~r1_tarski(X53,X54)|m1_subset_1(X53,k1_zfmisc_1(X54)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).
% 0.57/0.76  cnf(c_0_57, plain, (k1_tops_1(X1,X2)=k7_subset_1(u1_struct_0(X1),X2,k2_tops_1(X1,X2))|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_46])).
% 0.57/0.76  cnf(c_0_58, plain, (k7_subset_1(X1,X2,X3)=k7_subset_1(X4,X2,X3)|~m1_subset_1(X2,k1_zfmisc_1(X1))|~m1_subset_1(X2,k1_zfmisc_1(X4))), inference(spm,[status(thm)],[c_0_37, c_0_37])).
% 0.57/0.76  cnf(c_0_59, plain, (k7_subset_1(X2,X1,X3)=k9_subset_1(X2,X1,k3_subset_1(X2,X3))|~m1_subset_1(X1,k1_zfmisc_1(X2))|~m1_subset_1(X3,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_47])).
% 0.57/0.76  cnf(c_0_60, negated_conjecture, (k3_subset_1(k2_pre_topc(esk3_0,esk4_0),k2_tops_1(esk3_0,esk4_0))=esk4_0|v3_pre_topc(esk4_0,esk3_0)|~m1_subset_1(k2_pre_topc(esk3_0,esk4_0),k1_zfmisc_1(u1_struct_0(esk3_0)))|~m1_subset_1(esk4_0,k1_zfmisc_1(k2_pre_topc(esk3_0,esk4_0)))), inference(spm,[status(thm)],[c_0_48, c_0_49])).
% 0.57/0.76  cnf(c_0_61, negated_conjecture, (v3_pre_topc(esk4_0,esk3_0)|m1_subset_1(k2_tops_1(esk3_0,esk4_0),k1_zfmisc_1(k2_pre_topc(esk3_0,esk4_0)))|~m1_subset_1(k2_pre_topc(esk3_0,esk4_0),k1_zfmisc_1(u1_struct_0(esk3_0)))), inference(spm,[status(thm)],[c_0_50, c_0_41])).
% 0.57/0.76  cnf(c_0_62, plain, (k9_subset_1(X2,X3,X3)=X3|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_51])).
% 0.57/0.76  cnf(c_0_63, plain, (m1_subset_1(esk2_1(X1),X1)), inference(split_conjunct,[status(thm)],[c_0_52])).
% 0.57/0.76  cnf(c_0_64, plain, (r1_tarski(X1,X2)|k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2)))!=k1_xboole_0), inference(rw,[status(thm)],[c_0_53, c_0_31])).
% 0.57/0.76  cnf(c_0_65, plain, (k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,k2_xboole_0(X1,X2))))=k1_xboole_0), inference(rw,[status(thm)],[c_0_54, c_0_31])).
% 0.57/0.76  fof(c_0_66, plain, ![X40, X41, X42]:(~m1_subset_1(X41,k1_zfmisc_1(X40))|~m1_subset_1(X42,k1_zfmisc_1(X40))|k4_subset_1(X40,X41,X42)=k2_xboole_0(X41,X42)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k4_subset_1])])).
% 0.57/0.76  fof(c_0_67, plain, ![X68, X69]:(~l1_pre_topc(X68)|(~m1_subset_1(X69,k1_zfmisc_1(u1_struct_0(X68)))|k2_pre_topc(X68,X69)=k4_subset_1(u1_struct_0(X68),X69,k2_tops_1(X68,X69)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t65_tops_1])])])).
% 0.57/0.76  fof(c_0_68, plain, ![X57, X58]:(~l1_pre_topc(X57)|~m1_subset_1(X58,k1_zfmisc_1(u1_struct_0(X57)))|m1_subset_1(k2_tops_1(X57,X58),k1_zfmisc_1(u1_struct_0(X57)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_tops_1])])).
% 0.57/0.76  cnf(c_0_69, plain, (X1=X2|~r1_tarski(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_55])).
% 0.57/0.76  cnf(c_0_70, plain, (r1_tarski(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_56])).
% 0.57/0.76  cnf(c_0_71, plain, (k7_subset_1(X1,X2,k2_tops_1(X3,X2))=k1_tops_1(X3,X2)|~l1_pre_topc(X3)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X3)))|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_57, c_0_58])).
% 0.57/0.76  cnf(c_0_72, negated_conjecture, (k7_subset_1(k2_pre_topc(esk3_0,esk4_0),X1,k2_tops_1(esk3_0,esk4_0))=k9_subset_1(k2_pre_topc(esk3_0,esk4_0),X1,esk4_0)|v3_pre_topc(esk4_0,esk3_0)|~m1_subset_1(k2_pre_topc(esk3_0,esk4_0),k1_zfmisc_1(u1_struct_0(esk3_0)))|~m1_subset_1(esk4_0,k1_zfmisc_1(k2_pre_topc(esk3_0,esk4_0)))|~m1_subset_1(X1,k1_zfmisc_1(k2_pre_topc(esk3_0,esk4_0)))), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_59, c_0_60]), c_0_61])).
% 0.57/0.76  cnf(c_0_73, plain, (k9_subset_1(X1,X2,X2)=X2), inference(spm,[status(thm)],[c_0_62, c_0_63])).
% 0.57/0.76  cnf(c_0_74, negated_conjecture, (l1_pre_topc(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.57/0.76  cnf(c_0_75, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(u1_struct_0(esk3_0)))), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.57/0.76  fof(c_0_76, plain, ![X55, X56]:(~l1_pre_topc(X55)|~m1_subset_1(X56,k1_zfmisc_1(u1_struct_0(X55)))|m1_subset_1(k2_pre_topc(X55,X56),k1_zfmisc_1(u1_struct_0(X55)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_pre_topc])])).
% 0.57/0.76  cnf(c_0_77, plain, (m1_subset_1(X1,k1_zfmisc_1(X2))|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_56])).
% 0.57/0.76  cnf(c_0_78, plain, (r1_tarski(X1,k2_xboole_0(X1,X2))), inference(spm,[status(thm)],[c_0_64, c_0_65])).
% 0.57/0.76  cnf(c_0_79, plain, (k4_subset_1(X2,X1,X3)=k2_xboole_0(X1,X3)|~m1_subset_1(X1,k1_zfmisc_1(X2))|~m1_subset_1(X3,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_66])).
% 0.57/0.76  cnf(c_0_80, plain, (k2_pre_topc(X1,X2)=k4_subset_1(u1_struct_0(X1),X2,k2_tops_1(X1,X2))|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_67])).
% 0.57/0.76  cnf(c_0_81, plain, (m1_subset_1(k2_tops_1(X1,X2),k1_zfmisc_1(u1_struct_0(X1)))|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_68])).
% 0.57/0.76  cnf(c_0_82, plain, (X1=X2|~m1_subset_1(X2,k1_zfmisc_1(X1))|~r1_tarski(X1,X2)), inference(spm,[status(thm)],[c_0_69, c_0_70])).
% 0.57/0.76  cnf(c_0_83, negated_conjecture, (k1_tops_1(esk3_0,esk4_0)=esk4_0|v3_pre_topc(esk4_0,esk3_0)|~m1_subset_1(k2_pre_topc(esk3_0,esk4_0),k1_zfmisc_1(u1_struct_0(esk3_0)))|~m1_subset_1(esk4_0,k1_zfmisc_1(k2_pre_topc(esk3_0,esk4_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_71, c_0_72]), c_0_73]), c_0_74]), c_0_75])])).
% 0.57/0.76  cnf(c_0_84, plain, (m1_subset_1(k2_pre_topc(X1,X2),k1_zfmisc_1(u1_struct_0(X1)))|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_76])).
% 0.57/0.76  cnf(c_0_85, plain, (m1_subset_1(X1,k1_zfmisc_1(k2_xboole_0(X1,X2)))), inference(spm,[status(thm)],[c_0_77, c_0_78])).
% 0.57/0.76  cnf(c_0_86, plain, (k2_xboole_0(X1,k2_tops_1(X2,X1))=k2_pre_topc(X2,X1)|~l1_pre_topc(X2)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_79, c_0_80]), c_0_81])).
% 0.57/0.76  cnf(c_0_87, plain, (X1=X2|~m1_subset_1(X2,k1_zfmisc_1(X1))|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(spm,[status(thm)],[c_0_82, c_0_70])).
% 0.57/0.76  fof(c_0_88, plain, ![X63, X64, X65]:(~l1_pre_topc(X63)|(~m1_subset_1(X64,k1_zfmisc_1(u1_struct_0(X63)))|(~m1_subset_1(X65,k1_zfmisc_1(u1_struct_0(X63)))|(~v3_pre_topc(X64,X63)|~r1_tarski(X64,X65)|r1_tarski(X64,k1_tops_1(X63,X65)))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t56_tops_1])])])).
% 0.57/0.76  fof(c_0_89, plain, ![X59, X60]:(~v2_pre_topc(X59)|~l1_pre_topc(X59)|~m1_subset_1(X60,k1_zfmisc_1(u1_struct_0(X59)))|v3_pre_topc(k1_tops_1(X59,X60),X59)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[fc9_tops_1])])).
% 0.57/0.76  cnf(c_0_90, negated_conjecture, (k1_tops_1(esk3_0,esk4_0)=esk4_0|v3_pre_topc(esk4_0,esk3_0)|~m1_subset_1(esk4_0,k1_zfmisc_1(k2_pre_topc(esk3_0,esk4_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_83, c_0_84]), c_0_74]), c_0_75])])).
% 0.57/0.76  cnf(c_0_91, plain, (m1_subset_1(X1,k1_zfmisc_1(k2_pre_topc(X2,X1)))|~l1_pre_topc(X2)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))), inference(spm,[status(thm)],[c_0_85, c_0_86])).
% 0.57/0.76  cnf(c_0_92, plain, (k7_subset_1(X1,X2,X3)=X2|~m1_subset_1(X2,k1_zfmisc_1(k7_subset_1(X1,X2,X3)))|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_87, c_0_50])).
% 0.57/0.76  cnf(c_0_93, plain, (r1_tarski(X2,k1_tops_1(X1,X3))|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))|~v3_pre_topc(X2,X1)|~r1_tarski(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_88])).
% 0.57/0.76  cnf(c_0_94, plain, (r1_tarski(X1,X2)|X2!=X1), inference(split_conjunct,[status(thm)],[c_0_55])).
% 0.57/0.76  cnf(c_0_95, plain, (v3_pre_topc(k1_tops_1(X1,X2),X1)|~v2_pre_topc(X1)|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_89])).
% 0.57/0.76  cnf(c_0_96, negated_conjecture, (k1_tops_1(esk3_0,esk4_0)=esk4_0|v3_pre_topc(esk4_0,esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_90, c_0_91]), c_0_74]), c_0_75])])).
% 0.57/0.76  cnf(c_0_97, negated_conjecture, (v2_pre_topc(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.57/0.76  fof(c_0_98, plain, ![X61, X62]:(~l1_pre_topc(X61)|(~m1_subset_1(X62,k1_zfmisc_1(u1_struct_0(X61)))|k2_tops_1(X61,X62)=k7_subset_1(u1_struct_0(X61),k2_pre_topc(X61,X62),k1_tops_1(X61,X62)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l78_tops_1])])])).
% 0.57/0.76  cnf(c_0_99, plain, (k1_tops_1(X1,X2)=X2|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(k1_tops_1(X1,X2)))|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(spm,[status(thm)],[c_0_92, c_0_57])).
% 0.57/0.76  cnf(c_0_100, plain, (m1_subset_1(X1,k1_zfmisc_1(k1_tops_1(X2,X3)))|~v3_pre_topc(X1,X2)|~l1_pre_topc(X2)|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2)))|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))|~r1_tarski(X1,X3)), inference(spm,[status(thm)],[c_0_77, c_0_93])).
% 0.57/0.76  cnf(c_0_101, plain, (r1_tarski(X1,X1)), inference(er,[status(thm)],[c_0_94])).
% 0.57/0.76  cnf(c_0_102, negated_conjecture, (~v3_pre_topc(esk4_0,esk3_0)|k2_tops_1(esk3_0,esk4_0)!=k7_subset_1(u1_struct_0(esk3_0),k2_pre_topc(esk3_0,esk4_0),esk4_0)), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.57/0.76  cnf(c_0_103, negated_conjecture, (v3_pre_topc(esk4_0,esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_95, c_0_96]), c_0_97]), c_0_74]), c_0_75])])).
% 0.57/0.76  cnf(c_0_104, plain, (k2_tops_1(X1,X2)=k7_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X2),k1_tops_1(X1,X2))|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_98])).
% 0.57/0.76  cnf(c_0_105, plain, (k1_tops_1(X1,X2)=X2|~v3_pre_topc(X2,X1)|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_99, c_0_100]), c_0_101])])).
% 0.57/0.76  cnf(c_0_106, negated_conjecture, (k7_subset_1(u1_struct_0(esk3_0),k2_pre_topc(esk3_0,esk4_0),esk4_0)!=k2_tops_1(esk3_0,esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_102, c_0_103])])).
% 0.57/0.76  cnf(c_0_107, plain, (k7_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X2),X2)=k2_tops_1(X1,X2)|~v3_pre_topc(X2,X1)|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(spm,[status(thm)],[c_0_104, c_0_105])).
% 0.57/0.76  cnf(c_0_108, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_106, c_0_107]), c_0_103]), c_0_74]), c_0_75])]), ['proof']).
% 0.57/0.76  # SZS output end CNFRefutation
% 0.57/0.76  # Proof object total steps             : 109
% 0.57/0.76  # Proof object clause steps            : 62
% 0.57/0.76  # Proof object formula steps           : 47
% 0.57/0.76  # Proof object conjectures             : 18
% 0.57/0.76  # Proof object clause conjectures      : 15
% 0.57/0.76  # Proof object formula conjectures     : 3
% 0.57/0.76  # Proof object initial clauses used    : 29
% 0.57/0.76  # Proof object initial formulas used   : 23
% 0.57/0.76  # Proof object generating inferences   : 25
% 0.57/0.76  # Proof object simplifying inferences  : 32
% 0.57/0.76  # Training examples: 0 positive, 0 negative
% 0.57/0.76  # Parsed axioms                        : 28
% 0.57/0.76  # Removed by relevancy pruning/SinE    : 0
% 0.57/0.76  # Initial clauses                      : 41
% 0.57/0.76  # Removed in clause preprocessing      : 3
% 0.57/0.76  # Initial clauses in saturation        : 38
% 0.57/0.76  # Processed clauses                    : 2249
% 0.57/0.76  # ...of these trivial                  : 66
% 0.57/0.76  # ...subsumed                          : 1394
% 0.57/0.76  # ...remaining for further processing  : 789
% 0.57/0.76  # Other redundant clauses eliminated   : 100
% 0.57/0.76  # Clauses deleted for lack of memory   : 0
% 0.57/0.76  # Backward-subsumed                    : 70
% 0.57/0.76  # Backward-rewritten                   : 77
% 0.57/0.76  # Generated clauses                    : 23977
% 0.57/0.76  # ...of the previous two non-trivial   : 21557
% 0.57/0.76  # Contextual simplify-reflections      : 30
% 0.57/0.76  # Paramodulations                      : 23749
% 0.57/0.76  # Factorizations                       : 128
% 0.57/0.76  # Equation resolutions                 : 100
% 0.57/0.76  # Propositional unsat checks           : 0
% 0.57/0.76  #    Propositional check models        : 0
% 0.57/0.76  #    Propositional check unsatisfiable : 0
% 0.57/0.76  #    Propositional clauses             : 0
% 0.57/0.76  #    Propositional clauses after purity: 0
% 0.57/0.76  #    Propositional unsat core size     : 0
% 0.57/0.76  #    Propositional preprocessing time  : 0.000
% 0.57/0.76  #    Propositional encoding time       : 0.000
% 0.57/0.76  #    Propositional solver time         : 0.000
% 0.57/0.76  #    Success case prop preproc time    : 0.000
% 0.57/0.76  #    Success case prop encoding time   : 0.000
% 0.57/0.76  #    Success case prop solver time     : 0.000
% 0.57/0.76  # Current number of processed clauses  : 636
% 0.57/0.76  #    Positive orientable unit clauses  : 62
% 0.57/0.76  #    Positive unorientable unit clauses: 1
% 0.57/0.76  #    Negative unit clauses             : 1
% 0.57/0.76  #    Non-unit-clauses                  : 572
% 0.57/0.76  # Current number of unprocessed clauses: 19048
% 0.57/0.76  # ...number of literals in the above   : 79768
% 0.57/0.76  # Current number of archived formulas  : 0
% 0.57/0.76  # Current number of archived clauses   : 150
% 0.57/0.76  # Clause-clause subsumption calls (NU) : 67294
% 0.57/0.76  # Rec. Clause-clause subsumption calls : 34913
% 0.57/0.76  # Non-unit clause-clause subsumptions  : 1481
% 0.57/0.76  # Unit Clause-clause subsumption calls : 2570
% 0.57/0.76  # Rewrite failures with RHS unbound    : 0
% 0.57/0.76  # BW rewrite match attempts            : 203
% 0.57/0.76  # BW rewrite match successes           : 33
% 0.57/0.76  # Condensation attempts                : 0
% 0.57/0.76  # Condensation successes               : 0
% 0.57/0.76  # Termbank termtop insertions          : 428488
% 0.57/0.76  
% 0.57/0.76  # -------------------------------------------------
% 0.57/0.76  # User time                : 0.400 s
% 0.57/0.76  # System time              : 0.016 s
% 0.57/0.76  # Total time               : 0.415 s
% 0.57/0.76  # Maximum resident set size: 1596 pages
%------------------------------------------------------------------------------
