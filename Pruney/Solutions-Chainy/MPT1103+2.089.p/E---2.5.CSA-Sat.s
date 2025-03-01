%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n024.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:08:47 EST 2020

% Result     : CounterSatisfiable 0.14s
% Output     : Saturation 0.14s
% Verified   : 
% Statistics : Number of formulae       :  101 (1203 expanded)
%              Number of clauses        :   70 ( 557 expanded)
%              Number of leaves         :   15 ( 319 expanded)
%              Depth                    :   13
%              Number of atoms          :  200 (1717 expanded)
%              Number of equality atoms :   96 (1210 expanded)
%              Maximal formula depth    :   10 (   3 average)
%              Maximal clause size      :   10 (   2 average)
%              Maximal term depth       :    8 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t100_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t100_xboole_1)).

fof(t12_setfam_1,axiom,(
    ! [X1,X2] : k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t12_setfam_1)).

fof(t98_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X2) = k5_xboole_0(X1,k4_xboole_0(X2,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t98_xboole_1)).

fof(t46_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,k2_xboole_0(X1,X2)) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t46_xboole_1)).

fof(t28_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
     => k3_xboole_0(X1,X2) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t28_xboole_1)).

fof(idempotence_k3_xboole_0,axiom,(
    ! [X1,X2] : k3_xboole_0(X1,X1) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',idempotence_k3_xboole_0)).

fof(redefinition_k7_subset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => k7_subset_1(X1,X2,X3) = k4_xboole_0(X2,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k7_subset_1)).

fof(t5_boole,axiom,(
    ! [X1] : k5_xboole_0(X1,k1_xboole_0) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t5_boole)).

fof(t2_xboole_1,axiom,(
    ! [X1] : r1_tarski(k1_xboole_0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_xboole_1)).

fof(t105_xboole_1,axiom,(
    ! [X1,X2] :
      ~ ( r2_xboole_0(X1,X2)
        & k4_xboole_0(X2,X1) = k1_xboole_0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t105_xboole_1)).

fof(t23_pre_topc,conjecture,(
    ! [X1] :
      ( l1_struct_0(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ( ~ ( X2 != k2_struct_0(X1)
                & k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X2) = k1_xboole_0 )
            & ~ ( k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X2) != k1_xboole_0
                & X2 = k2_struct_0(X1) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t23_pre_topc)).

fof(t3_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X2))
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_subset)).

fof(dt_k2_subset_1,axiom,(
    ! [X1] : m1_subset_1(k2_subset_1(X1),k1_zfmisc_1(X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k2_subset_1)).

fof(d4_subset_1,axiom,(
    ! [X1] : k2_subset_1(X1) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d4_subset_1)).

fof(d8_xboole_0,axiom,(
    ! [X1,X2] :
      ( r2_xboole_0(X1,X2)
    <=> ( r1_tarski(X1,X2)
        & X1 != X2 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d8_xboole_0)).

fof(c_0_15,plain,(
    ! [X7,X8] : k4_xboole_0(X7,X8) = k5_xboole_0(X7,k3_xboole_0(X7,X8)) ),
    inference(variable_rename,[status(thm)],[t100_xboole_1])).

fof(c_0_16,plain,(
    ! [X24,X25] : k1_setfam_1(k2_tarski(X24,X25)) = k3_xboole_0(X24,X25) ),
    inference(variable_rename,[status(thm)],[t12_setfam_1])).

fof(c_0_17,plain,(
    ! [X17,X18] : k2_xboole_0(X17,X18) = k5_xboole_0(X17,k4_xboole_0(X18,X17)) ),
    inference(variable_rename,[status(thm)],[t98_xboole_1])).

cnf(c_0_18,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_19,plain,
    ( k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

fof(c_0_20,plain,(
    ! [X14,X15] : k4_xboole_0(X14,k2_xboole_0(X14,X15)) = k1_xboole_0 ),
    inference(variable_rename,[status(thm)],[t46_xboole_1])).

cnf(c_0_21,plain,
    ( k2_xboole_0(X1,X2) = k5_xboole_0(X1,k4_xboole_0(X2,X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_22,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))) ),
    inference(rw,[status(thm)],[c_0_18,c_0_19])).

fof(c_0_23,plain,(
    ! [X11,X12] :
      ( ~ r1_tarski(X11,X12)
      | k3_xboole_0(X11,X12) = X11 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t28_xboole_1])])).

cnf(c_0_24,plain,
    ( k4_xboole_0(X1,k2_xboole_0(X1,X2)) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_25,plain,
    ( k2_xboole_0(X1,X2) = k5_xboole_0(X1,k5_xboole_0(X2,k1_setfam_1(k2_tarski(X2,X1)))) ),
    inference(rw,[status(thm)],[c_0_21,c_0_22])).

cnf(c_0_26,plain,
    ( k3_xboole_0(X1,X2) = X1
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

fof(c_0_27,plain,(
    ! [X6] : k3_xboole_0(X6,X6) = X6 ),
    inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[idempotence_k3_xboole_0])])).

fof(c_0_28,plain,(
    ! [X21,X22,X23] :
      ( ~ m1_subset_1(X22,k1_zfmisc_1(X21))
      | k7_subset_1(X21,X22,X23) = k4_xboole_0(X22,X23) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k7_subset_1])])).

cnf(c_0_29,plain,
    ( k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,k5_xboole_0(X1,k5_xboole_0(X2,k1_setfam_1(k2_tarski(X2,X1))))))) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_24,c_0_22]),c_0_25]),
    [final]).

cnf(c_0_30,plain,
    ( k1_setfam_1(k2_tarski(X1,X2)) = X1
    | ~ r1_tarski(X1,X2) ),
    inference(rw,[status(thm)],[c_0_26,c_0_19]),
    [final]).

fof(c_0_31,plain,(
    ! [X16] : k5_xboole_0(X16,k1_xboole_0) = X16 ),
    inference(variable_rename,[status(thm)],[t5_boole])).

cnf(c_0_32,plain,
    ( k3_xboole_0(X1,X1) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

fof(c_0_33,plain,(
    ! [X13] : r1_tarski(k1_xboole_0,X13) ),
    inference(variable_rename,[status(thm)],[t2_xboole_1])).

cnf(c_0_34,plain,
    ( k7_subset_1(X2,X1,X3) = k4_xboole_0(X1,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_35,plain,
    ( k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,k5_xboole_0(X1,k5_xboole_0(X2,X2))))) = k1_xboole_0
    | ~ r1_tarski(X2,X1) ),
    inference(spm,[status(thm)],[c_0_29,c_0_30])).

cnf(c_0_36,plain,
    ( k5_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_31]),
    [final]).

