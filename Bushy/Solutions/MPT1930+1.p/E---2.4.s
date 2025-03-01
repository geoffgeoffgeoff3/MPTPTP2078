%------------------------------------------------------------------------------
% File       : E---2.4
% Problem    : yellow_6__t28_yellow_6.p : TPTP v0.0.0. Released v0.0.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n009.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 300s
% DateTime   : Fri Oct 11 10:41:55 EDT 2019

% Result     : Theorem 19.08s
% Output     : CNFRefutation 19.08s
% Verified   : 
% Statistics : Number of formulae       :   39 ( 326 expanded)
%              Number of clauses        :   28 ( 104 expanded)
%              Number of leaves         :    5 (  80 expanded)
%              Depth                    :    8
%              Number of atoms          :  239 (2315 expanded)
%              Number of equality atoms :    0 (   0 expanded)
%              Maximal formula depth    :   19 (   6 average)
%              Maximal clause size      :   35 (   3 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t28_yellow_6,conjecture,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & l1_struct_0(X1) )
     => ! [X2] :
          ( ( ~ v2_struct_0(X2)
            & v4_orders_2(X2)
            & v7_waybel_0(X2)
            & l1_waybel_0(X2,X1) )
         => ! [X3] :
              ( r1_waybel_0(X1,X2,X3)
             => r2_waybel_0(X1,X2,X3) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/yellow_6__t28_yellow_6.p',t28_yellow_6)).

fof(d11_waybel_0,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & l1_struct_0(X1) )
     => ! [X2] :
          ( ( ~ v2_struct_0(X2)
            & l1_waybel_0(X2,X1) )
         => ! [X3] :
              ( r1_waybel_0(X1,X2,X3)
            <=> ? [X4] :
                  ( m1_subset_1(X4,u1_struct_0(X2))
                  & ! [X5] :
                      ( m1_subset_1(X5,u1_struct_0(X2))
                     => ( r1_orders_2(X2,X4,X5)
                       => r2_hidden(k2_waybel_0(X1,X2,X5),X3) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/yellow_6__t28_yellow_6.p',d11_waybel_0)).

fof(dt_l1_waybel_0,axiom,(
    ! [X1] :
      ( l1_struct_0(X1)
     => ! [X2] :
          ( l1_waybel_0(X2,X1)
         => l1_orders_2(X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/yellow_6__t28_yellow_6.p',dt_l1_waybel_0)).

fof(d12_waybel_0,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & l1_struct_0(X1) )
     => ! [X2] :
          ( ( ~ v2_struct_0(X2)
            & l1_waybel_0(X2,X1) )
         => ! [X3] :
              ( r2_waybel_0(X1,X2,X3)
            <=> ! [X4] :
                  ( m1_subset_1(X4,u1_struct_0(X2))
                 => ? [X5] :
                      ( m1_subset_1(X5,u1_struct_0(X2))
                      & r1_orders_2(X2,X4,X5)
                      & r2_hidden(k2_waybel_0(X1,X2,X5),X3) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/yellow_6__t28_yellow_6.p',d12_waybel_0)).

fof(d5_yellow_6,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & l1_orders_2(X1) )
     => ( v7_waybel_0(X1)
      <=> ! [X2] :
            ( m1_subset_1(X2,u1_struct_0(X1))
           => ! [X3] :
                ( m1_subset_1(X3,u1_struct_0(X1))
               => ? [X4] :
                    ( m1_subset_1(X4,u1_struct_0(X1))
                    & r1_orders_2(X1,X2,X4)
                    & r1_orders_2(X1,X3,X4) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/yellow_6__t28_yellow_6.p',d5_yellow_6)).

fof(c_0_5,negated_conjecture,(
    ~ ! [X1] :
        ( ( ~ v2_struct_0(X1)
          & l1_struct_0(X1) )
       => ! [X2] :
            ( ( ~ v2_struct_0(X2)
              & v4_orders_2(X2)
              & v7_waybel_0(X2)
              & l1_waybel_0(X2,X1) )
           => ! [X3] :
                ( r1_waybel_0(X1,X2,X3)
               => r2_waybel_0(X1,X2,X3) ) ) ) ),
    inference(assume_negation,[status(cth)],[t28_yellow_6])).

fof(c_0_6,plain,(
    ! [X11,X12,X13,X15,X16,X17] :
      ( ( m1_subset_1(esk4_3(X11,X12,X13),u1_struct_0(X12))
        | ~ r1_waybel_0(X11,X12,X13)
        | v2_struct_0(X12)
        | ~ l1_waybel_0(X12,X11)
        | v2_struct_0(X11)
        | ~ l1_struct_0(X11) )
      & ( ~ m1_subset_1(X15,u1_struct_0(X12))
        | ~ r1_orders_2(X12,esk4_3(X11,X12,X13),X15)
        | r2_hidden(k2_waybel_0(X11,X12,X15),X13)
        | ~ r1_waybel_0(X11,X12,X13)
        | v2_struct_0(X12)
        | ~ l1_waybel_0(X12,X11)
        | v2_struct_0(X11)
        | ~ l1_struct_0(X11) )
      & ( m1_subset_1(esk5_4(X11,X12,X16,X17),u1_struct_0(X12))
        | ~ m1_subset_1(X17,u1_struct_0(X12))
        | r1_waybel_0(X11,X12,X16)
        | v2_struct_0(X12)
        | ~ l1_waybel_0(X12,X11)
        | v2_struct_0(X11)
        | ~ l1_struct_0(X11) )
      & ( r1_orders_2(X12,X17,esk5_4(X11,X12,X16,X17))
        | ~ m1_subset_1(X17,u1_struct_0(X12))
        | r1_waybel_0(X11,X12,X16)
        | v2_struct_0(X12)
        | ~ l1_waybel_0(X12,X11)
        | v2_struct_0(X11)
        | ~ l1_struct_0(X11) )
      & ( ~ r2_hidden(k2_waybel_0(X11,X12,esk5_4(X11,X12,X16,X17)),X16)
        | ~ m1_subset_1(X17,u1_struct_0(X12))
        | r1_waybel_0(X11,X12,X16)
        | v2_struct_0(X12)
        | ~ l1_waybel_0(X12,X11)
        | v2_struct_0(X11)
        | ~ l1_struct_0(X11) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d11_waybel_0])])])])])])])).

fof(c_0_7,negated_conjecture,
    ( ~ v2_struct_0(esk1_0)
    & l1_struct_0(esk1_0)
    & ~ v2_struct_0(esk2_0)
    & v4_orders_2(esk2_0)
    & v7_waybel_0(esk2_0)
    & l1_waybel_0(esk2_0,esk1_0)
    & r1_waybel_0(esk1_0,esk2_0,esk3_0)
    & ~ r2_waybel_0(esk1_0,esk2_0,esk3_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_5])])])])).

fof(c_0_8,plain,(
    ! [X42,X43] :
      ( ~ l1_struct_0(X42)
      | ~ l1_waybel_0(X43,X42)
      | l1_orders_2(X43) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_l1_waybel_0])])])).

