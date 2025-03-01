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
% DateTime   : Thu Dec  3 11:11:24 EST 2020

% Result     : Theorem 0.84s
% Output     : CNFRefutation 0.84s
% Verified   : 
% Statistics : Number of formulae       :   96 (1597 expanded)
%              Number of clauses        :   65 ( 725 expanded)
%              Number of leaves         :   15 ( 379 expanded)
%              Depth                    :   15
%              Number of atoms          :  209 (4421 expanded)
%              Number of equality atoms :   62 (1272 expanded)
%              Maximal formula depth    :   10 (   3 average)
%              Maximal clause size      :    7 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t76_tops_1,conjecture,(
    ! [X1] :
      ( ( v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ( v3_pre_topc(X2,X1)
          <=> k2_tops_1(X1,X2) = k7_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X2),X2) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t76_tops_1)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d10_xboole_0)).

fof(t48_pre_topc,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => r1_tarski(X2,k2_pre_topc(X1,X2)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t48_pre_topc)).

fof(redefinition_k7_subset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => k7_subset_1(X1,X2,X3) = k4_xboole_0(X2,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k7_subset_1)).

fof(t100_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t100_xboole_1)).

fof(t3_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X2))
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_subset)).

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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t56_tops_1)).

fof(d5_subset_1,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => k3_subset_1(X1,X2) = k4_xboole_0(X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d5_subset_1)).

fof(dt_k2_pre_topc,axiom,(
    ! [X1,X2] :
      ( ( l1_pre_topc(X1)
        & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) )
     => m1_subset_1(k2_pre_topc(X1,X2),k1_zfmisc_1(u1_struct_0(X1))) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k2_pre_topc)).

fof(t44_tops_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => r1_tarski(k1_tops_1(X1,X2),X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t44_tops_1)).

fof(dt_k7_subset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => m1_subset_1(k7_subset_1(X1,X2,X3),k1_zfmisc_1(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k7_subset_1)).

fof(t74_tops_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => k1_tops_1(X1,X2) = k7_subset_1(u1_struct_0(X1),X2,k2_tops_1(X1,X2)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t74_tops_1)).

fof(l78_tops_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => k2_tops_1(X1,X2) = k7_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X2),k1_tops_1(X1,X2)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l78_tops_1)).

fof(involutiveness_k3_subset_1,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => k3_subset_1(X1,k3_subset_1(X1,X2)) = X2 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',involutiveness_k3_subset_1)).

fof(fc9_tops_1,axiom,(
    ! [X1,X2] :
      ( ( v2_pre_topc(X1)
        & l1_pre_topc(X1)
        & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) )
     => v3_pre_topc(k1_tops_1(X1,X2),X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc9_tops_1)).

fof(c_0_15,negated_conjecture,(
    ~ ! [X1] :
        ( ( v2_pre_topc(X1)
          & l1_pre_topc(X1) )
       => ! [X2] :
            ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
           => ( v3_pre_topc(X2,X1)
            <=> k2_tops_1(X1,X2) = k7_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X2),X2) ) ) ) ),
    inference(assume_negation,[status(cth)],[t76_tops_1])).

fof(c_0_16,plain,(
    ! [X4,X5] :
      ( ( r1_tarski(X4,X5)
        | X4 != X5 )
      & ( r1_tarski(X5,X4)
        | X4 != X5 )
      & ( ~ r1_tarski(X4,X5)
        | ~ r1_tarski(X5,X4)
        | X4 = X5 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

fof(c_0_17,plain,(
    ! [X37,X38] :
      ( ~ l1_pre_topc(X37)
      | ~ m1_subset_1(X38,k1_zfmisc_1(u1_struct_0(X37)))
      | r1_tarski(X38,k2_pre_topc(X37,X38)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t48_pre_topc])])])).

fof(c_0_18,negated_conjecture,
    ( v2_pre_topc(esk1_0)
    & l1_pre_topc(esk1_0)
    & m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0)))
    & ( ~ v3_pre_topc(esk2_0,esk1_0)
      | k2_tops_1(esk1_0,esk2_0) != k7_subset_1(u1_struct_0(esk1_0),k2_pre_topc(esk1_0,esk2_0),esk2_0) )
    & ( v3_pre_topc(esk2_0,esk1_0)
      | k2_tops_1(esk1_0,esk2_0) = k7_subset_1(u1_struct_0(esk1_0),k2_pre_topc(esk1_0,esk2_0),esk2_0) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_15])])])).

fof(c_0_19,plain,(
    ! [X23,X24,X25] :
      ( ~ m1_subset_1(X24,k1_zfmisc_1(X23))
      | k7_subset_1(X23,X24,X25) = k4_xboole_0(X24,X25) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k7_subset_1])])).

fof(c_0_20,plain,(
    ! [X6,X7] : k4_xboole_0(X6,X7) = k5_xboole_0(X6,k3_xboole_0(X6,X7)) ),
    inference(variable_rename,[status(thm)],[t100_xboole_1])).

fof(c_0_21,plain,(
    ! [X30,X31] :
      ( ( ~ m1_subset_1(X30,k1_zfmisc_1(X31))
        | r1_tarski(X30,X31) )
      & ( ~ r1_tarski(X30,X31)
        | m1_subset_1(X30,k1_zfmisc_1(X31)) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).

cnf(c_0_22,plain,
    ( r1_tarski(X1,X2)
    | X2 != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

fof(c_0_23,plain,(
    ! [X45,X46,X47] :
      ( ~ l1_pre_topc(X45)
      | ~ m1_subset_1(X46,k1_zfmisc_1(u1_struct_0(X45)))
      | ~ m1_subset_1(X47,k1_zfmisc_1(u1_struct_0(X45)))
      | ~ v3_pre_topc(X46,X45)
      | ~ r1_tarski(X46,X47)
      | r1_tarski(X46,k1_tops_1(X45,X47)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t56_tops_1])])])).

fof(c_0_24,plain,(
    ! [X11,X12] :
      ( ~ m1_subset_1(X12,k1_zfmisc_1(X11))
      | k3_subset_1(X11,X12) = k4_xboole_0(X11,X12) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d5_subset_1])])).

