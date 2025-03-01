%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n005.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:08:56 EST 2020

% Result     : CounterSatisfiable 0.12s
% Output     : Saturation 0.12s
% Verified   : 
% Statistics : Number of formulae       :  105 (1215 expanded)
%              Number of clauses        :   80 ( 555 expanded)
%              Number of leaves         :   12 ( 314 expanded)
%              Depth                    :   11
%              Number of atoms          :  252 (2250 expanded)
%              Number of equality atoms :   95 (1251 expanded)
%              Maximal formula depth    :   10 (   3 average)
%              Maximal clause size      :    6 (   3 average)
%              Maximal term depth       :    6 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t100_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t100_xboole_1)).

fof(t12_setfam_1,axiom,(
    ! [X1,X2] : k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t12_setfam_1)).

fof(t88_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_xboole_0(X1,X2)
     => k4_xboole_0(k2_xboole_0(X1,X2),X2) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t88_xboole_1)).

fof(l51_zfmisc_1,axiom,(
    ! [X1,X2] : k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l51_zfmisc_1)).

fof(t21_xboole_1,axiom,(
    ! [X1,X2] : k3_xboole_0(X1,k2_xboole_0(X1,X2)) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t21_xboole_1)).

fof(redefinition_k4_subset_1,axiom,(
    ! [X1,X2,X3] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(X1))
        & m1_subset_1(X3,k1_zfmisc_1(X1)) )
     => k4_subset_1(X1,X2,X3) = k2_xboole_0(X2,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k4_subset_1)).

fof(commutativity_k2_tarski,axiom,(
    ! [X1,X2] : k2_tarski(X1,X2) = k2_tarski(X2,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k2_tarski)).

fof(t25_pre_topc,conjecture,(
    ! [X1] :
      ( l1_struct_0(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ! [X3] :
              ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
             => ( ( k2_struct_0(X1) = k4_subset_1(u1_struct_0(X1),X2,X3)
                  & r1_xboole_0(X2,X3) )
               => X3 = k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X2) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t25_pre_topc)).

fof(redefinition_k7_subset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => k7_subset_1(X1,X2,X3) = k4_xboole_0(X2,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k7_subset_1)).

fof(symmetry_r1_xboole_0,axiom,(
    ! [X1,X2] :
      ( r1_xboole_0(X1,X2)
     => r1_xboole_0(X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',symmetry_r1_xboole_0)).

fof(dt_k2_subset_1,axiom,(
    ! [X1] : m1_subset_1(k2_subset_1(X1),k1_zfmisc_1(X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k2_subset_1)).

fof(d4_subset_1,axiom,(
    ! [X1] : k2_subset_1(X1) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d4_subset_1)).

fof(c_0_12,plain,(
    ! [X6,X7] : k4_xboole_0(X6,X7) = k5_xboole_0(X6,k3_xboole_0(X6,X7)) ),
    inference(variable_rename,[status(thm)],[t100_xboole_1])).

fof(c_0_13,plain,(
    ! [X24,X25] : k1_setfam_1(k2_tarski(X24,X25)) = k3_xboole_0(X24,X25) ),
    inference(variable_rename,[status(thm)],[t12_setfam_1])).

fof(c_0_14,plain,(
    ! [X10,X11] :
      ( ~ r1_xboole_0(X10,X11)
      | k4_xboole_0(k2_xboole_0(X10,X11),X11) = X10 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t88_xboole_1])])).

fof(c_0_15,plain,(
    ! [X14,X15] : k3_tarski(k2_tarski(X14,X15)) = k2_xboole_0(X14,X15) ),
    inference(variable_rename,[status(thm)],[l51_zfmisc_1])).

cnf(c_0_16,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_17,plain,
    ( k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

fof(c_0_18,plain,(
    ! [X8,X9] : k3_xboole_0(X8,k2_xboole_0(X8,X9)) = X8 ),
    inference(variable_rename,[status(thm)],[t21_xboole_1])).

fof(c_0_19,plain,(
    ! [X18,X19,X20] :
      ( ~ m1_subset_1(X19,k1_zfmisc_1(X18))
      | ~ m1_subset_1(X20,k1_zfmisc_1(X18))
      | k4_subset_1(X18,X19,X20) = k2_xboole_0(X19,X20) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k4_subset_1])])).

cnf(c_0_20,plain,
    ( k4_xboole_0(k2_xboole_0(X1,X2),X2) = X1
    | ~ r1_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_21,plain,
    ( k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_22,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))) ),
    inference(rw,[status(thm)],[c_0_16,c_0_17])).

fof(c_0_23,plain,(
    ! [X12,X13] : k2_tarski(X12,X13) = k2_tarski(X13,X12) ),
    inference(variable_rename,[status(thm)],[commutativity_k2_tarski])).

cnf(c_0_24,plain,
    ( k3_xboole_0(X1,k2_xboole_0(X1,X2)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

fof(c_0_25,negated_conjecture,(
    ~ ! [X1] :
        ( l1_struct_0(X1)
       => ! [X2] :
            ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
           => ! [X3] :
                ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
               => ( ( k2_struct_0(X1) = k4_subset_1(u1_struct_0(X1),X2,X3)
                    & r1_xboole_0(X2,X3) )
                 => X3 = k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X2) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t25_pre_topc])).

cnf(c_0_26,plain,
    ( k4_subset_1(X2,X1,X3) = k2_xboole_0(X1,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

fof(c_0_27,plain,(
    ! [X21,X22,X23] :
      ( ~ m1_subset_1(X22,k1_zfmisc_1(X21))
      | k7_subset_1(X21,X22,X23) = k4_xboole_0(X22,X23) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k7_subset_1])])).

cnf(c_0_28,plain,
    ( k5_xboole_0(k3_tarski(k2_tarski(X1,X2)),k1_setfam_1(k2_tarski(k3_tarski(k2_tarski(X1,X2)),X2))) = X1
    | ~ r1_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_20,c_0_21]),c_0_22])).

cnf(c_0_29,plain,
    ( k2_tarski(X1,X2) = k2_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_23]),
    [final]).

cnf(c_0_30,plain,
    ( k1_setfam_1(k2_tarski(X1,k3_tarski(k2_tarski(X1,X2)))) = X1 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_24,c_0_21]),c_0_17]),
    [final]).

fof(c_0_31,negated_conjecture,
    ( l1_struct_0(esk1_0)
    & m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0)))
    & m1_subset_1(esk3_0,k1_zfmisc_1(u1_struct_0(esk1_0)))
    & k2_struct_0(esk1_0) = k4_subset_1(u1_struct_0(esk1_0),esk2_0,esk3_0)
    & r1_xboole_0(esk2_0,esk3_0)
    & esk3_0 != k7_subset_1(u1_struct_0(esk1_0),k2_struct_0(esk1_0),esk2_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_25])])])).

cnf(c_0_32,plain,
    ( k4_subset_1(X2,X1,X3) = k3_tarski(k2_tarski(X1,X3))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X2))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(rw,[status(thm)],[c_0_26,c_0_21]),
    [final]).

cnf(c_0_33,plain,
    ( k7_subset_1(X2,X1,X3) = k4_xboole_0(X1,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_34,plain,
    ( k5_xboole_0(k3_tarski(k2_tarski(X1,X2)),k1_setfam_1(k2_tarski(X2,k3_tarski(k2_tarski(X1,X2))))) = X1
    | ~ r1_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_28,c_0_29])).

cnf(c_0_35,plain,
    ( k1_setfam_1(k2_tarski(X1,k3_tarski(k2_tarski(X2,X1)))) = X1 ),
    inference(spm,[status(thm)],[c_0_30,c_0_29]),
    [final]).

cnf(c_0_36,negated_conjecture,
    ( k2_struct_0(esk1_0) = k4_subset_1(u1_struct_0(esk1_0),esk2_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_31]),
    [final]).

cnf(c_0_37,plain,
    ( k4_subset_1(X1,X2,X3) = k4_subset_1(X4,X2,X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X4))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X4)) ),
    inference(spm,[status(thm)],[c_0_32,c_0_32]),
    [final]).

