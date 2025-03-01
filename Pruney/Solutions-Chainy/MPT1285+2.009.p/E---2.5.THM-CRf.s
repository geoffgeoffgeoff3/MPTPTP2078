%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n015.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:12:41 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :  106 (13053 expanded)
%              Number of clauses        :   89 (4891 expanded)
%              Number of leaves         :    8 (3101 expanded)
%              Depth                    :   33
%              Number of atoms          :  299 (103253 expanded)
%              Number of equality atoms :   45 (3096 expanded)
%              Maximal formula depth    :   14 (   3 average)
%              Maximal clause size      :   20 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t107_tops_1,conjecture,(
    ! [X1] :
      ( ( v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( l1_pre_topc(X2)
         => ! [X3] :
              ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
             => ! [X4] :
                  ( m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X2)))
                 => ( ( ( v3_pre_topc(X4,X2)
                        & v4_tops_1(X4,X2) )
                     => v6_tops_1(X4,X2) )
                    & ( v6_tops_1(X3,X1)
                     => ( v3_pre_topc(X3,X1)
                        & v4_tops_1(X3,X1) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t107_tops_1)).

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

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).

fof(dt_k2_pre_topc,axiom,(
    ! [X1,X2] :
      ( ( l1_pre_topc(X1)
        & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) )
     => m1_subset_1(k2_pre_topc(X1,X2),k1_zfmisc_1(u1_struct_0(X1))) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k2_pre_topc)).

fof(d8_tops_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ( v6_tops_1(X2,X1)
          <=> X2 = k1_tops_1(X1,k2_pre_topc(X1,X2)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d8_tops_1)).

fof(t44_tops_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => r1_tarski(k1_tops_1(X1,X2),X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t44_tops_1)).

fof(fc9_tops_1,axiom,(
    ! [X1,X2] :
      ( ( v2_pre_topc(X1)
        & l1_pre_topc(X1)
        & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) )
     => v3_pre_topc(k1_tops_1(X1,X2),X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc9_tops_1)).

fof(d6_tops_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ( v4_tops_1(X2,X1)
          <=> ( r1_tarski(k1_tops_1(X1,k2_pre_topc(X1,X2)),X2)
              & r1_tarski(X2,k2_pre_topc(X1,k1_tops_1(X1,X2))) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d6_tops_1)).

fof(c_0_8,negated_conjecture,(
    ~ ! [X1] :
        ( ( v2_pre_topc(X1)
          & l1_pre_topc(X1) )
       => ! [X2] :
            ( l1_pre_topc(X2)
           => ! [X3] :
                ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
               => ! [X4] :
                    ( m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X2)))
                   => ( ( ( v3_pre_topc(X4,X2)
                          & v4_tops_1(X4,X2) )
                       => v6_tops_1(X4,X2) )
                      & ( v6_tops_1(X3,X1)
                       => ( v3_pre_topc(X3,X1)
                          & v4_tops_1(X3,X1) ) ) ) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t107_tops_1])).

fof(c_0_9,plain,(
    ! [X17,X18,X19] :
      ( ~ l1_pre_topc(X17)
      | ~ m1_subset_1(X18,k1_zfmisc_1(u1_struct_0(X17)))
      | ~ m1_subset_1(X19,k1_zfmisc_1(u1_struct_0(X17)))
      | ~ v3_pre_topc(X18,X17)
      | ~ r1_tarski(X18,X19)
      | r1_tarski(X18,k1_tops_1(X17,X19)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t56_tops_1])])])).

fof(c_0_10,negated_conjecture,
    ( v2_pre_topc(esk1_0)
    & l1_pre_topc(esk1_0)
    & l1_pre_topc(esk2_0)
    & m1_subset_1(esk3_0,k1_zfmisc_1(u1_struct_0(esk1_0)))
    & m1_subset_1(esk4_0,k1_zfmisc_1(u1_struct_0(esk2_0)))
    & ( v6_tops_1(esk3_0,esk1_0)
      | v3_pre_topc(esk4_0,esk2_0) )
    & ( ~ v3_pre_topc(esk3_0,esk1_0)
      | ~ v4_tops_1(esk3_0,esk1_0)
      | v3_pre_topc(esk4_0,esk2_0) )
    & ( v6_tops_1(esk3_0,esk1_0)
      | v4_tops_1(esk4_0,esk2_0) )
    & ( ~ v3_pre_topc(esk3_0,esk1_0)
      | ~ v4_tops_1(esk3_0,esk1_0)
      | v4_tops_1(esk4_0,esk2_0) )
    & ( v6_tops_1(esk3_0,esk1_0)
      | ~ v6_tops_1(esk4_0,esk2_0) )
    & ( ~ v3_pre_topc(esk3_0,esk1_0)
      | ~ v4_tops_1(esk3_0,esk1_0)
      | ~ v6_tops_1(esk4_0,esk2_0) ) ),
    inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_8])])])])).

fof(c_0_11,plain,(
    ! [X5,X6] :
      ( ( r1_tarski(X5,X6)
        | X5 != X6 )
      & ( r1_tarski(X6,X5)
        | X5 != X6 )
      & ( ~ r1_tarski(X5,X6)
        | ~ r1_tarski(X6,X5)
        | X5 = X6 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

fof(c_0_12,plain,(
    ! [X7,X8] :
      ( ~ l1_pre_topc(X7)
      | ~ m1_subset_1(X8,k1_zfmisc_1(u1_struct_0(X7)))
      | m1_subset_1(k2_pre_topc(X7,X8),k1_zfmisc_1(u1_struct_0(X7))) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_pre_topc])])).

fof(c_0_13,plain,(
    ! [X11,X12] :
      ( ( ~ v6_tops_1(X12,X11)
        | X12 = k1_tops_1(X11,k2_pre_topc(X11,X12))
        | ~ m1_subset_1(X12,k1_zfmisc_1(u1_struct_0(X11)))
        | ~ l1_pre_topc(X11) )
      & ( X12 != k1_tops_1(X11,k2_pre_topc(X11,X12))
        | v6_tops_1(X12,X11)
        | ~ m1_subset_1(X12,k1_zfmisc_1(u1_struct_0(X11)))
        | ~ l1_pre_topc(X11) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d8_tops_1])])])])).

