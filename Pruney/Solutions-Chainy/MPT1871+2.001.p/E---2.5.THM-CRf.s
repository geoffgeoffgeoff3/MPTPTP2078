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
% DateTime   : Thu Dec  3 11:20:02 EST 2020

% Result     : Theorem 0.14s
% Output     : CNFRefutation 0.14s
% Verified   : 
% Statistics : Number of formulae       :   46 ( 440 expanded)
%              Number of clauses        :   35 ( 136 expanded)
%              Number of leaves         :    5 ( 106 expanded)
%              Depth                    :   11
%              Number of atoms          :  244 (3747 expanded)
%              Number of equality atoms :    5 (   5 expanded)
%              Maximal formula depth    :   18 (   6 average)
%              Maximal clause size      :   46 (   3 average)
%              Maximal term depth       :    3 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t39_tex_2,conjecture,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ! [X3] :
              ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
             => ( ( v4_pre_topc(X2,X1)
                  & v4_pre_topc(X3,X1)
                  & v2_tex_2(X2,X1)
                  & v2_tex_2(X3,X1) )
               => v2_tex_2(k4_subset_1(u1_struct_0(X1),X2,X3),X1) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t39_tex_2)).

fof(t31_tex_2,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ( ! [X2] :
            ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
           => ! [X3] :
                ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
               => ( ( v4_pre_topc(X2,X1)
                    & v4_pre_topc(X3,X1) )
                 => ( v4_pre_topc(k9_subset_1(u1_struct_0(X1),X2,X3),X1)
                    & v4_pre_topc(k4_subset_1(u1_struct_0(X1),X2,X3),X1) ) ) ) )
       => ! [X2] :
            ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
           => ! [X3] :
                ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
               => ( ( v4_pre_topc(X2,X1)
                    & v4_pre_topc(X3,X1)
                    & v2_tex_2(X2,X1)
                    & v2_tex_2(X3,X1) )
                 => v2_tex_2(k4_subset_1(u1_struct_0(X1),X2,X3),X1) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t31_tex_2)).

fof(fc5_tops_1,axiom,(
    ! [X1,X2,X3] :
      ( ( v2_pre_topc(X1)
        & l1_pre_topc(X1)
        & v4_pre_topc(X2,X1)
        & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
        & v4_pre_topc(X3,X1)
        & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1))) )
     => v4_pre_topc(k2_xboole_0(X2,X3),X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc5_tops_1)).

fof(redefinition_k4_subset_1,axiom,(
    ! [X1,X2,X3] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(X1))
        & m1_subset_1(X3,k1_zfmisc_1(X1)) )
     => k4_subset_1(X1,X2,X3) = k2_xboole_0(X2,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k4_subset_1)).

fof(t35_tops_1,axiom,(
    ! [X1] :
      ( ( v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ! [X3] :
              ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
             => ( ( v4_pre_topc(X2,X1)
                  & v4_pre_topc(X3,X1) )
               => v4_pre_topc(k9_subset_1(u1_struct_0(X1),X2,X3),X1) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t35_tops_1)).

fof(c_0_5,negated_conjecture,(
    ~ ! [X1] :
        ( ( ~ v2_struct_0(X1)
          & v2_pre_topc(X1)
          & l1_pre_topc(X1) )
       => ! [X2] :
            ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
           => ! [X3] :
                ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
               => ( ( v4_pre_topc(X2,X1)
                    & v4_pre_topc(X3,X1)
                    & v2_tex_2(X2,X1)
                    & v2_tex_2(X3,X1) )
                 => v2_tex_2(k4_subset_1(u1_struct_0(X1),X2,X3),X1) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t39_tex_2])).

fof(c_0_6,plain,(
    ! [X13,X16,X17] :
      ( ( m1_subset_1(esk1_1(X13),k1_zfmisc_1(u1_struct_0(X13)))
        | ~ m1_subset_1(X16,k1_zfmisc_1(u1_struct_0(X13)))
        | ~ m1_subset_1(X17,k1_zfmisc_1(u1_struct_0(X13)))
        | ~ v4_pre_topc(X16,X13)
        | ~ v4_pre_topc(X17,X13)
        | ~ v2_tex_2(X16,X13)
        | ~ v2_tex_2(X17,X13)
        | v2_tex_2(k4_subset_1(u1_struct_0(X13),X16,X17),X13)
        | ~ l1_pre_topc(X13) )
      & ( m1_subset_1(esk2_1(X13),k1_zfmisc_1(u1_struct_0(X13)))
        | ~ m1_subset_1(X16,k1_zfmisc_1(u1_struct_0(X13)))
        | ~ m1_subset_1(X17,k1_zfmisc_1(u1_struct_0(X13)))
        | ~ v4_pre_topc(X16,X13)
        | ~ v4_pre_topc(X17,X13)
        | ~ v2_tex_2(X16,X13)
        | ~ v2_tex_2(X17,X13)
        | v2_tex_2(k4_subset_1(u1_struct_0(X13),X16,X17),X13)
        | ~ l1_pre_topc(X13) )
      & ( v4_pre_topc(esk1_1(X13),X13)
        | ~ m1_subset_1(X16,k1_zfmisc_1(u1_struct_0(X13)))
        | ~ m1_subset_1(X17,k1_zfmisc_1(u1_struct_0(X13)))
        | ~ v4_pre_topc(X16,X13)
        | ~ v4_pre_topc(X17,X13)
        | ~ v2_tex_2(X16,X13)
        | ~ v2_tex_2(X17,X13)
        | v2_tex_2(k4_subset_1(u1_struct_0(X13),X16,X17),X13)
        | ~ l1_pre_topc(X13) )
      & ( v4_pre_topc(esk2_1(X13),X13)
        | ~ m1_subset_1(X16,k1_zfmisc_1(u1_struct_0(X13)))
        | ~ m1_subset_1(X17,k1_zfmisc_1(u1_struct_0(X13)))
        | ~ v4_pre_topc(X16,X13)
        | ~ v4_pre_topc(X17,X13)
        | ~ v2_tex_2(X16,X13)
        | ~ v2_tex_2(X17,X13)
        | v2_tex_2(k4_subset_1(u1_struct_0(X13),X16,X17),X13)
        | ~ l1_pre_topc(X13) )
      & ( ~ v4_pre_topc(k9_subset_1(u1_struct_0(X13),esk1_1(X13),esk2_1(X13)),X13)
        | ~ v4_pre_topc(k4_subset_1(u1_struct_0(X13),esk1_1(X13),esk2_1(X13)),X13)
        | ~ m1_subset_1(X16,k1_zfmisc_1(u1_struct_0(X13)))
        | ~ m1_subset_1(X17,k1_zfmisc_1(u1_struct_0(X13)))
        | ~ v4_pre_topc(X16,X13)
        | ~ v4_pre_topc(X17,X13)
        | ~ v2_tex_2(X16,X13)
        | ~ v2_tex_2(X17,X13)
        | v2_tex_2(k4_subset_1(u1_struct_0(X13),X16,X17),X13)
        | ~ l1_pre_topc(X13) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t31_tex_2])])])])])).