cnf(c_0_38,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_31]),
    [final]).

cnf(c_0_39,negated_conjecture,
    ( m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_31]),
    [final]).

cnf(c_0_40,plain,
    ( k7_subset_1(X2,X1,X3) = k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X3)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(rw,[status(thm)],[c_0_33,c_0_22]),
    [final]).

cnf(c_0_41,plain,
    ( k5_xboole_0(k3_tarski(k2_tarski(X1,X2)),X2) = X1
    | ~ r1_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_34,c_0_35]),
    [final]).

cnf(c_0_42,negated_conjecture,
    ( k4_subset_1(X1,esk2_0,esk3_0) = k2_struct_0(esk1_0)
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(X1))
    | ~ m1_subset_1(esk2_0,k1_zfmisc_1(X1)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_36,c_0_37]),c_0_38]),c_0_39])]),
    [final]).

fof(c_0_43,plain,(
    ! [X4,X5] :
      ( ~ r1_xboole_0(X4,X5)
      | r1_xboole_0(X5,X4) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[symmetry_r1_xboole_0])])).

cnf(c_0_44,plain,
    ( k7_subset_1(X1,X2,X3) = k5_xboole_0(X2,k1_setfam_1(k2_tarski(X3,X2)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_40,c_0_29]),
    [final]).

cnf(c_0_45,plain,
    ( k1_setfam_1(k2_tarski(X1,k4_subset_1(X2,X3,X1))) = X1
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X2)) ),
    inference(spm,[status(thm)],[c_0_35,c_0_32]),
    [final]).

cnf(c_0_46,plain,
    ( k5_xboole_0(k3_tarski(k2_tarski(X1,X2)),X1) = X2
    | ~ r1_xboole_0(X2,X1) ),
    inference(spm,[status(thm)],[c_0_41,c_0_29]),
    [final]).

cnf(c_0_47,plain,
    ( k1_setfam_1(k2_tarski(X1,k4_subset_1(X2,X1,X3))) = X1
    | ~ m1_subset_1(X3,k1_zfmisc_1(X2))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(spm,[status(thm)],[c_0_30,c_0_32]),
    [final]).

cnf(c_0_48,negated_conjecture,
    ( k3_tarski(k2_tarski(esk2_0,esk3_0)) = k2_struct_0(esk1_0)
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(X1))
    | ~ m1_subset_1(esk2_0,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_32,c_0_42])).

cnf(c_0_49,plain,
    ( r1_xboole_0(X2,X1)
    | ~ r1_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_43]),
    [final]).

cnf(c_0_50,negated_conjecture,
    ( r1_xboole_0(esk2_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_31]),
    [final]).

fof(c_0_51,plain,(
    ! [X17] : m1_subset_1(k2_subset_1(X17),k1_zfmisc_1(X17)) ),
    inference(variable_rename,[status(thm)],[dt_k2_subset_1])).

fof(c_0_52,plain,(
    ! [X16] : k2_subset_1(X16) = X16 ),
    inference(variable_rename,[status(thm)],[d4_subset_1])).

cnf(c_0_53,plain,
    ( k5_xboole_0(k4_subset_1(X1,X2,X3),X3) = X2
    | ~ m1_subset_1(X3,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ r1_xboole_0(X2,X3) ),
    inference(spm,[status(thm)],[c_0_41,c_0_32]),
    [final]).

cnf(c_0_54,plain,
    ( k7_subset_1(X1,k4_subset_1(X2,X3,X4),X4) = k5_xboole_0(k4_subset_1(X2,X3,X4),X4)
    | ~ m1_subset_1(k4_subset_1(X2,X3,X4),k1_zfmisc_1(X1))
    | ~ m1_subset_1(X4,k1_zfmisc_1(X2))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X2)) ),
    inference(spm,[status(thm)],[c_0_44,c_0_45]),
    [final]).

cnf(c_0_55,plain,
    ( k5_xboole_0(k4_subset_1(X1,X2,X3),X2) = X3
    | ~ m1_subset_1(X3,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ r1_xboole_0(X3,X2) ),
    inference(spm,[status(thm)],[c_0_46,c_0_32]),
    [final]).

cnf(c_0_56,plain,
    ( k7_subset_1(X1,k4_subset_1(X2,X3,X4),X3) = k5_xboole_0(k4_subset_1(X2,X3,X4),X3)
    | ~ m1_subset_1(k4_subset_1(X2,X3,X4),k1_zfmisc_1(X1))
    | ~ m1_subset_1(X4,k1_zfmisc_1(X2))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X2)) ),
    inference(spm,[status(thm)],[c_0_44,c_0_47]),
    [final]).

cnf(c_0_57,plain,
    ( k7_subset_1(X1,X2,k3_tarski(k2_tarski(X2,X3))) = k5_xboole_0(X2,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_40,c_0_30]),
    [final]).

cnf(c_0_58,plain,
    ( k7_subset_1(X1,X2,k3_tarski(k2_tarski(X3,X2))) = k5_xboole_0(X2,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_40,c_0_35]),
    [final]).

cnf(c_0_59,negated_conjecture,
    ( k3_tarski(k2_tarski(esk2_0,esk3_0)) = k2_struct_0(esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48,c_0_38]),c_0_39])]),
    [final]).

cnf(c_0_60,negated_conjecture,
    ( r1_xboole_0(esk3_0,esk2_0) ),
    inference(spm,[status(thm)],[c_0_49,c_0_50]),
    [final]).

cnf(c_0_61,plain,
    ( m1_subset_1(k2_subset_1(X1),k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_51])).

cnf(c_0_62,plain,
    ( k2_subset_1(X1) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_52])).

cnf(c_0_63,plain,
    ( k7_subset_1(X1,k4_subset_1(X2,X3,X4),X4) = X3
    | ~ m1_subset_1(k4_subset_1(X2,X3,X4),k1_zfmisc_1(X1))
    | ~ m1_subset_1(X4,k1_zfmisc_1(X2))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X2))
    | ~ r1_xboole_0(X3,X4) ),
    inference(spm,[status(thm)],[c_0_53,c_0_54]),
    [final]).

cnf(c_0_64,plain,
    ( k7_subset_1(X1,k4_subset_1(X2,X3,X4),X3) = X4
    | ~ m1_subset_1(k4_subset_1(X2,X3,X4),k1_zfmisc_1(X1))
    | ~ m1_subset_1(X4,k1_zfmisc_1(X2))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X2))
    | ~ r1_xboole_0(X4,X3) ),
    inference(spm,[status(thm)],[c_0_55,c_0_56]),
    [final]).

cnf(c_0_65,plain,
    ( k7_subset_1(X1,k4_subset_1(X2,X3,X3),X3) = X3
    | ~ m1_subset_1(k4_subset_1(X2,X3,X3),k1_zfmisc_1(X1))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X2))
    | ~ r1_xboole_0(X3,X3) ),
    inference(spm,[status(thm)],[c_0_53,c_0_56]),
    [final]).

cnf(c_0_66,plain,
    ( k7_subset_1(X1,X2,k4_subset_1(X3,X2,X4)) = k5_xboole_0(X2,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X4,k1_zfmisc_1(X3))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X3)) ),
    inference(spm,[status(thm)],[c_0_57,c_0_32]),
    [final]).