cnf(c_0_25,plain,
    ( r1_tarski(X2,k2_pre_topc(X1,X2))
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_26,negated_conjecture,
    ( m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_27,negated_conjecture,
    ( l1_pre_topc(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_28,plain,
    ( k7_subset_1(X2,X1,X3) = k4_xboole_0(X1,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_29,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_30,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_31,plain,
    ( r1_tarski(X1,X1) ),
    inference(er,[status(thm)],[c_0_22])).

cnf(c_0_32,plain,
    ( r1_tarski(X2,k1_tops_1(X1,X3))
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v3_pre_topc(X2,X1)
    | ~ r1_tarski(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_33,plain,
    ( k3_subset_1(X2,X1) = k4_xboole_0(X2,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_34,negated_conjecture,
    ( r1_tarski(esk2_0,k2_pre_topc(esk1_0,esk2_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25,c_0_26]),c_0_27])])).

cnf(c_0_35,plain,
    ( k7_subset_1(X2,X1,X3) = k5_xboole_0(X1,k3_xboole_0(X1,X3))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(rw,[status(thm)],[c_0_28,c_0_29])).

cnf(c_0_36,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_30,c_0_31])).

fof(c_0_37,plain,(
    ! [X35,X36] :
      ( ~ l1_pre_topc(X35)
      | ~ m1_subset_1(X36,k1_zfmisc_1(u1_struct_0(X35)))
      | m1_subset_1(k2_pre_topc(X35,X36),k1_zfmisc_1(u1_struct_0(X35))) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_pre_topc])])).

cnf(c_0_38,negated_conjecture,
    ( r1_tarski(X1,k1_tops_1(esk1_0,esk2_0))
    | ~ v3_pre_topc(X1,esk1_0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ r1_tarski(X1,esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32,c_0_26]),c_0_27])])).

fof(c_0_39,plain,(
    ! [X43,X44] :
      ( ~ l1_pre_topc(X43)
      | ~ m1_subset_1(X44,k1_zfmisc_1(u1_struct_0(X43)))
      | r1_tarski(k1_tops_1(X43,X44),X44) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t44_tops_1])])])).

cnf(c_0_40,plain,
    ( k3_subset_1(X2,X1) = k5_xboole_0(X2,k3_xboole_0(X2,X1))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(rw,[status(thm)],[c_0_33,c_0_29])).

cnf(c_0_41,negated_conjecture,
    ( m1_subset_1(esk2_0,k1_zfmisc_1(k2_pre_topc(esk1_0,esk2_0))) ),
    inference(spm,[status(thm)],[c_0_30,c_0_34])).

cnf(c_0_42,plain,
    ( k5_xboole_0(X1,k3_xboole_0(X1,X2)) = k7_subset_1(X1,X1,X2) ),
    inference(spm,[status(thm)],[c_0_35,c_0_36])).

cnf(c_0_43,plain,
    ( m1_subset_1(k2_pre_topc(X1,X2),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

fof(c_0_44,plain,(
    ! [X15,X16,X17] :
      ( ~ m1_subset_1(X16,k1_zfmisc_1(X15))
      | m1_subset_1(k7_subset_1(X15,X16,X17),k1_zfmisc_1(X15)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k7_subset_1])])).

cnf(c_0_45,negated_conjecture,
    ( r1_tarski(esk2_0,k1_tops_1(esk1_0,esk2_0))
    | ~ v3_pre_topc(esk2_0,esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38,c_0_26]),c_0_31])])).

cnf(c_0_46,negated_conjecture,
    ( v3_pre_topc(esk2_0,esk1_0)
    | k2_tops_1(esk1_0,esk2_0) = k7_subset_1(u1_struct_0(esk1_0),k2_pre_topc(esk1_0,esk2_0),esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_47,plain,
    ( r1_tarski(k1_tops_1(X1,X2),X2)
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_48,negated_conjecture,
    ( k5_xboole_0(k2_pre_topc(esk1_0,esk2_0),k3_xboole_0(k2_pre_topc(esk1_0,esk2_0),esk2_0)) = k3_subset_1(k2_pre_topc(esk1_0,esk2_0),esk2_0) ),
    inference(spm,[status(thm)],[c_0_40,c_0_41])).

cnf(c_0_49,plain,
    ( k7_subset_1(X1,X2,X3) = k7_subset_1(X2,X2,X3)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(rw,[status(thm)],[c_0_35,c_0_42])).

cnf(c_0_50,negated_conjecture,
    ( m1_subset_1(k2_pre_topc(esk1_0,esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43,c_0_26]),c_0_27])])).

fof(c_0_51,plain,(
    ! [X48,X49] :
      ( ~ l1_pre_topc(X48)
      | ~ m1_subset_1(X49,k1_zfmisc_1(u1_struct_0(X48)))
      | k1_tops_1(X48,X49) = k7_subset_1(u1_struct_0(X48),X49,k2_tops_1(X48,X49)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t74_tops_1])])])).

cnf(c_0_52,plain,
    ( m1_subset_1(k7_subset_1(X2,X1,X3),k1_zfmisc_1(X2))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_44])).

cnf(c_0_53,plain,
    ( X1 = X2
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_54,negated_conjecture,
    ( k7_subset_1(u1_struct_0(esk1_0),k2_pre_topc(esk1_0,esk2_0),esk2_0) = k2_tops_1(esk1_0,esk2_0)
    | r1_tarski(esk2_0,k1_tops_1(esk1_0,esk2_0)) ),
    inference(spm,[status(thm)],[c_0_45,c_0_46])).

cnf(c_0_55,negated_conjecture,
    ( r1_tarski(k1_tops_1(esk1_0,esk2_0),esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47,c_0_26]),c_0_27])])).

cnf(c_0_56,negated_conjecture,
    ( k7_subset_1(k2_pre_topc(esk1_0,esk2_0),k2_pre_topc(esk1_0,esk2_0),esk2_0) = k3_subset_1(k2_pre_topc(esk1_0,esk2_0),esk2_0) ),
    inference(rw,[status(thm)],[c_0_48,c_0_42])).

cnf(c_0_57,negated_conjecture,
    ( k7_subset_1(k2_pre_topc(esk1_0,esk2_0),k2_pre_topc(esk1_0,esk2_0),X1) = k7_subset_1(u1_struct_0(esk1_0),k2_pre_topc(esk1_0,esk2_0),X1) ),
    inference(spm,[status(thm)],[c_0_49,c_0_50])).

cnf(c_0_58,plain,
    ( k1_tops_1(X1,X2) = k7_subset_1(u1_struct_0(X1),X2,k2_tops_1(X1,X2))
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_51])).