cnf(c_0_14,plain,
    ( r1_tarski(X2,k1_tops_1(X1,X3))
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v3_pre_topc(X2,X1)
    | ~ r1_tarski(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_15,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(u1_struct_0(esk2_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_16,negated_conjecture,
    ( l1_pre_topc(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_17,plain,
    ( r1_tarski(X1,X2)
    | X2 != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

fof(c_0_18,plain,(
    ! [X15,X16] :
      ( ~ l1_pre_topc(X15)
      | ~ m1_subset_1(X16,k1_zfmisc_1(u1_struct_0(X15)))
      | r1_tarski(k1_tops_1(X15,X16),X16) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t44_tops_1])])])).

fof(c_0_19,plain,(
    ! [X13,X14] :
      ( ~ v2_pre_topc(X13)
      | ~ l1_pre_topc(X13)
      | ~ m1_subset_1(X14,k1_zfmisc_1(u1_struct_0(X13)))
      | v3_pre_topc(k1_tops_1(X13,X14),X13) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[fc9_tops_1])])).

cnf(c_0_20,plain,
    ( m1_subset_1(k2_pre_topc(X1,X2),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_21,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_22,negated_conjecture,
    ( l1_pre_topc(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_23,plain,
    ( X1 = k1_tops_1(X2,k2_pre_topc(X2,X1))
    | ~ v6_tops_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))
    | ~ l1_pre_topc(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_24,negated_conjecture,
    ( r1_tarski(X1,k1_tops_1(esk2_0,esk4_0))
    | ~ v3_pre_topc(X1,esk2_0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk2_0)))
    | ~ r1_tarski(X1,esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_14,c_0_15]),c_0_16])])).

cnf(c_0_25,negated_conjecture,
    ( v6_tops_1(esk3_0,esk1_0)
    | v3_pre_topc(esk4_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_26,plain,
    ( r1_tarski(X1,X1) ),
    inference(er,[status(thm)],[c_0_17])).

cnf(c_0_27,plain,
    ( r1_tarski(k1_tops_1(X1,X2),X2)
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_28,plain,
    ( v3_pre_topc(k1_tops_1(X1,X2),X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_29,negated_conjecture,
    ( m1_subset_1(k2_pre_topc(esk1_0,esk3_0),k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_20,c_0_21]),c_0_22])])).

cnf(c_0_30,negated_conjecture,
    ( v2_pre_topc(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_31,negated_conjecture,
    ( k1_tops_1(esk1_0,k2_pre_topc(esk1_0,esk3_0)) = esk3_0
    | ~ v6_tops_1(esk3_0,esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_23,c_0_21]),c_0_22])])).

cnf(c_0_32,negated_conjecture,
    ( v6_tops_1(esk3_0,esk1_0)
    | v4_tops_1(esk4_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_33,plain,
    ( X1 = X2
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_34,negated_conjecture,
    ( v6_tops_1(esk3_0,esk1_0)
    | r1_tarski(esk4_0,k1_tops_1(esk2_0,esk4_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24,c_0_25]),c_0_15]),c_0_26])])).

cnf(c_0_35,negated_conjecture,
    ( r1_tarski(k1_tops_1(esk2_0,esk4_0),esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27,c_0_15]),c_0_16])])).

cnf(c_0_36,negated_conjecture,
    ( v3_pre_topc(k1_tops_1(esk1_0,k2_pre_topc(esk1_0,esk3_0)),esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28,c_0_29]),c_0_30]),c_0_22])])).

cnf(c_0_37,negated_conjecture,
    ( k1_tops_1(esk1_0,k2_pre_topc(esk1_0,esk3_0)) = esk3_0
    | v4_tops_1(esk4_0,esk2_0) ),
    inference(spm,[status(thm)],[c_0_31,c_0_32])).

cnf(c_0_38,negated_conjecture,
    ( k1_tops_1(esk2_0,esk4_0) = esk4_0
    | v6_tops_1(esk3_0,esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_34]),c_0_35])])).

fof(c_0_39,plain,(
    ! [X9,X10] :
      ( ( r1_tarski(k1_tops_1(X9,k2_pre_topc(X9,X10)),X10)
        | ~ v4_tops_1(X10,X9)
        | ~ m1_subset_1(X10,k1_zfmisc_1(u1_struct_0(X9)))
        | ~ l1_pre_topc(X9) )
      & ( r1_tarski(X10,k2_pre_topc(X9,k1_tops_1(X9,X10)))
        | ~ v4_tops_1(X10,X9)
        | ~ m1_subset_1(X10,k1_zfmisc_1(u1_struct_0(X9)))
        | ~ l1_pre_topc(X9) )
      & ( ~ r1_tarski(k1_tops_1(X9,k2_pre_topc(X9,X10)),X10)
        | ~ r1_tarski(X10,k2_pre_topc(X9,k1_tops_1(X9,X10)))
        | v4_tops_1(X10,X9)
        | ~ m1_subset_1(X10,k1_zfmisc_1(u1_struct_0(X9)))
        | ~ l1_pre_topc(X9) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d6_tops_1])])])])).

cnf(c_0_40,negated_conjecture,
    ( r1_tarski(X1,k1_tops_1(esk1_0,esk3_0))
    | ~ v3_pre_topc(X1,esk1_0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ r1_tarski(X1,esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_14,c_0_21]),c_0_22])])).

cnf(c_0_41,negated_conjecture,
    ( v3_pre_topc(esk3_0,esk1_0)
    | v4_tops_1(esk4_0,esk2_0) ),
    inference(spm,[status(thm)],[c_0_36,c_0_37])).

cnf(c_0_42,negated_conjecture,
    ( k1_tops_1(esk1_0,k2_pre_topc(esk1_0,esk3_0)) = esk3_0
    | k1_tops_1(esk2_0,esk4_0) = esk4_0 ),
    inference(spm,[status(thm)],[c_0_31,c_0_38])).

cnf(c_0_43,plain,
    ( r1_tarski(X1,k2_pre_topc(X2,k1_tops_1(X2,X1)))
    | ~ v4_tops_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))
    | ~ l1_pre_topc(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_44,negated_conjecture,
    ( v4_tops_1(esk4_0,esk2_0)
    | r1_tarski(esk3_0,k1_tops_1(esk1_0,esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_41]),c_0_21]),c_0_26])])).

cnf(c_0_45,negated_conjecture,
    ( r1_tarski(k1_tops_1(esk1_0,esk3_0),esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27,c_0_21]),c_0_22])])).

cnf(c_0_46,negated_conjecture,
    ( k1_tops_1(esk2_0,esk4_0) = esk4_0
    | v3_pre_topc(esk3_0,esk1_0) ),
    inference(spm,[status(thm)],[c_0_36,c_0_42])).

cnf(c_0_47,plain,
    ( r1_tarski(k1_tops_1(X1,k2_pre_topc(X1,X2)),X2)
    | ~ v4_tops_1(X2,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_48,negated_conjecture,
    ( m1_subset_1(k2_pre_topc(esk2_0,esk4_0),k1_zfmisc_1(u1_struct_0(esk2_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_20,c_0_15]),c_0_16])])).

cnf(c_0_49,negated_conjecture,
    ( r1_tarski(esk4_0,k2_pre_topc(esk2_0,k1_tops_1(esk2_0,esk4_0)))
    | ~ v4_tops_1(esk4_0,esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43,c_0_15]),c_0_16])])).

cnf(c_0_50,negated_conjecture,
    ( k1_tops_1(esk1_0,esk3_0) = esk3_0
    | v4_tops_1(esk4_0,esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_44]),c_0_45])])).

cnf(c_0_51,negated_conjecture,
    ( k1_tops_1(esk2_0,esk4_0) = esk4_0
    | r1_tarski(esk3_0,k1_tops_1(esk1_0,esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_46]),c_0_21]),c_0_26])])).

cnf(c_0_52,negated_conjecture,
    ( r1_tarski(k1_tops_1(esk2_0,k2_pre_topc(esk2_0,esk4_0)),esk4_0)
    | ~ v4_tops_1(esk4_0,esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47,c_0_15]),c_0_16])])).

cnf(c_0_53,negated_conjecture,
    ( r1_tarski(X1,k1_tops_1(esk2_0,k2_pre_topc(esk2_0,esk4_0)))
    | ~ v3_pre_topc(X1,esk2_0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk2_0)))
    | ~ r1_tarski(X1,k2_pre_topc(esk2_0,esk4_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_14,c_0_48]),c_0_16])])).

cnf(c_0_54,negated_conjecture,
    ( k1_tops_1(esk1_0,esk3_0) = esk3_0
    | r1_tarski(esk4_0,k2_pre_topc(esk2_0,k1_tops_1(esk2_0,esk4_0))) ),
    inference(spm,[status(thm)],[c_0_49,c_0_50])).