cnf(c_0_67,plain,
    ( k7_subset_1(X1,k3_tarski(k2_tarski(X2,X3)),X3) = k5_xboole_0(k3_tarski(k2_tarski(X2,X3)),X3)
    | ~ m1_subset_1(k3_tarski(k2_tarski(X2,X3)),k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_44,c_0_35]),
    [final]).

cnf(c_0_68,plain,
    ( k7_subset_1(X1,X2,k4_subset_1(X3,X4,X2)) = k5_xboole_0(X2,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X3))
    | ~ m1_subset_1(X4,k1_zfmisc_1(X3)) ),
    inference(spm,[status(thm)],[c_0_58,c_0_32]),
    [final]).

cnf(c_0_69,negated_conjecture,
    ( k1_setfam_1(k2_tarski(esk2_0,k2_struct_0(esk1_0))) = esk2_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47,c_0_36]),c_0_38]),c_0_39])]),
    [final]).

cnf(c_0_70,negated_conjecture,
    ( k5_xboole_0(k2_struct_0(esk1_0),esk2_0) = esk3_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_46,c_0_59]),c_0_60])]),
    [final]).

cnf(c_0_71,plain,
    ( k5_xboole_0(k4_subset_1(X1,X2,X3),k1_setfam_1(k2_tarski(X3,k4_subset_1(X1,X2,X3)))) = k5_xboole_0(k4_subset_1(X1,X2,X3),X3)
    | ~ m1_subset_1(k4_subset_1(X1,X2,X3),k1_zfmisc_1(X4))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_54]),c_0_29])).

cnf(c_0_72,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X1)) ),
    inference(rw,[status(thm)],[c_0_61,c_0_62]),
    [final]).

cnf(c_0_73,plain,
    ( k5_xboole_0(k4_subset_1(X1,X2,X3),k1_setfam_1(k2_tarski(X3,k4_subset_1(X1,X2,X3)))) = X2
    | ~ m1_subset_1(k4_subset_1(X1,X2,X3),k1_zfmisc_1(X4))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ r1_xboole_0(X2,X3) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_63]),c_0_29])).

cnf(c_0_74,plain,
    ( k5_xboole_0(k4_subset_1(X1,X2,X3),k1_setfam_1(k2_tarski(X2,k4_subset_1(X1,X2,X3)))) = k5_xboole_0(k4_subset_1(X1,X2,X3),X2)
    | ~ m1_subset_1(k4_subset_1(X1,X2,X3),k1_zfmisc_1(X4))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_56]),c_0_29])).

cnf(c_0_75,plain,
    ( k5_xboole_0(k4_subset_1(X1,X2,X3),k1_setfam_1(k2_tarski(X2,k4_subset_1(X1,X2,X3)))) = X3
    | ~ m1_subset_1(k4_subset_1(X1,X2,X3),k1_zfmisc_1(X4))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ r1_xboole_0(X3,X2) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_64]),c_0_29])).

cnf(c_0_76,plain,
    ( k5_xboole_0(k4_subset_1(X1,X2,X2),k1_setfam_1(k2_tarski(X2,k4_subset_1(X1,X2,X2)))) = X2
    | ~ m1_subset_1(k4_subset_1(X1,X2,X2),k1_zfmisc_1(X3))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ r1_xboole_0(X2,X2) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_65]),c_0_29])).

cnf(c_0_77,plain,
    ( k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,k4_subset_1(X2,X1,X3)))) = k5_xboole_0(X1,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X4))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X2))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(spm,[status(thm)],[c_0_40,c_0_66])).

cnf(c_0_78,plain,
    ( k7_subset_1(X1,k3_tarski(k2_tarski(X2,X3)),X3) = X2
    | ~ m1_subset_1(k3_tarski(k2_tarski(X2,X3)),k1_zfmisc_1(X1))
    | ~ r1_xboole_0(X2,X3) ),
    inference(spm,[status(thm)],[c_0_41,c_0_67]),
    [final]).

cnf(c_0_79,plain,
    ( k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,k4_subset_1(X2,X3,X1)))) = k5_xboole_0(X1,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X4))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X2)) ),
    inference(spm,[status(thm)],[c_0_40,c_0_68])).

cnf(c_0_80,plain,
    ( k5_xboole_0(k4_subset_1(X1,X2,X2),X2) = X2
    | ~ m1_subset_1(k4_subset_1(X1,X2,X2),k1_zfmisc_1(X3))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ r1_xboole_0(X2,X2) ),
    inference(spm,[status(thm)],[c_0_56,c_0_65])).

cnf(c_0_81,plain,
    ( k4_subset_1(X1,X2,X3) = k3_tarski(k2_tarski(X3,X2))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_32,c_0_29]),
    [final]).

cnf(c_0_82,negated_conjecture,
    ( k1_setfam_1(k2_tarski(esk3_0,k2_struct_0(esk1_0))) = esk3_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45,c_0_36]),c_0_38]),c_0_39])]),
    [final]).

cnf(c_0_83,negated_conjecture,
    ( k5_xboole_0(k2_struct_0(esk1_0),esk3_0) = esk2_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41,c_0_59]),c_0_50])]),
    [final]).

cnf(c_0_84,negated_conjecture,
    ( esk3_0 != k7_subset_1(u1_struct_0(esk1_0),k2_struct_0(esk1_0),esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_31]),
    [final]).

cnf(c_0_85,plain,
    ( k7_subset_1(X1,X2,X3) = k7_subset_1(X4,X2,X3)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X4)) ),
    inference(spm,[status(thm)],[c_0_40,c_0_40]),
    [final]).

cnf(c_0_86,negated_conjecture,
    ( k7_subset_1(X1,k2_struct_0(esk1_0),esk2_0) = esk3_0
    | ~ m1_subset_1(k2_struct_0(esk1_0),k1_zfmisc_1(X1)) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44,c_0_69]),c_0_70]),
    [final]).

cnf(c_0_87,plain,
    ( k5_xboole_0(k4_subset_1(X1,X2,X3),k1_setfam_1(k2_tarski(X3,k4_subset_1(X1,X2,X3)))) = k5_xboole_0(k4_subset_1(X1,X2,X3),X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_71,c_0_72]),
    [final]).

cnf(c_0_88,plain,
    ( k5_xboole_0(k4_subset_1(X1,X2,X3),k1_setfam_1(k2_tarski(X3,k4_subset_1(X1,X2,X3)))) = X2
    | ~ m1_subset_1(X3,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ r1_xboole_0(X2,X3) ),
    inference(spm,[status(thm)],[c_0_73,c_0_72]),
    [final]).

cnf(c_0_89,plain,
    ( k5_xboole_0(k4_subset_1(X1,X2,X3),k1_setfam_1(k2_tarski(X2,k4_subset_1(X1,X2,X3)))) = k5_xboole_0(k4_subset_1(X1,X2,X3),X2)
    | ~ m1_subset_1(X3,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_74,c_0_72]),
    [final]).

cnf(c_0_90,plain,
    ( k5_xboole_0(k4_subset_1(X1,X2,X3),k1_setfam_1(k2_tarski(X2,k4_subset_1(X1,X2,X3)))) = X3
    | ~ m1_subset_1(X3,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ r1_xboole_0(X3,X2) ),
    inference(spm,[status(thm)],[c_0_75,c_0_72]),
    [final]).

cnf(c_0_91,plain,
    ( k5_xboole_0(k4_subset_1(X1,X2,X2),k1_setfam_1(k2_tarski(X2,k4_subset_1(X1,X2,X2)))) = X2
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ r1_xboole_0(X2,X2) ),
    inference(spm,[status(thm)],[c_0_76,c_0_72]),
    [final]).

cnf(c_0_92,plain,
    ( k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,k4_subset_1(X2,X1,X3)))) = k5_xboole_0(X1,X1)
    | ~ m1_subset_1(X3,k1_zfmisc_1(X2))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(spm,[status(thm)],[c_0_77,c_0_72]),
    [final]).

