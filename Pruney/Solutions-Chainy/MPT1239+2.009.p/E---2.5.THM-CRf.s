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
% DateTime   : Thu Dec  3 11:10:54 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   72 ( 204 expanded)
%              Number of clauses        :   49 (  95 expanded)
%              Number of leaves         :   11 (  48 expanded)
%              Depth                    :   13
%              Number of atoms          :  180 ( 605 expanded)
%              Number of equality atoms :   19 (  64 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal clause size      :    7 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t64_xboole_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( ( r1_tarski(X1,X2)
        & r1_tarski(X3,X4)
        & r1_xboole_0(X2,X4) )
     => r1_xboole_0(X1,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t64_xboole_1)).

fof(t106_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( r1_tarski(X1,k4_xboole_0(X2,X3))
     => ( r1_tarski(X1,X2)
        & r1_xboole_0(X1,X3) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t106_xboole_1)).

fof(t86_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( ( r1_tarski(X1,X2)
        & r1_xboole_0(X1,X3) )
     => r1_tarski(X1,k4_xboole_0(X2,X3)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t86_xboole_1)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).

fof(t50_tops_1,conjecture,(
    ! [X1] :
      ( ( v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ! [X3] :
              ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
             => r1_tarski(k1_tops_1(X1,k7_subset_1(u1_struct_0(X1),X2,X3)),k7_subset_1(u1_struct_0(X1),k1_tops_1(X1,X2),k1_tops_1(X1,X3))) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t50_tops_1)).

fof(t36_xboole_1,axiom,(
    ! [X1,X2] : r1_tarski(k4_xboole_0(X1,X2),X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t36_xboole_1)).

fof(t44_tops_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => r1_tarski(k1_tops_1(X1,X2),X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t44_tops_1)).

fof(dt_k1_tops_1,axiom,(
    ! [X1,X2] :
      ( ( l1_pre_topc(X1)
        & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) )
     => m1_subset_1(k1_tops_1(X1,X2),k1_zfmisc_1(u1_struct_0(X1))) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k1_tops_1)).

fof(redefinition_k7_subset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => k7_subset_1(X1,X2,X3) = k4_xboole_0(X2,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k7_subset_1)).

fof(dt_k7_subset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => m1_subset_1(k7_subset_1(X1,X2,X3),k1_zfmisc_1(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k7_subset_1)).

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

fof(c_0_11,plain,(
    ! [X15,X16,X17,X18] :
      ( ~ r1_tarski(X15,X16)
      | ~ r1_tarski(X17,X18)
      | ~ r1_xboole_0(X16,X18)
      | r1_xboole_0(X15,X17) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t64_xboole_1])])).

fof(c_0_12,plain,(
    ! [X7,X8,X9] :
      ( ( r1_tarski(X7,X8)
        | ~ r1_tarski(X7,k4_xboole_0(X8,X9)) )
      & ( r1_xboole_0(X7,X9)
        | ~ r1_tarski(X7,k4_xboole_0(X8,X9)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t106_xboole_1])])])).

fof(c_0_13,plain,(
    ! [X19,X20,X21] :
      ( ~ r1_tarski(X19,X20)
      | ~ r1_xboole_0(X19,X21)
      | r1_tarski(X19,k4_xboole_0(X20,X21)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t86_xboole_1])])).

cnf(c_0_14,plain,
    ( r1_xboole_0(X1,X3)
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X3,X4)
    | ~ r1_xboole_0(X2,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_15,plain,
    ( r1_xboole_0(X1,X2)
    | ~ r1_tarski(X1,k4_xboole_0(X3,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

fof(c_0_16,plain,(
    ! [X5,X6] :
      ( ( r1_tarski(X5,X6)
        | X5 != X6 )
      & ( r1_tarski(X6,X5)
        | X5 != X6 )
      & ( ~ r1_tarski(X5,X6)
        | ~ r1_tarski(X6,X5)
        | X5 = X6 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

cnf(c_0_17,plain,
    ( r1_tarski(X1,k4_xboole_0(X2,X3))
    | ~ r1_tarski(X1,X2)
    | ~ r1_xboole_0(X1,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_18,plain,
    ( r1_xboole_0(X1,X2)
    | ~ r1_tarski(X3,k4_xboole_0(X4,X5))
    | ~ r1_tarski(X2,X5)
    | ~ r1_tarski(X1,X3) ),
    inference(spm,[status(thm)],[c_0_14,c_0_15])).

cnf(c_0_19,plain,
    ( r1_tarski(X1,X2)
    | X2 != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

fof(c_0_20,negated_conjecture,(
    ~ ! [X1] :
        ( ( v2_pre_topc(X1)
          & l1_pre_topc(X1) )
       => ! [X2] :
            ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
           => ! [X3] :
                ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
               => r1_tarski(k1_tops_1(X1,k7_subset_1(u1_struct_0(X1),X2,X3)),k7_subset_1(u1_struct_0(X1),k1_tops_1(X1,X2),k1_tops_1(X1,X3))) ) ) ) ),
    inference(assume_negation,[status(cth)],[t50_tops_1])).

fof(c_0_21,plain,(
    ! [X10,X11] : r1_tarski(k4_xboole_0(X10,X11),X10) ),
    inference(variable_rename,[status(thm)],[t36_xboole_1])).

cnf(c_0_22,plain,
    ( r1_tarski(X1,k4_xboole_0(X2,X3))
    | ~ r1_tarski(X4,k4_xboole_0(X5,X6))
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X3,X6)
    | ~ r1_tarski(X1,X4) ),
    inference(spm,[status(thm)],[c_0_17,c_0_18])).

cnf(c_0_23,plain,
    ( r1_tarski(X1,X1) ),
    inference(er,[status(thm)],[c_0_19])).

fof(c_0_24,plain,(
    ! [X30,X31] :
      ( ~ l1_pre_topc(X30)
      | ~ m1_subset_1(X31,k1_zfmisc_1(u1_struct_0(X30)))
      | r1_tarski(k1_tops_1(X30,X31),X31) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t44_tops_1])])])).

fof(c_0_25,negated_conjecture,
    ( v2_pre_topc(esk1_0)
    & l1_pre_topc(esk1_0)
    & m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0)))
    & m1_subset_1(esk3_0,k1_zfmisc_1(u1_struct_0(esk1_0)))
    & ~ r1_tarski(k1_tops_1(esk1_0,k7_subset_1(u1_struct_0(esk1_0),esk2_0,esk3_0)),k7_subset_1(u1_struct_0(esk1_0),k1_tops_1(esk1_0,esk2_0),k1_tops_1(esk1_0,esk3_0))) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_20])])])).

