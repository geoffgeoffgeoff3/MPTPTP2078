%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n025.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:10:48 EST 2020

% Result     : Theorem 0.20s
% Output     : CNFRefutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :  109 (6209 expanded)
%              Number of clauses        :   84 (3083 expanded)
%              Number of leaves         :   12 (1542 expanded)
%              Depth                    :   27
%              Number of atoms          :  237 (12397 expanded)
%              Number of equality atoms :   29 (2753 expanded)
%              Maximal formula depth    :    9 (   3 average)
%              Maximal clause size      :    7 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t44_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( r1_tarski(k4_xboole_0(X1,X2),X3)
     => r1_tarski(X1,k2_xboole_0(X2,X3)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t44_xboole_1)).

fof(t7_xboole_1,axiom,(
    ! [X1,X2] : r1_tarski(X1,k2_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_xboole_1)).

fof(t12_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
     => k2_xboole_0(X1,X2) = X2 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_xboole_1)).

fof(commutativity_k2_xboole_0,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_xboole_0)).

fof(t43_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( r1_tarski(X1,k2_xboole_0(X2,X3))
     => r1_tarski(k4_xboole_0(X1,X2),X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t43_xboole_1)).

fof(t49_tops_1,conjecture,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ! [X3] :
              ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
             => r1_tarski(k4_subset_1(u1_struct_0(X1),k1_tops_1(X1,X2),k1_tops_1(X1,X3)),k1_tops_1(X1,k4_subset_1(u1_struct_0(X1),X2,X3))) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t49_tops_1)).

fof(t3_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X2))
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_subset)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).

fof(redefinition_k4_subset_1,axiom,(
    ! [X1,X2,X3] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(X1))
        & m1_subset_1(X3,k1_zfmisc_1(X1)) )
     => k4_subset_1(X1,X2,X3) = k2_xboole_0(X2,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k4_subset_1)).

fof(dt_k4_subset_1,axiom,(
    ! [X1,X2,X3] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(X1))
        & m1_subset_1(X3,k1_zfmisc_1(X1)) )
     => m1_subset_1(k4_subset_1(X1,X2,X3),k1_zfmisc_1(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k4_subset_1)).

fof(t48_tops_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ! [X3] :
              ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
             => ( r1_tarski(X2,X3)
               => r1_tarski(k1_tops_1(X1,X2),k1_tops_1(X1,X3)) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t48_tops_1)).

fof(t44_tops_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => r1_tarski(k1_tops_1(X1,X2),X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t44_tops_1)).

fof(c_0_12,plain,(
    ! [X13,X14,X15] :
      ( ~ r1_tarski(k4_xboole_0(X13,X14),X15)
      | r1_tarski(X13,k2_xboole_0(X14,X15)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t44_xboole_1])])).

fof(c_0_13,plain,(
    ! [X16,X17] : r1_tarski(X16,k2_xboole_0(X16,X17)) ),
    inference(variable_rename,[status(thm)],[t7_xboole_1])).

fof(c_0_14,plain,(
    ! [X8,X9] :
      ( ~ r1_tarski(X8,X9)
      | k2_xboole_0(X8,X9) = X9 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t12_xboole_1])])).

fof(c_0_15,plain,(
    ! [X4,X5] : k2_xboole_0(X4,X5) = k2_xboole_0(X5,X4) ),
    inference(variable_rename,[status(thm)],[commutativity_k2_xboole_0])).

cnf(c_0_16,plain,
    ( r1_tarski(X1,k2_xboole_0(X2,X3))
    | ~ r1_tarski(k4_xboole_0(X1,X2),X3) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_17,plain,
    ( r1_tarski(X1,k2_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_18,plain,
    ( k2_xboole_0(X1,X2) = X2
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_19,plain,
    ( k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_20,plain,
    ( r1_tarski(X1,k2_xboole_0(X2,k2_xboole_0(k4_xboole_0(X1,X2),X3))) ),
    inference(spm,[status(thm)],[c_0_16,c_0_17])).

cnf(c_0_21,plain,
    ( k2_xboole_0(X1,X2) = X1
    | ~ r1_tarski(X2,X1) ),
    inference(spm,[status(thm)],[c_0_18,c_0_19])).

cnf(c_0_22,plain,
    ( r1_tarski(X1,X2)
    | ~ r1_tarski(k2_xboole_0(k4_xboole_0(X1,X2),X3),X2) ),
    inference(spm,[status(thm)],[c_0_20,c_0_21])).

fof(c_0_23,plain,(
    ! [X10,X11,X12] :
      ( ~ r1_tarski(X10,k2_xboole_0(X11,X12))
      | r1_tarski(k4_xboole_0(X10,X11),X12) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t43_xboole_1])])).

fof(c_0_24,negated_conjecture,(
    ~ ! [X1] :
        ( l1_pre_topc(X1)
       => ! [X2] :
            ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
           => ! [X3] :
                ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
               => r1_tarski(k4_subset_1(u1_struct_0(X1),k1_tops_1(X1,X2),k1_tops_1(X1,X3)),k1_tops_1(X1,k4_subset_1(u1_struct_0(X1),X2,X3))) ) ) ) ),
    inference(assume_negation,[status(cth)],[t49_tops_1])).

cnf(c_0_25,plain,
    ( r1_tarski(X1,X2)
    | ~ r1_tarski(k4_xboole_0(X1,X2),X3)
    | ~ r1_tarski(X3,X2) ),
    inference(spm,[status(thm)],[c_0_22,c_0_18])).

cnf(c_0_26,plain,
    ( r1_tarski(k4_xboole_0(X1,X2),X3)
    | ~ r1_tarski(X1,k2_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

fof(c_0_27,plain,(
    ! [X24,X25] :
      ( ( ~ m1_subset_1(X24,k1_zfmisc_1(X25))
        | r1_tarski(X24,X25) )
      & ( ~ r1_tarski(X24,X25)
        | m1_subset_1(X24,k1_zfmisc_1(X25)) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).

fof(c_0_28,negated_conjecture,
    ( l1_pre_topc(esk1_0)
    & m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0)))
    & m1_subset_1(esk3_0,k1_zfmisc_1(u1_struct_0(esk1_0)))
    & ~ r1_tarski(k4_subset_1(u1_struct_0(esk1_0),k1_tops_1(esk1_0,esk2_0),k1_tops_1(esk1_0,esk3_0)),k1_tops_1(esk1_0,k4_subset_1(u1_struct_0(esk1_0),esk2_0,esk3_0))) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_24])])])).

cnf(c_0_29,plain,
    ( r1_tarski(X1,X2)
    | ~ r1_tarski(X1,k2_xboole_0(X2,X3))
    | ~ r1_tarski(X3,X2) ),
    inference(spm,[status(thm)],[c_0_25,c_0_26])).