cnf(c_0_55,negated_conjecture,
    ( k1_tops_1(esk2_0,esk4_0) = esk4_0
    | k1_tops_1(esk1_0,esk3_0) = esk3_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_51]),c_0_45])])).

cnf(c_0_56,negated_conjecture,
    ( k1_tops_1(esk1_0,esk3_0) = esk3_0
    | r1_tarski(k1_tops_1(esk2_0,k2_pre_topc(esk2_0,esk4_0)),esk4_0) ),
    inference(spm,[status(thm)],[c_0_52,c_0_50])).

cnf(c_0_57,negated_conjecture,
    ( v6_tops_1(esk3_0,esk1_0)
    | r1_tarski(esk4_0,k1_tops_1(esk2_0,k2_pre_topc(esk2_0,esk4_0)))
    | ~ r1_tarski(esk4_0,k2_pre_topc(esk2_0,esk4_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53,c_0_25]),c_0_15])])).

cnf(c_0_58,negated_conjecture,
    ( k1_tops_1(esk1_0,esk3_0) = esk3_0
    | r1_tarski(esk4_0,k2_pre_topc(esk2_0,esk4_0)) ),
    inference(spm,[status(thm)],[c_0_54,c_0_55])).

cnf(c_0_59,negated_conjecture,
    ( k1_tops_1(esk2_0,k2_pre_topc(esk2_0,esk4_0)) = esk4_0
    | k1_tops_1(esk1_0,esk3_0) = esk3_0
    | ~ r1_tarski(esk4_0,k1_tops_1(esk2_0,k2_pre_topc(esk2_0,esk4_0))) ),
    inference(spm,[status(thm)],[c_0_33,c_0_56])).

cnf(c_0_60,negated_conjecture,
    ( k1_tops_1(esk1_0,esk3_0) = esk3_0
    | v6_tops_1(esk3_0,esk1_0)
    | r1_tarski(esk4_0,k1_tops_1(esk2_0,k2_pre_topc(esk2_0,esk4_0))) ),
    inference(spm,[status(thm)],[c_0_57,c_0_58])).

cnf(c_0_61,plain,
    ( v6_tops_1(X1,X2)
    | X1 != k1_tops_1(X2,k2_pre_topc(X2,X1))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))
    | ~ l1_pre_topc(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_62,negated_conjecture,
    ( k1_tops_1(esk2_0,k2_pre_topc(esk2_0,esk4_0)) = esk4_0
    | k1_tops_1(esk1_0,esk3_0) = esk3_0
    | v6_tops_1(esk3_0,esk1_0) ),
    inference(spm,[status(thm)],[c_0_59,c_0_60])).

cnf(c_0_63,negated_conjecture,
    ( v6_tops_1(esk3_0,esk1_0)
    | ~ v6_tops_1(esk4_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_64,negated_conjecture,
    ( k1_tops_1(esk1_0,esk3_0) = esk3_0
    | v6_tops_1(esk3_0,esk1_0) ),
    inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_61,c_0_62]),c_0_15]),c_0_16])]),c_0_63])).

cnf(c_0_65,negated_conjecture,
    ( k1_tops_1(esk1_0,k2_pre_topc(esk1_0,esk3_0)) = esk3_0
    | k1_tops_1(esk1_0,esk3_0) = esk3_0 ),
    inference(spm,[status(thm)],[c_0_31,c_0_64])).

cnf(c_0_66,plain,
    ( v4_tops_1(X2,X1)
    | ~ r1_tarski(k1_tops_1(X1,k2_pre_topc(X1,X2)),X2)
    | ~ r1_tarski(X2,k2_pre_topc(X1,k1_tops_1(X1,X2)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_67,negated_conjecture,
    ( k1_tops_1(esk1_0,esk3_0) = esk3_0
    | v3_pre_topc(esk3_0,esk1_0) ),
    inference(spm,[status(thm)],[c_0_36,c_0_65])).

cnf(c_0_68,negated_conjecture,
    ( k1_tops_1(esk1_0,esk3_0) = esk3_0
    | ~ r1_tarski(esk3_0,k1_tops_1(esk1_0,esk3_0)) ),
    inference(spm,[status(thm)],[c_0_33,c_0_45])).

cnf(c_0_69,negated_conjecture,
    ( v4_tops_1(esk3_0,esk1_0)
    | ~ r1_tarski(esk3_0,k2_pre_topc(esk1_0,k1_tops_1(esk1_0,esk3_0)))
    | ~ r1_tarski(k1_tops_1(esk1_0,k2_pre_topc(esk1_0,esk3_0)),esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_66,c_0_21]),c_0_22])])).

cnf(c_0_70,negated_conjecture,
    ( k1_tops_1(esk1_0,esk3_0) = esk3_0 ),
    inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_67]),c_0_21]),c_0_26])]),c_0_68])).

cnf(c_0_71,negated_conjecture,
    ( r1_tarski(k1_tops_1(esk1_0,k2_pre_topc(esk1_0,esk3_0)),k2_pre_topc(esk1_0,esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27,c_0_29]),c_0_22])])).

cnf(c_0_72,negated_conjecture,
    ( v4_tops_1(esk4_0,esk2_0)
    | ~ v3_pre_topc(esk3_0,esk1_0)
    | ~ v4_tops_1(esk3_0,esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_73,negated_conjecture,
    ( v3_pre_topc(k1_tops_1(esk1_0,esk3_0),esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28,c_0_21]),c_0_30]),c_0_22])])).

cnf(c_0_74,negated_conjecture,
    ( v4_tops_1(esk3_0,esk1_0)
    | ~ r1_tarski(k1_tops_1(esk1_0,k2_pre_topc(esk1_0,esk3_0)),esk3_0)
    | ~ r1_tarski(esk3_0,k2_pre_topc(esk1_0,esk3_0)) ),
    inference(rw,[status(thm)],[c_0_69,c_0_70])).

cnf(c_0_75,negated_conjecture,
    ( k1_tops_1(esk2_0,esk4_0) = esk4_0
    | r1_tarski(esk3_0,k2_pre_topc(esk1_0,esk3_0)) ),
    inference(spm,[status(thm)],[c_0_71,c_0_42])).

cnf(c_0_76,negated_conjecture,
    ( v4_tops_1(esk4_0,esk2_0)
    | r1_tarski(esk3_0,k2_pre_topc(esk1_0,esk3_0)) ),
    inference(spm,[status(thm)],[c_0_71,c_0_37])).

cnf(c_0_77,negated_conjecture,
    ( v4_tops_1(esk4_0,esk2_0)
    | ~ v4_tops_1(esk3_0,esk1_0) ),
    inference(spm,[status(thm)],[c_0_72,c_0_41])).

cnf(c_0_78,negated_conjecture,
    ( v3_pre_topc(esk4_0,esk2_0)
    | ~ v3_pre_topc(esk3_0,esk1_0)
    | ~ v4_tops_1(esk3_0,esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_79,negated_conjecture,
    ( v3_pre_topc(esk3_0,esk1_0) ),
    inference(rw,[status(thm)],[c_0_73,c_0_70])).

cnf(c_0_80,negated_conjecture,
    ( k1_tops_1(esk2_0,esk4_0) = esk4_0
    | v4_tops_1(esk3_0,esk1_0)
    | ~ r1_tarski(k1_tops_1(esk1_0,k2_pre_topc(esk1_0,esk3_0)),esk3_0) ),
    inference(spm,[status(thm)],[c_0_74,c_0_75])).

cnf(c_0_81,negated_conjecture,
    ( v4_tops_1(esk4_0,esk2_0)
    | ~ r1_tarski(k1_tops_1(esk1_0,k2_pre_topc(esk1_0,esk3_0)),esk3_0) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_74,c_0_76]),c_0_77])).