cnf(c_0_93,plain,
    ( k7_subset_1(X1,k3_tarski(k2_tarski(X2,X3)),X2) = X3
    | ~ m1_subset_1(k3_tarski(k2_tarski(X2,X3)),k1_zfmisc_1(X1))
    | ~ r1_xboole_0(X3,X2) ),
    inference(spm,[status(thm)],[c_0_78,c_0_29]),
    [final]).

cnf(c_0_94,plain,
    ( k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,k4_subset_1(X2,X3,X1)))) = k5_xboole_0(X1,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X2)) ),
    inference(spm,[status(thm)],[c_0_79,c_0_72]),
    [final]).

cnf(c_0_95,plain,
    ( k7_subset_1(X1,k3_tarski(k2_tarski(X2,X3)),X2) = k5_xboole_0(k3_tarski(k2_tarski(X2,X3)),X2)
    | ~ m1_subset_1(k3_tarski(k2_tarski(X2,X3)),k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_44,c_0_30]),
    [final]).

cnf(c_0_96,plain,
    ( k5_xboole_0(k4_subset_1(X1,X2,X2),X2) = X2
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ r1_xboole_0(X2,X2) ),
    inference(spm,[status(thm)],[c_0_80,c_0_72]),
    [final]).

cnf(c_0_97,plain,
    ( k4_subset_1(X1,X2,X3) = k4_subset_1(X4,X3,X2)
    | ~ m1_subset_1(X3,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X4))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X4)) ),
    inference(spm,[status(thm)],[c_0_32,c_0_81]),
    [final]).

cnf(c_0_98,negated_conjecture,
    ( k7_subset_1(X1,k2_struct_0(esk1_0),esk3_0) = esk2_0
    | ~ m1_subset_1(k2_struct_0(esk1_0),k1_zfmisc_1(X1)) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44,c_0_82]),c_0_83]),
    [final]).

cnf(c_0_99,negated_conjecture,
    ( k4_subset_1(X1,esk3_0,esk2_0) = k2_struct_0(esk1_0)
    | ~ m1_subset_1(esk2_0,k1_zfmisc_1(X1))
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_59,c_0_81]),
    [final]).

cnf(c_0_100,negated_conjecture,
    ( k7_subset_1(X1,esk3_0,k2_struct_0(esk1_0)) = k5_xboole_0(esk3_0,esk3_0)
    | ~ m1_subset_1(esk3_0,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_40,c_0_82]),
    [final]).

cnf(c_0_101,negated_conjecture,
    ( k7_subset_1(X1,esk2_0,k2_struct_0(esk1_0)) = k5_xboole_0(esk2_0,esk2_0)
    | ~ m1_subset_1(esk2_0,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_40,c_0_69]),
    [final]).