cnf(c_0_30,plain,
    ( r1_tarski(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_31,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

fof(c_0_32,plain,(
    ! [X6,X7] :
      ( ( r1_tarski(X6,X7)
        | X6 != X7 )
      & ( r1_tarski(X7,X6)
        | X6 != X7 )
      & ( ~ r1_tarski(X6,X7)
        | ~ r1_tarski(X7,X6)
        | X6 = X7 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

cnf(c_0_33,plain,
    ( r1_tarski(X1,X2)
    | ~ r1_tarski(X1,X3)
    | ~ r1_tarski(X3,X2)
    | ~ r1_tarski(X2,X3) ),
    inference(spm,[status(thm)],[c_0_29,c_0_18])).

cnf(c_0_34,negated_conjecture,
    ( r1_tarski(esk3_0,u1_struct_0(esk1_0)) ),
    inference(spm,[status(thm)],[c_0_30,c_0_31])).

cnf(c_0_35,plain,
    ( r1_tarski(X1,X2)
    | X2 != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

cnf(c_0_36,negated_conjecture,
    ( r1_tarski(esk3_0,X1)
    | ~ r1_tarski(u1_struct_0(esk1_0),X1)
    | ~ r1_tarski(X1,u1_struct_0(esk1_0)) ),
    inference(spm,[status(thm)],[c_0_33,c_0_34])).

cnf(c_0_37,plain,
    ( r1_tarski(X1,X1) ),
    inference(er,[status(thm)],[c_0_35])).

cnf(c_0_38,plain,
    ( r1_tarski(k4_xboole_0(X1,X2),X3)
    | ~ r1_tarski(X1,k2_xboole_0(X2,k2_xboole_0(X3,X4)))
    | ~ r1_tarski(X4,X3) ),
    inference(spm,[status(thm)],[c_0_29,c_0_26])).

cnf(c_0_39,negated_conjecture,
    ( r1_tarski(esk3_0,k2_xboole_0(u1_struct_0(esk1_0),X1))
    | ~ r1_tarski(k2_xboole_0(u1_struct_0(esk1_0),X1),u1_struct_0(esk1_0)) ),
    inference(spm,[status(thm)],[c_0_36,c_0_17])).

cnf(c_0_40,plain,
    ( r1_tarski(k2_xboole_0(X1,X2),X1)
    | ~ r1_tarski(X2,X1) ),
    inference(spm,[status(thm)],[c_0_29,c_0_37])).

cnf(c_0_41,plain,
    ( r1_tarski(k4_xboole_0(X1,X1),X2)
    | ~ r1_tarski(X3,X2) ),
    inference(spm,[status(thm)],[c_0_38,c_0_17])).

cnf(c_0_42,negated_conjecture,
    ( r1_tarski(esk3_0,k2_xboole_0(u1_struct_0(esk1_0),X1))
    | ~ r1_tarski(X1,u1_struct_0(esk1_0)) ),
    inference(spm,[status(thm)],[c_0_39,c_0_40])).

cnf(c_0_43,plain,
    ( X1 = X2
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

cnf(c_0_44,plain,
    ( r1_tarski(k4_xboole_0(X1,X1),X2) ),
    inference(spm,[status(thm)],[c_0_41,c_0_37])).

cnf(c_0_45,negated_conjecture,
    ( m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_46,plain,
    ( r1_tarski(X1,k2_xboole_0(k4_xboole_0(X1,X2),X3))
    | ~ r1_tarski(X2,k2_xboole_0(k4_xboole_0(X1,X2),X3)) ),
    inference(spm,[status(thm)],[c_0_20,c_0_18])).

cnf(c_0_47,negated_conjecture,
    ( r1_tarski(esk3_0,k2_xboole_0(X1,u1_struct_0(esk1_0)))
    | ~ r1_tarski(X1,u1_struct_0(esk1_0)) ),
    inference(spm,[status(thm)],[c_0_42,c_0_19])).

cnf(c_0_48,plain,
    ( X1 = k4_xboole_0(X2,X2)
    | ~ r1_tarski(X1,k4_xboole_0(X2,X2)) ),
    inference(spm,[status(thm)],[c_0_43,c_0_44])).

cnf(c_0_49,negated_conjecture,
    ( r1_tarski(esk2_0,u1_struct_0(esk1_0)) ),
    inference(spm,[status(thm)],[c_0_30,c_0_45])).

cnf(c_0_50,plain,
    ( X1 = k4_xboole_0(X2,X3)
    | ~ r1_tarski(X1,k4_xboole_0(X2,X3))
    | ~ r1_tarski(X2,k2_xboole_0(X3,X1)) ),
    inference(spm,[status(thm)],[c_0_43,c_0_26])).

cnf(c_0_51,negated_conjecture,
    ( r1_tarski(X1,k2_xboole_0(u1_struct_0(esk1_0),k4_xboole_0(X1,esk3_0)))
    | ~ r1_tarski(k4_xboole_0(X1,esk3_0),u1_struct_0(esk1_0)) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_46,c_0_47]),c_0_19])).

cnf(c_0_52,plain,
    ( k4_xboole_0(X1,X1) = k4_xboole_0(X2,X2) ),
    inference(spm,[status(thm)],[c_0_48,c_0_44])).

cnf(c_0_53,negated_conjecture,
    ( r1_tarski(esk2_0,X1)
    | ~ r1_tarski(u1_struct_0(esk1_0),X1)
    | ~ r1_tarski(X1,u1_struct_0(esk1_0)) ),
    inference(spm,[status(thm)],[c_0_33,c_0_49])).

cnf(c_0_54,plain,
    ( r1_tarski(X1,k2_xboole_0(X2,k4_xboole_0(X1,X2))) ),
    inference(spm,[status(thm)],[c_0_16,c_0_37])).

cnf(c_0_55,plain,
    ( k4_xboole_0(X1,X2) = k4_xboole_0(X3,X4)
    | ~ r1_tarski(X3,k2_xboole_0(X4,k4_xboole_0(X1,X2)))
    | ~ r1_tarski(X1,k2_xboole_0(X2,k4_xboole_0(X3,X4))) ),
    inference(spm,[status(thm)],[c_0_50,c_0_26])).

cnf(c_0_56,negated_conjecture,
    ( r1_tarski(esk3_0,k2_xboole_0(u1_struct_0(esk1_0),k4_xboole_0(X1,X1))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51,c_0_52]),c_0_44])])).

fof(c_0_57,plain,(
    ! [X21,X22,X23] :
      ( ~ m1_subset_1(X22,k1_zfmisc_1(X21))
      | ~ m1_subset_1(X23,k1_zfmisc_1(X21))
      | k4_subset_1(X21,X22,X23) = k2_xboole_0(X22,X23) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k4_subset_1])])).

fof(c_0_58,plain,(
    ! [X18,X19,X20] :
      ( ~ m1_subset_1(X19,k1_zfmisc_1(X18))
      | ~ m1_subset_1(X20,k1_zfmisc_1(X18))
      | m1_subset_1(k4_subset_1(X18,X19,X20),k1_zfmisc_1(X18)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k4_subset_1])])).

cnf(c_0_59,negated_conjecture,
    ( r1_tarski(esk2_0,k2_xboole_0(X1,k4_xboole_0(u1_struct_0(esk1_0),X1)))
    | ~ r1_tarski(k2_xboole_0(X1,k4_xboole_0(u1_struct_0(esk1_0),X1)),u1_struct_0(esk1_0)) ),
    inference(spm,[status(thm)],[c_0_53,c_0_54])).

cnf(c_0_60,negated_conjecture,
    ( k4_xboole_0(X1,X1) = k4_xboole_0(esk3_0,u1_struct_0(esk1_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55,c_0_56]),c_0_17])])).

cnf(c_0_61,negated_conjecture,
    ( ~ r1_tarski(k4_subset_1(u1_struct_0(esk1_0),k1_tops_1(esk1_0,esk2_0),k1_tops_1(esk1_0,esk3_0)),k1_tops_1(esk1_0,k4_subset_1(u1_struct_0(esk1_0),esk2_0,esk3_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_62,plain,
    ( k4_subset_1(X2,X1,X3) = k2_xboole_0(X1,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_57])).

cnf(c_0_63,plain,
    ( m1_subset_1(k4_subset_1(X2,X1,X3),k1_zfmisc_1(X2))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_58])).

cnf(c_0_64,negated_conjecture,
    ( r1_tarski(esk2_0,k2_xboole_0(u1_struct_0(esk1_0),k4_xboole_0(esk3_0,u1_struct_0(esk1_0)))) ),
    inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_59,c_0_40]),c_0_44])]),c_0_60])).

cnf(c_0_65,negated_conjecture,
    ( r1_tarski(esk3_0,k2_xboole_0(u1_struct_0(esk1_0),X1)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_16,c_0_60]),c_0_44])])).