cnf(c_0_82,negated_conjecture,
    ( v3_pre_topc(esk4_0,esk2_0)
    | ~ v4_tops_1(esk3_0,esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_78,c_0_79])])).

cnf(c_0_83,negated_conjecture,
    ( k1_tops_1(esk2_0,esk4_0) = esk4_0
    | v4_tops_1(esk3_0,esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_80,c_0_42]),c_0_26])])).

cnf(c_0_84,negated_conjecture,
    ( v4_tops_1(esk4_0,esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_81,c_0_37]),c_0_26])])).

cnf(c_0_85,negated_conjecture,
    ( k1_tops_1(esk2_0,esk4_0) = esk4_0
    | v3_pre_topc(esk4_0,esk2_0) ),
    inference(spm,[status(thm)],[c_0_82,c_0_83])).

cnf(c_0_86,negated_conjecture,
    ( k1_tops_1(esk2_0,esk4_0) = esk4_0
    | ~ r1_tarski(esk4_0,k1_tops_1(esk2_0,esk4_0)) ),
    inference(spm,[status(thm)],[c_0_33,c_0_35])).

cnf(c_0_87,negated_conjecture,
    ( r1_tarski(esk4_0,k2_pre_topc(esk2_0,k1_tops_1(esk2_0,esk4_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_49,c_0_84])])).

cnf(c_0_88,negated_conjecture,
    ( k1_tops_1(esk2_0,esk4_0) = esk4_0 ),
    inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24,c_0_85]),c_0_15]),c_0_26])]),c_0_86])).

cnf(c_0_89,negated_conjecture,
    ( r1_tarski(esk4_0,k2_pre_topc(esk2_0,esk4_0)) ),
    inference(rw,[status(thm)],[c_0_87,c_0_88])).

cnf(c_0_90,negated_conjecture,
    ( v6_tops_1(esk3_0,esk1_0)
    | r1_tarski(esk4_0,k1_tops_1(esk2_0,k2_pre_topc(esk2_0,esk4_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_57,c_0_89])])).

cnf(c_0_91,negated_conjecture,
    ( r1_tarski(k1_tops_1(esk2_0,k2_pre_topc(esk2_0,esk4_0)),esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_52,c_0_84])])).

cnf(c_0_92,negated_conjecture,
    ( k1_tops_1(esk2_0,k2_pre_topc(esk2_0,esk4_0)) = esk4_0
    | v6_tops_1(esk3_0,esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_90]),c_0_91])])).

cnf(c_0_93,negated_conjecture,
    ( v6_tops_1(esk3_0,esk1_0) ),
    inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_61,c_0_92]),c_0_15]),c_0_16])]),c_0_63])).

cnf(c_0_94,negated_conjecture,
    ( k1_tops_1(esk1_0,k2_pre_topc(esk1_0,esk3_0)) = esk3_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_31,c_0_93])])).

cnf(c_0_95,negated_conjecture,
    ( v4_tops_1(esk3_0,esk1_0)
    | ~ r1_tarski(esk3_0,k2_pre_topc(esk1_0,esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_74,c_0_94]),c_0_26])])).

cnf(c_0_96,negated_conjecture,
    ( r1_tarski(esk3_0,k2_pre_topc(esk1_0,esk3_0)) ),
    inference(rw,[status(thm)],[c_0_71,c_0_94])).

cnf(c_0_97,negated_conjecture,
    ( v4_tops_1(esk3_0,esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_95,c_0_96])])).

cnf(c_0_98,negated_conjecture,
    ( v3_pre_topc(esk4_0,esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_82,c_0_97])])).

cnf(c_0_99,negated_conjecture,
    ( ~ v3_pre_topc(esk3_0,esk1_0)
    | ~ v4_tops_1(esk3_0,esk1_0)
    | ~ v6_tops_1(esk4_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_100,negated_conjecture,
    ( k1_tops_1(esk2_0,k2_pre_topc(esk2_0,esk4_0)) = esk4_0
    | ~ r1_tarski(esk4_0,k1_tops_1(esk2_0,k2_pre_topc(esk2_0,esk4_0))) ),
    inference(spm,[status(thm)],[c_0_33,c_0_91])).

cnf(c_0_101,negated_conjecture,
    ( r1_tarski(esk4_0,k1_tops_1(esk2_0,k2_pre_topc(esk2_0,esk4_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53,c_0_98]),c_0_15]),c_0_89])])).

cnf(c_0_102,negated_conjecture,
    ( ~ v6_tops_1(esk4_0,esk2_0)
    | ~ v4_tops_1(esk3_0,esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_99,c_0_79])])).

cnf(c_0_103,negated_conjecture,
    ( k1_tops_1(esk2_0,k2_pre_topc(esk2_0,esk4_0)) = esk4_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_100,c_0_101])])).

cnf(c_0_104,negated_conjecture,
    ( ~ v6_tops_1(esk4_0,esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_102,c_0_97])])).