cnf(c_0_37,plain,
    ( k1_setfam_1(k2_tarski(X1,X1)) = X1 ),
    inference(rw,[status(thm)],[c_0_32,c_0_19]),
    [final]).

cnf(c_0_38,plain,
    ( r1_tarski(k1_xboole_0,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_33]),
    [final]).

fof(c_0_39,plain,(
    ! [X9,X10] :
      ( ~ r2_xboole_0(X9,X10)
      | k4_xboole_0(X10,X9) != k1_xboole_0 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t105_xboole_1])])).

cnf(c_0_40,plain,
    ( k7_subset_1(X2,X1,X3) = k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X3)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(rw,[status(thm)],[c_0_34,c_0_22]),
    [final]).

cnf(c_0_41,plain,
    ( k5_xboole_0(X1,X1) = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35,c_0_36]),c_0_36]),c_0_37]),c_0_38])]),
    [final]).

fof(c_0_42,negated_conjecture,(
    ~ ! [X1] :
        ( l1_struct_0(X1)
       => ! [X2] :
            ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
           => ( ~ ( X2 != k2_struct_0(X1)
                  & k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X2) = k1_xboole_0 )
              & ~ ( k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X2) != k1_xboole_0
                  & X2 = k2_struct_0(X1) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t23_pre_topc])).

cnf(c_0_43,plain,
    ( ~ r2_xboole_0(X1,X2)
    | k4_xboole_0(X2,X1) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_44,plain,
    ( k7_subset_1(X1,X2,X3) = k1_xboole_0
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ r1_tarski(X2,X3) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_30]),c_0_41]),
    [final]).

fof(c_0_45,plain,(
    ! [X26,X27] :
      ( ( ~ m1_subset_1(X26,k1_zfmisc_1(X27))
        | r1_tarski(X26,X27) )
      & ( ~ r1_tarski(X26,X27)
        | m1_subset_1(X26,k1_zfmisc_1(X27)) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).

fof(c_0_46,negated_conjecture,
    ( l1_struct_0(esk1_0)
    & m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0)))
    & ( k7_subset_1(u1_struct_0(esk1_0),k2_struct_0(esk1_0),esk2_0) != k1_xboole_0
      | esk2_0 != k2_struct_0(esk1_0) )
    & ( esk2_0 = k2_struct_0(esk1_0)
      | esk2_0 != k2_struct_0(esk1_0) )
    & ( k7_subset_1(u1_struct_0(esk1_0),k2_struct_0(esk1_0),esk2_0) != k1_xboole_0
      | k7_subset_1(u1_struct_0(esk1_0),k2_struct_0(esk1_0),esk2_0) = k1_xboole_0 )
    & ( esk2_0 = k2_struct_0(esk1_0)
      | k7_subset_1(u1_struct_0(esk1_0),k2_struct_0(esk1_0),esk2_0) = k1_xboole_0 ) ),
    inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_42])])])])).

fof(c_0_47,plain,(
    ! [X20] : m1_subset_1(k2_subset_1(X20),k1_zfmisc_1(X20)) ),
    inference(variable_rename,[status(thm)],[dt_k2_subset_1])).

fof(c_0_48,plain,(
    ! [X19] : k2_subset_1(X19) = X19 ),
    inference(variable_rename,[status(thm)],[d4_subset_1])).

cnf(c_0_49,plain,
    ( k5_xboole_0(X2,k1_setfam_1(k2_tarski(X2,X1))) != k1_xboole_0
    | ~ r2_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_43,c_0_22]),
    [final]).

cnf(c_0_50,plain,
    ( k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))) = k1_xboole_0
    | ~ m1_subset_1(X1,k1_zfmisc_1(X3))
    | ~ r1_tarski(X1,X2) ),
    inference(spm,[status(thm)],[c_0_40,c_0_44])).

cnf(c_0_51,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_45]),
    [final]).

cnf(c_0_52,plain,
    ( r1_tarski(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_45]),
    [final]).

cnf(c_0_53,negated_conjecture,
    ( m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_46]),
    [final]).

cnf(c_0_54,plain,
    ( m1_subset_1(k2_subset_1(X1),k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_47])).

cnf(c_0_55,plain,
    ( k2_subset_1(X1) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_48])).

cnf(c_0_56,plain,
    ( k5_xboole_0(X1,X1) != k1_xboole_0
    | ~ r1_tarski(X1,X2)
    | ~ r2_xboole_0(X2,X1) ),
    inference(spm,[status(thm)],[c_0_49,c_0_30])).

cnf(c_0_57,plain,
    ( k5_xboole_0(k5_xboole_0(X1,k5_xboole_0(X2,k1_setfam_1(k2_tarski(X2,X1)))),k5_xboole_0(X1,k5_xboole_0(X2,k1_setfam_1(k2_tarski(X2,X1))))) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29,c_0_29]),c_0_36]),c_0_37])).

cnf(c_0_58,plain,
    ( k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))) = k1_xboole_0
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X1,X3) ),
    inference(spm,[status(thm)],[c_0_50,c_0_51])).

cnf(c_0_59,negated_conjecture,
    ( r1_tarski(esk2_0,u1_struct_0(esk1_0)) ),
    inference(spm,[status(thm)],[c_0_52,c_0_53]),
    [final]).

cnf(c_0_60,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X1)) ),
    inference(rw,[status(thm)],[c_0_54,c_0_55]),
    [final]).

cnf(c_0_61,plain,
    ( ~ r1_tarski(k5_xboole_0(X1,k5_xboole_0(X2,k1_setfam_1(k2_tarski(X2,X1)))),X3)
    | ~ r2_xboole_0(X3,k5_xboole_0(X1,k5_xboole_0(X2,k1_setfam_1(k2_tarski(X2,X1))))) ),
    inference(spm,[status(thm)],[c_0_56,c_0_57])).

fof(c_0_62,plain,(
    ! [X4,X5] :
      ( ( r1_tarski(X4,X5)
        | ~ r2_xboole_0(X4,X5) )
      & ( X4 != X5
        | ~ r2_xboole_0(X4,X5) )
      & ( ~ r1_tarski(X4,X5)
        | X4 = X5
        | r2_xboole_0(X4,X5) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d8_xboole_0])])])).