cnf(c_0_66,negated_conjecture,
    ( ~ r1_tarski(k4_subset_1(u1_struct_0(esk1_0),k1_tops_1(esk1_0,esk2_0),k1_tops_1(esk1_0,esk3_0)),k1_tops_1(esk1_0,k2_xboole_0(esk2_0,esk3_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_61,c_0_62]),c_0_31]),c_0_45])])).

cnf(c_0_67,plain,
    ( r1_tarski(k4_subset_1(X1,X2,X3),X1)
    | ~ m1_subset_1(X3,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_30,c_0_63])).

cnf(c_0_68,negated_conjecture,
    ( r1_tarski(k4_xboole_0(esk3_0,u1_struct_0(esk1_0)),X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26,c_0_60]),c_0_17])])).

cnf(c_0_69,negated_conjecture,
    ( k4_xboole_0(esk3_0,u1_struct_0(esk1_0)) = k4_xboole_0(esk2_0,u1_struct_0(esk1_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55,c_0_64]),c_0_65])])).

cnf(c_0_70,negated_conjecture,
    ( ~ m1_subset_1(k1_tops_1(esk1_0,esk3_0),k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ m1_subset_1(k1_tops_1(esk1_0,esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ r1_tarski(k2_xboole_0(k1_tops_1(esk1_0,esk2_0),k1_tops_1(esk1_0,esk3_0)),k1_tops_1(esk1_0,k2_xboole_0(esk2_0,esk3_0))) ),
    inference(spm,[status(thm)],[c_0_66,c_0_62])).

cnf(c_0_71,plain,
    ( r1_tarski(k2_xboole_0(X1,X2),X3)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X3))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X3)) ),
    inference(spm,[status(thm)],[c_0_67,c_0_62])).

cnf(c_0_72,plain,
    ( r1_tarski(X1,k4_xboole_0(X1,X2))
    | ~ r1_tarski(X2,k4_xboole_0(X1,X2)) ),
    inference(spm,[status(thm)],[c_0_54,c_0_18])).

cnf(c_0_73,negated_conjecture,
    ( r1_tarski(k4_xboole_0(esk2_0,u1_struct_0(esk1_0)),X1) ),
    inference(rw,[status(thm)],[c_0_68,c_0_69])).

cnf(c_0_74,negated_conjecture,
    ( ~ m1_subset_1(k1_tops_1(esk1_0,esk3_0),k1_zfmisc_1(k1_tops_1(esk1_0,k2_xboole_0(esk2_0,esk3_0))))
    | ~ m1_subset_1(k1_tops_1(esk1_0,esk2_0),k1_zfmisc_1(k1_tops_1(esk1_0,k2_xboole_0(esk2_0,esk3_0))))
    | ~ m1_subset_1(k1_tops_1(esk1_0,esk3_0),k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ m1_subset_1(k1_tops_1(esk1_0,esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(spm,[status(thm)],[c_0_70,c_0_71])).

cnf(c_0_75,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_76,negated_conjecture,
    ( r1_tarski(X1,k4_xboole_0(X1,k4_xboole_0(esk2_0,u1_struct_0(esk1_0)))) ),
    inference(spm,[status(thm)],[c_0_72,c_0_73])).

cnf(c_0_77,plain,
    ( r1_tarski(X1,k2_xboole_0(X2,X1)) ),
    inference(spm,[status(thm)],[c_0_17,c_0_19])).

cnf(c_0_78,negated_conjecture,
    ( ~ m1_subset_1(k1_tops_1(esk1_0,esk2_0),k1_zfmisc_1(k1_tops_1(esk1_0,k2_xboole_0(esk2_0,esk3_0))))
    | ~ m1_subset_1(k1_tops_1(esk1_0,esk3_0),k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ m1_subset_1(k1_tops_1(esk1_0,esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ r1_tarski(k1_tops_1(esk1_0,esk3_0),k1_tops_1(esk1_0,k2_xboole_0(esk2_0,esk3_0))) ),
    inference(spm,[status(thm)],[c_0_74,c_0_75])).

fof(c_0_79,plain,(
    ! [X28,X29,X30] :
      ( ~ l1_pre_topc(X28)
      | ~ m1_subset_1(X29,k1_zfmisc_1(u1_struct_0(X28)))
      | ~ m1_subset_1(X30,k1_zfmisc_1(u1_struct_0(X28)))
      | ~ r1_tarski(X29,X30)
      | r1_tarski(k1_tops_1(X28,X29),k1_tops_1(X28,X30)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t48_tops_1])])])).

cnf(c_0_80,negated_conjecture,
    ( k4_xboole_0(X1,k4_xboole_0(esk2_0,u1_struct_0(esk1_0))) = X1 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50,c_0_76]),c_0_77])])).

cnf(c_0_81,negated_conjecture,
    ( k4_xboole_0(X1,X1) = k4_xboole_0(esk2_0,u1_struct_0(esk1_0)) ),
    inference(rw,[status(thm)],[c_0_60,c_0_69])).

cnf(c_0_82,negated_conjecture,
    ( ~ m1_subset_1(k1_tops_1(esk1_0,esk3_0),k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ m1_subset_1(k1_tops_1(esk1_0,esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ r1_tarski(k1_tops_1(esk1_0,esk3_0),k1_tops_1(esk1_0,k2_xboole_0(esk2_0,esk3_0)))
    | ~ r1_tarski(k1_tops_1(esk1_0,esk2_0),k1_tops_1(esk1_0,k2_xboole_0(esk2_0,esk3_0))) ),
    inference(spm,[status(thm)],[c_0_78,c_0_75])).

cnf(c_0_83,plain,
    ( r1_tarski(k1_tops_1(X1,X2),k1_tops_1(X1,X3))
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r1_tarski(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_79])).

cnf(c_0_84,negated_conjecture,
    ( l1_pre_topc(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_85,negated_conjecture,
    ( k4_xboole_0(X1,k4_xboole_0(X2,X2)) = X1 ),
    inference(spm,[status(thm)],[c_0_80,c_0_81])).

cnf(c_0_86,negated_conjecture,
    ( ~ m1_subset_1(k1_tops_1(esk1_0,esk3_0),k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ m1_subset_1(k1_tops_1(esk1_0,esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ m1_subset_1(k2_xboole_0(esk2_0,esk3_0),k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ r1_tarski(k1_tops_1(esk1_0,esk2_0),k1_tops_1(esk1_0,k2_xboole_0(esk2_0,esk3_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_82,c_0_83]),c_0_84]),c_0_31]),c_0_77])])).

cnf(c_0_87,negated_conjecture,
    ( X1 = X2
    | ~ r1_tarski(X2,k2_xboole_0(k4_xboole_0(X3,X3),X1))
    | ~ r1_tarski(X1,X2) ),
    inference(spm,[status(thm)],[c_0_50,c_0_85])).

cnf(c_0_88,negated_conjecture,
    ( ~ m1_subset_1(k1_tops_1(esk1_0,esk3_0),k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ m1_subset_1(k1_tops_1(esk1_0,esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ m1_subset_1(k2_xboole_0(esk2_0,esk3_0),k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_86,c_0_83]),c_0_84]),c_0_45]),c_0_17])])).

cnf(c_0_89,negated_conjecture,
    ( k2_xboole_0(k4_xboole_0(X1,X1),X2) = X2 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_87,c_0_37]),c_0_77])])).