cnf(c_0_26,plain,
    ( r1_tarski(X1,k4_xboole_0(X2,X3))
    | ~ r1_tarski(X1,k4_xboole_0(X4,X3))
    | ~ r1_tarski(X1,X2) ),
    inference(spm,[status(thm)],[c_0_17,c_0_15])).

cnf(c_0_27,plain,
    ( X1 = X2
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_28,plain,
    ( r1_tarski(k4_xboole_0(X1,X2),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_29,plain,
    ( r1_tarski(X1,k4_xboole_0(X2,X3))
    | ~ r1_tarski(X1,k4_xboole_0(X4,X5))
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X3,X5) ),
    inference(spm,[status(thm)],[c_0_22,c_0_23])).

cnf(c_0_30,plain,
    ( r1_tarski(k1_tops_1(X1,X2),X2)
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_31,negated_conjecture,
    ( l1_pre_topc(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

fof(c_0_32,plain,(
    ! [X28,X29] :
      ( ~ l1_pre_topc(X28)
      | ~ m1_subset_1(X29,k1_zfmisc_1(u1_struct_0(X28)))
      | m1_subset_1(k1_tops_1(X28,X29),k1_zfmisc_1(u1_struct_0(X28))) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k1_tops_1])])).

cnf(c_0_33,plain,
    ( r1_tarski(k4_xboole_0(X1,X2),k4_xboole_0(X3,X2))
    | ~ r1_tarski(k4_xboole_0(X1,X2),X3) ),
    inference(spm,[status(thm)],[c_0_26,c_0_23])).

cnf(c_0_34,plain,
    ( k4_xboole_0(X1,X2) = X1
    | ~ r1_tarski(X1,k4_xboole_0(X1,X2)) ),
    inference(spm,[status(thm)],[c_0_27,c_0_28])).

cnf(c_0_35,plain,
    ( r1_tarski(k4_xboole_0(X1,X2),k4_xboole_0(X3,X4))
    | ~ r1_tarski(k4_xboole_0(X1,X2),X3)
    | ~ r1_tarski(X4,X2) ),
    inference(spm,[status(thm)],[c_0_29,c_0_23])).

cnf(c_0_36,negated_conjecture,
    ( r1_tarski(k1_tops_1(esk1_0,X1),X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(spm,[status(thm)],[c_0_30,c_0_31])).

cnf(c_0_37,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

fof(c_0_38,plain,(
    ! [X25,X26,X27] :
      ( ~ m1_subset_1(X26,k1_zfmisc_1(X25))
      | k7_subset_1(X25,X26,X27) = k4_xboole_0(X26,X27) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k7_subset_1])])).

cnf(c_0_39,plain,
    ( m1_subset_1(k1_tops_1(X1,X2),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

cnf(c_0_40,plain,
    ( k4_xboole_0(X1,X2) = k4_xboole_0(X3,X2)
    | ~ r1_tarski(k4_xboole_0(X1,X2),k4_xboole_0(X3,X2))
    | ~ r1_tarski(k4_xboole_0(X3,X2),X1) ),
    inference(spm,[status(thm)],[c_0_27,c_0_33])).

cnf(c_0_41,plain,
    ( r1_tarski(X1,X2)
    | ~ r1_tarski(X1,k4_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_42,plain,
    ( k4_xboole_0(k4_xboole_0(X1,X2),X3) = k4_xboole_0(X1,X2)
    | ~ r1_tarski(X3,X2) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34,c_0_35]),c_0_23])])).

cnf(c_0_43,negated_conjecture,
    ( r1_tarski(k1_tops_1(esk1_0,esk3_0),esk3_0) ),
    inference(spm,[status(thm)],[c_0_36,c_0_37])).

cnf(c_0_44,plain,
    ( k7_subset_1(X2,X1,X3) = k4_xboole_0(X1,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_38])).

cnf(c_0_45,negated_conjecture,
    ( m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_46,negated_conjecture,
    ( m1_subset_1(k1_tops_1(esk1_0,X1),k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(spm,[status(thm)],[c_0_39,c_0_31])).

cnf(c_0_47,plain,
    ( k4_xboole_0(X1,X2) = k4_xboole_0(X3,X2)
    | ~ r1_tarski(k4_xboole_0(X3,X2),X1)
    | ~ r1_tarski(k4_xboole_0(X1,X2),X3) ),
    inference(spm,[status(thm)],[c_0_40,c_0_33])).

cnf(c_0_48,plain,
    ( r1_tarski(k4_xboole_0(k4_xboole_0(X1,X2),X3),X1) ),
    inference(spm,[status(thm)],[c_0_41,c_0_28])).

cnf(c_0_49,negated_conjecture,
    ( k4_xboole_0(k4_xboole_0(X1,esk3_0),k1_tops_1(esk1_0,esk3_0)) = k4_xboole_0(X1,esk3_0) ),
    inference(spm,[status(thm)],[c_0_42,c_0_43])).

fof(c_0_50,plain,(
    ! [X22,X23,X24] :
      ( ~ m1_subset_1(X23,k1_zfmisc_1(X22))
      | m1_subset_1(k7_subset_1(X22,X23,X24),k1_zfmisc_1(X22)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k7_subset_1])])).

fof(c_0_51,plain,(
    ! [X32,X33,X34] :
      ( ~ l1_pre_topc(X32)
      | ~ m1_subset_1(X33,k1_zfmisc_1(u1_struct_0(X32)))
      | ~ m1_subset_1(X34,k1_zfmisc_1(u1_struct_0(X32)))
      | ~ r1_tarski(X33,X34)
      | r1_tarski(k1_tops_1(X32,X33),k1_tops_1(X32,X34)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t48_tops_1])])])).

cnf(c_0_52,negated_conjecture,
    ( ~ r1_tarski(k1_tops_1(esk1_0,k7_subset_1(u1_struct_0(esk1_0),esk2_0,esk3_0)),k7_subset_1(u1_struct_0(esk1_0),k1_tops_1(esk1_0,esk2_0),k1_tops_1(esk1_0,esk3_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_53,negated_conjecture,
    ( k7_subset_1(u1_struct_0(esk1_0),esk2_0,X1) = k4_xboole_0(esk2_0,X1) ),
    inference(spm,[status(thm)],[c_0_44,c_0_45])).

cnf(c_0_54,negated_conjecture,
    ( k7_subset_1(u1_struct_0(esk1_0),k1_tops_1(esk1_0,X1),X2) = k4_xboole_0(k1_tops_1(esk1_0,X1),X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(spm,[status(thm)],[c_0_44,c_0_46])).

cnf(c_0_55,plain,
    ( k4_xboole_0(k4_xboole_0(X1,X2),X3) = k4_xboole_0(X1,X3)
    | ~ r1_tarski(k4_xboole_0(X1,X3),k4_xboole_0(X1,X2)) ),
    inference(spm,[status(thm)],[c_0_47,c_0_48])).

cnf(c_0_56,negated_conjecture,
    ( r1_tarski(k4_xboole_0(X1,esk3_0),k4_xboole_0(X2,k1_tops_1(esk1_0,esk3_0)))
    | ~ r1_tarski(k4_xboole_0(X1,esk3_0),X2) ),
    inference(spm,[status(thm)],[c_0_33,c_0_49])).

cnf(c_0_57,plain,
    ( m1_subset_1(k7_subset_1(X2,X1,X3),k1_zfmisc_1(X2))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_50])).

cnf(c_0_58,plain,
    ( r1_tarski(k1_tops_1(X1,X2),k1_tops_1(X1,X3))
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r1_tarski(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_51])).

cnf(c_0_59,negated_conjecture,
    ( ~ r1_tarski(k1_tops_1(esk1_0,k4_xboole_0(esk2_0,esk3_0)),k7_subset_1(u1_struct_0(esk1_0),k1_tops_1(esk1_0,esk2_0),k1_tops_1(esk1_0,esk3_0))) ),
    inference(rw,[status(thm)],[c_0_52,c_0_53])).

cnf(c_0_60,negated_conjecture,
    ( k7_subset_1(u1_struct_0(esk1_0),k1_tops_1(esk1_0,esk2_0),X1) = k4_xboole_0(k1_tops_1(esk1_0,esk2_0),X1) ),
    inference(spm,[status(thm)],[c_0_54,c_0_45])).

cnf(c_0_61,negated_conjecture,
    ( k4_xboole_0(k4_xboole_0(X1,k1_tops_1(esk1_0,esk3_0)),esk3_0) = k4_xboole_0(X1,esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55,c_0_56]),c_0_28])])).

cnf(c_0_62,negated_conjecture,
    ( m1_subset_1(k4_xboole_0(esk2_0,X1),k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57,c_0_53]),c_0_45])])).

cnf(c_0_63,negated_conjecture,
    ( r1_tarski(k1_tops_1(esk1_0,X1),k1_tops_1(esk1_0,X2))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ r1_tarski(X1,X2) ),
    inference(spm,[status(thm)],[c_0_58,c_0_31])).

cnf(c_0_64,negated_conjecture,
    ( ~ r1_tarski(k1_tops_1(esk1_0,k4_xboole_0(esk2_0,esk3_0)),k4_xboole_0(k1_tops_1(esk1_0,esk2_0),k1_tops_1(esk1_0,esk3_0))) ),
    inference(rw,[status(thm)],[c_0_59,c_0_60])).

cnf(c_0_65,negated_conjecture,
    ( r1_tarski(X1,k4_xboole_0(X2,k1_tops_1(esk1_0,esk3_0)))
    | ~ r1_tarski(X1,k4_xboole_0(X2,esk3_0)) ),
    inference(spm,[status(thm)],[c_0_41,c_0_61])).

cnf(c_0_66,negated_conjecture,
    ( r1_tarski(k1_tops_1(esk1_0,k4_xboole_0(esk2_0,X1)),k4_xboole_0(esk2_0,X1)) ),
    inference(spm,[status(thm)],[c_0_36,c_0_62])).

cnf(c_0_67,negated_conjecture,
    ( r1_tarski(k1_tops_1(esk1_0,X1),k1_tops_1(esk1_0,esk2_0))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ r1_tarski(X1,esk2_0) ),
    inference(spm,[status(thm)],[c_0_63,c_0_45])).

cnf(c_0_68,negated_conjecture,
    ( ~ r1_tarski(k1_tops_1(esk1_0,k4_xboole_0(esk2_0,esk3_0)),k4_xboole_0(k1_tops_1(esk1_0,esk2_0),esk3_0)) ),
    inference(spm,[status(thm)],[c_0_64,c_0_65])).

cnf(c_0_69,negated_conjecture,
    ( r1_tarski(k1_tops_1(esk1_0,k4_xboole_0(esk2_0,X1)),k4_xboole_0(X2,X1))
    | ~ r1_tarski(k1_tops_1(esk1_0,k4_xboole_0(esk2_0,X1)),X2) ),
    inference(spm,[status(thm)],[c_0_26,c_0_66])).

cnf(c_0_70,negated_conjecture,
    ( r1_tarski(k1_tops_1(esk1_0,k4_xboole_0(esk2_0,X1)),k1_tops_1(esk1_0,esk2_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_67,c_0_62]),c_0_28])])).