fof(c_0_7,negated_conjecture,
    ( ~ v2_struct_0(esk3_0)
    & v2_pre_topc(esk3_0)
    & l1_pre_topc(esk3_0)
    & m1_subset_1(esk4_0,k1_zfmisc_1(u1_struct_0(esk3_0)))
    & m1_subset_1(esk5_0,k1_zfmisc_1(u1_struct_0(esk3_0)))
    & v4_pre_topc(esk4_0,esk3_0)
    & v4_pre_topc(esk5_0,esk3_0)
    & v2_tex_2(esk4_0,esk3_0)
    & v2_tex_2(esk5_0,esk3_0)
    & ~ v2_tex_2(k4_subset_1(u1_struct_0(esk3_0),esk4_0,esk5_0),esk3_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_5])])])])).

cnf(c_0_8,plain,
    ( m1_subset_1(esk2_1(X1),k1_zfmisc_1(u1_struct_0(X1)))
    | v2_tex_2(k4_subset_1(u1_struct_0(X1),X2,X3),X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v4_pre_topc(X2,X1)
    | ~ v4_pre_topc(X3,X1)
    | ~ v2_tex_2(X2,X1)
    | ~ v2_tex_2(X3,X1)
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_9,negated_conjecture,
    ( m1_subset_1(esk5_0,k1_zfmisc_1(u1_struct_0(esk3_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_10,negated_conjecture,
    ( v2_tex_2(esk5_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_11,negated_conjecture,
    ( v4_pre_topc(esk5_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_12,negated_conjecture,
    ( l1_pre_topc(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_13,plain,
    ( v4_pre_topc(esk2_1(X1),X1)
    | v2_tex_2(k4_subset_1(u1_struct_0(X1),X2,X3),X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v4_pre_topc(X2,X1)
    | ~ v4_pre_topc(X3,X1)
    | ~ v2_tex_2(X2,X1)
    | ~ v2_tex_2(X3,X1)
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

fof(c_0_14,plain,(
    ! [X7,X8,X9] :
      ( ~ v2_pre_topc(X7)
      | ~ l1_pre_topc(X7)
      | ~ v4_pre_topc(X8,X7)
      | ~ m1_subset_1(X8,k1_zfmisc_1(u1_struct_0(X7)))
      | ~ v4_pre_topc(X9,X7)
      | ~ m1_subset_1(X9,k1_zfmisc_1(u1_struct_0(X7)))
      | v4_pre_topc(k2_xboole_0(X8,X9),X7) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[fc5_tops_1])])).

cnf(c_0_15,negated_conjecture,
    ( v2_tex_2(k4_subset_1(u1_struct_0(esk3_0),X1,esk5_0),esk3_0)
    | m1_subset_1(esk2_1(esk3_0),k1_zfmisc_1(u1_struct_0(esk3_0)))
    | ~ v2_tex_2(X1,esk3_0)
    | ~ v4_pre_topc(X1,esk3_0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk3_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_8,c_0_9]),c_0_10]),c_0_11]),c_0_12])])).

cnf(c_0_16,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(u1_struct_0(esk3_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_17,negated_conjecture,
    ( v2_tex_2(esk4_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_18,negated_conjecture,
    ( v4_pre_topc(esk4_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_19,negated_conjecture,
    ( ~ v2_tex_2(k4_subset_1(u1_struct_0(esk3_0),esk4_0,esk5_0),esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_20,negated_conjecture,
    ( v2_tex_2(k4_subset_1(u1_struct_0(esk3_0),X1,esk5_0),esk3_0)
    | v4_pre_topc(esk2_1(esk3_0),esk3_0)
    | ~ v2_tex_2(X1,esk3_0)
    | ~ v4_pre_topc(X1,esk3_0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk3_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_13,c_0_9]),c_0_10]),c_0_11]),c_0_12])])).

cnf(c_0_21,plain,
    ( m1_subset_1(esk1_1(X1),k1_zfmisc_1(u1_struct_0(X1)))
    | v2_tex_2(k4_subset_1(u1_struct_0(X1),X2,X3),X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v4_pre_topc(X2,X1)
    | ~ v4_pre_topc(X3,X1)
    | ~ v2_tex_2(X2,X1)
    | ~ v2_tex_2(X3,X1)
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_22,plain,
    ( v4_pre_topc(esk1_1(X1),X1)
    | v2_tex_2(k4_subset_1(u1_struct_0(X1),X2,X3),X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v4_pre_topc(X2,X1)
    | ~ v4_pre_topc(X3,X1)
    | ~ v2_tex_2(X2,X1)
    | ~ v2_tex_2(X3,X1)
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

fof(c_0_23,plain,(
    ! [X4,X5,X6] :
      ( ~ m1_subset_1(X5,k1_zfmisc_1(X4))
      | ~ m1_subset_1(X6,k1_zfmisc_1(X4))
      | k4_subset_1(X4,X5,X6) = k2_xboole_0(X5,X6) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k4_subset_1])])).

cnf(c_0_24,plain,
    ( v4_pre_topc(k2_xboole_0(X2,X3),X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ v4_pre_topc(X2,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v4_pre_topc(X3,X1)
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_25,negated_conjecture,
    ( m1_subset_1(esk2_1(esk3_0),k1_zfmisc_1(u1_struct_0(esk3_0))) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_15,c_0_16]),c_0_17]),c_0_18])]),c_0_19])).

cnf(c_0_26,negated_conjecture,
    ( v4_pre_topc(esk2_1(esk3_0),esk3_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_20,c_0_16]),c_0_17]),c_0_18])]),c_0_19])).