fof(c_0_9,plain,(
    ! [X19,X20,X21,X22,X24,X26] :
      ( ( m1_subset_1(esk6_4(X19,X20,X21,X22),u1_struct_0(X20))
        | ~ m1_subset_1(X22,u1_struct_0(X20))
        | ~ r2_waybel_0(X19,X20,X21)
        | v2_struct_0(X20)
        | ~ l1_waybel_0(X20,X19)
        | v2_struct_0(X19)
        | ~ l1_struct_0(X19) )
      & ( r1_orders_2(X20,X22,esk6_4(X19,X20,X21,X22))
        | ~ m1_subset_1(X22,u1_struct_0(X20))
        | ~ r2_waybel_0(X19,X20,X21)
        | v2_struct_0(X20)
        | ~ l1_waybel_0(X20,X19)
        | v2_struct_0(X19)
        | ~ l1_struct_0(X19) )
      & ( r2_hidden(k2_waybel_0(X19,X20,esk6_4(X19,X20,X21,X22)),X21)
        | ~ m1_subset_1(X22,u1_struct_0(X20))
        | ~ r2_waybel_0(X19,X20,X21)
        | v2_struct_0(X20)
        | ~ l1_waybel_0(X20,X19)
        | v2_struct_0(X19)
        | ~ l1_struct_0(X19) )
      & ( m1_subset_1(esk7_3(X19,X20,X24),u1_struct_0(X20))
        | r2_waybel_0(X19,X20,X24)
        | v2_struct_0(X20)
        | ~ l1_waybel_0(X20,X19)
        | v2_struct_0(X19)
        | ~ l1_struct_0(X19) )
      & ( ~ m1_subset_1(X26,u1_struct_0(X20))
        | ~ r1_orders_2(X20,esk7_3(X19,X20,X24),X26)
        | ~ r2_hidden(k2_waybel_0(X19,X20,X26),X24)
        | r2_waybel_0(X19,X20,X24)
        | v2_struct_0(X20)
        | ~ l1_waybel_0(X20,X19)
        | v2_struct_0(X19)
        | ~ l1_struct_0(X19) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d12_waybel_0])])])])])])])).