cnf(c_0_59,negated_conjecture,
    ( m1_subset_1(k7_subset_1(k2_pre_topc(esk1_0,esk2_0),esk2_0,X1),k1_zfmisc_1(k2_pre_topc(esk1_0,esk2_0))) ),
    inference(spm,[status(thm)],[c_0_52,c_0_41])).

cnf(c_0_60,negated_conjecture,
    ( k7_subset_1(k2_pre_topc(esk1_0,esk2_0),esk2_0,X1) = k7_subset_1(esk2_0,esk2_0,X1) ),
    inference(spm,[status(thm)],[c_0_49,c_0_41])).

fof(c_0_61,plain,(
    ! [X41,X42] :
      ( ~ l1_pre_topc(X41)
      | ~ m1_subset_1(X42,k1_zfmisc_1(u1_struct_0(X41)))
      | k2_tops_1(X41,X42) = k7_subset_1(u1_struct_0(X41),k2_pre_topc(X41,X42),k1_tops_1(X41,X42)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l78_tops_1])])])).

fof(c_0_62,plain,(
    ! [X21,X22] :
      ( ~ m1_subset_1(X22,k1_zfmisc_1(X21))
      | k3_subset_1(X21,k3_subset_1(X21,X22)) = X22 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[involutiveness_k3_subset_1])])).

cnf(c_0_63,negated_conjecture,
    ( ~ v3_pre_topc(esk2_0,esk1_0)
    | k2_tops_1(esk1_0,esk2_0) != k7_subset_1(u1_struct_0(esk1_0),k2_pre_topc(esk1_0,esk2_0),esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_64,negated_conjecture,
    ( k7_subset_1(u1_struct_0(esk1_0),k2_pre_topc(esk1_0,esk2_0),esk2_0) = k2_tops_1(esk1_0,esk2_0)
    | k1_tops_1(esk1_0,esk2_0) = esk2_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53,c_0_54]),c_0_55])])).

cnf(c_0_65,negated_conjecture,
    ( k7_subset_1(u1_struct_0(esk1_0),k2_pre_topc(esk1_0,esk2_0),esk2_0) = k3_subset_1(k2_pre_topc(esk1_0,esk2_0),esk2_0) ),
    inference(rw,[status(thm)],[c_0_56,c_0_57])).

cnf(c_0_66,negated_conjecture,
    ( k7_subset_1(u1_struct_0(esk1_0),esk2_0,k2_tops_1(esk1_0,esk2_0)) = k1_tops_1(esk1_0,esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_58,c_0_26]),c_0_27])])).

cnf(c_0_67,negated_conjecture,
    ( k7_subset_1(u1_struct_0(esk1_0),esk2_0,X1) = k7_subset_1(esk2_0,esk2_0,X1) ),
    inference(spm,[status(thm)],[c_0_49,c_0_26])).

cnf(c_0_68,plain,
    ( k7_subset_1(X1,X1,X2) = k3_subset_1(X1,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(rw,[status(thm)],[c_0_40,c_0_42])).

cnf(c_0_69,negated_conjecture,
    ( m1_subset_1(k7_subset_1(esk2_0,esk2_0,X1),k1_zfmisc_1(k2_pre_topc(esk1_0,esk2_0))) ),
    inference(rw,[status(thm)],[c_0_59,c_0_60])).

cnf(c_0_70,plain,
    ( k2_tops_1(X1,X2) = k7_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X2),k1_tops_1(X1,X2))
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_61])).

cnf(c_0_71,plain,
    ( k3_subset_1(X2,k3_subset_1(X2,X1)) = X1
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_62])).

cnf(c_0_72,negated_conjecture,
    ( k1_tops_1(esk1_0,esk2_0) = esk2_0
    | ~ v3_pre_topc(esk2_0,esk1_0) ),
    inference(spm,[status(thm)],[c_0_63,c_0_64])).

cnf(c_0_73,negated_conjecture,
    ( k3_subset_1(k2_pre_topc(esk1_0,esk2_0),esk2_0) = k2_tops_1(esk1_0,esk2_0)
    | v3_pre_topc(esk2_0,esk1_0) ),
    inference(rw,[status(thm)],[c_0_46,c_0_65])).

cnf(c_0_74,negated_conjecture,
    ( k7_subset_1(esk2_0,esk2_0,k2_tops_1(esk1_0,esk2_0)) = k1_tops_1(esk1_0,esk2_0) ),
    inference(rw,[status(thm)],[c_0_66,c_0_67])).

cnf(c_0_75,negated_conjecture,
    ( k7_subset_1(u1_struct_0(esk1_0),k2_pre_topc(esk1_0,esk2_0),k7_subset_1(esk2_0,esk2_0,X1)) = k3_subset_1(k2_pre_topc(esk1_0,esk2_0),k7_subset_1(esk2_0,esk2_0,X1)) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_68,c_0_69]),c_0_57])).

cnf(c_0_76,negated_conjecture,
    ( k7_subset_1(u1_struct_0(esk1_0),k2_pre_topc(esk1_0,esk2_0),k1_tops_1(esk1_0,esk2_0)) = k2_tops_1(esk1_0,esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_70,c_0_26]),c_0_27])])).

fof(c_0_77,plain,(
    ! [X39,X40] :
      ( ~ v2_pre_topc(X39)
      | ~ l1_pre_topc(X39)
      | ~ m1_subset_1(X40,k1_zfmisc_1(u1_struct_0(X39)))
      | v3_pre_topc(k1_tops_1(X39,X40),X39) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[fc9_tops_1])])).

cnf(c_0_78,negated_conjecture,
    ( k3_subset_1(k2_pre_topc(esk1_0,esk2_0),k3_subset_1(k2_pre_topc(esk1_0,esk2_0),esk2_0)) = esk2_0 ),
    inference(spm,[status(thm)],[c_0_71,c_0_41])).

cnf(c_0_79,negated_conjecture,
    ( k3_subset_1(k2_pre_topc(esk1_0,esk2_0),esk2_0) = k2_tops_1(esk1_0,esk2_0)
    | k1_tops_1(esk1_0,esk2_0) = esk2_0 ),
    inference(spm,[status(thm)],[c_0_72,c_0_73])).

cnf(c_0_80,negated_conjecture,
    ( m1_subset_1(k1_tops_1(esk1_0,esk2_0),k1_zfmisc_1(k2_pre_topc(esk1_0,esk2_0))) ),
    inference(spm,[status(thm)],[c_0_69,c_0_74])).