cnf(c_0_27,negated_conjecture,
    ( v2_pre_topc(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_28,negated_conjecture,
    ( v2_tex_2(k4_subset_1(u1_struct_0(esk3_0),X1,esk5_0),esk3_0)
    | m1_subset_1(esk1_1(esk3_0),k1_zfmisc_1(u1_struct_0(esk3_0)))
    | ~ v2_tex_2(X1,esk3_0)
    | ~ v4_pre_topc(X1,esk3_0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk3_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_21,c_0_9]),c_0_10]),c_0_11]),c_0_12])])).

cnf(c_0_29,negated_conjecture,
    ( v2_tex_2(k4_subset_1(u1_struct_0(esk3_0),X1,esk5_0),esk3_0)
    | v4_pre_topc(esk1_1(esk3_0),esk3_0)
    | ~ v2_tex_2(X1,esk3_0)
    | ~ v4_pre_topc(X1,esk3_0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk3_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22,c_0_9]),c_0_10]),c_0_11]),c_0_12])])).

cnf(c_0_30,plain,
    ( k4_subset_1(X2,X1,X3) = k2_xboole_0(X1,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

fof(c_0_31,plain,(
    ! [X10,X11,X12] :
      ( ~ v2_pre_topc(X10)
      | ~ l1_pre_topc(X10)
      | ~ m1_subset_1(X11,k1_zfmisc_1(u1_struct_0(X10)))
      | ~ m1_subset_1(X12,k1_zfmisc_1(u1_struct_0(X10)))
      | ~ v4_pre_topc(X11,X10)
      | ~ v4_pre_topc(X12,X10)
      | v4_pre_topc(k9_subset_1(u1_struct_0(X10),X11,X12),X10) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t35_tops_1])])])).

cnf(c_0_32,negated_conjecture,
    ( v4_pre_topc(k2_xboole_0(X1,esk2_1(esk3_0)),esk3_0)
    | ~ v4_pre_topc(X1,esk3_0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk3_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24,c_0_25]),c_0_26]),c_0_12]),c_0_27])])).

cnf(c_0_33,negated_conjecture,
    ( m1_subset_1(esk1_1(esk3_0),k1_zfmisc_1(u1_struct_0(esk3_0))) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28,c_0_16]),c_0_17]),c_0_18])]),c_0_19])).

cnf(c_0_34,negated_conjecture,
    ( v4_pre_topc(esk1_1(esk3_0),esk3_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29,c_0_16]),c_0_17]),c_0_18])]),c_0_19])).