fof(c_0_10,plain,(
    ! [X27,X28,X29,X33] :
      ( ( m1_subset_1(esk8_3(X27,X28,X29),u1_struct_0(X27))
        | ~ m1_subset_1(X29,u1_struct_0(X27))
        | ~ m1_subset_1(X28,u1_struct_0(X27))
        | ~ v7_waybel_0(X27)
        | v2_struct_0(X27)
        | ~ l1_orders_2(X27) )
      & ( r1_orders_2(X27,X28,esk8_3(X27,X28,X29))
        | ~ m1_subset_1(X29,u1_struct_0(X27))
        | ~ m1_subset_1(X28,u1_struct_0(X27))
        | ~ v7_waybel_0(X27)
        | v2_struct_0(X27)
        | ~ l1_orders_2(X27) )
      & ( r1_orders_2(X27,X29,esk8_3(X27,X28,X29))
        | ~ m1_subset_1(X29,u1_struct_0(X27))
        | ~ m1_subset_1(X28,u1_struct_0(X27))
        | ~ v7_waybel_0(X27)
        | v2_struct_0(X27)
        | ~ l1_orders_2(X27) )
      & ( m1_subset_1(esk9_1(X27),u1_struct_0(X27))
        | v7_waybel_0(X27)
        | v2_struct_0(X27)
        | ~ l1_orders_2(X27) )
      & ( m1_subset_1(esk10_1(X27),u1_struct_0(X27))
        | v7_waybel_0(X27)
        | v2_struct_0(X27)
        | ~ l1_orders_2(X27) )
      & ( ~ m1_subset_1(X33,u1_struct_0(X27))
        | ~ r1_orders_2(X27,esk9_1(X27),X33)
        | ~ r1_orders_2(X27,esk10_1(X27),X33)
        | v7_waybel_0(X27)
        | v2_struct_0(X27)
        | ~ l1_orders_2(X27) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d5_yellow_6])])])])])])).

cnf(c_0_11,plain,
    ( m1_subset_1(esk4_3(X1,X2,X3),u1_struct_0(X2))
    | v2_struct_0(X2)
    | v2_struct_0(X1)
    | ~ r1_waybel_0(X1,X2,X3)
    | ~ l1_waybel_0(X2,X1)
    | ~ l1_struct_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_12,negated_conjecture,
    ( r1_waybel_0(esk1_0,esk2_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_13,negated_conjecture,
    ( l1_waybel_0(esk2_0,esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_14,negated_conjecture,
    ( l1_struct_0(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_15,negated_conjecture,
    ( ~ v2_struct_0(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_16,negated_conjecture,
    ( ~ v2_struct_0(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_17,plain,
    ( l1_orders_2(X2)
    | ~ l1_struct_0(X1)
    | ~ l1_waybel_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_18,plain,
    ( m1_subset_1(esk7_3(X1,X2,X3),u1_struct_0(X2))
    | r2_waybel_0(X1,X2,X3)
    | v2_struct_0(X2)
    | v2_struct_0(X1)
    | ~ l1_waybel_0(X2,X1)
    | ~ l1_struct_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_19,plain,
    ( r1_orders_2(X1,X2,esk8_3(X1,X2,X3))
    | v2_struct_0(X1)
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ v7_waybel_0(X1)
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_20,negated_conjecture,
    ( m1_subset_1(esk4_3(esk1_0,esk2_0,esk3_0),u1_struct_0(esk2_0)) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_11,c_0_12]),c_0_13]),c_0_14])]),c_0_15]),c_0_16])).

cnf(c_0_21,negated_conjecture,
    ( l1_orders_2(esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_17,c_0_13]),c_0_14])])).

cnf(c_0_22,negated_conjecture,
    ( v7_waybel_0(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_23,plain,
    ( m1_subset_1(esk8_3(X1,X2,X3),u1_struct_0(X1))
    | v2_struct_0(X1)
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ v7_waybel_0(X1)
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_24,plain,
    ( r1_orders_2(X1,X2,esk8_3(X1,X3,X2))
    | v2_struct_0(X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ v7_waybel_0(X1)
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_25,negated_conjecture,
    ( m1_subset_1(esk7_3(esk1_0,esk2_0,X1),u1_struct_0(esk2_0))
    | r2_waybel_0(esk1_0,esk2_0,X1) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_18,c_0_13]),c_0_14])]),c_0_15]),c_0_16])).

cnf(c_0_26,negated_conjecture,
    ( r1_orders_2(esk2_0,X1,esk8_3(esk2_0,X1,esk4_3(esk1_0,esk2_0,esk3_0)))
    | ~ m1_subset_1(X1,u1_struct_0(esk2_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19,c_0_20]),c_0_21]),c_0_22])]),c_0_15])).