cnf(c_0_90,negated_conjecture,
    ( ~ m1_subset_1(k1_tops_1(esk1_0,esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ m1_subset_1(k2_xboole_0(esk2_0,esk3_0),k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ r1_tarski(k1_tops_1(esk1_0,esk3_0),u1_struct_0(esk1_0)) ),
    inference(spm,[status(thm)],[c_0_88,c_0_75])).

cnf(c_0_91,negated_conjecture,
    ( k2_xboole_0(X1,k4_xboole_0(X2,X2)) = X1 ),
    inference(spm,[status(thm)],[c_0_19,c_0_89])).

fof(c_0_92,plain,(
    ! [X26,X27] :
      ( ~ l1_pre_topc(X26)
      | ~ m1_subset_1(X27,k1_zfmisc_1(u1_struct_0(X26)))
      | r1_tarski(k1_tops_1(X26,X27),X27) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t44_tops_1])])])).

cnf(c_0_93,plain,
    ( r1_tarski(X1,k2_xboole_0(X2,k2_xboole_0(X3,k4_xboole_0(X1,X2)))) ),
    inference(spm,[status(thm)],[c_0_16,c_0_77])).

cnf(c_0_94,negated_conjecture,
    ( ~ m1_subset_1(k2_xboole_0(esk2_0,esk3_0),k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ r1_tarski(k1_tops_1(esk1_0,esk3_0),u1_struct_0(esk1_0))
    | ~ r1_tarski(k1_tops_1(esk1_0,esk2_0),u1_struct_0(esk1_0)) ),
    inference(spm,[status(thm)],[c_0_90,c_0_75])).

cnf(c_0_95,plain,
    ( m1_subset_1(k2_xboole_0(X1,X2),k1_zfmisc_1(X3))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X3))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X3)) ),
    inference(spm,[status(thm)],[c_0_63,c_0_62])).

cnf(c_0_96,negated_conjecture,
    ( r1_tarski(X1,u1_struct_0(esk1_0))
    | ~ r1_tarski(k4_xboole_0(X1,esk3_0),u1_struct_0(esk1_0)) ),
    inference(spm,[status(thm)],[c_0_29,c_0_51])).

cnf(c_0_97,plain,
    ( k4_xboole_0(X1,X2) = k4_xboole_0(X3,X3)
    | ~ r1_tarski(X1,X2) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55,c_0_17]),c_0_91])).

cnf(c_0_98,plain,
    ( r1_tarski(k1_tops_1(X1,X2),X2)
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_92])).

cnf(c_0_99,plain,
    ( r1_tarski(X1,k2_xboole_0(X2,k4_xboole_0(X1,X3)))
    | ~ r1_tarski(X3,k2_xboole_0(X2,k4_xboole_0(X1,X3))) ),
    inference(spm,[status(thm)],[c_0_93,c_0_18])).

cnf(c_0_100,negated_conjecture,
    ( r1_tarski(esk2_0,k2_xboole_0(u1_struct_0(esk1_0),X1)) ),
    inference(spm,[status(thm)],[c_0_16,c_0_73])).

cnf(c_0_101,negated_conjecture,
    ( ~ r1_tarski(k1_tops_1(esk1_0,esk3_0),u1_struct_0(esk1_0))
    | ~ r1_tarski(k1_tops_1(esk1_0,esk2_0),u1_struct_0(esk1_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_94,c_0_95]),c_0_31]),c_0_45])])).

cnf(c_0_102,negated_conjecture,
    ( r1_tarski(X1,u1_struct_0(esk1_0))
    | ~ r1_tarski(X1,esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_96,c_0_97]),c_0_44])])).

cnf(c_0_103,negated_conjecture,
    ( r1_tarski(k1_tops_1(esk1_0,esk3_0),esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_98,c_0_31]),c_0_84])])).

cnf(c_0_104,negated_conjecture,
    ( r1_tarski(X1,k2_xboole_0(u1_struct_0(esk1_0),k4_xboole_0(X1,esk2_0))) ),
    inference(spm,[status(thm)],[c_0_99,c_0_100])).

cnf(c_0_105,negated_conjecture,
    ( ~ r1_tarski(k1_tops_1(esk1_0,esk2_0),u1_struct_0(esk1_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_101,c_0_102]),c_0_103])])).

cnf(c_0_106,negated_conjecture,
    ( r1_tarski(X1,u1_struct_0(esk1_0))
    | ~ r1_tarski(X1,esk2_0) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_104,c_0_97]),c_0_91])).

cnf(c_0_107,negated_conjecture,
    ( r1_tarski(k1_tops_1(esk1_0,esk2_0),esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_98,c_0_45]),c_0_84])])).