cnf(c_0_63,negated_conjecture,
    ( esk2_0 = k2_struct_0(esk1_0)
    | k7_subset_1(u1_struct_0(esk1_0),k2_struct_0(esk1_0),esk2_0) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_46]),
    [final]).

cnf(c_0_64,plain,
    ( k7_subset_1(X1,X2,X3) = k7_subset_1(X4,X2,X3)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X4)) ),
    inference(spm,[status(thm)],[c_0_40,c_0_40]),
    [final]).

cnf(c_0_65,negated_conjecture,
    ( k5_xboole_0(esk2_0,k1_setfam_1(k2_tarski(esk2_0,u1_struct_0(esk1_0)))) = k1_xboole_0
    | ~ r1_tarski(esk2_0,X1) ),
    inference(spm,[status(thm)],[c_0_58,c_0_59])).

cnf(c_0_66,plain,
    ( r1_tarski(X1,X1) ),
    inference(spm,[status(thm)],[c_0_52,c_0_60]),
    [final]).

cnf(c_0_67,negated_conjecture,
    ( k7_subset_1(u1_struct_0(esk1_0),k2_struct_0(esk1_0),esk2_0) != k1_xboole_0
    | esk2_0 != k2_struct_0(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_46]),
    [final]).

cnf(c_0_68,plain,
    ( ~ r1_tarski(k5_xboole_0(X1,k5_xboole_0(X1,X1)),X2)
    | ~ r2_xboole_0(X2,k5_xboole_0(X1,k5_xboole_0(X1,X1))) ),
    inference(spm,[status(thm)],[c_0_61,c_0_37])).

cnf(c_0_69,plain,
    ( X1 = X2
    | r2_xboole_0(X1,X2)
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_62]),
    [final]).

cnf(c_0_70,plain,
    ( k7_subset_1(X1,X2,X3) != k1_xboole_0
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ r2_xboole_0(X3,X2) ),
    inference(spm,[status(thm)],[c_0_49,c_0_40]),
    [final]).

cnf(c_0_71,plain,
    ( k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,k5_xboole_0(X1,k7_subset_1(X2,X3,X1))))) = k1_xboole_0
    | ~ m1_subset_1(X3,k1_zfmisc_1(X2)) ),
    inference(spm,[status(thm)],[c_0_29,c_0_40]),
    [final]).

cnf(c_0_72,negated_conjecture,
    ( k7_subset_1(X1,k2_struct_0(esk1_0),esk2_0) = k1_xboole_0
    | k2_struct_0(esk1_0) = esk2_0
    | ~ m1_subset_1(k2_struct_0(esk1_0),k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ m1_subset_1(k2_struct_0(esk1_0),k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_63,c_0_64]),
    [final]).

cnf(c_0_73,negated_conjecture,
    ( k5_xboole_0(esk2_0,k1_setfam_1(k2_tarski(esk2_0,u1_struct_0(esk1_0)))) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_65,c_0_66]),
    [final]).

cnf(c_0_74,plain,
    ( k5_xboole_0(k1_xboole_0,k1_setfam_1(k2_tarski(k1_xboole_0,X1))) = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_58,c_0_38]),c_0_38])]),
    [final]).

cnf(c_0_75,negated_conjecture,
    ( k2_struct_0(esk1_0) != esk2_0
    | ~ m1_subset_1(k2_struct_0(esk1_0),k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ r1_tarski(k2_struct_0(esk1_0),esk2_0) ),
    inference(spm,[status(thm)],[c_0_67,c_0_44]),
    [final]).

cnf(c_0_76,plain,
    ( k7_subset_1(X1,X2,X2) = k5_xboole_0(X2,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_40,c_0_37])).

cnf(c_0_77,plain,
    ( ~ r1_tarski(X1,X2)
    | ~ r2_xboole_0(X2,X1) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_68,c_0_41]),c_0_36]),c_0_41]),c_0_36]),
    [final]).

cnf(c_0_78,plain,
    ( k1_xboole_0 = X1
    | r2_xboole_0(k1_xboole_0,X1) ),
    inference(spm,[status(thm)],[c_0_69,c_0_38]),
    [final]).

cnf(c_0_79,negated_conjecture,
    ( u1_struct_0(esk1_0) = esk2_0
    | r2_xboole_0(esk2_0,u1_struct_0(esk1_0)) ),
    inference(spm,[status(thm)],[c_0_69,c_0_59]),
    [final]).

cnf(c_0_80,negated_conjecture,
    ( k2_struct_0(esk1_0) = esk2_0
    | ~ m1_subset_1(k2_struct_0(esk1_0),k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ r2_xboole_0(esk2_0,k2_struct_0(esk1_0)) ),
    inference(spm,[status(thm)],[c_0_70,c_0_63]),
    [final]).

cnf(c_0_81,plain,
    ( ~ r2_xboole_0(k5_xboole_0(X1,k5_xboole_0(X2,k1_setfam_1(k2_tarski(X2,X1)))),X1) ),
    inference(spm,[status(thm)],[c_0_49,c_0_29]),
    [final]).

cnf(c_0_82,plain,
    ( X1 != X2
    | ~ r2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_62])).

cnf(c_0_83,plain,
    ( k7_subset_1(X1,X2,k5_xboole_0(X2,k7_subset_1(X3,X4,X2))) = k1_xboole_0
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X4,k1_zfmisc_1(X3)) ),
    inference(spm,[status(thm)],[c_0_40,c_0_71]),
    [final]).

cnf(c_0_84,plain,
    ( k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))) = k1_xboole_0
    | ~ r1_tarski(X1,X2) ),
    inference(spm,[status(thm)],[c_0_50,c_0_60]),
    [final]).

cnf(c_0_85,plain,
    ( k7_subset_1(X1,X2,k5_xboole_0(X2,k5_xboole_0(X3,k1_setfam_1(k2_tarski(X3,X2))))) = k1_xboole_0
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_29,c_0_40]),
    [final]).

cnf(c_0_86,negated_conjecture,
    ( k7_subset_1(X1,k2_struct_0(esk1_0),esk2_0) = k1_xboole_0
    | k2_struct_0(esk1_0) = esk2_0
    | ~ m1_subset_1(k2_struct_0(esk1_0),k1_zfmisc_1(X1))
    | ~ r1_tarski(k2_struct_0(esk1_0),u1_struct_0(esk1_0)) ),
    inference(spm,[status(thm)],[c_0_72,c_0_51]),
    [final]).