cnf(c_0_71,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_68,c_0_69]),c_0_70])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n016.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 13:27:49 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.19/0.47  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S050I
% 0.19/0.47  # and selection function PSelectNewComplexExceptUniqMaxHorn.
% 0.19/0.47  #
% 0.19/0.47  # Preprocessing time       : 0.027 s
% 0.19/0.47  # Presaturation interreduction done
% 0.19/0.47  
% 0.19/0.47  # Proof found!
% 0.19/0.47  # SZS status Theorem
% 0.19/0.47  # SZS output start CNFRefutation
% 0.19/0.47  fof(t64_xboole_1, axiom, ![X1, X2, X3, X4]:(((r1_tarski(X1,X2)&r1_tarski(X3,X4))&r1_xboole_0(X2,X4))=>r1_xboole_0(X1,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t64_xboole_1)).
% 0.19/0.47  fof(t106_xboole_1, axiom, ![X1, X2, X3]:(r1_tarski(X1,k4_xboole_0(X2,X3))=>(r1_tarski(X1,X2)&r1_xboole_0(X1,X3))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t106_xboole_1)).
% 0.19/0.47  fof(t86_xboole_1, axiom, ![X1, X2, X3]:((r1_tarski(X1,X2)&r1_xboole_0(X1,X3))=>r1_tarski(X1,k4_xboole_0(X2,X3))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t86_xboole_1)).
% 0.19/0.47  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.19/0.47  fof(t50_tops_1, conjecture, ![X1]:((v2_pre_topc(X1)&l1_pre_topc(X1))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))=>r1_tarski(k1_tops_1(X1,k7_subset_1(u1_struct_0(X1),X2,X3)),k7_subset_1(u1_struct_0(X1),k1_tops_1(X1,X2),k1_tops_1(X1,X3)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t50_tops_1)).
% 0.19/0.47  fof(t36_xboole_1, axiom, ![X1, X2]:r1_tarski(k4_xboole_0(X1,X2),X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t36_xboole_1)).
% 0.19/0.47  fof(t44_tops_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>r1_tarski(k1_tops_1(X1,X2),X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t44_tops_1)).
% 0.19/0.47  fof(dt_k1_tops_1, axiom, ![X1, X2]:((l1_pre_topc(X1)&m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))))=>m1_subset_1(k1_tops_1(X1,X2),k1_zfmisc_1(u1_struct_0(X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k1_tops_1)).
% 0.19/0.47  fof(redefinition_k7_subset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>k7_subset_1(X1,X2,X3)=k4_xboole_0(X2,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k7_subset_1)).
% 0.19/0.47  fof(dt_k7_subset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>m1_subset_1(k7_subset_1(X1,X2,X3),k1_zfmisc_1(X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k7_subset_1)).
% 0.19/0.47  fof(t48_tops_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))=>(r1_tarski(X2,X3)=>r1_tarski(k1_tops_1(X1,X2),k1_tops_1(X1,X3)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t48_tops_1)).
% 0.19/0.47  fof(c_0_11, plain, ![X15, X16, X17, X18]:(~r1_tarski(X15,X16)|~r1_tarski(X17,X18)|~r1_xboole_0(X16,X18)|r1_xboole_0(X15,X17)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t64_xboole_1])])).
% 0.19/0.47  fof(c_0_12, plain, ![X7, X8, X9]:((r1_tarski(X7,X8)|~r1_tarski(X7,k4_xboole_0(X8,X9)))&(r1_xboole_0(X7,X9)|~r1_tarski(X7,k4_xboole_0(X8,X9)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t106_xboole_1])])])).
% 0.19/0.47  fof(c_0_13, plain, ![X19, X20, X21]:(~r1_tarski(X19,X20)|~r1_xboole_0(X19,X21)|r1_tarski(X19,k4_xboole_0(X20,X21))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t86_xboole_1])])).
% 0.19/0.47  cnf(c_0_14, plain, (r1_xboole_0(X1,X3)|~r1_tarski(X1,X2)|~r1_tarski(X3,X4)|~r1_xboole_0(X2,X4)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.19/0.47  cnf(c_0_15, plain, (r1_xboole_0(X1,X2)|~r1_tarski(X1,k4_xboole_0(X3,X2))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.19/0.47  fof(c_0_16, plain, ![X5, X6]:(((r1_tarski(X5,X6)|X5!=X6)&(r1_tarski(X6,X5)|X5!=X6))&(~r1_tarski(X5,X6)|~r1_tarski(X6,X5)|X5=X6)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.19/0.47  cnf(c_0_17, plain, (r1_tarski(X1,k4_xboole_0(X2,X3))|~r1_tarski(X1,X2)|~r1_xboole_0(X1,X3)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.19/0.47  cnf(c_0_18, plain, (r1_xboole_0(X1,X2)|~r1_tarski(X3,k4_xboole_0(X4,X5))|~r1_tarski(X2,X5)|~r1_tarski(X1,X3)), inference(spm,[status(thm)],[c_0_14, c_0_15])).
% 0.19/0.47  cnf(c_0_19, plain, (r1_tarski(X1,X2)|X2!=X1), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.19/0.47  fof(c_0_20, negated_conjecture, ~(![X1]:((v2_pre_topc(X1)&l1_pre_topc(X1))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))=>r1_tarski(k1_tops_1(X1,k7_subset_1(u1_struct_0(X1),X2,X3)),k7_subset_1(u1_struct_0(X1),k1_tops_1(X1,X2),k1_tops_1(X1,X3))))))), inference(assume_negation,[status(cth)],[t50_tops_1])).
% 0.19/0.47  fof(c_0_21, plain, ![X10, X11]:r1_tarski(k4_xboole_0(X10,X11),X10), inference(variable_rename,[status(thm)],[t36_xboole_1])).
% 0.19/0.47  cnf(c_0_22, plain, (r1_tarski(X1,k4_xboole_0(X2,X3))|~r1_tarski(X4,k4_xboole_0(X5,X6))|~r1_tarski(X1,X2)|~r1_tarski(X3,X6)|~r1_tarski(X1,X4)), inference(spm,[status(thm)],[c_0_17, c_0_18])).
% 0.19/0.47  cnf(c_0_23, plain, (r1_tarski(X1,X1)), inference(er,[status(thm)],[c_0_19])).
% 0.19/0.47  fof(c_0_24, plain, ![X30, X31]:(~l1_pre_topc(X30)|(~m1_subset_1(X31,k1_zfmisc_1(u1_struct_0(X30)))|r1_tarski(k1_tops_1(X30,X31),X31))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t44_tops_1])])])).
% 0.19/0.47  fof(c_0_25, negated_conjecture, ((v2_pre_topc(esk1_0)&l1_pre_topc(esk1_0))&(m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0)))&(m1_subset_1(esk3_0,k1_zfmisc_1(u1_struct_0(esk1_0)))&~r1_tarski(k1_tops_1(esk1_0,k7_subset_1(u1_struct_0(esk1_0),esk2_0,esk3_0)),k7_subset_1(u1_struct_0(esk1_0),k1_tops_1(esk1_0,esk2_0),k1_tops_1(esk1_0,esk3_0)))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_20])])])).
% 0.19/0.47  cnf(c_0_26, plain, (r1_tarski(X1,k4_xboole_0(X2,X3))|~r1_tarski(X1,k4_xboole_0(X4,X3))|~r1_tarski(X1,X2)), inference(spm,[status(thm)],[c_0_17, c_0_15])).
% 0.19/0.47  cnf(c_0_27, plain, (X1=X2|~r1_tarski(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.19/0.47  cnf(c_0_28, plain, (r1_tarski(k4_xboole_0(X1,X2),X1)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.19/0.47  cnf(c_0_29, plain, (r1_tarski(X1,k4_xboole_0(X2,X3))|~r1_tarski(X1,k4_xboole_0(X4,X5))|~r1_tarski(X1,X2)|~r1_tarski(X3,X5)), inference(spm,[status(thm)],[c_0_22, c_0_23])).
% 0.19/0.47  cnf(c_0_30, plain, (r1_tarski(k1_tops_1(X1,X2),X2)|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.19/0.47  cnf(c_0_31, negated_conjecture, (l1_pre_topc(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.19/0.47  fof(c_0_32, plain, ![X28, X29]:(~l1_pre_topc(X28)|~m1_subset_1(X29,k1_zfmisc_1(u1_struct_0(X28)))|m1_subset_1(k1_tops_1(X28,X29),k1_zfmisc_1(u1_struct_0(X28)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k1_tops_1])])).
% 0.19/0.47  cnf(c_0_33, plain, (r1_tarski(k4_xboole_0(X1,X2),k4_xboole_0(X3,X2))|~r1_tarski(k4_xboole_0(X1,X2),X3)), inference(spm,[status(thm)],[c_0_26, c_0_23])).
% 0.19/0.47  cnf(c_0_34, plain, (k4_xboole_0(X1,X2)=X1|~r1_tarski(X1,k4_xboole_0(X1,X2))), inference(spm,[status(thm)],[c_0_27, c_0_28])).
% 0.19/0.47  cnf(c_0_35, plain, (r1_tarski(k4_xboole_0(X1,X2),k4_xboole_0(X3,X4))|~r1_tarski(k4_xboole_0(X1,X2),X3)|~r1_tarski(X4,X2)), inference(spm,[status(thm)],[c_0_29, c_0_23])).
% 0.19/0.47  cnf(c_0_36, negated_conjecture, (r1_tarski(k1_tops_1(esk1_0,X1),X1)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(spm,[status(thm)],[c_0_30, c_0_31])).
% 0.19/0.47  cnf(c_0_37, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.19/0.47  fof(c_0_38, plain, ![X25, X26, X27]:(~m1_subset_1(X26,k1_zfmisc_1(X25))|k7_subset_1(X25,X26,X27)=k4_xboole_0(X26,X27)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k7_subset_1])])).
% 0.19/0.47  cnf(c_0_39, plain, (m1_subset_1(k1_tops_1(X1,X2),k1_zfmisc_1(u1_struct_0(X1)))|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.19/0.47  cnf(c_0_40, plain, (k4_xboole_0(X1,X2)=k4_xboole_0(X3,X2)|~r1_tarski(k4_xboole_0(X1,X2),k4_xboole_0(X3,X2))|~r1_tarski(k4_xboole_0(X3,X2),X1)), inference(spm,[status(thm)],[c_0_27, c_0_33])).
% 0.19/0.47  cnf(c_0_41, plain, (r1_tarski(X1,X2)|~r1_tarski(X1,k4_xboole_0(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.19/0.47  cnf(c_0_42, plain, (k4_xboole_0(k4_xboole_0(X1,X2),X3)=k4_xboole_0(X1,X2)|~r1_tarski(X3,X2)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34, c_0_35]), c_0_23])])).
% 0.19/0.47  cnf(c_0_43, negated_conjecture, (r1_tarski(k1_tops_1(esk1_0,esk3_0),esk3_0)), inference(spm,[status(thm)],[c_0_36, c_0_37])).
% 0.19/0.47  cnf(c_0_44, plain, (k7_subset_1(X2,X1,X3)=k4_xboole_0(X1,X3)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_38])).
% 0.19/0.47  cnf(c_0_45, negated_conjecture, (m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.19/0.47  cnf(c_0_46, negated_conjecture, (m1_subset_1(k1_tops_1(esk1_0,X1),k1_zfmisc_1(u1_struct_0(esk1_0)))|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(spm,[status(thm)],[c_0_39, c_0_31])).
% 0.19/0.47  cnf(c_0_47, plain, (k4_xboole_0(X1,X2)=k4_xboole_0(X3,X2)|~r1_tarski(k4_xboole_0(X3,X2),X1)|~r1_tarski(k4_xboole_0(X1,X2),X3)), inference(spm,[status(thm)],[c_0_40, c_0_33])).
% 0.19/0.47  cnf(c_0_48, plain, (r1_tarski(k4_xboole_0(k4_xboole_0(X1,X2),X3),X1)), inference(spm,[status(thm)],[c_0_41, c_0_28])).
% 0.19/0.47  cnf(c_0_49, negated_conjecture, (k4_xboole_0(k4_xboole_0(X1,esk3_0),k1_tops_1(esk1_0,esk3_0))=k4_xboole_0(X1,esk3_0)), inference(spm,[status(thm)],[c_0_42, c_0_43])).
% 0.19/0.47  fof(c_0_50, plain, ![X22, X23, X24]:(~m1_subset_1(X23,k1_zfmisc_1(X22))|m1_subset_1(k7_subset_1(X22,X23,X24),k1_zfmisc_1(X22))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k7_subset_1])])).
% 0.19/0.47  fof(c_0_51, plain, ![X32, X33, X34]:(~l1_pre_topc(X32)|(~m1_subset_1(X33,k1_zfmisc_1(u1_struct_0(X32)))|(~m1_subset_1(X34,k1_zfmisc_1(u1_struct_0(X32)))|(~r1_tarski(X33,X34)|r1_tarski(k1_tops_1(X32,X33),k1_tops_1(X32,X34)))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t48_tops_1])])])).
% 0.19/0.47  cnf(c_0_52, negated_conjecture, (~r1_tarski(k1_tops_1(esk1_0,k7_subset_1(u1_struct_0(esk1_0),esk2_0,esk3_0)),k7_subset_1(u1_struct_0(esk1_0),k1_tops_1(esk1_0,esk2_0),k1_tops_1(esk1_0,esk3_0)))), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.19/0.47  cnf(c_0_53, negated_conjecture, (k7_subset_1(u1_struct_0(esk1_0),esk2_0,X1)=k4_xboole_0(esk2_0,X1)), inference(spm,[status(thm)],[c_0_44, c_0_45])).
% 0.19/0.47  cnf(c_0_54, negated_conjecture, (k7_subset_1(u1_struct_0(esk1_0),k1_tops_1(esk1_0,X1),X2)=k4_xboole_0(k1_tops_1(esk1_0,X1),X2)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(spm,[status(thm)],[c_0_44, c_0_46])).
% 0.19/0.47  cnf(c_0_55, plain, (k4_xboole_0(k4_xboole_0(X1,X2),X3)=k4_xboole_0(X1,X3)|~r1_tarski(k4_xboole_0(X1,X3),k4_xboole_0(X1,X2))), inference(spm,[status(thm)],[c_0_47, c_0_48])).
% 0.19/0.47  cnf(c_0_56, negated_conjecture, (r1_tarski(k4_xboole_0(X1,esk3_0),k4_xboole_0(X2,k1_tops_1(esk1_0,esk3_0)))|~r1_tarski(k4_xboole_0(X1,esk3_0),X2)), inference(spm,[status(thm)],[c_0_33, c_0_49])).
% 0.19/0.47  cnf(c_0_57, plain, (m1_subset_1(k7_subset_1(X2,X1,X3),k1_zfmisc_1(X2))|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_50])).
% 0.19/0.47  cnf(c_0_58, plain, (r1_tarski(k1_tops_1(X1,X2),k1_tops_1(X1,X3))|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))|~r1_tarski(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_51])).
% 0.19/0.47  cnf(c_0_59, negated_conjecture, (~r1_tarski(k1_tops_1(esk1_0,k4_xboole_0(esk2_0,esk3_0)),k7_subset_1(u1_struct_0(esk1_0),k1_tops_1(esk1_0,esk2_0),k1_tops_1(esk1_0,esk3_0)))), inference(rw,[status(thm)],[c_0_52, c_0_53])).
% 0.19/0.47  cnf(c_0_60, negated_conjecture, (k7_subset_1(u1_struct_0(esk1_0),k1_tops_1(esk1_0,esk2_0),X1)=k4_xboole_0(k1_tops_1(esk1_0,esk2_0),X1)), inference(spm,[status(thm)],[c_0_54, c_0_45])).
% 0.19/0.47  cnf(c_0_61, negated_conjecture, (k4_xboole_0(k4_xboole_0(X1,k1_tops_1(esk1_0,esk3_0)),esk3_0)=k4_xboole_0(X1,esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55, c_0_56]), c_0_28])])).
% 0.19/0.47  cnf(c_0_62, negated_conjecture, (m1_subset_1(k4_xboole_0(esk2_0,X1),k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57, c_0_53]), c_0_45])])).
% 0.19/0.47  cnf(c_0_63, negated_conjecture, (r1_tarski(k1_tops_1(esk1_0,X1),k1_tops_1(esk1_0,X2))|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(esk1_0)))|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0)))|~r1_tarski(X1,X2)), inference(spm,[status(thm)],[c_0_58, c_0_31])).
% 0.19/0.47  cnf(c_0_64, negated_conjecture, (~r1_tarski(k1_tops_1(esk1_0,k4_xboole_0(esk2_0,esk3_0)),k4_xboole_0(k1_tops_1(esk1_0,esk2_0),k1_tops_1(esk1_0,esk3_0)))), inference(rw,[status(thm)],[c_0_59, c_0_60])).
% 0.19/0.47  cnf(c_0_65, negated_conjecture, (r1_tarski(X1,k4_xboole_0(X2,k1_tops_1(esk1_0,esk3_0)))|~r1_tarski(X1,k4_xboole_0(X2,esk3_0))), inference(spm,[status(thm)],[c_0_41, c_0_61])).
% 0.19/0.47  cnf(c_0_66, negated_conjecture, (r1_tarski(k1_tops_1(esk1_0,k4_xboole_0(esk2_0,X1)),k4_xboole_0(esk2_0,X1))), inference(spm,[status(thm)],[c_0_36, c_0_62])).
% 0.19/0.47  cnf(c_0_67, negated_conjecture, (r1_tarski(k1_tops_1(esk1_0,X1),k1_tops_1(esk1_0,esk2_0))|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0)))|~r1_tarski(X1,esk2_0)), inference(spm,[status(thm)],[c_0_63, c_0_45])).
% 0.19/0.47  cnf(c_0_68, negated_conjecture, (~r1_tarski(k1_tops_1(esk1_0,k4_xboole_0(esk2_0,esk3_0)),k4_xboole_0(k1_tops_1(esk1_0,esk2_0),esk3_0))), inference(spm,[status(thm)],[c_0_64, c_0_65])).
% 0.19/0.47  cnf(c_0_69, negated_conjecture, (r1_tarski(k1_tops_1(esk1_0,k4_xboole_0(esk2_0,X1)),k4_xboole_0(X2,X1))|~r1_tarski(k1_tops_1(esk1_0,k4_xboole_0(esk2_0,X1)),X2)), inference(spm,[status(thm)],[c_0_26, c_0_66])).
% 0.19/0.47  cnf(c_0_70, negated_conjecture, (r1_tarski(k1_tops_1(esk1_0,k4_xboole_0(esk2_0,X1)),k1_tops_1(esk1_0,esk2_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_67, c_0_62]), c_0_28])])).
% 0.19/0.47  cnf(c_0_71, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_68, c_0_69]), c_0_70])]), ['proof']).
% 0.19/0.47  # SZS output end CNFRefutation
% 0.19/0.47  # Proof object total steps             : 72
% 0.19/0.47  # Proof object clause steps            : 49
% 0.19/0.47  # Proof object formula steps           : 23
% 0.19/0.47  # Proof object conjectures             : 27
% 0.19/0.47  # Proof object clause conjectures      : 24
% 0.19/0.47  # Proof object formula conjectures     : 3
% 0.19/0.47  # Proof object initial clauses used    : 16
% 0.19/0.47  # Proof object initial formulas used   : 11
% 0.19/0.47  # Proof object generating inferences   : 30
% 0.19/0.47  # Proof object simplifying inferences  : 13
% 0.19/0.47  # Training examples: 0 positive, 0 negative
% 0.19/0.47  # Parsed axioms                        : 12
% 0.19/0.47  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.47  # Initial clauses                      : 19
% 0.19/0.47  # Removed in clause preprocessing      : 0
% 0.19/0.47  # Initial clauses in saturation        : 19
% 0.19/0.47  # Processed clauses                    : 668
% 0.19/0.47  # ...of these trivial                  : 14
% 0.19/0.47  # ...subsumed                          : 204
% 0.19/0.47  # ...remaining for further processing  : 450
% 0.19/0.47  # Other redundant clauses eliminated   : 2
% 0.19/0.47  # Clauses deleted for lack of memory   : 0
% 0.19/0.47  # Backward-subsumed                    : 3
% 0.19/0.47  # Backward-rewritten                   : 6
% 0.19/0.47  # Generated clauses                    : 6700
% 0.19/0.47  # ...of the previous two non-trivial   : 4229
% 0.19/0.47  # Contextual simplify-reflections      : 0
% 0.19/0.47  # Paramodulations                      : 6698
% 0.19/0.47  # Factorizations                       : 0
% 0.19/0.47  # Equation resolutions                 : 2
% 0.19/0.47  # Propositional unsat checks           : 0
% 0.19/0.47  #    Propositional check models        : 0
% 0.19/0.47  #    Propositional check unsatisfiable : 0
% 0.19/0.47  #    Propositional clauses             : 0
% 0.19/0.47  #    Propositional clauses after purity: 0
% 0.19/0.47  #    Propositional unsat core size     : 0
% 0.19/0.47  #    Propositional preprocessing time  : 0.000
% 0.19/0.47  #    Propositional encoding time       : 0.000
% 0.19/0.47  #    Propositional solver time         : 0.000
% 0.19/0.47  #    Success case prop preproc time    : 0.000
% 0.19/0.47  #    Success case prop encoding time   : 0.000
% 0.19/0.47  #    Success case prop solver time     : 0.000
% 0.19/0.47  # Current number of processed clauses  : 421
% 0.19/0.47  #    Positive orientable unit clauses  : 131
% 0.19/0.47  #    Positive unorientable unit clauses: 0
% 0.19/0.47  #    Negative unit clauses             : 2
% 0.19/0.47  #    Non-unit-clauses                  : 288
% 0.19/0.47  # Current number of unprocessed clauses: 3596
% 0.19/0.47  # ...number of literals in the above   : 10263
% 0.19/0.47  # Current number of archived formulas  : 0
% 0.19/0.47  # Current number of archived clauses   : 27
% 0.19/0.47  # Clause-clause subsumption calls (NU) : 11047
% 0.19/0.47  # Rec. Clause-clause subsumption calls : 8570
% 0.19/0.47  # Non-unit clause-clause subsumptions  : 207
% 0.19/0.47  # Unit Clause-clause subsumption calls : 344
% 0.19/0.47  # Rewrite failures with RHS unbound    : 0
% 0.19/0.47  # BW rewrite match attempts            : 600
% 0.19/0.47  # BW rewrite match successes           : 6
% 0.19/0.47  # Condensation attempts                : 0
% 0.19/0.47  # Condensation successes               : 0
% 0.19/0.47  # Termbank termtop insertions          : 133096
% 0.19/0.48  
% 0.19/0.48  # -------------------------------------------------
% 0.19/0.48  # User time                : 0.125 s
% 0.19/0.48  # System time              : 0.009 s
% 0.19/0.48  # Total time               : 0.133 s
% 0.19/0.48  # Maximum resident set size: 1580 pages
%------------------------------------------------------------------------------