cnf(c_0_105,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_61,c_0_103]),c_0_15]),c_0_16])]),c_0_104]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.13/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.13/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n015.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 10:36:23 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.13/0.38  # AutoSched0-Mode selected heuristic G_E___207_C18_F1_SE_CS_SP_PI_PS_S2S
% 0.13/0.38  # and selection function SelectNewComplexAHP.
% 0.13/0.38  #
% 0.13/0.38  # Preprocessing time       : 0.027 s
% 0.13/0.38  # Presaturation interreduction done
% 0.13/0.38  
% 0.13/0.38  # Proof found!
% 0.13/0.38  # SZS status Theorem
% 0.13/0.38  # SZS output start CNFRefutation
% 0.13/0.38  fof(t107_tops_1, conjecture, ![X1]:((v2_pre_topc(X1)&l1_pre_topc(X1))=>![X2]:(l1_pre_topc(X2)=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))=>![X4]:(m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X2)))=>(((v3_pre_topc(X4,X2)&v4_tops_1(X4,X2))=>v6_tops_1(X4,X2))&(v6_tops_1(X3,X1)=>(v3_pre_topc(X3,X1)&v4_tops_1(X3,X1)))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t107_tops_1)).
% 0.13/0.38  fof(t56_tops_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))=>((v3_pre_topc(X2,X1)&r1_tarski(X2,X3))=>r1_tarski(X2,k1_tops_1(X1,X3)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t56_tops_1)).
% 0.13/0.38  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.13/0.38  fof(dt_k2_pre_topc, axiom, ![X1, X2]:((l1_pre_topc(X1)&m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))))=>m1_subset_1(k2_pre_topc(X1,X2),k1_zfmisc_1(u1_struct_0(X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k2_pre_topc)).
% 0.13/0.38  fof(d8_tops_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>(v6_tops_1(X2,X1)<=>X2=k1_tops_1(X1,k2_pre_topc(X1,X2))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d8_tops_1)).
% 0.13/0.38  fof(t44_tops_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>r1_tarski(k1_tops_1(X1,X2),X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t44_tops_1)).
% 0.13/0.38  fof(fc9_tops_1, axiom, ![X1, X2]:(((v2_pre_topc(X1)&l1_pre_topc(X1))&m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))))=>v3_pre_topc(k1_tops_1(X1,X2),X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc9_tops_1)).
% 0.13/0.38  fof(d6_tops_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>(v4_tops_1(X2,X1)<=>(r1_tarski(k1_tops_1(X1,k2_pre_topc(X1,X2)),X2)&r1_tarski(X2,k2_pre_topc(X1,k1_tops_1(X1,X2))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d6_tops_1)).
% 0.13/0.38  fof(c_0_8, negated_conjecture, ~(![X1]:((v2_pre_topc(X1)&l1_pre_topc(X1))=>![X2]:(l1_pre_topc(X2)=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))=>![X4]:(m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X2)))=>(((v3_pre_topc(X4,X2)&v4_tops_1(X4,X2))=>v6_tops_1(X4,X2))&(v6_tops_1(X3,X1)=>(v3_pre_topc(X3,X1)&v4_tops_1(X3,X1))))))))), inference(assume_negation,[status(cth)],[t107_tops_1])).
% 0.13/0.38  fof(c_0_9, plain, ![X17, X18, X19]:(~l1_pre_topc(X17)|(~m1_subset_1(X18,k1_zfmisc_1(u1_struct_0(X17)))|(~m1_subset_1(X19,k1_zfmisc_1(u1_struct_0(X17)))|(~v3_pre_topc(X18,X17)|~r1_tarski(X18,X19)|r1_tarski(X18,k1_tops_1(X17,X19)))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t56_tops_1])])])).
% 0.13/0.38  fof(c_0_10, negated_conjecture, ((v2_pre_topc(esk1_0)&l1_pre_topc(esk1_0))&(l1_pre_topc(esk2_0)&(m1_subset_1(esk3_0,k1_zfmisc_1(u1_struct_0(esk1_0)))&(m1_subset_1(esk4_0,k1_zfmisc_1(u1_struct_0(esk2_0)))&((((v6_tops_1(esk3_0,esk1_0)|v3_pre_topc(esk4_0,esk2_0))&(~v3_pre_topc(esk3_0,esk1_0)|~v4_tops_1(esk3_0,esk1_0)|v3_pre_topc(esk4_0,esk2_0)))&((v6_tops_1(esk3_0,esk1_0)|v4_tops_1(esk4_0,esk2_0))&(~v3_pre_topc(esk3_0,esk1_0)|~v4_tops_1(esk3_0,esk1_0)|v4_tops_1(esk4_0,esk2_0))))&((v6_tops_1(esk3_0,esk1_0)|~v6_tops_1(esk4_0,esk2_0))&(~v3_pre_topc(esk3_0,esk1_0)|~v4_tops_1(esk3_0,esk1_0)|~v6_tops_1(esk4_0,esk2_0)))))))), inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_8])])])])).
% 0.13/0.38  fof(c_0_11, plain, ![X5, X6]:(((r1_tarski(X5,X6)|X5!=X6)&(r1_tarski(X6,X5)|X5!=X6))&(~r1_tarski(X5,X6)|~r1_tarski(X6,X5)|X5=X6)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.13/0.38  fof(c_0_12, plain, ![X7, X8]:(~l1_pre_topc(X7)|~m1_subset_1(X8,k1_zfmisc_1(u1_struct_0(X7)))|m1_subset_1(k2_pre_topc(X7,X8),k1_zfmisc_1(u1_struct_0(X7)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_pre_topc])])).
% 0.13/0.38  fof(c_0_13, plain, ![X11, X12]:((~v6_tops_1(X12,X11)|X12=k1_tops_1(X11,k2_pre_topc(X11,X12))|~m1_subset_1(X12,k1_zfmisc_1(u1_struct_0(X11)))|~l1_pre_topc(X11))&(X12!=k1_tops_1(X11,k2_pre_topc(X11,X12))|v6_tops_1(X12,X11)|~m1_subset_1(X12,k1_zfmisc_1(u1_struct_0(X11)))|~l1_pre_topc(X11))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d8_tops_1])])])])).
% 0.13/0.38  cnf(c_0_14, plain, (r1_tarski(X2,k1_tops_1(X1,X3))|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))|~v3_pre_topc(X2,X1)|~r1_tarski(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.38  cnf(c_0_15, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(u1_struct_0(esk2_0)))), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_16, negated_conjecture, (l1_pre_topc(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_17, plain, (r1_tarski(X1,X2)|X2!=X1), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.13/0.38  fof(c_0_18, plain, ![X15, X16]:(~l1_pre_topc(X15)|(~m1_subset_1(X16,k1_zfmisc_1(u1_struct_0(X15)))|r1_tarski(k1_tops_1(X15,X16),X16))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t44_tops_1])])])).
% 0.13/0.38  fof(c_0_19, plain, ![X13, X14]:(~v2_pre_topc(X13)|~l1_pre_topc(X13)|~m1_subset_1(X14,k1_zfmisc_1(u1_struct_0(X13)))|v3_pre_topc(k1_tops_1(X13,X14),X13)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[fc9_tops_1])])).
% 0.13/0.38  cnf(c_0_20, plain, (m1_subset_1(k2_pre_topc(X1,X2),k1_zfmisc_1(u1_struct_0(X1)))|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.13/0.38  cnf(c_0_21, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_22, negated_conjecture, (l1_pre_topc(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_23, plain, (X1=k1_tops_1(X2,k2_pre_topc(X2,X1))|~v6_tops_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))|~l1_pre_topc(X2)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.13/0.38  cnf(c_0_24, negated_conjecture, (r1_tarski(X1,k1_tops_1(esk2_0,esk4_0))|~v3_pre_topc(X1,esk2_0)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk2_0)))|~r1_tarski(X1,esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_14, c_0_15]), c_0_16])])).
% 0.13/0.38  cnf(c_0_25, negated_conjecture, (v6_tops_1(esk3_0,esk1_0)|v3_pre_topc(esk4_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_26, plain, (r1_tarski(X1,X1)), inference(er,[status(thm)],[c_0_17])).
% 0.13/0.38  cnf(c_0_27, plain, (r1_tarski(k1_tops_1(X1,X2),X2)|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.13/0.38  cnf(c_0_28, plain, (v3_pre_topc(k1_tops_1(X1,X2),X1)|~v2_pre_topc(X1)|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.13/0.38  cnf(c_0_29, negated_conjecture, (m1_subset_1(k2_pre_topc(esk1_0,esk3_0),k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_20, c_0_21]), c_0_22])])).
% 0.13/0.38  cnf(c_0_30, negated_conjecture, (v2_pre_topc(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_31, negated_conjecture, (k1_tops_1(esk1_0,k2_pre_topc(esk1_0,esk3_0))=esk3_0|~v6_tops_1(esk3_0,esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_23, c_0_21]), c_0_22])])).
% 0.13/0.38  cnf(c_0_32, negated_conjecture, (v6_tops_1(esk3_0,esk1_0)|v4_tops_1(esk4_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_33, plain, (X1=X2|~r1_tarski(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.13/0.38  cnf(c_0_34, negated_conjecture, (v6_tops_1(esk3_0,esk1_0)|r1_tarski(esk4_0,k1_tops_1(esk2_0,esk4_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24, c_0_25]), c_0_15]), c_0_26])])).
% 0.13/0.38  cnf(c_0_35, negated_conjecture, (r1_tarski(k1_tops_1(esk2_0,esk4_0),esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27, c_0_15]), c_0_16])])).
% 0.13/0.38  cnf(c_0_36, negated_conjecture, (v3_pre_topc(k1_tops_1(esk1_0,k2_pre_topc(esk1_0,esk3_0)),esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28, c_0_29]), c_0_30]), c_0_22])])).
% 0.13/0.38  cnf(c_0_37, negated_conjecture, (k1_tops_1(esk1_0,k2_pre_topc(esk1_0,esk3_0))=esk3_0|v4_tops_1(esk4_0,esk2_0)), inference(spm,[status(thm)],[c_0_31, c_0_32])).
% 0.13/0.38  cnf(c_0_38, negated_conjecture, (k1_tops_1(esk2_0,esk4_0)=esk4_0|v6_tops_1(esk3_0,esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33, c_0_34]), c_0_35])])).
% 0.13/0.38  fof(c_0_39, plain, ![X9, X10]:(((r1_tarski(k1_tops_1(X9,k2_pre_topc(X9,X10)),X10)|~v4_tops_1(X10,X9)|~m1_subset_1(X10,k1_zfmisc_1(u1_struct_0(X9)))|~l1_pre_topc(X9))&(r1_tarski(X10,k2_pre_topc(X9,k1_tops_1(X9,X10)))|~v4_tops_1(X10,X9)|~m1_subset_1(X10,k1_zfmisc_1(u1_struct_0(X9)))|~l1_pre_topc(X9)))&(~r1_tarski(k1_tops_1(X9,k2_pre_topc(X9,X10)),X10)|~r1_tarski(X10,k2_pre_topc(X9,k1_tops_1(X9,X10)))|v4_tops_1(X10,X9)|~m1_subset_1(X10,k1_zfmisc_1(u1_struct_0(X9)))|~l1_pre_topc(X9))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d6_tops_1])])])])).
% 0.13/0.38  cnf(c_0_40, negated_conjecture, (r1_tarski(X1,k1_tops_1(esk1_0,esk3_0))|~v3_pre_topc(X1,esk1_0)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0)))|~r1_tarski(X1,esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_14, c_0_21]), c_0_22])])).
% 0.13/0.38  cnf(c_0_41, negated_conjecture, (v3_pre_topc(esk3_0,esk1_0)|v4_tops_1(esk4_0,esk2_0)), inference(spm,[status(thm)],[c_0_36, c_0_37])).
% 0.13/0.38  cnf(c_0_42, negated_conjecture, (k1_tops_1(esk1_0,k2_pre_topc(esk1_0,esk3_0))=esk3_0|k1_tops_1(esk2_0,esk4_0)=esk4_0), inference(spm,[status(thm)],[c_0_31, c_0_38])).
% 0.13/0.38  cnf(c_0_43, plain, (r1_tarski(X1,k2_pre_topc(X2,k1_tops_1(X2,X1)))|~v4_tops_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))|~l1_pre_topc(X2)), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.13/0.38  cnf(c_0_44, negated_conjecture, (v4_tops_1(esk4_0,esk2_0)|r1_tarski(esk3_0,k1_tops_1(esk1_0,esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_41]), c_0_21]), c_0_26])])).
% 0.13/0.38  cnf(c_0_45, negated_conjecture, (r1_tarski(k1_tops_1(esk1_0,esk3_0),esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27, c_0_21]), c_0_22])])).
% 0.13/0.38  cnf(c_0_46, negated_conjecture, (k1_tops_1(esk2_0,esk4_0)=esk4_0|v3_pre_topc(esk3_0,esk1_0)), inference(spm,[status(thm)],[c_0_36, c_0_42])).
% 0.13/0.38  cnf(c_0_47, plain, (r1_tarski(k1_tops_1(X1,k2_pre_topc(X1,X2)),X2)|~v4_tops_1(X2,X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.13/0.38  cnf(c_0_48, negated_conjecture, (m1_subset_1(k2_pre_topc(esk2_0,esk4_0),k1_zfmisc_1(u1_struct_0(esk2_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_20, c_0_15]), c_0_16])])).
% 0.13/0.38  cnf(c_0_49, negated_conjecture, (r1_tarski(esk4_0,k2_pre_topc(esk2_0,k1_tops_1(esk2_0,esk4_0)))|~v4_tops_1(esk4_0,esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43, c_0_15]), c_0_16])])).
% 0.13/0.38  cnf(c_0_50, negated_conjecture, (k1_tops_1(esk1_0,esk3_0)=esk3_0|v4_tops_1(esk4_0,esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33, c_0_44]), c_0_45])])).
% 0.13/0.38  cnf(c_0_51, negated_conjecture, (k1_tops_1(esk2_0,esk4_0)=esk4_0|r1_tarski(esk3_0,k1_tops_1(esk1_0,esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_46]), c_0_21]), c_0_26])])).
% 0.13/0.38  cnf(c_0_52, negated_conjecture, (r1_tarski(k1_tops_1(esk2_0,k2_pre_topc(esk2_0,esk4_0)),esk4_0)|~v4_tops_1(esk4_0,esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47, c_0_15]), c_0_16])])).
% 0.13/0.38  cnf(c_0_53, negated_conjecture, (r1_tarski(X1,k1_tops_1(esk2_0,k2_pre_topc(esk2_0,esk4_0)))|~v3_pre_topc(X1,esk2_0)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk2_0)))|~r1_tarski(X1,k2_pre_topc(esk2_0,esk4_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_14, c_0_48]), c_0_16])])).
% 0.13/0.38  cnf(c_0_54, negated_conjecture, (k1_tops_1(esk1_0,esk3_0)=esk3_0|r1_tarski(esk4_0,k2_pre_topc(esk2_0,k1_tops_1(esk2_0,esk4_0)))), inference(spm,[status(thm)],[c_0_49, c_0_50])).
% 0.13/0.38  cnf(c_0_55, negated_conjecture, (k1_tops_1(esk2_0,esk4_0)=esk4_0|k1_tops_1(esk1_0,esk3_0)=esk3_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33, c_0_51]), c_0_45])])).
% 0.13/0.38  cnf(c_0_56, negated_conjecture, (k1_tops_1(esk1_0,esk3_0)=esk3_0|r1_tarski(k1_tops_1(esk2_0,k2_pre_topc(esk2_0,esk4_0)),esk4_0)), inference(spm,[status(thm)],[c_0_52, c_0_50])).
% 0.13/0.38  cnf(c_0_57, negated_conjecture, (v6_tops_1(esk3_0,esk1_0)|r1_tarski(esk4_0,k1_tops_1(esk2_0,k2_pre_topc(esk2_0,esk4_0)))|~r1_tarski(esk4_0,k2_pre_topc(esk2_0,esk4_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53, c_0_25]), c_0_15])])).
% 0.13/0.38  cnf(c_0_58, negated_conjecture, (k1_tops_1(esk1_0,esk3_0)=esk3_0|r1_tarski(esk4_0,k2_pre_topc(esk2_0,esk4_0))), inference(spm,[status(thm)],[c_0_54, c_0_55])).
% 0.13/0.38  cnf(c_0_59, negated_conjecture, (k1_tops_1(esk2_0,k2_pre_topc(esk2_0,esk4_0))=esk4_0|k1_tops_1(esk1_0,esk3_0)=esk3_0|~r1_tarski(esk4_0,k1_tops_1(esk2_0,k2_pre_topc(esk2_0,esk4_0)))), inference(spm,[status(thm)],[c_0_33, c_0_56])).
% 0.13/0.38  cnf(c_0_60, negated_conjecture, (k1_tops_1(esk1_0,esk3_0)=esk3_0|v6_tops_1(esk3_0,esk1_0)|r1_tarski(esk4_0,k1_tops_1(esk2_0,k2_pre_topc(esk2_0,esk4_0)))), inference(spm,[status(thm)],[c_0_57, c_0_58])).
% 0.13/0.38  cnf(c_0_61, plain, (v6_tops_1(X1,X2)|X1!=k1_tops_1(X2,k2_pre_topc(X2,X1))|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))|~l1_pre_topc(X2)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.13/0.38  cnf(c_0_62, negated_conjecture, (k1_tops_1(esk2_0,k2_pre_topc(esk2_0,esk4_0))=esk4_0|k1_tops_1(esk1_0,esk3_0)=esk3_0|v6_tops_1(esk3_0,esk1_0)), inference(spm,[status(thm)],[c_0_59, c_0_60])).
% 0.13/0.38  cnf(c_0_63, negated_conjecture, (v6_tops_1(esk3_0,esk1_0)|~v6_tops_1(esk4_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_64, negated_conjecture, (k1_tops_1(esk1_0,esk3_0)=esk3_0|v6_tops_1(esk3_0,esk1_0)), inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_61, c_0_62]), c_0_15]), c_0_16])]), c_0_63])).
% 0.13/0.38  cnf(c_0_65, negated_conjecture, (k1_tops_1(esk1_0,k2_pre_topc(esk1_0,esk3_0))=esk3_0|k1_tops_1(esk1_0,esk3_0)=esk3_0), inference(spm,[status(thm)],[c_0_31, c_0_64])).
% 0.13/0.38  cnf(c_0_66, plain, (v4_tops_1(X2,X1)|~r1_tarski(k1_tops_1(X1,k2_pre_topc(X1,X2)),X2)|~r1_tarski(X2,k2_pre_topc(X1,k1_tops_1(X1,X2)))|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.13/0.38  cnf(c_0_67, negated_conjecture, (k1_tops_1(esk1_0,esk3_0)=esk3_0|v3_pre_topc(esk3_0,esk1_0)), inference(spm,[status(thm)],[c_0_36, c_0_65])).
% 0.13/0.38  cnf(c_0_68, negated_conjecture, (k1_tops_1(esk1_0,esk3_0)=esk3_0|~r1_tarski(esk3_0,k1_tops_1(esk1_0,esk3_0))), inference(spm,[status(thm)],[c_0_33, c_0_45])).
% 0.13/0.38  cnf(c_0_69, negated_conjecture, (v4_tops_1(esk3_0,esk1_0)|~r1_tarski(esk3_0,k2_pre_topc(esk1_0,k1_tops_1(esk1_0,esk3_0)))|~r1_tarski(k1_tops_1(esk1_0,k2_pre_topc(esk1_0,esk3_0)),esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_66, c_0_21]), c_0_22])])).
% 0.13/0.38  cnf(c_0_70, negated_conjecture, (k1_tops_1(esk1_0,esk3_0)=esk3_0), inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_67]), c_0_21]), c_0_26])]), c_0_68])).
% 0.13/0.38  cnf(c_0_71, negated_conjecture, (r1_tarski(k1_tops_1(esk1_0,k2_pre_topc(esk1_0,esk3_0)),k2_pre_topc(esk1_0,esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27, c_0_29]), c_0_22])])).
% 0.13/0.38  cnf(c_0_72, negated_conjecture, (v4_tops_1(esk4_0,esk2_0)|~v3_pre_topc(esk3_0,esk1_0)|~v4_tops_1(esk3_0,esk1_0)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_73, negated_conjecture, (v3_pre_topc(k1_tops_1(esk1_0,esk3_0),esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28, c_0_21]), c_0_30]), c_0_22])])).
% 0.13/0.38  cnf(c_0_74, negated_conjecture, (v4_tops_1(esk3_0,esk1_0)|~r1_tarski(k1_tops_1(esk1_0,k2_pre_topc(esk1_0,esk3_0)),esk3_0)|~r1_tarski(esk3_0,k2_pre_topc(esk1_0,esk3_0))), inference(rw,[status(thm)],[c_0_69, c_0_70])).
% 0.13/0.38  cnf(c_0_75, negated_conjecture, (k1_tops_1(esk2_0,esk4_0)=esk4_0|r1_tarski(esk3_0,k2_pre_topc(esk1_0,esk3_0))), inference(spm,[status(thm)],[c_0_71, c_0_42])).
% 0.13/0.38  cnf(c_0_76, negated_conjecture, (v4_tops_1(esk4_0,esk2_0)|r1_tarski(esk3_0,k2_pre_topc(esk1_0,esk3_0))), inference(spm,[status(thm)],[c_0_71, c_0_37])).
% 0.13/0.38  cnf(c_0_77, negated_conjecture, (v4_tops_1(esk4_0,esk2_0)|~v4_tops_1(esk3_0,esk1_0)), inference(spm,[status(thm)],[c_0_72, c_0_41])).
% 0.13/0.38  cnf(c_0_78, negated_conjecture, (v3_pre_topc(esk4_0,esk2_0)|~v3_pre_topc(esk3_0,esk1_0)|~v4_tops_1(esk3_0,esk1_0)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_79, negated_conjecture, (v3_pre_topc(esk3_0,esk1_0)), inference(rw,[status(thm)],[c_0_73, c_0_70])).
% 0.13/0.38  cnf(c_0_80, negated_conjecture, (k1_tops_1(esk2_0,esk4_0)=esk4_0|v4_tops_1(esk3_0,esk1_0)|~r1_tarski(k1_tops_1(esk1_0,k2_pre_topc(esk1_0,esk3_0)),esk3_0)), inference(spm,[status(thm)],[c_0_74, c_0_75])).
% 0.13/0.38  cnf(c_0_81, negated_conjecture, (v4_tops_1(esk4_0,esk2_0)|~r1_tarski(k1_tops_1(esk1_0,k2_pre_topc(esk1_0,esk3_0)),esk3_0)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_74, c_0_76]), c_0_77])).
% 0.13/0.38  cnf(c_0_82, negated_conjecture, (v3_pre_topc(esk4_0,esk2_0)|~v4_tops_1(esk3_0,esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_78, c_0_79])])).
% 0.13/0.38  cnf(c_0_83, negated_conjecture, (k1_tops_1(esk2_0,esk4_0)=esk4_0|v4_tops_1(esk3_0,esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_80, c_0_42]), c_0_26])])).
% 0.13/0.38  cnf(c_0_84, negated_conjecture, (v4_tops_1(esk4_0,esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_81, c_0_37]), c_0_26])])).
% 0.13/0.38  cnf(c_0_85, negated_conjecture, (k1_tops_1(esk2_0,esk4_0)=esk4_0|v3_pre_topc(esk4_0,esk2_0)), inference(spm,[status(thm)],[c_0_82, c_0_83])).
% 0.13/0.38  cnf(c_0_86, negated_conjecture, (k1_tops_1(esk2_0,esk4_0)=esk4_0|~r1_tarski(esk4_0,k1_tops_1(esk2_0,esk4_0))), inference(spm,[status(thm)],[c_0_33, c_0_35])).
% 0.13/0.38  cnf(c_0_87, negated_conjecture, (r1_tarski(esk4_0,k2_pre_topc(esk2_0,k1_tops_1(esk2_0,esk4_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_49, c_0_84])])).
% 0.13/0.38  cnf(c_0_88, negated_conjecture, (k1_tops_1(esk2_0,esk4_0)=esk4_0), inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24, c_0_85]), c_0_15]), c_0_26])]), c_0_86])).
% 0.13/0.38  cnf(c_0_89, negated_conjecture, (r1_tarski(esk4_0,k2_pre_topc(esk2_0,esk4_0))), inference(rw,[status(thm)],[c_0_87, c_0_88])).
% 0.13/0.38  cnf(c_0_90, negated_conjecture, (v6_tops_1(esk3_0,esk1_0)|r1_tarski(esk4_0,k1_tops_1(esk2_0,k2_pre_topc(esk2_0,esk4_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_57, c_0_89])])).
% 0.13/0.38  cnf(c_0_91, negated_conjecture, (r1_tarski(k1_tops_1(esk2_0,k2_pre_topc(esk2_0,esk4_0)),esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_52, c_0_84])])).
% 0.13/0.38  cnf(c_0_92, negated_conjecture, (k1_tops_1(esk2_0,k2_pre_topc(esk2_0,esk4_0))=esk4_0|v6_tops_1(esk3_0,esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33, c_0_90]), c_0_91])])).
% 0.13/0.38  cnf(c_0_93, negated_conjecture, (v6_tops_1(esk3_0,esk1_0)), inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_61, c_0_92]), c_0_15]), c_0_16])]), c_0_63])).
% 0.13/0.38  cnf(c_0_94, negated_conjecture, (k1_tops_1(esk1_0,k2_pre_topc(esk1_0,esk3_0))=esk3_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_31, c_0_93])])).
% 0.13/0.38  cnf(c_0_95, negated_conjecture, (v4_tops_1(esk3_0,esk1_0)|~r1_tarski(esk3_0,k2_pre_topc(esk1_0,esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_74, c_0_94]), c_0_26])])).
% 0.13/0.38  cnf(c_0_96, negated_conjecture, (r1_tarski(esk3_0,k2_pre_topc(esk1_0,esk3_0))), inference(rw,[status(thm)],[c_0_71, c_0_94])).
% 0.13/0.38  cnf(c_0_97, negated_conjecture, (v4_tops_1(esk3_0,esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_95, c_0_96])])).
% 0.13/0.38  cnf(c_0_98, negated_conjecture, (v3_pre_topc(esk4_0,esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_82, c_0_97])])).
% 0.13/0.38  cnf(c_0_99, negated_conjecture, (~v3_pre_topc(esk3_0,esk1_0)|~v4_tops_1(esk3_0,esk1_0)|~v6_tops_1(esk4_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_100, negated_conjecture, (k1_tops_1(esk2_0,k2_pre_topc(esk2_0,esk4_0))=esk4_0|~r1_tarski(esk4_0,k1_tops_1(esk2_0,k2_pre_topc(esk2_0,esk4_0)))), inference(spm,[status(thm)],[c_0_33, c_0_91])).
% 0.13/0.38  cnf(c_0_101, negated_conjecture, (r1_tarski(esk4_0,k1_tops_1(esk2_0,k2_pre_topc(esk2_0,esk4_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53, c_0_98]), c_0_15]), c_0_89])])).
% 0.13/0.38  cnf(c_0_102, negated_conjecture, (~v6_tops_1(esk4_0,esk2_0)|~v4_tops_1(esk3_0,esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_99, c_0_79])])).
% 0.13/0.38  cnf(c_0_103, negated_conjecture, (k1_tops_1(esk2_0,k2_pre_topc(esk2_0,esk4_0))=esk4_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_100, c_0_101])])).
% 0.13/0.38  cnf(c_0_104, negated_conjecture, (~v6_tops_1(esk4_0,esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_102, c_0_97])])).
% 0.13/0.38  cnf(c_0_105, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_61, c_0_103]), c_0_15]), c_0_16])]), c_0_104]), ['proof']).
% 0.13/0.38  # SZS output end CNFRefutation
% 0.13/0.38  # Proof object total steps             : 106
% 0.13/0.38  # Proof object clause steps            : 89
% 0.13/0.38  # Proof object formula steps           : 17
% 0.13/0.38  # Proof object conjectures             : 80
% 0.13/0.38  # Proof object clause conjectures      : 77
% 0.13/0.38  # Proof object formula conjectures     : 3
% 0.13/0.38  # Proof object initial clauses used    : 22
% 0.13/0.38  # Proof object initial formulas used   : 8
% 0.13/0.38  # Proof object generating inferences   : 51
% 0.13/0.38  # Proof object simplifying inferences  : 105
% 0.13/0.38  # Training examples: 0 positive, 0 negative
% 0.13/0.38  # Parsed axioms                        : 8
% 0.13/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.38  # Initial clauses                      : 23
% 0.13/0.38  # Removed in clause preprocessing      : 0
% 0.13/0.38  # Initial clauses in saturation        : 23
% 0.13/0.38  # Processed clauses                    : 167
% 0.13/0.38  # ...of these trivial                  : 1
% 0.13/0.38  # ...subsumed                          : 14
% 0.13/0.38  # ...remaining for further processing  : 152
% 0.13/0.38  # Other redundant clauses eliminated   : 2
% 0.13/0.38  # Clauses deleted for lack of memory   : 0
% 0.13/0.38  # Backward-subsumed                    : 7
% 0.13/0.38  # Backward-rewritten                   : 76
% 0.13/0.38  # Generated clauses                    : 173
% 0.13/0.38  # ...of the previous two non-trivial   : 180
% 0.13/0.38  # Contextual simplify-reflections      : 6
% 0.13/0.38  # Paramodulations                      : 171
% 0.13/0.38  # Factorizations                       : 0
% 0.13/0.38  # Equation resolutions                 : 2
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
% 0.13/0.38  # Current number of processed clauses  : 45
% 0.13/0.38  #    Positive orientable unit clauses  : 25
% 0.13/0.38  #    Positive unorientable unit clauses: 0
% 0.13/0.38  #    Negative unit clauses             : 1
% 0.13/0.38  #    Non-unit-clauses                  : 19
% 0.13/0.38  # Current number of unprocessed clauses: 49
% 0.13/0.38  # ...number of literals in the above   : 126
% 0.13/0.38  # Current number of archived formulas  : 0
% 0.13/0.38  # Current number of archived clauses   : 105
% 0.13/0.38  # Clause-clause subsumption calls (NU) : 746
% 0.13/0.38  # Rec. Clause-clause subsumption calls : 493
% 0.13/0.38  # Non-unit clause-clause subsumptions  : 25
% 0.13/0.38  # Unit Clause-clause subsumption calls : 119
% 0.13/0.38  # Rewrite failures with RHS unbound    : 0
% 0.13/0.38  # BW rewrite match attempts            : 25
% 0.13/0.38  # BW rewrite match successes           : 12
% 0.13/0.38  # Condensation attempts                : 0
% 0.13/0.38  # Condensation successes               : 0
% 0.13/0.39  # Termbank termtop insertions          : 5301
% 0.13/0.39  
% 0.13/0.39  # -------------------------------------------------
% 0.13/0.39  # User time                : 0.036 s
% 0.13/0.39  # System time              : 0.005 s
% 0.13/0.39  # Total time               : 0.041 s
% 0.13/0.39  # Maximum resident set size: 1576 pages
%------------------------------------------------------------------------------