cnf(c_0_81,negated_conjecture,
    ( k3_subset_1(k2_pre_topc(esk1_0,esk2_0),k1_tops_1(esk1_0,esk2_0)) = k2_tops_1(esk1_0,esk2_0) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_75,c_0_74]),c_0_76])).

cnf(c_0_82,plain,
    ( v3_pre_topc(k1_tops_1(X1,X2),X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_77])).

cnf(c_0_83,negated_conjecture,
    ( v2_pre_topc(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_84,negated_conjecture,
    ( k3_subset_1(k2_pre_topc(esk1_0,esk2_0),k2_tops_1(esk1_0,esk2_0)) = esk2_0
    | k1_tops_1(esk1_0,esk2_0) = esk2_0 ),
    inference(spm,[status(thm)],[c_0_78,c_0_79])).

cnf(c_0_85,negated_conjecture,
    ( k3_subset_1(k2_pre_topc(esk1_0,esk2_0),k2_tops_1(esk1_0,esk2_0)) = k1_tops_1(esk1_0,esk2_0) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_71,c_0_80]),c_0_81])).

cnf(c_0_86,negated_conjecture,
    ( m1_subset_1(k7_subset_1(u1_struct_0(esk1_0),esk2_0,X1),k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(spm,[status(thm)],[c_0_52,c_0_26])).

cnf(c_0_87,negated_conjecture,
    ( v3_pre_topc(k1_tops_1(esk1_0,esk2_0),esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_82,c_0_26]),c_0_83]),c_0_27])])).

cnf(c_0_88,negated_conjecture,
    ( k1_tops_1(esk1_0,esk2_0) = esk2_0 ),
    inference(spm,[status(thm)],[c_0_84,c_0_85])).

cnf(c_0_89,negated_conjecture,
    ( m1_subset_1(k7_subset_1(esk2_0,esk2_0,X1),k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(rw,[status(thm)],[c_0_86,c_0_67])).

cnf(c_0_90,negated_conjecture,
    ( k3_subset_1(k2_pre_topc(esk1_0,esk2_0),esk2_0) != k2_tops_1(esk1_0,esk2_0)
    | ~ v3_pre_topc(esk2_0,esk1_0) ),
    inference(rw,[status(thm)],[c_0_63,c_0_65])).

cnf(c_0_91,negated_conjecture,
    ( v3_pre_topc(esk2_0,esk1_0) ),
    inference(rw,[status(thm)],[c_0_87,c_0_88])).

cnf(c_0_92,negated_conjecture,
    ( k7_subset_1(u1_struct_0(esk1_0),k2_pre_topc(esk1_0,k7_subset_1(esk2_0,esk2_0,X1)),k1_tops_1(esk1_0,k7_subset_1(esk2_0,esk2_0,X1))) = k2_tops_1(esk1_0,k7_subset_1(esk2_0,esk2_0,X1)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_70,c_0_89]),c_0_27])])).

cnf(c_0_93,negated_conjecture,
    ( k7_subset_1(esk2_0,esk2_0,k2_tops_1(esk1_0,esk2_0)) = esk2_0 ),
    inference(rw,[status(thm)],[c_0_74,c_0_88])).

cnf(c_0_94,negated_conjecture,
    ( k3_subset_1(k2_pre_topc(esk1_0,esk2_0),esk2_0) != k2_tops_1(esk1_0,esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_90,c_0_91])])).