cnf(c_0_87,negated_conjecture,
    ( k7_subset_1(X1,k2_struct_0(esk1_0),esk2_0) != k1_xboole_0
    | k2_struct_0(esk1_0) != esk2_0
    | ~ m1_subset_1(k2_struct_0(esk1_0),k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ m1_subset_1(k2_struct_0(esk1_0),k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_67,c_0_64]),
    [final]).

cnf(c_0_88,negated_conjecture,
    ( k7_subset_1(X1,esk2_0,u1_struct_0(esk1_0)) = k1_xboole_0
    | ~ m1_subset_1(esk2_0,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_40,c_0_73]),
    [final]).

cnf(c_0_89,plain,
    ( k7_subset_1(X1,k1_xboole_0,X2) = k1_xboole_0
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_40,c_0_74]),
    [final]).

cnf(c_0_90,negated_conjecture,
    ( k2_struct_0(esk1_0) != esk2_0
    | ~ r1_tarski(k2_struct_0(esk1_0),u1_struct_0(esk1_0))
    | ~ r1_tarski(k2_struct_0(esk1_0),esk2_0) ),
    inference(spm,[status(thm)],[c_0_75,c_0_51]),
    [final]).

cnf(c_0_91,plain,
    ( k7_subset_1(X1,X2,X2) = k1_xboole_0
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(rw,[status(thm)],[c_0_76,c_0_41]),
    [final]).

cnf(c_0_92,plain,
    ( k1_xboole_0 = X1
    | ~ r1_tarski(X1,k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_77,c_0_78]),
    [final]).

cnf(c_0_93,negated_conjecture,
    ( u1_struct_0(esk1_0) = esk2_0
    | ~ r1_tarski(u1_struct_0(esk1_0),esk2_0) ),
    inference(spm,[status(thm)],[c_0_77,c_0_79]),
    [final]).

cnf(c_0_94,negated_conjecture,
    ( k2_struct_0(esk1_0) = esk2_0
    | ~ r1_tarski(k2_struct_0(esk1_0),u1_struct_0(esk1_0))
    | ~ r2_xboole_0(esk2_0,k2_struct_0(esk1_0)) ),
    inference(spm,[status(thm)],[c_0_80,c_0_51]),
    [final]).

cnf(c_0_95,plain,
    ( ~ m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ r2_xboole_0(k5_xboole_0(X3,k7_subset_1(X2,X1,X3)),X3) ),
    inference(spm,[status(thm)],[c_0_81,c_0_40]),
    [final]).

cnf(c_0_96,plain,
    ( r1_tarski(X1,X2)
    | ~ r2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_62]),
    [final]).

cnf(c_0_97,negated_conjecture,
    ( ~ r2_xboole_0(u1_struct_0(esk1_0),esk2_0) ),
    inference(spm,[status(thm)],[c_0_49,c_0_73]),
    [final]).

cnf(c_0_98,plain,
    ( ~ r2_xboole_0(X1,k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_56,c_0_36]),c_0_38])]),
    [final]).

cnf(c_0_99,plain,
    ( ~ r2_xboole_0(X1,X1) ),
    inference(er,[status(thm)],[c_0_82]),
    [final]).