cnf(c_0_102,negated_conjecture,
    ( k7_subset_1(X1,k2_struct_0(esk1_0),esk2_0) != esk3_0
    | ~ m1_subset_1(k2_struct_0(esk1_0),k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ m1_subset_1(k2_struct_0(esk1_0),k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_84,c_0_85]),
    [final]).

cnf(c_0_103,negated_conjecture,
    ( ~ m1_subset_1(k2_struct_0(esk1_0),k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(spm,[status(thm)],[c_0_84,c_0_86]),
    [final]).

cnf(c_0_104,negated_conjecture,
    ( l1_struct_0(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_31]),
    [final]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.34  % Computer   : n005.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 19:14:47 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.12/0.39  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.12/0.39  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.12/0.39  #
% 0.12/0.39  # Preprocessing time       : 0.026 s
% 0.12/0.39  # Presaturation interreduction done
% 0.12/0.39  
% 0.12/0.39  # No proof found!
% 0.12/0.39  # SZS status CounterSatisfiable
% 0.12/0.39  # SZS output start Saturation
% 0.12/0.39  fof(t100_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t100_xboole_1)).
% 0.12/0.39  fof(t12_setfam_1, axiom, ![X1, X2]:k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t12_setfam_1)).
% 0.12/0.39  fof(t88_xboole_1, axiom, ![X1, X2]:(r1_xboole_0(X1,X2)=>k4_xboole_0(k2_xboole_0(X1,X2),X2)=X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t88_xboole_1)).
% 0.12/0.39  fof(l51_zfmisc_1, axiom, ![X1, X2]:k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l51_zfmisc_1)).
% 0.12/0.39  fof(t21_xboole_1, axiom, ![X1, X2]:k3_xboole_0(X1,k2_xboole_0(X1,X2))=X1, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t21_xboole_1)).
% 0.12/0.39  fof(redefinition_k4_subset_1, axiom, ![X1, X2, X3]:((m1_subset_1(X2,k1_zfmisc_1(X1))&m1_subset_1(X3,k1_zfmisc_1(X1)))=>k4_subset_1(X1,X2,X3)=k2_xboole_0(X2,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k4_subset_1)).
% 0.12/0.39  fof(commutativity_k2_tarski, axiom, ![X1, X2]:k2_tarski(X1,X2)=k2_tarski(X2,X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', commutativity_k2_tarski)).
% 0.12/0.39  fof(t25_pre_topc, conjecture, ![X1]:(l1_struct_0(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))=>((k2_struct_0(X1)=k4_subset_1(u1_struct_0(X1),X2,X3)&r1_xboole_0(X2,X3))=>X3=k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X2))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t25_pre_topc)).
% 0.12/0.39  fof(redefinition_k7_subset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>k7_subset_1(X1,X2,X3)=k4_xboole_0(X2,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k7_subset_1)).
% 0.12/0.39  fof(symmetry_r1_xboole_0, axiom, ![X1, X2]:(r1_xboole_0(X1,X2)=>r1_xboole_0(X2,X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', symmetry_r1_xboole_0)).
% 0.12/0.39  fof(dt_k2_subset_1, axiom, ![X1]:m1_subset_1(k2_subset_1(X1),k1_zfmisc_1(X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k2_subset_1)).
% 0.12/0.39  fof(d4_subset_1, axiom, ![X1]:k2_subset_1(X1)=X1, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d4_subset_1)).
% 0.12/0.39  fof(c_0_12, plain, ![X6, X7]:k4_xboole_0(X6,X7)=k5_xboole_0(X6,k3_xboole_0(X6,X7)), inference(variable_rename,[status(thm)],[t100_xboole_1])).
% 0.12/0.39  fof(c_0_13, plain, ![X24, X25]:k1_setfam_1(k2_tarski(X24,X25))=k3_xboole_0(X24,X25), inference(variable_rename,[status(thm)],[t12_setfam_1])).
% 0.12/0.39  fof(c_0_14, plain, ![X10, X11]:(~r1_xboole_0(X10,X11)|k4_xboole_0(k2_xboole_0(X10,X11),X11)=X10), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t88_xboole_1])])).
% 0.12/0.39  fof(c_0_15, plain, ![X14, X15]:k3_tarski(k2_tarski(X14,X15))=k2_xboole_0(X14,X15), inference(variable_rename,[status(thm)],[l51_zfmisc_1])).
% 0.12/0.39  cnf(c_0_16, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.12/0.39  cnf(c_0_17, plain, (k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.12/0.39  fof(c_0_18, plain, ![X8, X9]:k3_xboole_0(X8,k2_xboole_0(X8,X9))=X8, inference(variable_rename,[status(thm)],[t21_xboole_1])).
% 0.12/0.39  fof(c_0_19, plain, ![X18, X19, X20]:(~m1_subset_1(X19,k1_zfmisc_1(X18))|~m1_subset_1(X20,k1_zfmisc_1(X18))|k4_subset_1(X18,X19,X20)=k2_xboole_0(X19,X20)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k4_subset_1])])).
% 0.12/0.39  cnf(c_0_20, plain, (k4_xboole_0(k2_xboole_0(X1,X2),X2)=X1|~r1_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.12/0.39  cnf(c_0_21, plain, (k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.12/0.39  cnf(c_0_22, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2)))), inference(rw,[status(thm)],[c_0_16, c_0_17])).
% 0.12/0.39  fof(c_0_23, plain, ![X12, X13]:k2_tarski(X12,X13)=k2_tarski(X13,X12), inference(variable_rename,[status(thm)],[commutativity_k2_tarski])).
% 0.12/0.39  cnf(c_0_24, plain, (k3_xboole_0(X1,k2_xboole_0(X1,X2))=X1), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.12/0.39  fof(c_0_25, negated_conjecture, ~(![X1]:(l1_struct_0(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))=>((k2_struct_0(X1)=k4_subset_1(u1_struct_0(X1),X2,X3)&r1_xboole_0(X2,X3))=>X3=k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X2)))))), inference(assume_negation,[status(cth)],[t25_pre_topc])).
% 0.12/0.39  cnf(c_0_26, plain, (k4_subset_1(X2,X1,X3)=k2_xboole_0(X1,X3)|~m1_subset_1(X1,k1_zfmisc_1(X2))|~m1_subset_1(X3,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.12/0.39  fof(c_0_27, plain, ![X21, X22, X23]:(~m1_subset_1(X22,k1_zfmisc_1(X21))|k7_subset_1(X21,X22,X23)=k4_xboole_0(X22,X23)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k7_subset_1])])).
% 0.12/0.39  cnf(c_0_28, plain, (k5_xboole_0(k3_tarski(k2_tarski(X1,X2)),k1_setfam_1(k2_tarski(k3_tarski(k2_tarski(X1,X2)),X2)))=X1|~r1_xboole_0(X1,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_20, c_0_21]), c_0_22])).
% 0.12/0.39  cnf(c_0_29, plain, (k2_tarski(X1,X2)=k2_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_23]), ['final']).
% 0.12/0.39  cnf(c_0_30, plain, (k1_setfam_1(k2_tarski(X1,k3_tarski(k2_tarski(X1,X2))))=X1), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_24, c_0_21]), c_0_17]), ['final']).
% 0.12/0.39  fof(c_0_31, negated_conjecture, (l1_struct_0(esk1_0)&(m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0)))&(m1_subset_1(esk3_0,k1_zfmisc_1(u1_struct_0(esk1_0)))&((k2_struct_0(esk1_0)=k4_subset_1(u1_struct_0(esk1_0),esk2_0,esk3_0)&r1_xboole_0(esk2_0,esk3_0))&esk3_0!=k7_subset_1(u1_struct_0(esk1_0),k2_struct_0(esk1_0),esk2_0))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_25])])])).
% 0.12/0.39  cnf(c_0_32, plain, (k4_subset_1(X2,X1,X3)=k3_tarski(k2_tarski(X1,X3))|~m1_subset_1(X3,k1_zfmisc_1(X2))|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(rw,[status(thm)],[c_0_26, c_0_21]), ['final']).
% 0.12/0.39  cnf(c_0_33, plain, (k7_subset_1(X2,X1,X3)=k4_xboole_0(X1,X3)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.12/0.39  cnf(c_0_34, plain, (k5_xboole_0(k3_tarski(k2_tarski(X1,X2)),k1_setfam_1(k2_tarski(X2,k3_tarski(k2_tarski(X1,X2)))))=X1|~r1_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_28, c_0_29])).
% 0.12/0.39  cnf(c_0_35, plain, (k1_setfam_1(k2_tarski(X1,k3_tarski(k2_tarski(X2,X1))))=X1), inference(spm,[status(thm)],[c_0_30, c_0_29]), ['final']).
% 0.12/0.39  cnf(c_0_36, negated_conjecture, (k2_struct_0(esk1_0)=k4_subset_1(u1_struct_0(esk1_0),esk2_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_31]), ['final']).
% 0.12/0.39  cnf(c_0_37, plain, (k4_subset_1(X1,X2,X3)=k4_subset_1(X4,X2,X3)|~m1_subset_1(X3,k1_zfmisc_1(X1))|~m1_subset_1(X2,k1_zfmisc_1(X1))|~m1_subset_1(X3,k1_zfmisc_1(X4))|~m1_subset_1(X2,k1_zfmisc_1(X4))), inference(spm,[status(thm)],[c_0_32, c_0_32]), ['final']).
% 0.12/0.39  cnf(c_0_38, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_31]), ['final']).
% 0.12/0.39  cnf(c_0_39, negated_conjecture, (m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_31]), ['final']).
% 0.12/0.39  cnf(c_0_40, plain, (k7_subset_1(X2,X1,X3)=k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X3)))|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(rw,[status(thm)],[c_0_33, c_0_22]), ['final']).
% 0.12/0.39  cnf(c_0_41, plain, (k5_xboole_0(k3_tarski(k2_tarski(X1,X2)),X2)=X1|~r1_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_34, c_0_35]), ['final']).
% 0.12/0.39  cnf(c_0_42, negated_conjecture, (k4_subset_1(X1,esk2_0,esk3_0)=k2_struct_0(esk1_0)|~m1_subset_1(esk3_0,k1_zfmisc_1(X1))|~m1_subset_1(esk2_0,k1_zfmisc_1(X1))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_36, c_0_37]), c_0_38]), c_0_39])]), ['final']).
% 0.12/0.39  fof(c_0_43, plain, ![X4, X5]:(~r1_xboole_0(X4,X5)|r1_xboole_0(X5,X4)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[symmetry_r1_xboole_0])])).
% 0.12/0.39  cnf(c_0_44, plain, (k7_subset_1(X1,X2,X3)=k5_xboole_0(X2,k1_setfam_1(k2_tarski(X3,X2)))|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_40, c_0_29]), ['final']).
% 0.12/0.39  cnf(c_0_45, plain, (k1_setfam_1(k2_tarski(X1,k4_subset_1(X2,X3,X1)))=X1|~m1_subset_1(X1,k1_zfmisc_1(X2))|~m1_subset_1(X3,k1_zfmisc_1(X2))), inference(spm,[status(thm)],[c_0_35, c_0_32]), ['final']).
% 0.12/0.39  cnf(c_0_46, plain, (k5_xboole_0(k3_tarski(k2_tarski(X1,X2)),X1)=X2|~r1_xboole_0(X2,X1)), inference(spm,[status(thm)],[c_0_41, c_0_29]), ['final']).
% 0.12/0.39  cnf(c_0_47, plain, (k1_setfam_1(k2_tarski(X1,k4_subset_1(X2,X1,X3)))=X1|~m1_subset_1(X3,k1_zfmisc_1(X2))|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(spm,[status(thm)],[c_0_30, c_0_32]), ['final']).
% 0.12/0.39  cnf(c_0_48, negated_conjecture, (k3_tarski(k2_tarski(esk2_0,esk3_0))=k2_struct_0(esk1_0)|~m1_subset_1(esk3_0,k1_zfmisc_1(X1))|~m1_subset_1(esk2_0,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_32, c_0_42])).
% 0.12/0.39  cnf(c_0_49, plain, (r1_xboole_0(X2,X1)|~r1_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_43]), ['final']).
% 0.12/0.39  cnf(c_0_50, negated_conjecture, (r1_xboole_0(esk2_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_31]), ['final']).
% 0.12/0.39  fof(c_0_51, plain, ![X17]:m1_subset_1(k2_subset_1(X17),k1_zfmisc_1(X17)), inference(variable_rename,[status(thm)],[dt_k2_subset_1])).
% 0.12/0.39  fof(c_0_52, plain, ![X16]:k2_subset_1(X16)=X16, inference(variable_rename,[status(thm)],[d4_subset_1])).
% 0.12/0.39  cnf(c_0_53, plain, (k5_xboole_0(k4_subset_1(X1,X2,X3),X3)=X2|~m1_subset_1(X3,k1_zfmisc_1(X1))|~m1_subset_1(X2,k1_zfmisc_1(X1))|~r1_xboole_0(X2,X3)), inference(spm,[status(thm)],[c_0_41, c_0_32]), ['final']).
% 0.12/0.39  cnf(c_0_54, plain, (k7_subset_1(X1,k4_subset_1(X2,X3,X4),X4)=k5_xboole_0(k4_subset_1(X2,X3,X4),X4)|~m1_subset_1(k4_subset_1(X2,X3,X4),k1_zfmisc_1(X1))|~m1_subset_1(X4,k1_zfmisc_1(X2))|~m1_subset_1(X3,k1_zfmisc_1(X2))), inference(spm,[status(thm)],[c_0_44, c_0_45]), ['final']).
% 0.12/0.39  cnf(c_0_55, plain, (k5_xboole_0(k4_subset_1(X1,X2,X3),X2)=X3|~m1_subset_1(X3,k1_zfmisc_1(X1))|~m1_subset_1(X2,k1_zfmisc_1(X1))|~r1_xboole_0(X3,X2)), inference(spm,[status(thm)],[c_0_46, c_0_32]), ['final']).
% 0.12/0.39  cnf(c_0_56, plain, (k7_subset_1(X1,k4_subset_1(X2,X3,X4),X3)=k5_xboole_0(k4_subset_1(X2,X3,X4),X3)|~m1_subset_1(k4_subset_1(X2,X3,X4),k1_zfmisc_1(X1))|~m1_subset_1(X4,k1_zfmisc_1(X2))|~m1_subset_1(X3,k1_zfmisc_1(X2))), inference(spm,[status(thm)],[c_0_44, c_0_47]), ['final']).
% 0.12/0.39  cnf(c_0_57, plain, (k7_subset_1(X1,X2,k3_tarski(k2_tarski(X2,X3)))=k5_xboole_0(X2,X2)|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_40, c_0_30]), ['final']).
% 0.12/0.39  cnf(c_0_58, plain, (k7_subset_1(X1,X2,k3_tarski(k2_tarski(X3,X2)))=k5_xboole_0(X2,X2)|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_40, c_0_35]), ['final']).
% 0.12/0.39  cnf(c_0_59, negated_conjecture, (k3_tarski(k2_tarski(esk2_0,esk3_0))=k2_struct_0(esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48, c_0_38]), c_0_39])]), ['final']).
% 0.12/0.39  cnf(c_0_60, negated_conjecture, (r1_xboole_0(esk3_0,esk2_0)), inference(spm,[status(thm)],[c_0_49, c_0_50]), ['final']).
% 0.12/0.39  cnf(c_0_61, plain, (m1_subset_1(k2_subset_1(X1),k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_51])).
% 0.12/0.39  cnf(c_0_62, plain, (k2_subset_1(X1)=X1), inference(split_conjunct,[status(thm)],[c_0_52])).
% 0.12/0.39  cnf(c_0_63, plain, (k7_subset_1(X1,k4_subset_1(X2,X3,X4),X4)=X3|~m1_subset_1(k4_subset_1(X2,X3,X4),k1_zfmisc_1(X1))|~m1_subset_1(X4,k1_zfmisc_1(X2))|~m1_subset_1(X3,k1_zfmisc_1(X2))|~r1_xboole_0(X3,X4)), inference(spm,[status(thm)],[c_0_53, c_0_54]), ['final']).
% 0.12/0.39  cnf(c_0_64, plain, (k7_subset_1(X1,k4_subset_1(X2,X3,X4),X3)=X4|~m1_subset_1(k4_subset_1(X2,X3,X4),k1_zfmisc_1(X1))|~m1_subset_1(X4,k1_zfmisc_1(X2))|~m1_subset_1(X3,k1_zfmisc_1(X2))|~r1_xboole_0(X4,X3)), inference(spm,[status(thm)],[c_0_55, c_0_56]), ['final']).
% 0.12/0.39  cnf(c_0_65, plain, (k7_subset_1(X1,k4_subset_1(X2,X3,X3),X3)=X3|~m1_subset_1(k4_subset_1(X2,X3,X3),k1_zfmisc_1(X1))|~m1_subset_1(X3,k1_zfmisc_1(X2))|~r1_xboole_0(X3,X3)), inference(spm,[status(thm)],[c_0_53, c_0_56]), ['final']).
% 0.12/0.39  cnf(c_0_66, plain, (k7_subset_1(X1,X2,k4_subset_1(X3,X2,X4))=k5_xboole_0(X2,X2)|~m1_subset_1(X2,k1_zfmisc_1(X1))|~m1_subset_1(X4,k1_zfmisc_1(X3))|~m1_subset_1(X2,k1_zfmisc_1(X3))), inference(spm,[status(thm)],[c_0_57, c_0_32]), ['final']).
% 0.12/0.39  cnf(c_0_67, plain, (k7_subset_1(X1,k3_tarski(k2_tarski(X2,X3)),X3)=k5_xboole_0(k3_tarski(k2_tarski(X2,X3)),X3)|~m1_subset_1(k3_tarski(k2_tarski(X2,X3)),k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_44, c_0_35]), ['final']).
% 0.12/0.39  cnf(c_0_68, plain, (k7_subset_1(X1,X2,k4_subset_1(X3,X4,X2))=k5_xboole_0(X2,X2)|~m1_subset_1(X2,k1_zfmisc_1(X1))|~m1_subset_1(X2,k1_zfmisc_1(X3))|~m1_subset_1(X4,k1_zfmisc_1(X3))), inference(spm,[status(thm)],[c_0_58, c_0_32]), ['final']).
% 0.12/0.39  cnf(c_0_69, negated_conjecture, (k1_setfam_1(k2_tarski(esk2_0,k2_struct_0(esk1_0)))=esk2_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47, c_0_36]), c_0_38]), c_0_39])]), ['final']).
% 0.12/0.39  cnf(c_0_70, negated_conjecture, (k5_xboole_0(k2_struct_0(esk1_0),esk2_0)=esk3_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_46, c_0_59]), c_0_60])]), ['final']).
% 0.12/0.39  cnf(c_0_71, plain, (k5_xboole_0(k4_subset_1(X1,X2,X3),k1_setfam_1(k2_tarski(X3,k4_subset_1(X1,X2,X3))))=k5_xboole_0(k4_subset_1(X1,X2,X3),X3)|~m1_subset_1(k4_subset_1(X1,X2,X3),k1_zfmisc_1(X4))|~m1_subset_1(X3,k1_zfmisc_1(X1))|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_54]), c_0_29])).
% 0.12/0.39  cnf(c_0_72, plain, (m1_subset_1(X1,k1_zfmisc_1(X1))), inference(rw,[status(thm)],[c_0_61, c_0_62]), ['final']).
% 0.12/0.39  cnf(c_0_73, plain, (k5_xboole_0(k4_subset_1(X1,X2,X3),k1_setfam_1(k2_tarski(X3,k4_subset_1(X1,X2,X3))))=X2|~m1_subset_1(k4_subset_1(X1,X2,X3),k1_zfmisc_1(X4))|~m1_subset_1(X3,k1_zfmisc_1(X1))|~m1_subset_1(X2,k1_zfmisc_1(X1))|~r1_xboole_0(X2,X3)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_63]), c_0_29])).
% 0.12/0.39  cnf(c_0_74, plain, (k5_xboole_0(k4_subset_1(X1,X2,X3),k1_setfam_1(k2_tarski(X2,k4_subset_1(X1,X2,X3))))=k5_xboole_0(k4_subset_1(X1,X2,X3),X2)|~m1_subset_1(k4_subset_1(X1,X2,X3),k1_zfmisc_1(X4))|~m1_subset_1(X3,k1_zfmisc_1(X1))|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_56]), c_0_29])).
% 0.12/0.39  cnf(c_0_75, plain, (k5_xboole_0(k4_subset_1(X1,X2,X3),k1_setfam_1(k2_tarski(X2,k4_subset_1(X1,X2,X3))))=X3|~m1_subset_1(k4_subset_1(X1,X2,X3),k1_zfmisc_1(X4))|~m1_subset_1(X3,k1_zfmisc_1(X1))|~m1_subset_1(X2,k1_zfmisc_1(X1))|~r1_xboole_0(X3,X2)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_64]), c_0_29])).
% 0.12/0.39  cnf(c_0_76, plain, (k5_xboole_0(k4_subset_1(X1,X2,X2),k1_setfam_1(k2_tarski(X2,k4_subset_1(X1,X2,X2))))=X2|~m1_subset_1(k4_subset_1(X1,X2,X2),k1_zfmisc_1(X3))|~m1_subset_1(X2,k1_zfmisc_1(X1))|~r1_xboole_0(X2,X2)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_65]), c_0_29])).
% 0.12/0.39  cnf(c_0_77, plain, (k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,k4_subset_1(X2,X1,X3))))=k5_xboole_0(X1,X1)|~m1_subset_1(X1,k1_zfmisc_1(X4))|~m1_subset_1(X3,k1_zfmisc_1(X2))|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(spm,[status(thm)],[c_0_40, c_0_66])).
% 0.12/0.39  cnf(c_0_78, plain, (k7_subset_1(X1,k3_tarski(k2_tarski(X2,X3)),X3)=X2|~m1_subset_1(k3_tarski(k2_tarski(X2,X3)),k1_zfmisc_1(X1))|~r1_xboole_0(X2,X3)), inference(spm,[status(thm)],[c_0_41, c_0_67]), ['final']).
% 0.12/0.39  cnf(c_0_79, plain, (k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,k4_subset_1(X2,X3,X1))))=k5_xboole_0(X1,X1)|~m1_subset_1(X1,k1_zfmisc_1(X4))|~m1_subset_1(X1,k1_zfmisc_1(X2))|~m1_subset_1(X3,k1_zfmisc_1(X2))), inference(spm,[status(thm)],[c_0_40, c_0_68])).
% 0.12/0.39  cnf(c_0_80, plain, (k5_xboole_0(k4_subset_1(X1,X2,X2),X2)=X2|~m1_subset_1(k4_subset_1(X1,X2,X2),k1_zfmisc_1(X3))|~m1_subset_1(X2,k1_zfmisc_1(X1))|~r1_xboole_0(X2,X2)), inference(spm,[status(thm)],[c_0_56, c_0_65])).
% 0.12/0.39  cnf(c_0_81, plain, (k4_subset_1(X1,X2,X3)=k3_tarski(k2_tarski(X3,X2))|~m1_subset_1(X3,k1_zfmisc_1(X1))|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_32, c_0_29]), ['final']).
% 0.12/0.39  cnf(c_0_82, negated_conjecture, (k1_setfam_1(k2_tarski(esk3_0,k2_struct_0(esk1_0)))=esk3_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45, c_0_36]), c_0_38]), c_0_39])]), ['final']).
% 0.12/0.39  cnf(c_0_83, negated_conjecture, (k5_xboole_0(k2_struct_0(esk1_0),esk3_0)=esk2_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41, c_0_59]), c_0_50])]), ['final']).
% 0.12/0.39  cnf(c_0_84, negated_conjecture, (esk3_0!=k7_subset_1(u1_struct_0(esk1_0),k2_struct_0(esk1_0),esk2_0)), inference(split_conjunct,[status(thm)],[c_0_31]), ['final']).
% 0.12/0.39  cnf(c_0_85, plain, (k7_subset_1(X1,X2,X3)=k7_subset_1(X4,X2,X3)|~m1_subset_1(X2,k1_zfmisc_1(X1))|~m1_subset_1(X2,k1_zfmisc_1(X4))), inference(spm,[status(thm)],[c_0_40, c_0_40]), ['final']).
% 0.12/0.39  cnf(c_0_86, negated_conjecture, (k7_subset_1(X1,k2_struct_0(esk1_0),esk2_0)=esk3_0|~m1_subset_1(k2_struct_0(esk1_0),k1_zfmisc_1(X1))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44, c_0_69]), c_0_70]), ['final']).
% 0.12/0.39  cnf(c_0_87, plain, (k5_xboole_0(k4_subset_1(X1,X2,X3),k1_setfam_1(k2_tarski(X3,k4_subset_1(X1,X2,X3))))=k5_xboole_0(k4_subset_1(X1,X2,X3),X3)|~m1_subset_1(X3,k1_zfmisc_1(X1))|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_71, c_0_72]), ['final']).
% 0.12/0.39  cnf(c_0_88, plain, (k5_xboole_0(k4_subset_1(X1,X2,X3),k1_setfam_1(k2_tarski(X3,k4_subset_1(X1,X2,X3))))=X2|~m1_subset_1(X3,k1_zfmisc_1(X1))|~m1_subset_1(X2,k1_zfmisc_1(X1))|~r1_xboole_0(X2,X3)), inference(spm,[status(thm)],[c_0_73, c_0_72]), ['final']).
% 0.12/0.39  cnf(c_0_89, plain, (k5_xboole_0(k4_subset_1(X1,X2,X3),k1_setfam_1(k2_tarski(X2,k4_subset_1(X1,X2,X3))))=k5_xboole_0(k4_subset_1(X1,X2,X3),X2)|~m1_subset_1(X3,k1_zfmisc_1(X1))|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_74, c_0_72]), ['final']).
% 0.12/0.39  cnf(c_0_90, plain, (k5_xboole_0(k4_subset_1(X1,X2,X3),k1_setfam_1(k2_tarski(X2,k4_subset_1(X1,X2,X3))))=X3|~m1_subset_1(X3,k1_zfmisc_1(X1))|~m1_subset_1(X2,k1_zfmisc_1(X1))|~r1_xboole_0(X3,X2)), inference(spm,[status(thm)],[c_0_75, c_0_72]), ['final']).
% 0.12/0.39  cnf(c_0_91, plain, (k5_xboole_0(k4_subset_1(X1,X2,X2),k1_setfam_1(k2_tarski(X2,k4_subset_1(X1,X2,X2))))=X2|~m1_subset_1(X2,k1_zfmisc_1(X1))|~r1_xboole_0(X2,X2)), inference(spm,[status(thm)],[c_0_76, c_0_72]), ['final']).
% 0.12/0.39  cnf(c_0_92, plain, (k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,k4_subset_1(X2,X1,X3))))=k5_xboole_0(X1,X1)|~m1_subset_1(X3,k1_zfmisc_1(X2))|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(spm,[status(thm)],[c_0_77, c_0_72]), ['final']).
% 0.12/0.39  cnf(c_0_93, plain, (k7_subset_1(X1,k3_tarski(k2_tarski(X2,X3)),X2)=X3|~m1_subset_1(k3_tarski(k2_tarski(X2,X3)),k1_zfmisc_1(X1))|~r1_xboole_0(X3,X2)), inference(spm,[status(thm)],[c_0_78, c_0_29]), ['final']).
% 0.12/0.39  cnf(c_0_94, plain, (k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,k4_subset_1(X2,X3,X1))))=k5_xboole_0(X1,X1)|~m1_subset_1(X1,k1_zfmisc_1(X2))|~m1_subset_1(X3,k1_zfmisc_1(X2))), inference(spm,[status(thm)],[c_0_79, c_0_72]), ['final']).
% 0.12/0.39  cnf(c_0_95, plain, (k7_subset_1(X1,k3_tarski(k2_tarski(X2,X3)),X2)=k5_xboole_0(k3_tarski(k2_tarski(X2,X3)),X2)|~m1_subset_1(k3_tarski(k2_tarski(X2,X3)),k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_44, c_0_30]), ['final']).
% 0.12/0.39  cnf(c_0_96, plain, (k5_xboole_0(k4_subset_1(X1,X2,X2),X2)=X2|~m1_subset_1(X2,k1_zfmisc_1(X1))|~r1_xboole_0(X2,X2)), inference(spm,[status(thm)],[c_0_80, c_0_72]), ['final']).
% 0.12/0.39  cnf(c_0_97, plain, (k4_subset_1(X1,X2,X3)=k4_subset_1(X4,X3,X2)|~m1_subset_1(X3,k1_zfmisc_1(X1))|~m1_subset_1(X2,k1_zfmisc_1(X1))|~m1_subset_1(X2,k1_zfmisc_1(X4))|~m1_subset_1(X3,k1_zfmisc_1(X4))), inference(spm,[status(thm)],[c_0_32, c_0_81]), ['final']).
% 0.12/0.39  cnf(c_0_98, negated_conjecture, (k7_subset_1(X1,k2_struct_0(esk1_0),esk3_0)=esk2_0|~m1_subset_1(k2_struct_0(esk1_0),k1_zfmisc_1(X1))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44, c_0_82]), c_0_83]), ['final']).
% 0.12/0.39  cnf(c_0_99, negated_conjecture, (k4_subset_1(X1,esk3_0,esk2_0)=k2_struct_0(esk1_0)|~m1_subset_1(esk2_0,k1_zfmisc_1(X1))|~m1_subset_1(esk3_0,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_59, c_0_81]), ['final']).
% 0.12/0.39  cnf(c_0_100, negated_conjecture, (k7_subset_1(X1,esk3_0,k2_struct_0(esk1_0))=k5_xboole_0(esk3_0,esk3_0)|~m1_subset_1(esk3_0,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_40, c_0_82]), ['final']).
% 0.12/0.39  cnf(c_0_101, negated_conjecture, (k7_subset_1(X1,esk2_0,k2_struct_0(esk1_0))=k5_xboole_0(esk2_0,esk2_0)|~m1_subset_1(esk2_0,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_40, c_0_69]), ['final']).
% 0.12/0.39  cnf(c_0_102, negated_conjecture, (k7_subset_1(X1,k2_struct_0(esk1_0),esk2_0)!=esk3_0|~m1_subset_1(k2_struct_0(esk1_0),k1_zfmisc_1(u1_struct_0(esk1_0)))|~m1_subset_1(k2_struct_0(esk1_0),k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_84, c_0_85]), ['final']).
% 0.12/0.39  cnf(c_0_103, negated_conjecture, (~m1_subset_1(k2_struct_0(esk1_0),k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(spm,[status(thm)],[c_0_84, c_0_86]), ['final']).
% 0.12/0.39  cnf(c_0_104, negated_conjecture, (l1_struct_0(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_31]), ['final']).
% 0.12/0.39  # SZS output end Saturation
% 0.12/0.39  # Proof object total steps             : 105
% 0.12/0.39  # Proof object clause steps            : 80
% 0.12/0.39  # Proof object formula steps           : 25
% 0.12/0.39  # Proof object conjectures             : 24
% 0.12/0.39  # Proof object clause conjectures      : 21
% 0.12/0.39  # Proof object formula conjectures     : 3
% 0.12/0.39  # Proof object initial clauses used    : 17
% 0.12/0.39  # Proof object initial formulas used   : 12
% 0.12/0.39  # Proof object generating inferences   : 55
% 0.12/0.39  # Proof object simplifying inferences  : 32
% 0.12/0.39  # Parsed axioms                        : 12
% 0.12/0.39  # Removed by relevancy pruning/SinE    : 0
% 0.12/0.39  # Initial clauses                      : 17
% 0.12/0.39  # Removed in clause preprocessing      : 4
% 0.12/0.39  # Initial clauses in saturation        : 13
% 0.12/0.39  # Processed clauses                    : 515
% 0.12/0.39  # ...of these trivial                  : 12
% 0.12/0.39  # ...subsumed                          : 412
% 0.12/0.39  # ...remaining for further processing  : 91
% 0.12/0.39  # Other redundant clauses eliminated   : 0
% 0.12/0.39  # Clauses deleted for lack of memory   : 0
% 0.12/0.39  # Backward-subsumed                    : 18
% 0.12/0.39  # Backward-rewritten                   : 1
% 0.12/0.39  # Generated clauses                    : 652
% 0.12/0.39  # ...of the previous two non-trivial   : 531
% 0.12/0.39  # Contextual simplify-reflections      : 0
% 0.12/0.39  # Paramodulations                      : 652
% 0.12/0.39  # Factorizations                       : 0
% 0.12/0.39  # Equation resolutions                 : 0
% 0.12/0.39  # Propositional unsat checks           : 0
% 0.12/0.39  #    Propositional check models        : 0
% 0.12/0.39  #    Propositional check unsatisfiable : 0
% 0.12/0.39  #    Propositional clauses             : 0
% 0.12/0.39  #    Propositional clauses after purity: 0
% 0.12/0.39  #    Propositional unsat core size     : 0
% 0.12/0.39  #    Propositional preprocessing time  : 0.000
% 0.12/0.39  #    Propositional encoding time       : 0.000
% 0.12/0.39  #    Propositional solver time         : 0.000
% 0.12/0.39  #    Success case prop preproc time    : 0.000
% 0.12/0.39  #    Success case prop encoding time   : 0.000
% 0.12/0.39  #    Success case prop solver time     : 0.000
% 0.12/0.39  # Current number of processed clauses  : 59
% 0.12/0.39  #    Positive orientable unit clauses  : 14
% 0.12/0.39  #    Positive unorientable unit clauses: 1
% 0.12/0.39  #    Negative unit clauses             : 2
% 0.12/0.39  #    Non-unit-clauses                  : 42
% 0.12/0.39  # Current number of unprocessed clauses: 0
% 0.12/0.39  # ...number of literals in the above   : 0
% 0.12/0.39  # Current number of archived formulas  : 0
% 0.12/0.39  # Current number of archived clauses   : 36
% 0.12/0.39  # Clause-clause subsumption calls (NU) : 3548
% 0.12/0.39  # Rec. Clause-clause subsumption calls : 884
% 0.12/0.39  # Non-unit clause-clause subsumptions  : 430
% 0.12/0.39  # Unit Clause-clause subsumption calls : 1
% 0.12/0.39  # Rewrite failures with RHS unbound    : 0
% 0.12/0.39  # BW rewrite match attempts            : 6
% 0.12/0.39  # BW rewrite match successes           : 1
% 0.12/0.39  # Condensation attempts                : 0
% 0.12/0.39  # Condensation successes               : 0
% 0.12/0.39  # Termbank termtop insertions          : 15044
% 0.12/0.39  
% 0.12/0.39  # -------------------------------------------------
% 0.12/0.39  # User time                : 0.048 s
% 0.12/0.39  # System time              : 0.004 s
% 0.12/0.39  # Total time               : 0.053 s
% 0.12/0.39  # Maximum resident set size: 1576 pages
%------------------------------------------------------------------------------