cnf(c_0_35,negated_conjecture,
    ( k2_xboole_0(X1,esk2_1(esk3_0)) = k4_subset_1(u1_struct_0(esk3_0),X1,esk2_1(esk3_0))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk3_0))) ),
    inference(spm,[status(thm)],[c_0_30,c_0_25])).

cnf(c_0_36,plain,
    ( v4_pre_topc(k9_subset_1(u1_struct_0(X1),X2,X3),X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v4_pre_topc(X2,X1)
    | ~ v4_pre_topc(X3,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

cnf(c_0_37,negated_conjecture,
    ( v4_pre_topc(k2_xboole_0(esk1_1(esk3_0),esk2_1(esk3_0)),esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32,c_0_33]),c_0_34])])).

cnf(c_0_38,negated_conjecture,
    ( k2_xboole_0(esk1_1(esk3_0),esk2_1(esk3_0)) = k4_subset_1(u1_struct_0(esk3_0),esk1_1(esk3_0),esk2_1(esk3_0)) ),
    inference(spm,[status(thm)],[c_0_35,c_0_33])).

cnf(c_0_39,negated_conjecture,
    ( v4_pre_topc(k9_subset_1(u1_struct_0(esk3_0),X1,esk2_1(esk3_0)),esk3_0)
    | ~ v4_pre_topc(X1,esk3_0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk3_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_36,c_0_25]),c_0_26]),c_0_12]),c_0_27])])).

cnf(c_0_40,plain,
    ( v2_tex_2(k4_subset_1(u1_struct_0(X1),X2,X3),X1)
    | ~ v4_pre_topc(k9_subset_1(u1_struct_0(X1),esk1_1(X1),esk2_1(X1)),X1)
    | ~ v4_pre_topc(k4_subset_1(u1_struct_0(X1),esk1_1(X1),esk2_1(X1)),X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v4_pre_topc(X2,X1)
    | ~ v4_pre_topc(X3,X1)
    | ~ v2_tex_2(X2,X1)
    | ~ v2_tex_2(X3,X1)
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_41,negated_conjecture,
    ( v4_pre_topc(k4_subset_1(u1_struct_0(esk3_0),esk1_1(esk3_0),esk2_1(esk3_0)),esk3_0) ),
    inference(rw,[status(thm)],[c_0_37,c_0_38])).

cnf(c_0_42,negated_conjecture,
    ( v4_pre_topc(k9_subset_1(u1_struct_0(esk3_0),esk1_1(esk3_0),esk2_1(esk3_0)),esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39,c_0_33]),c_0_34])])).

cnf(c_0_43,negated_conjecture,
    ( v2_tex_2(k4_subset_1(u1_struct_0(esk3_0),X1,X2),esk3_0)
    | ~ v2_tex_2(X2,esk3_0)
    | ~ v2_tex_2(X1,esk3_0)
    | ~ v4_pre_topc(X2,esk3_0)
    | ~ v4_pre_topc(X1,esk3_0)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(esk3_0)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk3_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_41]),c_0_42]),c_0_12])])).

cnf(c_0_44,negated_conjecture,
    ( v2_tex_2(k4_subset_1(u1_struct_0(esk3_0),X1,esk5_0),esk3_0)
    | ~ v2_tex_2(X1,esk3_0)
    | ~ v4_pre_topc(X1,esk3_0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk3_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43,c_0_9]),c_0_10]),c_0_11])])).