cnf(c_0_95,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_92,c_0_93]),c_0_88]),c_0_65]),c_0_94]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n019.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 13:19:22 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.84/1.06  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S5PRR_S2mI
% 0.84/1.06  # and selection function SelectCQArNTNpEqFirst.
% 0.84/1.06  #
% 0.84/1.06  # Preprocessing time       : 0.028 s
% 0.84/1.06  # Presaturation interreduction done
% 0.84/1.06  
% 0.84/1.06  # Proof found!
% 0.84/1.06  # SZS status Theorem
% 0.84/1.06  # SZS output start CNFRefutation
% 0.84/1.06  fof(t76_tops_1, conjecture, ![X1]:((v2_pre_topc(X1)&l1_pre_topc(X1))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>(v3_pre_topc(X2,X1)<=>k2_tops_1(X1,X2)=k7_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X2),X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t76_tops_1)).
% 0.84/1.06  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.84/1.06  fof(t48_pre_topc, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>r1_tarski(X2,k2_pre_topc(X1,X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t48_pre_topc)).
% 0.84/1.06  fof(redefinition_k7_subset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>k7_subset_1(X1,X2,X3)=k4_xboole_0(X2,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k7_subset_1)).
% 0.84/1.06  fof(t100_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t100_xboole_1)).
% 0.84/1.06  fof(t3_subset, axiom, ![X1, X2]:(m1_subset_1(X1,k1_zfmisc_1(X2))<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t3_subset)).
% 0.84/1.06  fof(t56_tops_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))=>((v3_pre_topc(X2,X1)&r1_tarski(X2,X3))=>r1_tarski(X2,k1_tops_1(X1,X3)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t56_tops_1)).
% 0.84/1.06  fof(d5_subset_1, axiom, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>k3_subset_1(X1,X2)=k4_xboole_0(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d5_subset_1)).
% 0.84/1.06  fof(dt_k2_pre_topc, axiom, ![X1, X2]:((l1_pre_topc(X1)&m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))))=>m1_subset_1(k2_pre_topc(X1,X2),k1_zfmisc_1(u1_struct_0(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k2_pre_topc)).
% 0.84/1.06  fof(t44_tops_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>r1_tarski(k1_tops_1(X1,X2),X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t44_tops_1)).
% 0.84/1.06  fof(dt_k7_subset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>m1_subset_1(k7_subset_1(X1,X2,X3),k1_zfmisc_1(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k7_subset_1)).
% 0.84/1.06  fof(t74_tops_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>k1_tops_1(X1,X2)=k7_subset_1(u1_struct_0(X1),X2,k2_tops_1(X1,X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t74_tops_1)).
% 0.84/1.06  fof(l78_tops_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>k2_tops_1(X1,X2)=k7_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X2),k1_tops_1(X1,X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l78_tops_1)).
% 0.84/1.06  fof(involutiveness_k3_subset_1, axiom, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>k3_subset_1(X1,k3_subset_1(X1,X2))=X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', involutiveness_k3_subset_1)).
% 0.84/1.06  fof(fc9_tops_1, axiom, ![X1, X2]:(((v2_pre_topc(X1)&l1_pre_topc(X1))&m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))))=>v3_pre_topc(k1_tops_1(X1,X2),X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc9_tops_1)).
% 0.84/1.06  fof(c_0_15, negated_conjecture, ~(![X1]:((v2_pre_topc(X1)&l1_pre_topc(X1))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>(v3_pre_topc(X2,X1)<=>k2_tops_1(X1,X2)=k7_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X2),X2))))), inference(assume_negation,[status(cth)],[t76_tops_1])).
% 0.84/1.06  fof(c_0_16, plain, ![X4, X5]:(((r1_tarski(X4,X5)|X4!=X5)&(r1_tarski(X5,X4)|X4!=X5))&(~r1_tarski(X4,X5)|~r1_tarski(X5,X4)|X4=X5)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.84/1.06  fof(c_0_17, plain, ![X37, X38]:(~l1_pre_topc(X37)|(~m1_subset_1(X38,k1_zfmisc_1(u1_struct_0(X37)))|r1_tarski(X38,k2_pre_topc(X37,X38)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t48_pre_topc])])])).
% 0.84/1.06  fof(c_0_18, negated_conjecture, ((v2_pre_topc(esk1_0)&l1_pre_topc(esk1_0))&(m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0)))&((~v3_pre_topc(esk2_0,esk1_0)|k2_tops_1(esk1_0,esk2_0)!=k7_subset_1(u1_struct_0(esk1_0),k2_pre_topc(esk1_0,esk2_0),esk2_0))&(v3_pre_topc(esk2_0,esk1_0)|k2_tops_1(esk1_0,esk2_0)=k7_subset_1(u1_struct_0(esk1_0),k2_pre_topc(esk1_0,esk2_0),esk2_0))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_15])])])).
% 0.84/1.06  fof(c_0_19, plain, ![X23, X24, X25]:(~m1_subset_1(X24,k1_zfmisc_1(X23))|k7_subset_1(X23,X24,X25)=k4_xboole_0(X24,X25)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k7_subset_1])])).
% 0.84/1.06  fof(c_0_20, plain, ![X6, X7]:k4_xboole_0(X6,X7)=k5_xboole_0(X6,k3_xboole_0(X6,X7)), inference(variable_rename,[status(thm)],[t100_xboole_1])).
% 0.84/1.06  fof(c_0_21, plain, ![X30, X31]:((~m1_subset_1(X30,k1_zfmisc_1(X31))|r1_tarski(X30,X31))&(~r1_tarski(X30,X31)|m1_subset_1(X30,k1_zfmisc_1(X31)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).
% 0.84/1.06  cnf(c_0_22, plain, (r1_tarski(X1,X2)|X2!=X1), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.84/1.06  fof(c_0_23, plain, ![X45, X46, X47]:(~l1_pre_topc(X45)|(~m1_subset_1(X46,k1_zfmisc_1(u1_struct_0(X45)))|(~m1_subset_1(X47,k1_zfmisc_1(u1_struct_0(X45)))|(~v3_pre_topc(X46,X45)|~r1_tarski(X46,X47)|r1_tarski(X46,k1_tops_1(X45,X47)))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t56_tops_1])])])).
% 0.84/1.06  fof(c_0_24, plain, ![X11, X12]:(~m1_subset_1(X12,k1_zfmisc_1(X11))|k3_subset_1(X11,X12)=k4_xboole_0(X11,X12)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d5_subset_1])])).
% 0.84/1.06  cnf(c_0_25, plain, (r1_tarski(X2,k2_pre_topc(X1,X2))|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.84/1.06  cnf(c_0_26, negated_conjecture, (m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.84/1.06  cnf(c_0_27, negated_conjecture, (l1_pre_topc(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.84/1.06  cnf(c_0_28, plain, (k7_subset_1(X2,X1,X3)=k4_xboole_0(X1,X3)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.84/1.06  cnf(c_0_29, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.84/1.06  cnf(c_0_30, plain, (m1_subset_1(X1,k1_zfmisc_1(X2))|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.84/1.06  cnf(c_0_31, plain, (r1_tarski(X1,X1)), inference(er,[status(thm)],[c_0_22])).
% 0.84/1.06  cnf(c_0_32, plain, (r1_tarski(X2,k1_tops_1(X1,X3))|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))|~v3_pre_topc(X2,X1)|~r1_tarski(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.84/1.06  cnf(c_0_33, plain, (k3_subset_1(X2,X1)=k4_xboole_0(X2,X1)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.84/1.06  cnf(c_0_34, negated_conjecture, (r1_tarski(esk2_0,k2_pre_topc(esk1_0,esk2_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25, c_0_26]), c_0_27])])).
% 0.84/1.06  cnf(c_0_35, plain, (k7_subset_1(X2,X1,X3)=k5_xboole_0(X1,k3_xboole_0(X1,X3))|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(rw,[status(thm)],[c_0_28, c_0_29])).
% 0.84/1.06  cnf(c_0_36, plain, (m1_subset_1(X1,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_30, c_0_31])).
% 0.84/1.06  fof(c_0_37, plain, ![X35, X36]:(~l1_pre_topc(X35)|~m1_subset_1(X36,k1_zfmisc_1(u1_struct_0(X35)))|m1_subset_1(k2_pre_topc(X35,X36),k1_zfmisc_1(u1_struct_0(X35)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_pre_topc])])).
% 0.84/1.06  cnf(c_0_38, negated_conjecture, (r1_tarski(X1,k1_tops_1(esk1_0,esk2_0))|~v3_pre_topc(X1,esk1_0)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0)))|~r1_tarski(X1,esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32, c_0_26]), c_0_27])])).
% 0.84/1.06  fof(c_0_39, plain, ![X43, X44]:(~l1_pre_topc(X43)|(~m1_subset_1(X44,k1_zfmisc_1(u1_struct_0(X43)))|r1_tarski(k1_tops_1(X43,X44),X44))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t44_tops_1])])])).
% 0.84/1.06  cnf(c_0_40, plain, (k3_subset_1(X2,X1)=k5_xboole_0(X2,k3_xboole_0(X2,X1))|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(rw,[status(thm)],[c_0_33, c_0_29])).
% 0.84/1.06  cnf(c_0_41, negated_conjecture, (m1_subset_1(esk2_0,k1_zfmisc_1(k2_pre_topc(esk1_0,esk2_0)))), inference(spm,[status(thm)],[c_0_30, c_0_34])).
% 0.84/1.06  cnf(c_0_42, plain, (k5_xboole_0(X1,k3_xboole_0(X1,X2))=k7_subset_1(X1,X1,X2)), inference(spm,[status(thm)],[c_0_35, c_0_36])).
% 0.84/1.06  cnf(c_0_43, plain, (m1_subset_1(k2_pre_topc(X1,X2),k1_zfmisc_1(u1_struct_0(X1)))|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_37])).
% 0.84/1.06  fof(c_0_44, plain, ![X15, X16, X17]:(~m1_subset_1(X16,k1_zfmisc_1(X15))|m1_subset_1(k7_subset_1(X15,X16,X17),k1_zfmisc_1(X15))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k7_subset_1])])).
% 0.84/1.06  cnf(c_0_45, negated_conjecture, (r1_tarski(esk2_0,k1_tops_1(esk1_0,esk2_0))|~v3_pre_topc(esk2_0,esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38, c_0_26]), c_0_31])])).
% 0.84/1.06  cnf(c_0_46, negated_conjecture, (v3_pre_topc(esk2_0,esk1_0)|k2_tops_1(esk1_0,esk2_0)=k7_subset_1(u1_struct_0(esk1_0),k2_pre_topc(esk1_0,esk2_0),esk2_0)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.84/1.06  cnf(c_0_47, plain, (r1_tarski(k1_tops_1(X1,X2),X2)|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.84/1.06  cnf(c_0_48, negated_conjecture, (k5_xboole_0(k2_pre_topc(esk1_0,esk2_0),k3_xboole_0(k2_pre_topc(esk1_0,esk2_0),esk2_0))=k3_subset_1(k2_pre_topc(esk1_0,esk2_0),esk2_0)), inference(spm,[status(thm)],[c_0_40, c_0_41])).
% 0.84/1.06  cnf(c_0_49, plain, (k7_subset_1(X1,X2,X3)=k7_subset_1(X2,X2,X3)|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(rw,[status(thm)],[c_0_35, c_0_42])).
% 0.84/1.06  cnf(c_0_50, negated_conjecture, (m1_subset_1(k2_pre_topc(esk1_0,esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43, c_0_26]), c_0_27])])).
% 0.84/1.06  fof(c_0_51, plain, ![X48, X49]:(~l1_pre_topc(X48)|(~m1_subset_1(X49,k1_zfmisc_1(u1_struct_0(X48)))|k1_tops_1(X48,X49)=k7_subset_1(u1_struct_0(X48),X49,k2_tops_1(X48,X49)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t74_tops_1])])])).
% 0.84/1.06  cnf(c_0_52, plain, (m1_subset_1(k7_subset_1(X2,X1,X3),k1_zfmisc_1(X2))|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_44])).
% 0.84/1.06  cnf(c_0_53, plain, (X1=X2|~r1_tarski(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.84/1.06  cnf(c_0_54, negated_conjecture, (k7_subset_1(u1_struct_0(esk1_0),k2_pre_topc(esk1_0,esk2_0),esk2_0)=k2_tops_1(esk1_0,esk2_0)|r1_tarski(esk2_0,k1_tops_1(esk1_0,esk2_0))), inference(spm,[status(thm)],[c_0_45, c_0_46])).
% 0.84/1.06  cnf(c_0_55, negated_conjecture, (r1_tarski(k1_tops_1(esk1_0,esk2_0),esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47, c_0_26]), c_0_27])])).
% 0.84/1.06  cnf(c_0_56, negated_conjecture, (k7_subset_1(k2_pre_topc(esk1_0,esk2_0),k2_pre_topc(esk1_0,esk2_0),esk2_0)=k3_subset_1(k2_pre_topc(esk1_0,esk2_0),esk2_0)), inference(rw,[status(thm)],[c_0_48, c_0_42])).
% 0.84/1.06  cnf(c_0_57, negated_conjecture, (k7_subset_1(k2_pre_topc(esk1_0,esk2_0),k2_pre_topc(esk1_0,esk2_0),X1)=k7_subset_1(u1_struct_0(esk1_0),k2_pre_topc(esk1_0,esk2_0),X1)), inference(spm,[status(thm)],[c_0_49, c_0_50])).
% 0.84/1.06  cnf(c_0_58, plain, (k1_tops_1(X1,X2)=k7_subset_1(u1_struct_0(X1),X2,k2_tops_1(X1,X2))|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_51])).
% 0.84/1.06  cnf(c_0_59, negated_conjecture, (m1_subset_1(k7_subset_1(k2_pre_topc(esk1_0,esk2_0),esk2_0,X1),k1_zfmisc_1(k2_pre_topc(esk1_0,esk2_0)))), inference(spm,[status(thm)],[c_0_52, c_0_41])).
% 0.84/1.06  cnf(c_0_60, negated_conjecture, (k7_subset_1(k2_pre_topc(esk1_0,esk2_0),esk2_0,X1)=k7_subset_1(esk2_0,esk2_0,X1)), inference(spm,[status(thm)],[c_0_49, c_0_41])).
% 0.84/1.06  fof(c_0_61, plain, ![X41, X42]:(~l1_pre_topc(X41)|(~m1_subset_1(X42,k1_zfmisc_1(u1_struct_0(X41)))|k2_tops_1(X41,X42)=k7_subset_1(u1_struct_0(X41),k2_pre_topc(X41,X42),k1_tops_1(X41,X42)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l78_tops_1])])])).
% 0.84/1.06  fof(c_0_62, plain, ![X21, X22]:(~m1_subset_1(X22,k1_zfmisc_1(X21))|k3_subset_1(X21,k3_subset_1(X21,X22))=X22), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[involutiveness_k3_subset_1])])).
% 0.84/1.06  cnf(c_0_63, negated_conjecture, (~v3_pre_topc(esk2_0,esk1_0)|k2_tops_1(esk1_0,esk2_0)!=k7_subset_1(u1_struct_0(esk1_0),k2_pre_topc(esk1_0,esk2_0),esk2_0)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.84/1.06  cnf(c_0_64, negated_conjecture, (k7_subset_1(u1_struct_0(esk1_0),k2_pre_topc(esk1_0,esk2_0),esk2_0)=k2_tops_1(esk1_0,esk2_0)|k1_tops_1(esk1_0,esk2_0)=esk2_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53, c_0_54]), c_0_55])])).
% 0.84/1.06  cnf(c_0_65, negated_conjecture, (k7_subset_1(u1_struct_0(esk1_0),k2_pre_topc(esk1_0,esk2_0),esk2_0)=k3_subset_1(k2_pre_topc(esk1_0,esk2_0),esk2_0)), inference(rw,[status(thm)],[c_0_56, c_0_57])).
% 0.84/1.06  cnf(c_0_66, negated_conjecture, (k7_subset_1(u1_struct_0(esk1_0),esk2_0,k2_tops_1(esk1_0,esk2_0))=k1_tops_1(esk1_0,esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_58, c_0_26]), c_0_27])])).
% 0.84/1.06  cnf(c_0_67, negated_conjecture, (k7_subset_1(u1_struct_0(esk1_0),esk2_0,X1)=k7_subset_1(esk2_0,esk2_0,X1)), inference(spm,[status(thm)],[c_0_49, c_0_26])).
% 0.84/1.06  cnf(c_0_68, plain, (k7_subset_1(X1,X1,X2)=k3_subset_1(X1,X2)|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(rw,[status(thm)],[c_0_40, c_0_42])).
% 0.84/1.06  cnf(c_0_69, negated_conjecture, (m1_subset_1(k7_subset_1(esk2_0,esk2_0,X1),k1_zfmisc_1(k2_pre_topc(esk1_0,esk2_0)))), inference(rw,[status(thm)],[c_0_59, c_0_60])).
% 0.84/1.06  cnf(c_0_70, plain, (k2_tops_1(X1,X2)=k7_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X2),k1_tops_1(X1,X2))|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_61])).
% 0.84/1.06  cnf(c_0_71, plain, (k3_subset_1(X2,k3_subset_1(X2,X1))=X1|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_62])).
% 0.84/1.06  cnf(c_0_72, negated_conjecture, (k1_tops_1(esk1_0,esk2_0)=esk2_0|~v3_pre_topc(esk2_0,esk1_0)), inference(spm,[status(thm)],[c_0_63, c_0_64])).
% 0.84/1.06  cnf(c_0_73, negated_conjecture, (k3_subset_1(k2_pre_topc(esk1_0,esk2_0),esk2_0)=k2_tops_1(esk1_0,esk2_0)|v3_pre_topc(esk2_0,esk1_0)), inference(rw,[status(thm)],[c_0_46, c_0_65])).
% 0.84/1.06  cnf(c_0_74, negated_conjecture, (k7_subset_1(esk2_0,esk2_0,k2_tops_1(esk1_0,esk2_0))=k1_tops_1(esk1_0,esk2_0)), inference(rw,[status(thm)],[c_0_66, c_0_67])).
% 0.84/1.06  cnf(c_0_75, negated_conjecture, (k7_subset_1(u1_struct_0(esk1_0),k2_pre_topc(esk1_0,esk2_0),k7_subset_1(esk2_0,esk2_0,X1))=k3_subset_1(k2_pre_topc(esk1_0,esk2_0),k7_subset_1(esk2_0,esk2_0,X1))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_68, c_0_69]), c_0_57])).
% 0.84/1.06  cnf(c_0_76, negated_conjecture, (k7_subset_1(u1_struct_0(esk1_0),k2_pre_topc(esk1_0,esk2_0),k1_tops_1(esk1_0,esk2_0))=k2_tops_1(esk1_0,esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_70, c_0_26]), c_0_27])])).
% 0.84/1.06  fof(c_0_77, plain, ![X39, X40]:(~v2_pre_topc(X39)|~l1_pre_topc(X39)|~m1_subset_1(X40,k1_zfmisc_1(u1_struct_0(X39)))|v3_pre_topc(k1_tops_1(X39,X40),X39)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[fc9_tops_1])])).
% 0.84/1.06  cnf(c_0_78, negated_conjecture, (k3_subset_1(k2_pre_topc(esk1_0,esk2_0),k3_subset_1(k2_pre_topc(esk1_0,esk2_0),esk2_0))=esk2_0), inference(spm,[status(thm)],[c_0_71, c_0_41])).
% 0.84/1.06  cnf(c_0_79, negated_conjecture, (k3_subset_1(k2_pre_topc(esk1_0,esk2_0),esk2_0)=k2_tops_1(esk1_0,esk2_0)|k1_tops_1(esk1_0,esk2_0)=esk2_0), inference(spm,[status(thm)],[c_0_72, c_0_73])).
% 0.84/1.06  cnf(c_0_80, negated_conjecture, (m1_subset_1(k1_tops_1(esk1_0,esk2_0),k1_zfmisc_1(k2_pre_topc(esk1_0,esk2_0)))), inference(spm,[status(thm)],[c_0_69, c_0_74])).
% 0.84/1.06  cnf(c_0_81, negated_conjecture, (k3_subset_1(k2_pre_topc(esk1_0,esk2_0),k1_tops_1(esk1_0,esk2_0))=k2_tops_1(esk1_0,esk2_0)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_75, c_0_74]), c_0_76])).
% 0.84/1.06  cnf(c_0_82, plain, (v3_pre_topc(k1_tops_1(X1,X2),X1)|~v2_pre_topc(X1)|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_77])).
% 0.84/1.06  cnf(c_0_83, negated_conjecture, (v2_pre_topc(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.84/1.06  cnf(c_0_84, negated_conjecture, (k3_subset_1(k2_pre_topc(esk1_0,esk2_0),k2_tops_1(esk1_0,esk2_0))=esk2_0|k1_tops_1(esk1_0,esk2_0)=esk2_0), inference(spm,[status(thm)],[c_0_78, c_0_79])).
% 0.84/1.06  cnf(c_0_85, negated_conjecture, (k3_subset_1(k2_pre_topc(esk1_0,esk2_0),k2_tops_1(esk1_0,esk2_0))=k1_tops_1(esk1_0,esk2_0)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_71, c_0_80]), c_0_81])).
% 0.84/1.06  cnf(c_0_86, negated_conjecture, (m1_subset_1(k7_subset_1(u1_struct_0(esk1_0),esk2_0,X1),k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(spm,[status(thm)],[c_0_52, c_0_26])).
% 0.84/1.06  cnf(c_0_87, negated_conjecture, (v3_pre_topc(k1_tops_1(esk1_0,esk2_0),esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_82, c_0_26]), c_0_83]), c_0_27])])).
% 0.84/1.06  cnf(c_0_88, negated_conjecture, (k1_tops_1(esk1_0,esk2_0)=esk2_0), inference(spm,[status(thm)],[c_0_84, c_0_85])).
% 0.84/1.06  cnf(c_0_89, negated_conjecture, (m1_subset_1(k7_subset_1(esk2_0,esk2_0,X1),k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(rw,[status(thm)],[c_0_86, c_0_67])).
% 0.84/1.06  cnf(c_0_90, negated_conjecture, (k3_subset_1(k2_pre_topc(esk1_0,esk2_0),esk2_0)!=k2_tops_1(esk1_0,esk2_0)|~v3_pre_topc(esk2_0,esk1_0)), inference(rw,[status(thm)],[c_0_63, c_0_65])).
% 0.84/1.06  cnf(c_0_91, negated_conjecture, (v3_pre_topc(esk2_0,esk1_0)), inference(rw,[status(thm)],[c_0_87, c_0_88])).
% 0.84/1.06  cnf(c_0_92, negated_conjecture, (k7_subset_1(u1_struct_0(esk1_0),k2_pre_topc(esk1_0,k7_subset_1(esk2_0,esk2_0,X1)),k1_tops_1(esk1_0,k7_subset_1(esk2_0,esk2_0,X1)))=k2_tops_1(esk1_0,k7_subset_1(esk2_0,esk2_0,X1))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_70, c_0_89]), c_0_27])])).
% 0.84/1.06  cnf(c_0_93, negated_conjecture, (k7_subset_1(esk2_0,esk2_0,k2_tops_1(esk1_0,esk2_0))=esk2_0), inference(rw,[status(thm)],[c_0_74, c_0_88])).
% 0.84/1.06  cnf(c_0_94, negated_conjecture, (k3_subset_1(k2_pre_topc(esk1_0,esk2_0),esk2_0)!=k2_tops_1(esk1_0,esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_90, c_0_91])])).
% 0.84/1.06  cnf(c_0_95, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_92, c_0_93]), c_0_88]), c_0_65]), c_0_94]), ['proof']).
% 0.84/1.06  # SZS output end CNFRefutation
% 0.84/1.06  # Proof object total steps             : 96
% 0.84/1.06  # Proof object clause steps            : 65
% 0.84/1.06  # Proof object formula steps           : 31
% 0.84/1.06  # Proof object conjectures             : 46
% 0.84/1.06  # Proof object clause conjectures      : 43
% 0.84/1.06  # Proof object formula conjectures     : 3
% 0.84/1.06  # Proof object initial clauses used    : 20
% 0.84/1.06  # Proof object initial formulas used   : 15
% 0.84/1.06  # Proof object generating inferences   : 30
% 0.84/1.06  # Proof object simplifying inferences  : 43
% 0.84/1.06  # Training examples: 0 positive, 0 negative
% 0.84/1.06  # Parsed axioms                        : 22
% 0.84/1.06  # Removed by relevancy pruning/SinE    : 0
% 0.84/1.06  # Initial clauses                      : 29
% 0.84/1.06  # Removed in clause preprocessing      : 1
% 0.84/1.06  # Initial clauses in saturation        : 28
% 0.84/1.06  # Processed clauses                    : 3785
% 0.84/1.06  # ...of these trivial                  : 216
% 0.84/1.06  # ...subsumed                          : 1067
% 0.84/1.06  # ...remaining for further processing  : 2502
% 0.84/1.06  # Other redundant clauses eliminated   : 2
% 0.84/1.06  # Clauses deleted for lack of memory   : 0
% 0.84/1.06  # Backward-subsumed                    : 11
% 0.84/1.06  # Backward-rewritten                   : 365
% 0.84/1.06  # Generated clauses                    : 57628
% 0.84/1.06  # ...of the previous two non-trivial   : 54646
% 0.84/1.06  # Contextual simplify-reflections      : 2
% 0.84/1.06  # Paramodulations                      : 57624
% 0.84/1.06  # Factorizations                       : 0
% 0.84/1.06  # Equation resolutions                 : 2
% 0.84/1.06  # Propositional unsat checks           : 0
% 0.84/1.06  #    Propositional check models        : 0
% 0.84/1.06  #    Propositional check unsatisfiable : 0
% 0.84/1.06  #    Propositional clauses             : 0
% 0.84/1.06  #    Propositional clauses after purity: 0
% 0.84/1.06  #    Propositional unsat core size     : 0
% 0.84/1.06  #    Propositional preprocessing time  : 0.000
% 0.84/1.06  #    Propositional encoding time       : 0.000
% 0.84/1.06  #    Propositional solver time         : 0.000
% 0.84/1.06  #    Success case prop preproc time    : 0.000
% 0.84/1.06  #    Success case prop encoding time   : 0.000
% 0.84/1.06  #    Success case prop solver time     : 0.000
% 0.84/1.06  # Current number of processed clauses  : 2095
% 0.84/1.06  #    Positive orientable unit clauses  : 1490
% 0.84/1.06  #    Positive unorientable unit clauses: 0
% 0.84/1.06  #    Negative unit clauses             : 1
% 0.84/1.06  #    Non-unit-clauses                  : 604
% 0.84/1.06  # Current number of unprocessed clauses: 50645
% 0.84/1.06  # ...number of literals in the above   : 89945
% 0.84/1.06  # Current number of archived formulas  : 0
% 0.84/1.06  # Current number of archived clauses   : 406
% 0.84/1.06  # Clause-clause subsumption calls (NU) : 53159
% 0.84/1.06  # Rec. Clause-clause subsumption calls : 50019
% 0.84/1.06  # Non-unit clause-clause subsumptions  : 1076
% 0.84/1.06  # Unit Clause-clause subsumption calls : 9215
% 0.84/1.06  # Rewrite failures with RHS unbound    : 0
% 0.84/1.06  # BW rewrite match attempts            : 64743
% 0.84/1.06  # BW rewrite match successes           : 71
% 0.84/1.06  # Condensation attempts                : 0
% 0.84/1.06  # Condensation successes               : 0
% 0.84/1.06  # Termbank termtop insertions          : 2674846
% 0.84/1.06  
% 0.84/1.06  # -------------------------------------------------
% 0.84/1.06  # User time                : 0.684 s
% 0.84/1.06  # System time              : 0.039 s
% 0.84/1.06  # Total time               : 0.722 s
% 0.84/1.06  # Maximum resident set size: 1584 pages
%------------------------------------------------------------------------------