cnf(c_0_100,negated_conjecture,
    ( l1_struct_0(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_46]),
    [final]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.14  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.35  % Computer   : n024.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % WCLimit    : 600
% 0.14/0.35  % DateTime   : Tue Dec  1 17:28:36 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  # Version: 2.5pre002
% 0.14/0.35  # No SInE strategy applied
% 0.14/0.35  # Trying AutoSched0 for 299 seconds
% 0.14/0.39  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.14/0.39  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.14/0.39  #
% 0.14/0.39  # Preprocessing time       : 0.027 s
% 0.14/0.39  # Presaturation interreduction done
% 0.14/0.39  
% 0.14/0.39  # No proof found!
% 0.14/0.39  # SZS status CounterSatisfiable
% 0.14/0.39  # SZS output start Saturation
% 0.14/0.39  fof(t100_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t100_xboole_1)).
% 0.14/0.39  fof(t12_setfam_1, axiom, ![X1, X2]:k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t12_setfam_1)).
% 0.14/0.39  fof(t98_xboole_1, axiom, ![X1, X2]:k2_xboole_0(X1,X2)=k5_xboole_0(X1,k4_xboole_0(X2,X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t98_xboole_1)).
% 0.14/0.39  fof(t46_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,k2_xboole_0(X1,X2))=k1_xboole_0, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t46_xboole_1)).
% 0.14/0.39  fof(t28_xboole_1, axiom, ![X1, X2]:(r1_tarski(X1,X2)=>k3_xboole_0(X1,X2)=X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t28_xboole_1)).
% 0.14/0.39  fof(idempotence_k3_xboole_0, axiom, ![X1, X2]:k3_xboole_0(X1,X1)=X1, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', idempotence_k3_xboole_0)).
% 0.14/0.39  fof(redefinition_k7_subset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>k7_subset_1(X1,X2,X3)=k4_xboole_0(X2,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k7_subset_1)).
% 0.14/0.39  fof(t5_boole, axiom, ![X1]:k5_xboole_0(X1,k1_xboole_0)=X1, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t5_boole)).
% 0.14/0.39  fof(t2_xboole_1, axiom, ![X1]:r1_tarski(k1_xboole_0,X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t2_xboole_1)).
% 0.14/0.39  fof(t105_xboole_1, axiom, ![X1, X2]:~((r2_xboole_0(X1,X2)&k4_xboole_0(X2,X1)=k1_xboole_0)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t105_xboole_1)).
% 0.14/0.39  fof(t23_pre_topc, conjecture, ![X1]:(l1_struct_0(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>(~((X2!=k2_struct_0(X1)&k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X2)=k1_xboole_0))&~((k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X2)!=k1_xboole_0&X2=k2_struct_0(X1)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t23_pre_topc)).
% 0.14/0.39  fof(t3_subset, axiom, ![X1, X2]:(m1_subset_1(X1,k1_zfmisc_1(X2))<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t3_subset)).
% 0.14/0.39  fof(dt_k2_subset_1, axiom, ![X1]:m1_subset_1(k2_subset_1(X1),k1_zfmisc_1(X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k2_subset_1)).
% 0.14/0.39  fof(d4_subset_1, axiom, ![X1]:k2_subset_1(X1)=X1, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d4_subset_1)).
% 0.14/0.39  fof(d8_xboole_0, axiom, ![X1, X2]:(r2_xboole_0(X1,X2)<=>(r1_tarski(X1,X2)&X1!=X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d8_xboole_0)).
% 0.14/0.39  fof(c_0_15, plain, ![X7, X8]:k4_xboole_0(X7,X8)=k5_xboole_0(X7,k3_xboole_0(X7,X8)), inference(variable_rename,[status(thm)],[t100_xboole_1])).
% 0.14/0.39  fof(c_0_16, plain, ![X24, X25]:k1_setfam_1(k2_tarski(X24,X25))=k3_xboole_0(X24,X25), inference(variable_rename,[status(thm)],[t12_setfam_1])).
% 0.14/0.39  fof(c_0_17, plain, ![X17, X18]:k2_xboole_0(X17,X18)=k5_xboole_0(X17,k4_xboole_0(X18,X17)), inference(variable_rename,[status(thm)],[t98_xboole_1])).
% 0.14/0.39  cnf(c_0_18, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.39  cnf(c_0_19, plain, (k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.14/0.39  fof(c_0_20, plain, ![X14, X15]:k4_xboole_0(X14,k2_xboole_0(X14,X15))=k1_xboole_0, inference(variable_rename,[status(thm)],[t46_xboole_1])).
% 0.14/0.39  cnf(c_0_21, plain, (k2_xboole_0(X1,X2)=k5_xboole_0(X1,k4_xboole_0(X2,X1))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.14/0.39  cnf(c_0_22, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2)))), inference(rw,[status(thm)],[c_0_18, c_0_19])).
% 0.14/0.39  fof(c_0_23, plain, ![X11, X12]:(~r1_tarski(X11,X12)|k3_xboole_0(X11,X12)=X11), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t28_xboole_1])])).
% 0.14/0.39  cnf(c_0_24, plain, (k4_xboole_0(X1,k2_xboole_0(X1,X2))=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.14/0.39  cnf(c_0_25, plain, (k2_xboole_0(X1,X2)=k5_xboole_0(X1,k5_xboole_0(X2,k1_setfam_1(k2_tarski(X2,X1))))), inference(rw,[status(thm)],[c_0_21, c_0_22])).
% 0.14/0.39  cnf(c_0_26, plain, (k3_xboole_0(X1,X2)=X1|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.14/0.39  fof(c_0_27, plain, ![X6]:k3_xboole_0(X6,X6)=X6, inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[idempotence_k3_xboole_0])])).
% 0.14/0.39  fof(c_0_28, plain, ![X21, X22, X23]:(~m1_subset_1(X22,k1_zfmisc_1(X21))|k7_subset_1(X21,X22,X23)=k4_xboole_0(X22,X23)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k7_subset_1])])).
% 0.14/0.39  cnf(c_0_29, plain, (k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,k5_xboole_0(X1,k5_xboole_0(X2,k1_setfam_1(k2_tarski(X2,X1)))))))=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_24, c_0_22]), c_0_25]), ['final']).
% 0.14/0.39  cnf(c_0_30, plain, (k1_setfam_1(k2_tarski(X1,X2))=X1|~r1_tarski(X1,X2)), inference(rw,[status(thm)],[c_0_26, c_0_19]), ['final']).
% 0.14/0.39  fof(c_0_31, plain, ![X16]:k5_xboole_0(X16,k1_xboole_0)=X16, inference(variable_rename,[status(thm)],[t5_boole])).
% 0.14/0.39  cnf(c_0_32, plain, (k3_xboole_0(X1,X1)=X1), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.14/0.39  fof(c_0_33, plain, ![X13]:r1_tarski(k1_xboole_0,X13), inference(variable_rename,[status(thm)],[t2_xboole_1])).
% 0.14/0.39  cnf(c_0_34, plain, (k7_subset_1(X2,X1,X3)=k4_xboole_0(X1,X3)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.14/0.39  cnf(c_0_35, plain, (k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,k5_xboole_0(X1,k5_xboole_0(X2,X2)))))=k1_xboole_0|~r1_tarski(X2,X1)), inference(spm,[status(thm)],[c_0_29, c_0_30])).
% 0.14/0.39  cnf(c_0_36, plain, (k5_xboole_0(X1,k1_xboole_0)=X1), inference(split_conjunct,[status(thm)],[c_0_31]), ['final']).
% 0.14/0.39  cnf(c_0_37, plain, (k1_setfam_1(k2_tarski(X1,X1))=X1), inference(rw,[status(thm)],[c_0_32, c_0_19]), ['final']).
% 0.14/0.39  cnf(c_0_38, plain, (r1_tarski(k1_xboole_0,X1)), inference(split_conjunct,[status(thm)],[c_0_33]), ['final']).
% 0.14/0.39  fof(c_0_39, plain, ![X9, X10]:(~r2_xboole_0(X9,X10)|k4_xboole_0(X10,X9)!=k1_xboole_0), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t105_xboole_1])])).
% 0.14/0.39  cnf(c_0_40, plain, (k7_subset_1(X2,X1,X3)=k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X3)))|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(rw,[status(thm)],[c_0_34, c_0_22]), ['final']).
% 0.14/0.39  cnf(c_0_41, plain, (k5_xboole_0(X1,X1)=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35, c_0_36]), c_0_36]), c_0_37]), c_0_38])]), ['final']).
% 0.14/0.39  fof(c_0_42, negated_conjecture, ~(![X1]:(l1_struct_0(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>(~((X2!=k2_struct_0(X1)&k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X2)=k1_xboole_0))&~((k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X2)!=k1_xboole_0&X2=k2_struct_0(X1))))))), inference(assume_negation,[status(cth)],[t23_pre_topc])).
% 0.14/0.39  cnf(c_0_43, plain, (~r2_xboole_0(X1,X2)|k4_xboole_0(X2,X1)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.14/0.39  cnf(c_0_44, plain, (k7_subset_1(X1,X2,X3)=k1_xboole_0|~m1_subset_1(X2,k1_zfmisc_1(X1))|~r1_tarski(X2,X3)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_30]), c_0_41]), ['final']).
% 0.14/0.39  fof(c_0_45, plain, ![X26, X27]:((~m1_subset_1(X26,k1_zfmisc_1(X27))|r1_tarski(X26,X27))&(~r1_tarski(X26,X27)|m1_subset_1(X26,k1_zfmisc_1(X27)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).
% 0.14/0.39  fof(c_0_46, negated_conjecture, (l1_struct_0(esk1_0)&(m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0)))&(((k7_subset_1(u1_struct_0(esk1_0),k2_struct_0(esk1_0),esk2_0)!=k1_xboole_0|esk2_0!=k2_struct_0(esk1_0))&(esk2_0=k2_struct_0(esk1_0)|esk2_0!=k2_struct_0(esk1_0)))&((k7_subset_1(u1_struct_0(esk1_0),k2_struct_0(esk1_0),esk2_0)!=k1_xboole_0|k7_subset_1(u1_struct_0(esk1_0),k2_struct_0(esk1_0),esk2_0)=k1_xboole_0)&(esk2_0=k2_struct_0(esk1_0)|k7_subset_1(u1_struct_0(esk1_0),k2_struct_0(esk1_0),esk2_0)=k1_xboole_0))))), inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_42])])])])).
% 0.14/0.39  fof(c_0_47, plain, ![X20]:m1_subset_1(k2_subset_1(X20),k1_zfmisc_1(X20)), inference(variable_rename,[status(thm)],[dt_k2_subset_1])).
% 0.14/0.39  fof(c_0_48, plain, ![X19]:k2_subset_1(X19)=X19, inference(variable_rename,[status(thm)],[d4_subset_1])).
% 0.14/0.39  cnf(c_0_49, plain, (k5_xboole_0(X2,k1_setfam_1(k2_tarski(X2,X1)))!=k1_xboole_0|~r2_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_43, c_0_22]), ['final']).
% 0.14/0.39  cnf(c_0_50, plain, (k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2)))=k1_xboole_0|~m1_subset_1(X1,k1_zfmisc_1(X3))|~r1_tarski(X1,X2)), inference(spm,[status(thm)],[c_0_40, c_0_44])).
% 0.14/0.39  cnf(c_0_51, plain, (m1_subset_1(X1,k1_zfmisc_1(X2))|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_45]), ['final']).
% 0.14/0.39  cnf(c_0_52, plain, (r1_tarski(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_45]), ['final']).
% 0.14/0.39  cnf(c_0_53, negated_conjecture, (m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_46]), ['final']).
% 0.14/0.39  cnf(c_0_54, plain, (m1_subset_1(k2_subset_1(X1),k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_47])).
% 0.14/0.39  cnf(c_0_55, plain, (k2_subset_1(X1)=X1), inference(split_conjunct,[status(thm)],[c_0_48])).
% 0.14/0.39  cnf(c_0_56, plain, (k5_xboole_0(X1,X1)!=k1_xboole_0|~r1_tarski(X1,X2)|~r2_xboole_0(X2,X1)), inference(spm,[status(thm)],[c_0_49, c_0_30])).
% 0.14/0.39  cnf(c_0_57, plain, (k5_xboole_0(k5_xboole_0(X1,k5_xboole_0(X2,k1_setfam_1(k2_tarski(X2,X1)))),k5_xboole_0(X1,k5_xboole_0(X2,k1_setfam_1(k2_tarski(X2,X1)))))=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29, c_0_29]), c_0_36]), c_0_37])).
% 0.14/0.39  cnf(c_0_58, plain, (k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2)))=k1_xboole_0|~r1_tarski(X1,X2)|~r1_tarski(X1,X3)), inference(spm,[status(thm)],[c_0_50, c_0_51])).
% 0.14/0.39  cnf(c_0_59, negated_conjecture, (r1_tarski(esk2_0,u1_struct_0(esk1_0))), inference(spm,[status(thm)],[c_0_52, c_0_53]), ['final']).
% 0.14/0.39  cnf(c_0_60, plain, (m1_subset_1(X1,k1_zfmisc_1(X1))), inference(rw,[status(thm)],[c_0_54, c_0_55]), ['final']).
% 0.14/0.39  cnf(c_0_61, plain, (~r1_tarski(k5_xboole_0(X1,k5_xboole_0(X2,k1_setfam_1(k2_tarski(X2,X1)))),X3)|~r2_xboole_0(X3,k5_xboole_0(X1,k5_xboole_0(X2,k1_setfam_1(k2_tarski(X2,X1)))))), inference(spm,[status(thm)],[c_0_56, c_0_57])).
% 0.14/0.39  fof(c_0_62, plain, ![X4, X5]:(((r1_tarski(X4,X5)|~r2_xboole_0(X4,X5))&(X4!=X5|~r2_xboole_0(X4,X5)))&(~r1_tarski(X4,X5)|X4=X5|r2_xboole_0(X4,X5))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d8_xboole_0])])])).
% 0.14/0.39  cnf(c_0_63, negated_conjecture, (esk2_0=k2_struct_0(esk1_0)|k7_subset_1(u1_struct_0(esk1_0),k2_struct_0(esk1_0),esk2_0)=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_46]), ['final']).
% 0.14/0.39  cnf(c_0_64, plain, (k7_subset_1(X1,X2,X3)=k7_subset_1(X4,X2,X3)|~m1_subset_1(X2,k1_zfmisc_1(X1))|~m1_subset_1(X2,k1_zfmisc_1(X4))), inference(spm,[status(thm)],[c_0_40, c_0_40]), ['final']).
% 0.14/0.39  cnf(c_0_65, negated_conjecture, (k5_xboole_0(esk2_0,k1_setfam_1(k2_tarski(esk2_0,u1_struct_0(esk1_0))))=k1_xboole_0|~r1_tarski(esk2_0,X1)), inference(spm,[status(thm)],[c_0_58, c_0_59])).
% 0.14/0.39  cnf(c_0_66, plain, (r1_tarski(X1,X1)), inference(spm,[status(thm)],[c_0_52, c_0_60]), ['final']).
% 0.14/0.39  cnf(c_0_67, negated_conjecture, (k7_subset_1(u1_struct_0(esk1_0),k2_struct_0(esk1_0),esk2_0)!=k1_xboole_0|esk2_0!=k2_struct_0(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_46]), ['final']).
% 0.14/0.39  cnf(c_0_68, plain, (~r1_tarski(k5_xboole_0(X1,k5_xboole_0(X1,X1)),X2)|~r2_xboole_0(X2,k5_xboole_0(X1,k5_xboole_0(X1,X1)))), inference(spm,[status(thm)],[c_0_61, c_0_37])).
% 0.14/0.39  cnf(c_0_69, plain, (X1=X2|r2_xboole_0(X1,X2)|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_62]), ['final']).
% 0.14/0.39  cnf(c_0_70, plain, (k7_subset_1(X1,X2,X3)!=k1_xboole_0|~m1_subset_1(X2,k1_zfmisc_1(X1))|~r2_xboole_0(X3,X2)), inference(spm,[status(thm)],[c_0_49, c_0_40]), ['final']).
% 0.14/0.39  cnf(c_0_71, plain, (k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,k5_xboole_0(X1,k7_subset_1(X2,X3,X1)))))=k1_xboole_0|~m1_subset_1(X3,k1_zfmisc_1(X2))), inference(spm,[status(thm)],[c_0_29, c_0_40]), ['final']).
% 0.14/0.39  cnf(c_0_72, negated_conjecture, (k7_subset_1(X1,k2_struct_0(esk1_0),esk2_0)=k1_xboole_0|k2_struct_0(esk1_0)=esk2_0|~m1_subset_1(k2_struct_0(esk1_0),k1_zfmisc_1(u1_struct_0(esk1_0)))|~m1_subset_1(k2_struct_0(esk1_0),k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_63, c_0_64]), ['final']).
% 0.14/0.39  cnf(c_0_73, negated_conjecture, (k5_xboole_0(esk2_0,k1_setfam_1(k2_tarski(esk2_0,u1_struct_0(esk1_0))))=k1_xboole_0), inference(spm,[status(thm)],[c_0_65, c_0_66]), ['final']).
% 0.14/0.39  cnf(c_0_74, plain, (k5_xboole_0(k1_xboole_0,k1_setfam_1(k2_tarski(k1_xboole_0,X1)))=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_58, c_0_38]), c_0_38])]), ['final']).
% 0.14/0.39  cnf(c_0_75, negated_conjecture, (k2_struct_0(esk1_0)!=esk2_0|~m1_subset_1(k2_struct_0(esk1_0),k1_zfmisc_1(u1_struct_0(esk1_0)))|~r1_tarski(k2_struct_0(esk1_0),esk2_0)), inference(spm,[status(thm)],[c_0_67, c_0_44]), ['final']).
% 0.14/0.39  cnf(c_0_76, plain, (k7_subset_1(X1,X2,X2)=k5_xboole_0(X2,X2)|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_40, c_0_37])).
% 0.14/0.39  cnf(c_0_77, plain, (~r1_tarski(X1,X2)|~r2_xboole_0(X2,X1)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_68, c_0_41]), c_0_36]), c_0_41]), c_0_36]), ['final']).
% 0.14/0.39  cnf(c_0_78, plain, (k1_xboole_0=X1|r2_xboole_0(k1_xboole_0,X1)), inference(spm,[status(thm)],[c_0_69, c_0_38]), ['final']).
% 0.14/0.39  cnf(c_0_79, negated_conjecture, (u1_struct_0(esk1_0)=esk2_0|r2_xboole_0(esk2_0,u1_struct_0(esk1_0))), inference(spm,[status(thm)],[c_0_69, c_0_59]), ['final']).
% 0.14/0.39  cnf(c_0_80, negated_conjecture, (k2_struct_0(esk1_0)=esk2_0|~m1_subset_1(k2_struct_0(esk1_0),k1_zfmisc_1(u1_struct_0(esk1_0)))|~r2_xboole_0(esk2_0,k2_struct_0(esk1_0))), inference(spm,[status(thm)],[c_0_70, c_0_63]), ['final']).
% 0.14/0.39  cnf(c_0_81, plain, (~r2_xboole_0(k5_xboole_0(X1,k5_xboole_0(X2,k1_setfam_1(k2_tarski(X2,X1)))),X1)), inference(spm,[status(thm)],[c_0_49, c_0_29]), ['final']).
% 0.14/0.39  cnf(c_0_82, plain, (X1!=X2|~r2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_62])).
% 0.14/0.39  cnf(c_0_83, plain, (k7_subset_1(X1,X2,k5_xboole_0(X2,k7_subset_1(X3,X4,X2)))=k1_xboole_0|~m1_subset_1(X2,k1_zfmisc_1(X1))|~m1_subset_1(X4,k1_zfmisc_1(X3))), inference(spm,[status(thm)],[c_0_40, c_0_71]), ['final']).
% 0.14/0.39  cnf(c_0_84, plain, (k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2)))=k1_xboole_0|~r1_tarski(X1,X2)), inference(spm,[status(thm)],[c_0_50, c_0_60]), ['final']).
% 0.14/0.39  cnf(c_0_85, plain, (k7_subset_1(X1,X2,k5_xboole_0(X2,k5_xboole_0(X3,k1_setfam_1(k2_tarski(X3,X2)))))=k1_xboole_0|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_29, c_0_40]), ['final']).
% 0.14/0.39  cnf(c_0_86, negated_conjecture, (k7_subset_1(X1,k2_struct_0(esk1_0),esk2_0)=k1_xboole_0|k2_struct_0(esk1_0)=esk2_0|~m1_subset_1(k2_struct_0(esk1_0),k1_zfmisc_1(X1))|~r1_tarski(k2_struct_0(esk1_0),u1_struct_0(esk1_0))), inference(spm,[status(thm)],[c_0_72, c_0_51]), ['final']).
% 0.14/0.39  cnf(c_0_87, negated_conjecture, (k7_subset_1(X1,k2_struct_0(esk1_0),esk2_0)!=k1_xboole_0|k2_struct_0(esk1_0)!=esk2_0|~m1_subset_1(k2_struct_0(esk1_0),k1_zfmisc_1(u1_struct_0(esk1_0)))|~m1_subset_1(k2_struct_0(esk1_0),k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_67, c_0_64]), ['final']).
% 0.14/0.39  cnf(c_0_88, negated_conjecture, (k7_subset_1(X1,esk2_0,u1_struct_0(esk1_0))=k1_xboole_0|~m1_subset_1(esk2_0,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_40, c_0_73]), ['final']).
% 0.14/0.39  cnf(c_0_89, plain, (k7_subset_1(X1,k1_xboole_0,X2)=k1_xboole_0|~m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_40, c_0_74]), ['final']).
% 0.14/0.39  cnf(c_0_90, negated_conjecture, (k2_struct_0(esk1_0)!=esk2_0|~r1_tarski(k2_struct_0(esk1_0),u1_struct_0(esk1_0))|~r1_tarski(k2_struct_0(esk1_0),esk2_0)), inference(spm,[status(thm)],[c_0_75, c_0_51]), ['final']).
% 0.14/0.39  cnf(c_0_91, plain, (k7_subset_1(X1,X2,X2)=k1_xboole_0|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(rw,[status(thm)],[c_0_76, c_0_41]), ['final']).
% 0.14/0.39  cnf(c_0_92, plain, (k1_xboole_0=X1|~r1_tarski(X1,k1_xboole_0)), inference(spm,[status(thm)],[c_0_77, c_0_78]), ['final']).
% 0.14/0.39  cnf(c_0_93, negated_conjecture, (u1_struct_0(esk1_0)=esk2_0|~r1_tarski(u1_struct_0(esk1_0),esk2_0)), inference(spm,[status(thm)],[c_0_77, c_0_79]), ['final']).
% 0.14/0.39  cnf(c_0_94, negated_conjecture, (k2_struct_0(esk1_0)=esk2_0|~r1_tarski(k2_struct_0(esk1_0),u1_struct_0(esk1_0))|~r2_xboole_0(esk2_0,k2_struct_0(esk1_0))), inference(spm,[status(thm)],[c_0_80, c_0_51]), ['final']).
% 0.14/0.39  cnf(c_0_95, plain, (~m1_subset_1(X1,k1_zfmisc_1(X2))|~r2_xboole_0(k5_xboole_0(X3,k7_subset_1(X2,X1,X3)),X3)), inference(spm,[status(thm)],[c_0_81, c_0_40]), ['final']).
% 0.14/0.39  cnf(c_0_96, plain, (r1_tarski(X1,X2)|~r2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_62]), ['final']).
% 0.14/0.39  cnf(c_0_97, negated_conjecture, (~r2_xboole_0(u1_struct_0(esk1_0),esk2_0)), inference(spm,[status(thm)],[c_0_49, c_0_73]), ['final']).
% 0.14/0.39  cnf(c_0_98, plain, (~r2_xboole_0(X1,k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_56, c_0_36]), c_0_38])]), ['final']).
% 0.14/0.39  cnf(c_0_99, plain, (~r2_xboole_0(X1,X1)), inference(er,[status(thm)],[c_0_82]), ['final']).
% 0.14/0.39  cnf(c_0_100, negated_conjecture, (l1_struct_0(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_46]), ['final']).
% 0.14/0.39  # SZS output end Saturation
% 0.14/0.39  # Proof object total steps             : 101
% 0.14/0.39  # Proof object clause steps            : 70
% 0.14/0.39  # Proof object formula steps           : 31
% 0.14/0.39  # Proof object conjectures             : 21
% 0.14/0.39  # Proof object clause conjectures      : 18
% 0.14/0.39  # Proof object formula conjectures     : 3
% 0.14/0.39  # Proof object initial clauses used    : 21
% 0.14/0.39  # Proof object initial formulas used   : 15
% 0.14/0.39  # Proof object generating inferences   : 38
% 0.14/0.39  # Proof object simplifying inferences  : 26
% 0.14/0.39  # Parsed axioms                        : 15
% 0.14/0.39  # Removed by relevancy pruning/SinE    : 0
% 0.14/0.39  # Initial clauses                      : 23
% 0.14/0.39  # Removed in clause preprocessing      : 6
% 0.14/0.39  # Initial clauses in saturation        : 17
% 0.14/0.39  # Processed clauses                    : 172
% 0.14/0.39  # ...of these trivial                  : 1
% 0.14/0.39  # ...subsumed                          : 89
% 0.14/0.39  # ...remaining for further processing  : 82
% 0.14/0.39  # Other redundant clauses eliminated   : 1
% 0.14/0.39  # Clauses deleted for lack of memory   : 0
% 0.14/0.39  # Backward-subsumed                    : 5
% 0.14/0.39  # Backward-rewritten                   : 11
% 0.14/0.39  # Generated clauses                    : 199
% 0.14/0.39  # ...of the previous two non-trivial   : 166
% 0.14/0.39  # Contextual simplify-reflections      : 0
% 0.14/0.39  # Paramodulations                      : 198
% 0.14/0.39  # Factorizations                       : 0
% 0.14/0.39  # Equation resolutions                 : 1
% 0.14/0.39  # Propositional unsat checks           : 0
% 0.14/0.39  #    Propositional check models        : 0
% 0.14/0.39  #    Propositional check unsatisfiable : 0
% 0.14/0.39  #    Propositional clauses             : 0
% 0.14/0.39  #    Propositional clauses after purity: 0
% 0.14/0.39  #    Propositional unsat core size     : 0
% 0.14/0.39  #    Propositional preprocessing time  : 0.000
% 0.14/0.39  #    Propositional encoding time       : 0.000
% 0.14/0.39  #    Propositional solver time         : 0.000
% 0.14/0.39  #    Success case prop preproc time    : 0.000
% 0.14/0.39  #    Success case prop encoding time   : 0.000
% 0.14/0.39  #    Success case prop solver time     : 0.000
% 0.14/0.39  # Current number of processed clauses  : 48
% 0.14/0.39  #    Positive orientable unit clauses  : 12
% 0.14/0.39  #    Positive unorientable unit clauses: 0
% 0.14/0.39  #    Negative unit clauses             : 4
% 0.14/0.39  #    Non-unit-clauses                  : 32
% 0.14/0.39  # Current number of unprocessed clauses: 0
% 0.14/0.39  # ...number of literals in the above   : 0
% 0.14/0.39  # Current number of archived formulas  : 0
% 0.14/0.39  # Current number of archived clauses   : 37
% 0.14/0.39  # Clause-clause subsumption calls (NU) : 407
% 0.14/0.39  # Rec. Clause-clause subsumption calls : 264
% 0.14/0.39  # Non-unit clause-clause subsumptions  : 61
% 0.14/0.39  # Unit Clause-clause subsumption calls : 20
% 0.14/0.39  # Rewrite failures with RHS unbound    : 0
% 0.14/0.39  # BW rewrite match attempts            : 29
% 0.14/0.39  # BW rewrite match successes           : 4
% 0.14/0.39  # Condensation attempts                : 0
% 0.14/0.39  # Condensation successes               : 0
% 0.14/0.39  # Termbank termtop insertions          : 3972
% 0.14/0.39  
% 0.14/0.39  # -------------------------------------------------
% 0.14/0.39  # User time                : 0.030 s
% 0.14/0.39  # System time              : 0.007 s
% 0.14/0.39  # Total time               : 0.038 s
% 0.14/0.39  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