cnf(c_0_108,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_105,c_0_106]),c_0_107])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.14  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.35  % Computer   : n025.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % WCLimit    : 600
% 0.14/0.35  % DateTime   : Tue Dec  1 16:46:20 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  # Version: 2.5pre002
% 0.14/0.35  # No SInE strategy applied
% 0.14/0.35  # Trying AutoSched0 for 299 seconds
% 0.20/0.51  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.20/0.51  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.20/0.51  #
% 0.20/0.51  # Preprocessing time       : 0.027 s
% 0.20/0.51  # Presaturation interreduction done
% 0.20/0.51  
% 0.20/0.51  # Proof found!
% 0.20/0.51  # SZS status Theorem
% 0.20/0.51  # SZS output start CNFRefutation
% 0.20/0.51  fof(t44_xboole_1, axiom, ![X1, X2, X3]:(r1_tarski(k4_xboole_0(X1,X2),X3)=>r1_tarski(X1,k2_xboole_0(X2,X3))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t44_xboole_1)).
% 0.20/0.51  fof(t7_xboole_1, axiom, ![X1, X2]:r1_tarski(X1,k2_xboole_0(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t7_xboole_1)).
% 0.20/0.51  fof(t12_xboole_1, axiom, ![X1, X2]:(r1_tarski(X1,X2)=>k2_xboole_0(X1,X2)=X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t12_xboole_1)).
% 0.20/0.51  fof(commutativity_k2_xboole_0, axiom, ![X1, X2]:k2_xboole_0(X1,X2)=k2_xboole_0(X2,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', commutativity_k2_xboole_0)).
% 0.20/0.51  fof(t43_xboole_1, axiom, ![X1, X2, X3]:(r1_tarski(X1,k2_xboole_0(X2,X3))=>r1_tarski(k4_xboole_0(X1,X2),X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t43_xboole_1)).
% 0.20/0.51  fof(t49_tops_1, conjecture, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))=>r1_tarski(k4_subset_1(u1_struct_0(X1),k1_tops_1(X1,X2),k1_tops_1(X1,X3)),k1_tops_1(X1,k4_subset_1(u1_struct_0(X1),X2,X3)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t49_tops_1)).
% 0.20/0.51  fof(t3_subset, axiom, ![X1, X2]:(m1_subset_1(X1,k1_zfmisc_1(X2))<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_subset)).
% 0.20/0.51  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.20/0.51  fof(redefinition_k4_subset_1, axiom, ![X1, X2, X3]:((m1_subset_1(X2,k1_zfmisc_1(X1))&m1_subset_1(X3,k1_zfmisc_1(X1)))=>k4_subset_1(X1,X2,X3)=k2_xboole_0(X2,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k4_subset_1)).
% 0.20/0.51  fof(dt_k4_subset_1, axiom, ![X1, X2, X3]:((m1_subset_1(X2,k1_zfmisc_1(X1))&m1_subset_1(X3,k1_zfmisc_1(X1)))=>m1_subset_1(k4_subset_1(X1,X2,X3),k1_zfmisc_1(X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k4_subset_1)).
% 0.20/0.51  fof(t48_tops_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))=>(r1_tarski(X2,X3)=>r1_tarski(k1_tops_1(X1,X2),k1_tops_1(X1,X3)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t48_tops_1)).
% 0.20/0.51  fof(t44_tops_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>r1_tarski(k1_tops_1(X1,X2),X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t44_tops_1)).
% 0.20/0.51  fof(c_0_12, plain, ![X13, X14, X15]:(~r1_tarski(k4_xboole_0(X13,X14),X15)|r1_tarski(X13,k2_xboole_0(X14,X15))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t44_xboole_1])])).
% 0.20/0.51  fof(c_0_13, plain, ![X16, X17]:r1_tarski(X16,k2_xboole_0(X16,X17)), inference(variable_rename,[status(thm)],[t7_xboole_1])).
% 0.20/0.51  fof(c_0_14, plain, ![X8, X9]:(~r1_tarski(X8,X9)|k2_xboole_0(X8,X9)=X9), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t12_xboole_1])])).
% 0.20/0.51  fof(c_0_15, plain, ![X4, X5]:k2_xboole_0(X4,X5)=k2_xboole_0(X5,X4), inference(variable_rename,[status(thm)],[commutativity_k2_xboole_0])).
% 0.20/0.51  cnf(c_0_16, plain, (r1_tarski(X1,k2_xboole_0(X2,X3))|~r1_tarski(k4_xboole_0(X1,X2),X3)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.20/0.51  cnf(c_0_17, plain, (r1_tarski(X1,k2_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.20/0.51  cnf(c_0_18, plain, (k2_xboole_0(X1,X2)=X2|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.20/0.51  cnf(c_0_19, plain, (k2_xboole_0(X1,X2)=k2_xboole_0(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.51  cnf(c_0_20, plain, (r1_tarski(X1,k2_xboole_0(X2,k2_xboole_0(k4_xboole_0(X1,X2),X3)))), inference(spm,[status(thm)],[c_0_16, c_0_17])).
% 0.20/0.51  cnf(c_0_21, plain, (k2_xboole_0(X1,X2)=X1|~r1_tarski(X2,X1)), inference(spm,[status(thm)],[c_0_18, c_0_19])).
% 0.20/0.51  cnf(c_0_22, plain, (r1_tarski(X1,X2)|~r1_tarski(k2_xboole_0(k4_xboole_0(X1,X2),X3),X2)), inference(spm,[status(thm)],[c_0_20, c_0_21])).
% 0.20/0.51  fof(c_0_23, plain, ![X10, X11, X12]:(~r1_tarski(X10,k2_xboole_0(X11,X12))|r1_tarski(k4_xboole_0(X10,X11),X12)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t43_xboole_1])])).
% 0.20/0.51  fof(c_0_24, negated_conjecture, ~(![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))=>r1_tarski(k4_subset_1(u1_struct_0(X1),k1_tops_1(X1,X2),k1_tops_1(X1,X3)),k1_tops_1(X1,k4_subset_1(u1_struct_0(X1),X2,X3))))))), inference(assume_negation,[status(cth)],[t49_tops_1])).
% 0.20/0.51  cnf(c_0_25, plain, (r1_tarski(X1,X2)|~r1_tarski(k4_xboole_0(X1,X2),X3)|~r1_tarski(X3,X2)), inference(spm,[status(thm)],[c_0_22, c_0_18])).
% 0.20/0.51  cnf(c_0_26, plain, (r1_tarski(k4_xboole_0(X1,X2),X3)|~r1_tarski(X1,k2_xboole_0(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.20/0.51  fof(c_0_27, plain, ![X24, X25]:((~m1_subset_1(X24,k1_zfmisc_1(X25))|r1_tarski(X24,X25))&(~r1_tarski(X24,X25)|m1_subset_1(X24,k1_zfmisc_1(X25)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).
% 0.20/0.51  fof(c_0_28, negated_conjecture, (l1_pre_topc(esk1_0)&(m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0)))&(m1_subset_1(esk3_0,k1_zfmisc_1(u1_struct_0(esk1_0)))&~r1_tarski(k4_subset_1(u1_struct_0(esk1_0),k1_tops_1(esk1_0,esk2_0),k1_tops_1(esk1_0,esk3_0)),k1_tops_1(esk1_0,k4_subset_1(u1_struct_0(esk1_0),esk2_0,esk3_0)))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_24])])])).
% 0.20/0.51  cnf(c_0_29, plain, (r1_tarski(X1,X2)|~r1_tarski(X1,k2_xboole_0(X2,X3))|~r1_tarski(X3,X2)), inference(spm,[status(thm)],[c_0_25, c_0_26])).
% 0.20/0.51  cnf(c_0_30, plain, (r1_tarski(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.20/0.51  cnf(c_0_31, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.20/0.51  fof(c_0_32, plain, ![X6, X7]:(((r1_tarski(X6,X7)|X6!=X7)&(r1_tarski(X7,X6)|X6!=X7))&(~r1_tarski(X6,X7)|~r1_tarski(X7,X6)|X6=X7)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.20/0.51  cnf(c_0_33, plain, (r1_tarski(X1,X2)|~r1_tarski(X1,X3)|~r1_tarski(X3,X2)|~r1_tarski(X2,X3)), inference(spm,[status(thm)],[c_0_29, c_0_18])).
% 0.20/0.51  cnf(c_0_34, negated_conjecture, (r1_tarski(esk3_0,u1_struct_0(esk1_0))), inference(spm,[status(thm)],[c_0_30, c_0_31])).
% 0.20/0.51  cnf(c_0_35, plain, (r1_tarski(X1,X2)|X2!=X1), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.20/0.51  cnf(c_0_36, negated_conjecture, (r1_tarski(esk3_0,X1)|~r1_tarski(u1_struct_0(esk1_0),X1)|~r1_tarski(X1,u1_struct_0(esk1_0))), inference(spm,[status(thm)],[c_0_33, c_0_34])).
% 0.20/0.51  cnf(c_0_37, plain, (r1_tarski(X1,X1)), inference(er,[status(thm)],[c_0_35])).
% 0.20/0.51  cnf(c_0_38, plain, (r1_tarski(k4_xboole_0(X1,X2),X3)|~r1_tarski(X1,k2_xboole_0(X2,k2_xboole_0(X3,X4)))|~r1_tarski(X4,X3)), inference(spm,[status(thm)],[c_0_29, c_0_26])).
% 0.20/0.51  cnf(c_0_39, negated_conjecture, (r1_tarski(esk3_0,k2_xboole_0(u1_struct_0(esk1_0),X1))|~r1_tarski(k2_xboole_0(u1_struct_0(esk1_0),X1),u1_struct_0(esk1_0))), inference(spm,[status(thm)],[c_0_36, c_0_17])).
% 0.20/0.51  cnf(c_0_40, plain, (r1_tarski(k2_xboole_0(X1,X2),X1)|~r1_tarski(X2,X1)), inference(spm,[status(thm)],[c_0_29, c_0_37])).
% 0.20/0.51  cnf(c_0_41, plain, (r1_tarski(k4_xboole_0(X1,X1),X2)|~r1_tarski(X3,X2)), inference(spm,[status(thm)],[c_0_38, c_0_17])).
% 0.20/0.51  cnf(c_0_42, negated_conjecture, (r1_tarski(esk3_0,k2_xboole_0(u1_struct_0(esk1_0),X1))|~r1_tarski(X1,u1_struct_0(esk1_0))), inference(spm,[status(thm)],[c_0_39, c_0_40])).
% 0.20/0.51  cnf(c_0_43, plain, (X1=X2|~r1_tarski(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.20/0.51  cnf(c_0_44, plain, (r1_tarski(k4_xboole_0(X1,X1),X2)), inference(spm,[status(thm)],[c_0_41, c_0_37])).
% 0.20/0.51  cnf(c_0_45, negated_conjecture, (m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.20/0.51  cnf(c_0_46, plain, (r1_tarski(X1,k2_xboole_0(k4_xboole_0(X1,X2),X3))|~r1_tarski(X2,k2_xboole_0(k4_xboole_0(X1,X2),X3))), inference(spm,[status(thm)],[c_0_20, c_0_18])).
% 0.20/0.51  cnf(c_0_47, negated_conjecture, (r1_tarski(esk3_0,k2_xboole_0(X1,u1_struct_0(esk1_0)))|~r1_tarski(X1,u1_struct_0(esk1_0))), inference(spm,[status(thm)],[c_0_42, c_0_19])).
% 0.20/0.51  cnf(c_0_48, plain, (X1=k4_xboole_0(X2,X2)|~r1_tarski(X1,k4_xboole_0(X2,X2))), inference(spm,[status(thm)],[c_0_43, c_0_44])).
% 0.20/0.51  cnf(c_0_49, negated_conjecture, (r1_tarski(esk2_0,u1_struct_0(esk1_0))), inference(spm,[status(thm)],[c_0_30, c_0_45])).
% 0.20/0.51  cnf(c_0_50, plain, (X1=k4_xboole_0(X2,X3)|~r1_tarski(X1,k4_xboole_0(X2,X3))|~r1_tarski(X2,k2_xboole_0(X3,X1))), inference(spm,[status(thm)],[c_0_43, c_0_26])).
% 0.20/0.51  cnf(c_0_51, negated_conjecture, (r1_tarski(X1,k2_xboole_0(u1_struct_0(esk1_0),k4_xboole_0(X1,esk3_0)))|~r1_tarski(k4_xboole_0(X1,esk3_0),u1_struct_0(esk1_0))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_46, c_0_47]), c_0_19])).
% 0.20/0.51  cnf(c_0_52, plain, (k4_xboole_0(X1,X1)=k4_xboole_0(X2,X2)), inference(spm,[status(thm)],[c_0_48, c_0_44])).
% 0.20/0.51  cnf(c_0_53, negated_conjecture, (r1_tarski(esk2_0,X1)|~r1_tarski(u1_struct_0(esk1_0),X1)|~r1_tarski(X1,u1_struct_0(esk1_0))), inference(spm,[status(thm)],[c_0_33, c_0_49])).
% 0.20/0.51  cnf(c_0_54, plain, (r1_tarski(X1,k2_xboole_0(X2,k4_xboole_0(X1,X2)))), inference(spm,[status(thm)],[c_0_16, c_0_37])).
% 0.20/0.51  cnf(c_0_55, plain, (k4_xboole_0(X1,X2)=k4_xboole_0(X3,X4)|~r1_tarski(X3,k2_xboole_0(X4,k4_xboole_0(X1,X2)))|~r1_tarski(X1,k2_xboole_0(X2,k4_xboole_0(X3,X4)))), inference(spm,[status(thm)],[c_0_50, c_0_26])).
% 0.20/0.51  cnf(c_0_56, negated_conjecture, (r1_tarski(esk3_0,k2_xboole_0(u1_struct_0(esk1_0),k4_xboole_0(X1,X1)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51, c_0_52]), c_0_44])])).
% 0.20/0.51  fof(c_0_57, plain, ![X21, X22, X23]:(~m1_subset_1(X22,k1_zfmisc_1(X21))|~m1_subset_1(X23,k1_zfmisc_1(X21))|k4_subset_1(X21,X22,X23)=k2_xboole_0(X22,X23)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k4_subset_1])])).
% 0.20/0.51  fof(c_0_58, plain, ![X18, X19, X20]:(~m1_subset_1(X19,k1_zfmisc_1(X18))|~m1_subset_1(X20,k1_zfmisc_1(X18))|m1_subset_1(k4_subset_1(X18,X19,X20),k1_zfmisc_1(X18))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k4_subset_1])])).
% 0.20/0.51  cnf(c_0_59, negated_conjecture, (r1_tarski(esk2_0,k2_xboole_0(X1,k4_xboole_0(u1_struct_0(esk1_0),X1)))|~r1_tarski(k2_xboole_0(X1,k4_xboole_0(u1_struct_0(esk1_0),X1)),u1_struct_0(esk1_0))), inference(spm,[status(thm)],[c_0_53, c_0_54])).
% 0.20/0.51  cnf(c_0_60, negated_conjecture, (k4_xboole_0(X1,X1)=k4_xboole_0(esk3_0,u1_struct_0(esk1_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55, c_0_56]), c_0_17])])).
% 0.20/0.51  cnf(c_0_61, negated_conjecture, (~r1_tarski(k4_subset_1(u1_struct_0(esk1_0),k1_tops_1(esk1_0,esk2_0),k1_tops_1(esk1_0,esk3_0)),k1_tops_1(esk1_0,k4_subset_1(u1_struct_0(esk1_0),esk2_0,esk3_0)))), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.20/0.51  cnf(c_0_62, plain, (k4_subset_1(X2,X1,X3)=k2_xboole_0(X1,X3)|~m1_subset_1(X1,k1_zfmisc_1(X2))|~m1_subset_1(X3,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_57])).
% 0.20/0.51  cnf(c_0_63, plain, (m1_subset_1(k4_subset_1(X2,X1,X3),k1_zfmisc_1(X2))|~m1_subset_1(X1,k1_zfmisc_1(X2))|~m1_subset_1(X3,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_58])).
% 0.20/0.51  cnf(c_0_64, negated_conjecture, (r1_tarski(esk2_0,k2_xboole_0(u1_struct_0(esk1_0),k4_xboole_0(esk3_0,u1_struct_0(esk1_0))))), inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_59, c_0_40]), c_0_44])]), c_0_60])).
% 0.20/0.51  cnf(c_0_65, negated_conjecture, (r1_tarski(esk3_0,k2_xboole_0(u1_struct_0(esk1_0),X1))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_16, c_0_60]), c_0_44])])).
% 0.20/0.51  cnf(c_0_66, negated_conjecture, (~r1_tarski(k4_subset_1(u1_struct_0(esk1_0),k1_tops_1(esk1_0,esk2_0),k1_tops_1(esk1_0,esk3_0)),k1_tops_1(esk1_0,k2_xboole_0(esk2_0,esk3_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_61, c_0_62]), c_0_31]), c_0_45])])).
% 0.20/0.51  cnf(c_0_67, plain, (r1_tarski(k4_subset_1(X1,X2,X3),X1)|~m1_subset_1(X3,k1_zfmisc_1(X1))|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_30, c_0_63])).
% 0.20/0.51  cnf(c_0_68, negated_conjecture, (r1_tarski(k4_xboole_0(esk3_0,u1_struct_0(esk1_0)),X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26, c_0_60]), c_0_17])])).
% 0.20/0.51  cnf(c_0_69, negated_conjecture, (k4_xboole_0(esk3_0,u1_struct_0(esk1_0))=k4_xboole_0(esk2_0,u1_struct_0(esk1_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55, c_0_64]), c_0_65])])).
% 0.20/0.51  cnf(c_0_70, negated_conjecture, (~m1_subset_1(k1_tops_1(esk1_0,esk3_0),k1_zfmisc_1(u1_struct_0(esk1_0)))|~m1_subset_1(k1_tops_1(esk1_0,esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0)))|~r1_tarski(k2_xboole_0(k1_tops_1(esk1_0,esk2_0),k1_tops_1(esk1_0,esk3_0)),k1_tops_1(esk1_0,k2_xboole_0(esk2_0,esk3_0)))), inference(spm,[status(thm)],[c_0_66, c_0_62])).
% 0.20/0.51  cnf(c_0_71, plain, (r1_tarski(k2_xboole_0(X1,X2),X3)|~m1_subset_1(X2,k1_zfmisc_1(X3))|~m1_subset_1(X1,k1_zfmisc_1(X3))), inference(spm,[status(thm)],[c_0_67, c_0_62])).
% 0.20/0.51  cnf(c_0_72, plain, (r1_tarski(X1,k4_xboole_0(X1,X2))|~r1_tarski(X2,k4_xboole_0(X1,X2))), inference(spm,[status(thm)],[c_0_54, c_0_18])).
% 0.20/0.51  cnf(c_0_73, negated_conjecture, (r1_tarski(k4_xboole_0(esk2_0,u1_struct_0(esk1_0)),X1)), inference(rw,[status(thm)],[c_0_68, c_0_69])).
% 0.20/0.51  cnf(c_0_74, negated_conjecture, (~m1_subset_1(k1_tops_1(esk1_0,esk3_0),k1_zfmisc_1(k1_tops_1(esk1_0,k2_xboole_0(esk2_0,esk3_0))))|~m1_subset_1(k1_tops_1(esk1_0,esk2_0),k1_zfmisc_1(k1_tops_1(esk1_0,k2_xboole_0(esk2_0,esk3_0))))|~m1_subset_1(k1_tops_1(esk1_0,esk3_0),k1_zfmisc_1(u1_struct_0(esk1_0)))|~m1_subset_1(k1_tops_1(esk1_0,esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(spm,[status(thm)],[c_0_70, c_0_71])).
% 0.20/0.51  cnf(c_0_75, plain, (m1_subset_1(X1,k1_zfmisc_1(X2))|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.20/0.51  cnf(c_0_76, negated_conjecture, (r1_tarski(X1,k4_xboole_0(X1,k4_xboole_0(esk2_0,u1_struct_0(esk1_0))))), inference(spm,[status(thm)],[c_0_72, c_0_73])).
% 0.20/0.51  cnf(c_0_77, plain, (r1_tarski(X1,k2_xboole_0(X2,X1))), inference(spm,[status(thm)],[c_0_17, c_0_19])).
% 0.20/0.51  cnf(c_0_78, negated_conjecture, (~m1_subset_1(k1_tops_1(esk1_0,esk2_0),k1_zfmisc_1(k1_tops_1(esk1_0,k2_xboole_0(esk2_0,esk3_0))))|~m1_subset_1(k1_tops_1(esk1_0,esk3_0),k1_zfmisc_1(u1_struct_0(esk1_0)))|~m1_subset_1(k1_tops_1(esk1_0,esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0)))|~r1_tarski(k1_tops_1(esk1_0,esk3_0),k1_tops_1(esk1_0,k2_xboole_0(esk2_0,esk3_0)))), inference(spm,[status(thm)],[c_0_74, c_0_75])).
% 0.20/0.51  fof(c_0_79, plain, ![X28, X29, X30]:(~l1_pre_topc(X28)|(~m1_subset_1(X29,k1_zfmisc_1(u1_struct_0(X28)))|(~m1_subset_1(X30,k1_zfmisc_1(u1_struct_0(X28)))|(~r1_tarski(X29,X30)|r1_tarski(k1_tops_1(X28,X29),k1_tops_1(X28,X30)))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t48_tops_1])])])).
% 0.20/0.51  cnf(c_0_80, negated_conjecture, (k4_xboole_0(X1,k4_xboole_0(esk2_0,u1_struct_0(esk1_0)))=X1), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50, c_0_76]), c_0_77])])).
% 0.20/0.51  cnf(c_0_81, negated_conjecture, (k4_xboole_0(X1,X1)=k4_xboole_0(esk2_0,u1_struct_0(esk1_0))), inference(rw,[status(thm)],[c_0_60, c_0_69])).
% 0.20/0.51  cnf(c_0_82, negated_conjecture, (~m1_subset_1(k1_tops_1(esk1_0,esk3_0),k1_zfmisc_1(u1_struct_0(esk1_0)))|~m1_subset_1(k1_tops_1(esk1_0,esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0)))|~r1_tarski(k1_tops_1(esk1_0,esk3_0),k1_tops_1(esk1_0,k2_xboole_0(esk2_0,esk3_0)))|~r1_tarski(k1_tops_1(esk1_0,esk2_0),k1_tops_1(esk1_0,k2_xboole_0(esk2_0,esk3_0)))), inference(spm,[status(thm)],[c_0_78, c_0_75])).
% 0.20/0.51  cnf(c_0_83, plain, (r1_tarski(k1_tops_1(X1,X2),k1_tops_1(X1,X3))|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))|~r1_tarski(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_79])).
% 0.20/0.51  cnf(c_0_84, negated_conjecture, (l1_pre_topc(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.20/0.51  cnf(c_0_85, negated_conjecture, (k4_xboole_0(X1,k4_xboole_0(X2,X2))=X1), inference(spm,[status(thm)],[c_0_80, c_0_81])).
% 0.20/0.51  cnf(c_0_86, negated_conjecture, (~m1_subset_1(k1_tops_1(esk1_0,esk3_0),k1_zfmisc_1(u1_struct_0(esk1_0)))|~m1_subset_1(k1_tops_1(esk1_0,esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0)))|~m1_subset_1(k2_xboole_0(esk2_0,esk3_0),k1_zfmisc_1(u1_struct_0(esk1_0)))|~r1_tarski(k1_tops_1(esk1_0,esk2_0),k1_tops_1(esk1_0,k2_xboole_0(esk2_0,esk3_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_82, c_0_83]), c_0_84]), c_0_31]), c_0_77])])).
% 0.20/0.51  cnf(c_0_87, negated_conjecture, (X1=X2|~r1_tarski(X2,k2_xboole_0(k4_xboole_0(X3,X3),X1))|~r1_tarski(X1,X2)), inference(spm,[status(thm)],[c_0_50, c_0_85])).
% 0.20/0.51  cnf(c_0_88, negated_conjecture, (~m1_subset_1(k1_tops_1(esk1_0,esk3_0),k1_zfmisc_1(u1_struct_0(esk1_0)))|~m1_subset_1(k1_tops_1(esk1_0,esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0)))|~m1_subset_1(k2_xboole_0(esk2_0,esk3_0),k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_86, c_0_83]), c_0_84]), c_0_45]), c_0_17])])).
% 0.20/0.51  cnf(c_0_89, negated_conjecture, (k2_xboole_0(k4_xboole_0(X1,X1),X2)=X2), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_87, c_0_37]), c_0_77])])).
% 0.20/0.51  cnf(c_0_90, negated_conjecture, (~m1_subset_1(k1_tops_1(esk1_0,esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0)))|~m1_subset_1(k2_xboole_0(esk2_0,esk3_0),k1_zfmisc_1(u1_struct_0(esk1_0)))|~r1_tarski(k1_tops_1(esk1_0,esk3_0),u1_struct_0(esk1_0))), inference(spm,[status(thm)],[c_0_88, c_0_75])).
% 0.20/0.51  cnf(c_0_91, negated_conjecture, (k2_xboole_0(X1,k4_xboole_0(X2,X2))=X1), inference(spm,[status(thm)],[c_0_19, c_0_89])).
% 0.20/0.51  fof(c_0_92, plain, ![X26, X27]:(~l1_pre_topc(X26)|(~m1_subset_1(X27,k1_zfmisc_1(u1_struct_0(X26)))|r1_tarski(k1_tops_1(X26,X27),X27))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t44_tops_1])])])).
% 0.20/0.51  cnf(c_0_93, plain, (r1_tarski(X1,k2_xboole_0(X2,k2_xboole_0(X3,k4_xboole_0(X1,X2))))), inference(spm,[status(thm)],[c_0_16, c_0_77])).
% 0.20/0.51  cnf(c_0_94, negated_conjecture, (~m1_subset_1(k2_xboole_0(esk2_0,esk3_0),k1_zfmisc_1(u1_struct_0(esk1_0)))|~r1_tarski(k1_tops_1(esk1_0,esk3_0),u1_struct_0(esk1_0))|~r1_tarski(k1_tops_1(esk1_0,esk2_0),u1_struct_0(esk1_0))), inference(spm,[status(thm)],[c_0_90, c_0_75])).
% 0.20/0.51  cnf(c_0_95, plain, (m1_subset_1(k2_xboole_0(X1,X2),k1_zfmisc_1(X3))|~m1_subset_1(X2,k1_zfmisc_1(X3))|~m1_subset_1(X1,k1_zfmisc_1(X3))), inference(spm,[status(thm)],[c_0_63, c_0_62])).
% 0.20/0.51  cnf(c_0_96, negated_conjecture, (r1_tarski(X1,u1_struct_0(esk1_0))|~r1_tarski(k4_xboole_0(X1,esk3_0),u1_struct_0(esk1_0))), inference(spm,[status(thm)],[c_0_29, c_0_51])).
% 0.20/0.51  cnf(c_0_97, plain, (k4_xboole_0(X1,X2)=k4_xboole_0(X3,X3)|~r1_tarski(X1,X2)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55, c_0_17]), c_0_91])).
% 0.20/0.51  cnf(c_0_98, plain, (r1_tarski(k1_tops_1(X1,X2),X2)|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_92])).
% 0.20/0.51  cnf(c_0_99, plain, (r1_tarski(X1,k2_xboole_0(X2,k4_xboole_0(X1,X3)))|~r1_tarski(X3,k2_xboole_0(X2,k4_xboole_0(X1,X3)))), inference(spm,[status(thm)],[c_0_93, c_0_18])).
% 0.20/0.51  cnf(c_0_100, negated_conjecture, (r1_tarski(esk2_0,k2_xboole_0(u1_struct_0(esk1_0),X1))), inference(spm,[status(thm)],[c_0_16, c_0_73])).
% 0.20/0.51  cnf(c_0_101, negated_conjecture, (~r1_tarski(k1_tops_1(esk1_0,esk3_0),u1_struct_0(esk1_0))|~r1_tarski(k1_tops_1(esk1_0,esk2_0),u1_struct_0(esk1_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_94, c_0_95]), c_0_31]), c_0_45])])).
% 0.20/0.51  cnf(c_0_102, negated_conjecture, (r1_tarski(X1,u1_struct_0(esk1_0))|~r1_tarski(X1,esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_96, c_0_97]), c_0_44])])).
% 0.20/0.51  cnf(c_0_103, negated_conjecture, (r1_tarski(k1_tops_1(esk1_0,esk3_0),esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_98, c_0_31]), c_0_84])])).
% 0.20/0.51  cnf(c_0_104, negated_conjecture, (r1_tarski(X1,k2_xboole_0(u1_struct_0(esk1_0),k4_xboole_0(X1,esk2_0)))), inference(spm,[status(thm)],[c_0_99, c_0_100])).
% 0.20/0.51  cnf(c_0_105, negated_conjecture, (~r1_tarski(k1_tops_1(esk1_0,esk2_0),u1_struct_0(esk1_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_101, c_0_102]), c_0_103])])).
% 0.20/0.51  cnf(c_0_106, negated_conjecture, (r1_tarski(X1,u1_struct_0(esk1_0))|~r1_tarski(X1,esk2_0)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_104, c_0_97]), c_0_91])).
% 0.20/0.51  cnf(c_0_107, negated_conjecture, (r1_tarski(k1_tops_1(esk1_0,esk2_0),esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_98, c_0_45]), c_0_84])])).
% 0.20/0.51  cnf(c_0_108, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_105, c_0_106]), c_0_107])]), ['proof']).
% 0.20/0.51  # SZS output end CNFRefutation
% 0.20/0.51  # Proof object total steps             : 109
% 0.20/0.51  # Proof object clause steps            : 84
% 0.20/0.51  # Proof object formula steps           : 25
% 0.20/0.51  # Proof object conjectures             : 49
% 0.20/0.51  # Proof object clause conjectures      : 46
% 0.20/0.51  # Proof object formula conjectures     : 3
% 0.20/0.51  # Proof object initial clauses used    : 17
% 0.20/0.51  # Proof object initial formulas used   : 12
% 0.20/0.51  # Proof object generating inferences   : 64
% 0.20/0.51  # Proof object simplifying inferences  : 47
% 0.20/0.51  # Training examples: 0 positive, 0 negative
% 0.20/0.51  # Parsed axioms                        : 12
% 0.20/0.51  # Removed by relevancy pruning/SinE    : 0
% 0.20/0.51  # Initial clauses                      : 18
% 0.20/0.51  # Removed in clause preprocessing      : 0
% 0.20/0.51  # Initial clauses in saturation        : 18
% 0.20/0.51  # Processed clauses                    : 1866
% 0.20/0.51  # ...of these trivial                  : 28
% 0.20/0.51  # ...subsumed                          : 1258
% 0.20/0.51  # ...remaining for further processing  : 580
% 0.20/0.51  # Other redundant clauses eliminated   : 2
% 0.20/0.51  # Clauses deleted for lack of memory   : 0
% 0.20/0.51  # Backward-subsumed                    : 102
% 0.20/0.51  # Backward-rewritten                   : 34
% 0.20/0.51  # Generated clauses                    : 8031
% 0.20/0.51  # ...of the previous two non-trivial   : 6692
% 0.20/0.51  # Contextual simplify-reflections      : 19
% 0.20/0.51  # Paramodulations                      : 8029
% 0.20/0.51  # Factorizations                       : 0
% 0.20/0.51  # Equation resolutions                 : 2
% 0.20/0.51  # Propositional unsat checks           : 0
% 0.20/0.51  #    Propositional check models        : 0
% 0.20/0.51  #    Propositional check unsatisfiable : 0
% 0.20/0.51  #    Propositional clauses             : 0
% 0.20/0.51  #    Propositional clauses after purity: 0
% 0.20/0.51  #    Propositional unsat core size     : 0
% 0.20/0.51  #    Propositional preprocessing time  : 0.000
% 0.20/0.51  #    Propositional encoding time       : 0.000
% 0.20/0.51  #    Propositional solver time         : 0.000
% 0.20/0.51  #    Success case prop preproc time    : 0.000
% 0.20/0.51  #    Success case prop encoding time   : 0.000
% 0.20/0.51  #    Success case prop solver time     : 0.000
% 0.20/0.51  # Current number of processed clauses  : 425
% 0.20/0.51  #    Positive orientable unit clauses  : 47
% 0.20/0.51  #    Positive unorientable unit clauses: 3
% 0.20/0.51  #    Negative unit clauses             : 6
% 0.20/0.51  #    Non-unit-clauses                  : 369
% 0.20/0.51  # Current number of unprocessed clauses: 4747
% 0.20/0.51  # ...number of literals in the above   : 16251
% 0.20/0.51  # Current number of archived formulas  : 0
% 0.20/0.51  # Current number of archived clauses   : 153
% 0.20/0.51  # Clause-clause subsumption calls (NU) : 67176
% 0.20/0.51  # Rec. Clause-clause subsumption calls : 28016
% 0.20/0.51  # Non-unit clause-clause subsumptions  : 1341
% 0.20/0.51  # Unit Clause-clause subsumption calls : 1750
% 0.20/0.51  # Rewrite failures with RHS unbound    : 34
% 0.20/0.51  # BW rewrite match attempts            : 195
% 0.20/0.51  # BW rewrite match successes           : 39
% 0.20/0.51  # Condensation attempts                : 0
% 0.20/0.51  # Condensation successes               : 0
% 0.20/0.51  # Termbank termtop insertions          : 126375
% 0.20/0.51  
% 0.20/0.51  # -------------------------------------------------
% 0.20/0.51  # User time                : 0.149 s
% 0.20/0.51  # System time              : 0.008 s
% 0.20/0.51  # Total time               : 0.157 s
% 0.20/0.51  # Maximum resident set size: 1580 pages
%------------------------------------------------------------------------------