cnf(c_0_45,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44,c_0_16]),c_0_17]),c_0_18])]),c_0_19]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.14  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.35  % Computer   : n019.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % WCLimit    : 600
% 0.14/0.35  % DateTime   : Tue Dec  1 16:46:52 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  # Version: 2.5pre002
% 0.14/0.35  # No SInE strategy applied
% 0.14/0.35  # Trying AutoSched0 for 299 seconds
% 0.14/0.39  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S064I
% 0.14/0.39  # and selection function SelectComplexG.
% 0.14/0.39  #
% 0.14/0.39  # Preprocessing time       : 0.028 s
% 0.14/0.39  # Presaturation interreduction done
% 0.14/0.39  
% 0.14/0.39  # Proof found!
% 0.14/0.39  # SZS status Theorem
% 0.14/0.39  # SZS output start CNFRefutation
% 0.14/0.39  fof(t39_tex_2, conjecture, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))=>((((v4_pre_topc(X2,X1)&v4_pre_topc(X3,X1))&v2_tex_2(X2,X1))&v2_tex_2(X3,X1))=>v2_tex_2(k4_subset_1(u1_struct_0(X1),X2,X3),X1))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t39_tex_2)).
% 0.14/0.39  fof(t31_tex_2, axiom, ![X1]:(l1_pre_topc(X1)=>(![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))=>((v4_pre_topc(X2,X1)&v4_pre_topc(X3,X1))=>(v4_pre_topc(k9_subset_1(u1_struct_0(X1),X2,X3),X1)&v4_pre_topc(k4_subset_1(u1_struct_0(X1),X2,X3),X1)))))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))=>((((v4_pre_topc(X2,X1)&v4_pre_topc(X3,X1))&v2_tex_2(X2,X1))&v2_tex_2(X3,X1))=>v2_tex_2(k4_subset_1(u1_struct_0(X1),X2,X3),X1)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t31_tex_2)).
% 0.14/0.39  fof(fc5_tops_1, axiom, ![X1, X2, X3]:((((((v2_pre_topc(X1)&l1_pre_topc(X1))&v4_pre_topc(X2,X1))&m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))))&v4_pre_topc(X3,X1))&m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1))))=>v4_pre_topc(k2_xboole_0(X2,X3),X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc5_tops_1)).
% 0.14/0.39  fof(redefinition_k4_subset_1, axiom, ![X1, X2, X3]:((m1_subset_1(X2,k1_zfmisc_1(X1))&m1_subset_1(X3,k1_zfmisc_1(X1)))=>k4_subset_1(X1,X2,X3)=k2_xboole_0(X2,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k4_subset_1)).
% 0.14/0.39  fof(t35_tops_1, axiom, ![X1]:((v2_pre_topc(X1)&l1_pre_topc(X1))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))=>((v4_pre_topc(X2,X1)&v4_pre_topc(X3,X1))=>v4_pre_topc(k9_subset_1(u1_struct_0(X1),X2,X3),X1))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t35_tops_1)).
% 0.14/0.39  fof(c_0_5, negated_conjecture, ~(![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))=>((((v4_pre_topc(X2,X1)&v4_pre_topc(X3,X1))&v2_tex_2(X2,X1))&v2_tex_2(X3,X1))=>v2_tex_2(k4_subset_1(u1_struct_0(X1),X2,X3),X1)))))), inference(assume_negation,[status(cth)],[t39_tex_2])).
% 0.14/0.39  fof(c_0_6, plain, ![X13, X16, X17]:((m1_subset_1(esk1_1(X13),k1_zfmisc_1(u1_struct_0(X13)))|(~m1_subset_1(X16,k1_zfmisc_1(u1_struct_0(X13)))|(~m1_subset_1(X17,k1_zfmisc_1(u1_struct_0(X13)))|(~v4_pre_topc(X16,X13)|~v4_pre_topc(X17,X13)|~v2_tex_2(X16,X13)|~v2_tex_2(X17,X13)|v2_tex_2(k4_subset_1(u1_struct_0(X13),X16,X17),X13))))|~l1_pre_topc(X13))&((m1_subset_1(esk2_1(X13),k1_zfmisc_1(u1_struct_0(X13)))|(~m1_subset_1(X16,k1_zfmisc_1(u1_struct_0(X13)))|(~m1_subset_1(X17,k1_zfmisc_1(u1_struct_0(X13)))|(~v4_pre_topc(X16,X13)|~v4_pre_topc(X17,X13)|~v2_tex_2(X16,X13)|~v2_tex_2(X17,X13)|v2_tex_2(k4_subset_1(u1_struct_0(X13),X16,X17),X13))))|~l1_pre_topc(X13))&(((v4_pre_topc(esk1_1(X13),X13)|(~m1_subset_1(X16,k1_zfmisc_1(u1_struct_0(X13)))|(~m1_subset_1(X17,k1_zfmisc_1(u1_struct_0(X13)))|(~v4_pre_topc(X16,X13)|~v4_pre_topc(X17,X13)|~v2_tex_2(X16,X13)|~v2_tex_2(X17,X13)|v2_tex_2(k4_subset_1(u1_struct_0(X13),X16,X17),X13))))|~l1_pre_topc(X13))&(v4_pre_topc(esk2_1(X13),X13)|(~m1_subset_1(X16,k1_zfmisc_1(u1_struct_0(X13)))|(~m1_subset_1(X17,k1_zfmisc_1(u1_struct_0(X13)))|(~v4_pre_topc(X16,X13)|~v4_pre_topc(X17,X13)|~v2_tex_2(X16,X13)|~v2_tex_2(X17,X13)|v2_tex_2(k4_subset_1(u1_struct_0(X13),X16,X17),X13))))|~l1_pre_topc(X13)))&(~v4_pre_topc(k9_subset_1(u1_struct_0(X13),esk1_1(X13),esk2_1(X13)),X13)|~v4_pre_topc(k4_subset_1(u1_struct_0(X13),esk1_1(X13),esk2_1(X13)),X13)|(~m1_subset_1(X16,k1_zfmisc_1(u1_struct_0(X13)))|(~m1_subset_1(X17,k1_zfmisc_1(u1_struct_0(X13)))|(~v4_pre_topc(X16,X13)|~v4_pre_topc(X17,X13)|~v2_tex_2(X16,X13)|~v2_tex_2(X17,X13)|v2_tex_2(k4_subset_1(u1_struct_0(X13),X16,X17),X13))))|~l1_pre_topc(X13))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t31_tex_2])])])])])).
% 0.14/0.39  fof(c_0_7, negated_conjecture, (((~v2_struct_0(esk3_0)&v2_pre_topc(esk3_0))&l1_pre_topc(esk3_0))&(m1_subset_1(esk4_0,k1_zfmisc_1(u1_struct_0(esk3_0)))&(m1_subset_1(esk5_0,k1_zfmisc_1(u1_struct_0(esk3_0)))&((((v4_pre_topc(esk4_0,esk3_0)&v4_pre_topc(esk5_0,esk3_0))&v2_tex_2(esk4_0,esk3_0))&v2_tex_2(esk5_0,esk3_0))&~v2_tex_2(k4_subset_1(u1_struct_0(esk3_0),esk4_0,esk5_0),esk3_0))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_5])])])])).
% 0.14/0.39  cnf(c_0_8, plain, (m1_subset_1(esk2_1(X1),k1_zfmisc_1(u1_struct_0(X1)))|v2_tex_2(k4_subset_1(u1_struct_0(X1),X2,X3),X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))|~v4_pre_topc(X2,X1)|~v4_pre_topc(X3,X1)|~v2_tex_2(X2,X1)|~v2_tex_2(X3,X1)|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.14/0.39  cnf(c_0_9, negated_conjecture, (m1_subset_1(esk5_0,k1_zfmisc_1(u1_struct_0(esk3_0)))), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.14/0.39  cnf(c_0_10, negated_conjecture, (v2_tex_2(esk5_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.14/0.39  cnf(c_0_11, negated_conjecture, (v4_pre_topc(esk5_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.14/0.39  cnf(c_0_12, negated_conjecture, (l1_pre_topc(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.14/0.39  cnf(c_0_13, plain, (v4_pre_topc(esk2_1(X1),X1)|v2_tex_2(k4_subset_1(u1_struct_0(X1),X2,X3),X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))|~v4_pre_topc(X2,X1)|~v4_pre_topc(X3,X1)|~v2_tex_2(X2,X1)|~v2_tex_2(X3,X1)|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.14/0.39  fof(c_0_14, plain, ![X7, X8, X9]:(~v2_pre_topc(X7)|~l1_pre_topc(X7)|~v4_pre_topc(X8,X7)|~m1_subset_1(X8,k1_zfmisc_1(u1_struct_0(X7)))|~v4_pre_topc(X9,X7)|~m1_subset_1(X9,k1_zfmisc_1(u1_struct_0(X7)))|v4_pre_topc(k2_xboole_0(X8,X9),X7)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[fc5_tops_1])])).
% 0.14/0.39  cnf(c_0_15, negated_conjecture, (v2_tex_2(k4_subset_1(u1_struct_0(esk3_0),X1,esk5_0),esk3_0)|m1_subset_1(esk2_1(esk3_0),k1_zfmisc_1(u1_struct_0(esk3_0)))|~v2_tex_2(X1,esk3_0)|~v4_pre_topc(X1,esk3_0)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk3_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_8, c_0_9]), c_0_10]), c_0_11]), c_0_12])])).
% 0.14/0.39  cnf(c_0_16, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(u1_struct_0(esk3_0)))), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.14/0.39  cnf(c_0_17, negated_conjecture, (v2_tex_2(esk4_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.14/0.39  cnf(c_0_18, negated_conjecture, (v4_pre_topc(esk4_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.14/0.39  cnf(c_0_19, negated_conjecture, (~v2_tex_2(k4_subset_1(u1_struct_0(esk3_0),esk4_0,esk5_0),esk3_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.14/0.39  cnf(c_0_20, negated_conjecture, (v2_tex_2(k4_subset_1(u1_struct_0(esk3_0),X1,esk5_0),esk3_0)|v4_pre_topc(esk2_1(esk3_0),esk3_0)|~v2_tex_2(X1,esk3_0)|~v4_pre_topc(X1,esk3_0)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk3_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_13, c_0_9]), c_0_10]), c_0_11]), c_0_12])])).
% 0.14/0.39  cnf(c_0_21, plain, (m1_subset_1(esk1_1(X1),k1_zfmisc_1(u1_struct_0(X1)))|v2_tex_2(k4_subset_1(u1_struct_0(X1),X2,X3),X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))|~v4_pre_topc(X2,X1)|~v4_pre_topc(X3,X1)|~v2_tex_2(X2,X1)|~v2_tex_2(X3,X1)|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.14/0.39  cnf(c_0_22, plain, (v4_pre_topc(esk1_1(X1),X1)|v2_tex_2(k4_subset_1(u1_struct_0(X1),X2,X3),X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))|~v4_pre_topc(X2,X1)|~v4_pre_topc(X3,X1)|~v2_tex_2(X2,X1)|~v2_tex_2(X3,X1)|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.14/0.39  fof(c_0_23, plain, ![X4, X5, X6]:(~m1_subset_1(X5,k1_zfmisc_1(X4))|~m1_subset_1(X6,k1_zfmisc_1(X4))|k4_subset_1(X4,X5,X6)=k2_xboole_0(X5,X6)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k4_subset_1])])).
% 0.14/0.39  cnf(c_0_24, plain, (v4_pre_topc(k2_xboole_0(X2,X3),X1)|~v2_pre_topc(X1)|~l1_pre_topc(X1)|~v4_pre_topc(X2,X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))|~v4_pre_topc(X3,X1)|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.14/0.39  cnf(c_0_25, negated_conjecture, (m1_subset_1(esk2_1(esk3_0),k1_zfmisc_1(u1_struct_0(esk3_0)))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_15, c_0_16]), c_0_17]), c_0_18])]), c_0_19])).
% 0.14/0.39  cnf(c_0_26, negated_conjecture, (v4_pre_topc(esk2_1(esk3_0),esk3_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_20, c_0_16]), c_0_17]), c_0_18])]), c_0_19])).
% 0.14/0.39  cnf(c_0_27, negated_conjecture, (v2_pre_topc(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.14/0.39  cnf(c_0_28, negated_conjecture, (v2_tex_2(k4_subset_1(u1_struct_0(esk3_0),X1,esk5_0),esk3_0)|m1_subset_1(esk1_1(esk3_0),k1_zfmisc_1(u1_struct_0(esk3_0)))|~v2_tex_2(X1,esk3_0)|~v4_pre_topc(X1,esk3_0)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk3_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_21, c_0_9]), c_0_10]), c_0_11]), c_0_12])])).
% 0.14/0.39  cnf(c_0_29, negated_conjecture, (v2_tex_2(k4_subset_1(u1_struct_0(esk3_0),X1,esk5_0),esk3_0)|v4_pre_topc(esk1_1(esk3_0),esk3_0)|~v2_tex_2(X1,esk3_0)|~v4_pre_topc(X1,esk3_0)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk3_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22, c_0_9]), c_0_10]), c_0_11]), c_0_12])])).
% 0.14/0.39  cnf(c_0_30, plain, (k4_subset_1(X2,X1,X3)=k2_xboole_0(X1,X3)|~m1_subset_1(X1,k1_zfmisc_1(X2))|~m1_subset_1(X3,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.14/0.39  fof(c_0_31, plain, ![X10, X11, X12]:(~v2_pre_topc(X10)|~l1_pre_topc(X10)|(~m1_subset_1(X11,k1_zfmisc_1(u1_struct_0(X10)))|(~m1_subset_1(X12,k1_zfmisc_1(u1_struct_0(X10)))|(~v4_pre_topc(X11,X10)|~v4_pre_topc(X12,X10)|v4_pre_topc(k9_subset_1(u1_struct_0(X10),X11,X12),X10))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t35_tops_1])])])).
% 0.14/0.39  cnf(c_0_32, negated_conjecture, (v4_pre_topc(k2_xboole_0(X1,esk2_1(esk3_0)),esk3_0)|~v4_pre_topc(X1,esk3_0)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk3_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24, c_0_25]), c_0_26]), c_0_12]), c_0_27])])).
% 0.14/0.39  cnf(c_0_33, negated_conjecture, (m1_subset_1(esk1_1(esk3_0),k1_zfmisc_1(u1_struct_0(esk3_0)))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28, c_0_16]), c_0_17]), c_0_18])]), c_0_19])).
% 0.14/0.39  cnf(c_0_34, negated_conjecture, (v4_pre_topc(esk1_1(esk3_0),esk3_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29, c_0_16]), c_0_17]), c_0_18])]), c_0_19])).
% 0.14/0.39  cnf(c_0_35, negated_conjecture, (k2_xboole_0(X1,esk2_1(esk3_0))=k4_subset_1(u1_struct_0(esk3_0),X1,esk2_1(esk3_0))|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk3_0)))), inference(spm,[status(thm)],[c_0_30, c_0_25])).
% 0.14/0.39  cnf(c_0_36, plain, (v4_pre_topc(k9_subset_1(u1_struct_0(X1),X2,X3),X1)|~v2_pre_topc(X1)|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))|~v4_pre_topc(X2,X1)|~v4_pre_topc(X3,X1)), inference(split_conjunct,[status(thm)],[c_0_31])).
% 0.14/0.39  cnf(c_0_37, negated_conjecture, (v4_pre_topc(k2_xboole_0(esk1_1(esk3_0),esk2_1(esk3_0)),esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32, c_0_33]), c_0_34])])).
% 0.14/0.39  cnf(c_0_38, negated_conjecture, (k2_xboole_0(esk1_1(esk3_0),esk2_1(esk3_0))=k4_subset_1(u1_struct_0(esk3_0),esk1_1(esk3_0),esk2_1(esk3_0))), inference(spm,[status(thm)],[c_0_35, c_0_33])).
% 0.14/0.39  cnf(c_0_39, negated_conjecture, (v4_pre_topc(k9_subset_1(u1_struct_0(esk3_0),X1,esk2_1(esk3_0)),esk3_0)|~v4_pre_topc(X1,esk3_0)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk3_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_36, c_0_25]), c_0_26]), c_0_12]), c_0_27])])).
% 0.14/0.39  cnf(c_0_40, plain, (v2_tex_2(k4_subset_1(u1_struct_0(X1),X2,X3),X1)|~v4_pre_topc(k9_subset_1(u1_struct_0(X1),esk1_1(X1),esk2_1(X1)),X1)|~v4_pre_topc(k4_subset_1(u1_struct_0(X1),esk1_1(X1),esk2_1(X1)),X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))|~v4_pre_topc(X2,X1)|~v4_pre_topc(X3,X1)|~v2_tex_2(X2,X1)|~v2_tex_2(X3,X1)|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.14/0.39  cnf(c_0_41, negated_conjecture, (v4_pre_topc(k4_subset_1(u1_struct_0(esk3_0),esk1_1(esk3_0),esk2_1(esk3_0)),esk3_0)), inference(rw,[status(thm)],[c_0_37, c_0_38])).
% 0.14/0.39  cnf(c_0_42, negated_conjecture, (v4_pre_topc(k9_subset_1(u1_struct_0(esk3_0),esk1_1(esk3_0),esk2_1(esk3_0)),esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39, c_0_33]), c_0_34])])).
% 0.14/0.39  cnf(c_0_43, negated_conjecture, (v2_tex_2(k4_subset_1(u1_struct_0(esk3_0),X1,X2),esk3_0)|~v2_tex_2(X2,esk3_0)|~v2_tex_2(X1,esk3_0)|~v4_pre_topc(X2,esk3_0)|~v4_pre_topc(X1,esk3_0)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(esk3_0)))|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk3_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_41]), c_0_42]), c_0_12])])).
% 0.14/0.39  cnf(c_0_44, negated_conjecture, (v2_tex_2(k4_subset_1(u1_struct_0(esk3_0),X1,esk5_0),esk3_0)|~v2_tex_2(X1,esk3_0)|~v4_pre_topc(X1,esk3_0)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk3_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43, c_0_9]), c_0_10]), c_0_11])])).
% 0.14/0.39  cnf(c_0_45, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44, c_0_16]), c_0_17]), c_0_18])]), c_0_19]), ['proof']).
% 0.14/0.39  # SZS output end CNFRefutation
% 0.14/0.39  # Proof object total steps             : 46
% 0.14/0.39  # Proof object clause steps            : 35
% 0.14/0.39  # Proof object formula steps           : 11
% 0.14/0.39  # Proof object conjectures             : 30
% 0.14/0.39  # Proof object clause conjectures      : 27
% 0.14/0.39  # Proof object formula conjectures     : 3
% 0.14/0.39  # Proof object initial clauses used    : 17
% 0.14/0.39  # Proof object initial formulas used   : 5
% 0.14/0.39  # Proof object generating inferences   : 17
% 0.14/0.39  # Proof object simplifying inferences  : 55
% 0.14/0.39  # Training examples: 0 positive, 0 negative
% 0.14/0.39  # Parsed axioms                        : 5
% 0.14/0.39  # Removed by relevancy pruning/SinE    : 0
% 0.14/0.39  # Initial clauses                      : 18
% 0.14/0.39  # Removed in clause preprocessing      : 0
% 0.14/0.39  # Initial clauses in saturation        : 18
% 0.14/0.39  # Processed clauses                    : 123
% 0.14/0.39  # ...of these trivial                  : 4
% 0.14/0.39  # ...subsumed                          : 0
% 0.14/0.39  # ...remaining for further processing  : 119
% 0.14/0.39  # Other redundant clauses eliminated   : 0
% 0.14/0.39  # Clauses deleted for lack of memory   : 0
% 0.14/0.39  # Backward-subsumed                    : 0
% 0.14/0.39  # Backward-rewritten                   : 17
% 0.14/0.39  # Generated clauses                    : 94
% 0.14/0.39  # ...of the previous two non-trivial   : 96
% 0.14/0.39  # Contextual simplify-reflections      : 0
% 0.14/0.39  # Paramodulations                      : 94
% 0.14/0.39  # Factorizations                       : 0
% 0.14/0.39  # Equation resolutions                 : 0
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
% 0.14/0.39  # Current number of processed clauses  : 84
% 0.14/0.39  #    Positive orientable unit clauses  : 60
% 0.14/0.39  #    Positive unorientable unit clauses: 0
% 0.14/0.39  #    Negative unit clauses             : 2
% 0.14/0.39  #    Non-unit-clauses                  : 22
% 0.14/0.39  # Current number of unprocessed clauses: 3
% 0.14/0.39  # ...number of literals in the above   : 14
% 0.14/0.39  # Current number of archived formulas  : 0
% 0.14/0.39  # Current number of archived clauses   : 35
% 0.14/0.39  # Clause-clause subsumption calls (NU) : 314
% 0.14/0.39  # Rec. Clause-clause subsumption calls : 48
% 0.14/0.39  # Non-unit clause-clause subsumptions  : 0
% 0.14/0.39  # Unit Clause-clause subsumption calls : 68
% 0.14/0.39  # Rewrite failures with RHS unbound    : 0
% 0.14/0.39  # BW rewrite match attempts            : 64
% 0.14/0.39  # BW rewrite match successes           : 16
% 0.14/0.39  # Condensation attempts                : 0
% 0.14/0.39  # Condensation successes               : 0
% 0.14/0.39  # Termbank termtop insertions          : 4887
% 0.14/0.39  
% 0.14/0.39  # -------------------------------------------------
% 0.14/0.39  # User time                : 0.034 s
% 0.14/0.39  # System time              : 0.004 s
% 0.14/0.39  # Total time               : 0.038 s
% 0.14/0.39  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