cnf(c_0_27,negated_conjecture,
    ( m1_subset_1(esk8_3(esk2_0,X1,esk4_3(esk1_0,esk2_0,esk3_0)),u1_struct_0(esk2_0))
    | ~ m1_subset_1(X1,u1_struct_0(esk2_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_23,c_0_20]),c_0_21]),c_0_22])]),c_0_15])).

cnf(c_0_28,plain,
    ( r2_hidden(k2_waybel_0(X3,X2,X1),X4)
    | v2_struct_0(X2)
    | v2_struct_0(X3)
    | ~ m1_subset_1(X1,u1_struct_0(X2))
    | ~ r1_orders_2(X2,esk4_3(X3,X2,X4),X1)
    | ~ r1_waybel_0(X3,X2,X4)
    | ~ l1_waybel_0(X2,X3)
    | ~ l1_struct_0(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_29,negated_conjecture,
    ( r1_orders_2(esk2_0,X1,esk8_3(esk2_0,esk7_3(esk1_0,esk2_0,X2),X1))
    | r2_waybel_0(esk1_0,esk2_0,X2)
    | ~ m1_subset_1(X1,u1_struct_0(esk2_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24,c_0_25]),c_0_21]),c_0_22])]),c_0_15])).

cnf(c_0_30,plain,
    ( r2_waybel_0(X3,X2,X4)
    | v2_struct_0(X2)
    | v2_struct_0(X3)
    | ~ m1_subset_1(X1,u1_struct_0(X2))
    | ~ r1_orders_2(X2,esk7_3(X3,X2,X4),X1)
    | ~ r2_hidden(k2_waybel_0(X3,X2,X1),X4)
    | ~ l1_waybel_0(X2,X3)
    | ~ l1_struct_0(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_31,negated_conjecture,
    ( r1_orders_2(esk2_0,esk7_3(esk1_0,esk2_0,X1),esk8_3(esk2_0,esk7_3(esk1_0,esk2_0,X1),esk4_3(esk1_0,esk2_0,esk3_0)))
    | r2_waybel_0(esk1_0,esk2_0,X1) ),
    inference(spm,[status(thm)],[c_0_26,c_0_25])).

cnf(c_0_32,negated_conjecture,
    ( m1_subset_1(esk8_3(esk2_0,esk7_3(esk1_0,esk2_0,X1),esk4_3(esk1_0,esk2_0,esk3_0)),u1_struct_0(esk2_0))
    | r2_waybel_0(esk1_0,esk2_0,X1) ),
    inference(spm,[status(thm)],[c_0_27,c_0_25])).

cnf(c_0_33,negated_conjecture,
    ( r2_hidden(k2_waybel_0(esk1_0,esk2_0,X1),esk3_0)
    | ~ r1_orders_2(esk2_0,esk4_3(esk1_0,esk2_0,esk3_0),X1)
    | ~ m1_subset_1(X1,u1_struct_0(esk2_0)) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28,c_0_12]),c_0_13]),c_0_14])]),c_0_16]),c_0_15])).

cnf(c_0_34,negated_conjecture,
    ( r1_orders_2(esk2_0,esk4_3(esk1_0,esk2_0,esk3_0),esk8_3(esk2_0,esk7_3(esk1_0,esk2_0,X1),esk4_3(esk1_0,esk2_0,esk3_0)))
    | r2_waybel_0(esk1_0,esk2_0,X1) ),
    inference(spm,[status(thm)],[c_0_29,c_0_20])).

cnf(c_0_35,negated_conjecture,
    ( r2_waybel_0(esk1_0,esk2_0,X1)
    | ~ r2_hidden(k2_waybel_0(esk1_0,esk2_0,esk8_3(esk2_0,esk7_3(esk1_0,esk2_0,X1),esk4_3(esk1_0,esk2_0,esk3_0))),X1) ),
    inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_30,c_0_31]),c_0_13]),c_0_14])]),c_0_16]),c_0_15]),c_0_32])).

cnf(c_0_36,negated_conjecture,
    ( r2_hidden(k2_waybel_0(esk1_0,esk2_0,esk8_3(esk2_0,esk7_3(esk1_0,esk2_0,X1),esk4_3(esk1_0,esk2_0,esk3_0))),esk3_0)
    | r2_waybel_0(esk1_0,esk2_0,X1) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_34]),c_0_32])).

cnf(c_0_37,negated_conjecture,
    ( ~ r2_waybel_0(esk1_0,esk2_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_38,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_35,c_0_36]),c_0_37]),
    [proof]).
%------------------------------------------------------------------------------
