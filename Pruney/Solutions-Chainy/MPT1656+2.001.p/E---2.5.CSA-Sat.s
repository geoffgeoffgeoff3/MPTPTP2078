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
% DateTime   : Thu Dec  3 11:16:19 EST 2020

% Result     : CounterSatisfiable 0.13s
% Output     : Saturation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   64 ( 866 expanded)
%              Number of clauses        :   55 ( 319 expanded)
%              Number of leaves         :    4 ( 204 expanded)
%              Depth                    :   10
%              Number of atoms          :  271 (5872 expanded)
%              Number of equality atoms :    0 (   0 expanded)
%              Maximal formula depth    :   12 (   5 average)
%              Maximal clause size      :   18 (   3 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t36_waybel_0,conjecture,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v3_orders_2(X1)
        & v4_orders_2(X1)
        & l1_orders_2(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ! [X3] :
              ( m1_subset_1(X3,u1_struct_0(X1))
             => ( r1_lattice3(X1,X2,X3)
              <=> r1_lattice3(X1,k4_waybel_0(X1,X2),X3) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t36_waybel_0)).

fof(d8_lattice3,axiom,(
    ! [X1] :
      ( l1_orders_2(X1)
     => ! [X2,X3] :
          ( m1_subset_1(X3,u1_struct_0(X1))
         => ( r1_lattice3(X1,X2,X3)
          <=> ! [X4] :
                ( m1_subset_1(X4,u1_struct_0(X1))
               => ( r2_hidden(X4,X2)
                 => r1_orders_2(X1,X3,X4) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d8_lattice3)).

fof(d9_lattice3,axiom,(
    ! [X1] :
      ( l1_orders_2(X1)
     => ! [X2,X3] :
          ( m1_subset_1(X3,u1_struct_0(X1))
         => ( r2_lattice3(X1,X2,X3)
          <=> ! [X4] :
                ( m1_subset_1(X4,u1_struct_0(X1))
               => ( r2_hidden(X4,X2)
                 => r1_orders_2(X1,X4,X3) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d9_lattice3)).

fof(t9_yellow_0,axiom,(
    ! [X1] :
      ( l1_orders_2(X1)
     => ! [X2,X3] :
          ( r1_tarski(X2,X3)
         => ! [X4] :
              ( m1_subset_1(X4,u1_struct_0(X1))
             => ( ( r1_lattice3(X1,X3,X4)
                 => r1_lattice3(X1,X2,X4) )
                & ( r2_lattice3(X1,X3,X4)
                 => r2_lattice3(X1,X2,X4) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t9_yellow_0)).

fof(c_0_4,negated_conjecture,(
    ~ ! [X1] :
        ( ( ~ v2_struct_0(X1)
          & v3_orders_2(X1)
          & v4_orders_2(X1)
          & l1_orders_2(X1) )
       => ! [X2] :
            ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
           => ! [X3] :
                ( m1_subset_1(X3,u1_struct_0(X1))
               => ( r1_lattice3(X1,X2,X3)
                <=> r1_lattice3(X1,k4_waybel_0(X1,X2),X3) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t36_waybel_0])).

fof(c_0_5,plain,(
    ! [X5,X6,X7,X8] :
      ( ( ~ r1_lattice3(X5,X6,X7)
        | ~ m1_subset_1(X8,u1_struct_0(X5))
        | ~ r2_hidden(X8,X6)
        | r1_orders_2(X5,X7,X8)
        | ~ m1_subset_1(X7,u1_struct_0(X5))
        | ~ l1_orders_2(X5) )
      & ( m1_subset_1(esk1_3(X5,X6,X7),u1_struct_0(X5))
        | r1_lattice3(X5,X6,X7)
        | ~ m1_subset_1(X7,u1_struct_0(X5))
        | ~ l1_orders_2(X5) )
      & ( r2_hidden(esk1_3(X5,X6,X7),X6)
        | r1_lattice3(X5,X6,X7)
        | ~ m1_subset_1(X7,u1_struct_0(X5))
        | ~ l1_orders_2(X5) )
      & ( ~ r1_orders_2(X5,X7,esk1_3(X5,X6,X7))
        | r1_lattice3(X5,X6,X7)
        | ~ m1_subset_1(X7,u1_struct_0(X5))
        | ~ l1_orders_2(X5) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d8_lattice3])])])])])).

fof(c_0_6,negated_conjecture,
    ( ~ v2_struct_0(esk3_0)
    & v3_orders_2(esk3_0)
    & v4_orders_2(esk3_0)
    & l1_orders_2(esk3_0)
    & m1_subset_1(esk4_0,k1_zfmisc_1(u1_struct_0(esk3_0)))
    & m1_subset_1(esk5_0,u1_struct_0(esk3_0))
    & ( ~ r1_lattice3(esk3_0,esk4_0,esk5_0)
      | ~ r1_lattice3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0) )
    & ( r1_lattice3(esk3_0,esk4_0,esk5_0)
      | r1_lattice3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_4])])])])).

cnf(c_0_7,plain,
    ( m1_subset_1(esk1_3(X1,X2,X3),u1_struct_0(X1))
    | r1_lattice3(X1,X2,X3)
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_5]),
    [final]).

cnf(c_0_8,negated_conjecture,
    ( m1_subset_1(esk5_0,u1_struct_0(esk3_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_6]),
    [final]).

cnf(c_0_9,negated_conjecture,
    ( l1_orders_2(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6]),
    [final]).

cnf(c_0_10,negated_conjecture,
    ( ~ r1_lattice3(esk3_0,esk4_0,esk5_0)
    | ~ r1_lattice3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6]),
    [final]).

cnf(c_0_11,negated_conjecture,
    ( r1_lattice3(esk3_0,X1,esk5_0)
    | m1_subset_1(esk1_3(esk3_0,X1,esk5_0),u1_struct_0(esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_7,c_0_8]),c_0_9])]),
    [final]).

fof(c_0_12,plain,(
    ! [X10,X11,X12,X13] :
      ( ( ~ r2_lattice3(X10,X11,X12)
        | ~ m1_subset_1(X13,u1_struct_0(X10))
        | ~ r2_hidden(X13,X11)
        | r1_orders_2(X10,X13,X12)
        | ~ m1_subset_1(X12,u1_struct_0(X10))
        | ~ l1_orders_2(X10) )
      & ( m1_subset_1(esk2_3(X10,X11,X12),u1_struct_0(X10))
        | r2_lattice3(X10,X11,X12)
        | ~ m1_subset_1(X12,u1_struct_0(X10))
        | ~ l1_orders_2(X10) )
      & ( r2_hidden(esk2_3(X10,X11,X12),X11)
        | r2_lattice3(X10,X11,X12)
        | ~ m1_subset_1(X12,u1_struct_0(X10))
        | ~ l1_orders_2(X10) )
      & ( ~ r1_orders_2(X10,esk2_3(X10,X11,X12),X12)
        | r2_lattice3(X10,X11,X12)
        | ~ m1_subset_1(X12,u1_struct_0(X10))
        | ~ l1_orders_2(X10) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d9_lattice3])])])])])).

cnf(c_0_13,negated_conjecture,
    ( m1_subset_1(esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0),u1_struct_0(esk3_0))
    | ~ r1_lattice3(esk3_0,esk4_0,esk5_0) ),
    inference(spm,[status(thm)],[c_0_10,c_0_11]),
    [final]).

cnf(c_0_14,plain,
    ( m1_subset_1(esk2_3(X1,X2,X3),u1_struct_0(X1))
    | r2_lattice3(X1,X2,X3)
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_12]),
    [final]).

cnf(c_0_15,negated_conjecture,
    ( m1_subset_1(esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0),u1_struct_0(esk3_0))
    | m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0)) ),
    inference(spm,[status(thm)],[c_0_13,c_0_11]),
    [final]).

fof(c_0_16,plain,(
    ! [X15,X16,X17,X18] :
      ( ( ~ r1_lattice3(X15,X17,X18)
        | r1_lattice3(X15,X16,X18)
        | ~ m1_subset_1(X18,u1_struct_0(X15))
        | ~ r1_tarski(X16,X17)
        | ~ l1_orders_2(X15) )
      & ( ~ r2_lattice3(X15,X17,X18)
        | r2_lattice3(X15,X16,X18)
        | ~ m1_subset_1(X18,u1_struct_0(X15))
        | ~ r1_tarski(X16,X17)
        | ~ l1_orders_2(X15) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t9_yellow_0])])])])).

cnf(c_0_17,plain,
    ( r1_orders_2(X1,X3,X4)
    | ~ r1_lattice3(X1,X2,X3)
    | ~ m1_subset_1(X4,u1_struct_0(X1))
    | ~ r2_hidden(X4,X2)
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_5]),
    [final]).

cnf(c_0_18,plain,
    ( r2_hidden(esk1_3(X1,X2,X3),X2)
    | r1_lattice3(X1,X2,X3)
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_5]),
    [final]).

cnf(c_0_19,plain,
    ( r1_orders_2(X1,X4,X3)
    | ~ r2_lattice3(X1,X2,X3)
    | ~ m1_subset_1(X4,u1_struct_0(X1))
    | ~ r2_hidden(X4,X2)
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_12]),
    [final]).

cnf(c_0_20,negated_conjecture,
    ( r2_lattice3(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0))
    | m1_subset_1(esk2_3(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)),u1_struct_0(esk3_0))
    | m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_14,c_0_15]),c_0_9])]),
    [final]).

cnf(c_0_21,negated_conjecture,
    ( r2_lattice3(esk3_0,X1,esk5_0)
    | m1_subset_1(esk2_3(esk3_0,X1,esk5_0),u1_struct_0(esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_14,c_0_8]),c_0_9])]),
    [final]).

cnf(c_0_22,plain,
    ( r1_lattice3(X1,X4,X3)
    | ~ r1_lattice3(X1,X2,X3)
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ r1_tarski(X4,X2)
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_16]),
    [final]).

cnf(c_0_23,negated_conjecture,
    ( r1_orders_2(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0))
    | m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0))
    | ~ r2_hidden(esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0),X2)
    | ~ r1_lattice3(esk3_0,X2,X1)
    | ~ m1_subset_1(X1,u1_struct_0(esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_17,c_0_15]),c_0_9])]),
    [final]).

cnf(c_0_24,negated_conjecture,
    ( r2_hidden(esk1_3(esk3_0,X1,esk5_0),X1)
    | r1_lattice3(esk3_0,X1,esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_18,c_0_8]),c_0_9])]),
    [final]).

cnf(c_0_25,negated_conjecture,
    ( r1_orders_2(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0))
    | m1_subset_1(esk2_3(esk3_0,X2,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)),u1_struct_0(esk3_0))
    | m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0))
    | ~ r2_hidden(X1,X2)
    | ~ m1_subset_1(X1,u1_struct_0(esk3_0)) ),
    inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19,c_0_20]),c_0_9])]),c_0_15]),
    [final]).

cnf(c_0_26,negated_conjecture,
    ( r1_orders_2(esk3_0,X1,esk5_0)
    | m1_subset_1(esk2_3(esk3_0,X2,esk5_0),u1_struct_0(esk3_0))
    | ~ r2_hidden(X1,X2)
    | ~ m1_subset_1(X1,u1_struct_0(esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19,c_0_21]),c_0_8]),c_0_9])]),
    [final]).

cnf(c_0_27,negated_conjecture,
    ( r1_orders_2(esk3_0,X1,esk5_0)
    | ~ r2_hidden(esk5_0,X2)
    | ~ r1_lattice3(esk3_0,X2,X1)
    | ~ m1_subset_1(X1,u1_struct_0(esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_17,c_0_8]),c_0_9])]),
    [final]).

cnf(c_0_28,plain,
    ( r2_lattice3(X1,X4,X3)
    | ~ r2_lattice3(X1,X2,X3)
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ r1_tarski(X4,X2)
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_16]),
    [final]).

cnf(c_0_29,negated_conjecture,
    ( r1_lattice3(esk3_0,X1,esk5_0)
    | ~ r1_tarski(X1,X2)
    | ~ r1_lattice3(esk3_0,X2,esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22,c_0_8]),c_0_9])]),
    [final]).

cnf(c_0_30,negated_conjecture,
    ( r1_lattice3(esk3_0,esk4_0,esk5_0)
    | r1_lattice3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6]),
    [final]).

cnf(c_0_31,negated_conjecture,
    ( r1_orders_2(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0))
    | r1_lattice3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)
    | m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0))
    | ~ r1_lattice3(esk3_0,k4_waybel_0(esk3_0,esk4_0),X1)
    | ~ m1_subset_1(X1,u1_struct_0(esk3_0)) ),
    inference(spm,[status(thm)],[c_0_23,c_0_24]),
    [final]).

cnf(c_0_32,negated_conjecture,
    ( r1_lattice3(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0))
    | m1_subset_1(esk1_3(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)),u1_struct_0(esk3_0))
    | m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_7,c_0_15]),c_0_9])]),
    [final]).

cnf(c_0_33,negated_conjecture,
    ( r1_orders_2(esk3_0,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0),esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0))
    | m1_subset_1(esk2_3(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)),u1_struct_0(esk3_0))
    | m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0))
    | ~ r2_hidden(esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0),X1) ),
    inference(spm,[status(thm)],[c_0_25,c_0_15]),
    [final]).

cnf(c_0_34,negated_conjecture,
    ( r1_orders_2(esk3_0,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0),esk5_0)
    | m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0))
    | m1_subset_1(esk2_3(esk3_0,X1,esk5_0),u1_struct_0(esk3_0))
    | ~ r2_hidden(esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0),X1) ),
    inference(spm,[status(thm)],[c_0_26,c_0_15]),
    [final]).

cnf(c_0_35,negated_conjecture,
    ( r1_orders_2(esk3_0,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0),esk5_0)
    | m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0))
    | ~ r2_hidden(esk5_0,X1)
    | ~ r1_lattice3(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)) ),
    inference(spm,[status(thm)],[c_0_27,c_0_15]),
    [final]).

cnf(c_0_36,negated_conjecture,
    ( r2_lattice3(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0))
    | m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0))
    | ~ r1_tarski(X1,X2)
    | ~ r2_lattice3(esk3_0,X2,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28,c_0_15]),c_0_9])]),
    [final]).

cnf(c_0_37,negated_conjecture,
    ( r2_lattice3(esk3_0,X1,esk5_0)
    | ~ r1_tarski(X1,X2)
    | ~ r2_lattice3(esk3_0,X2,esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28,c_0_8]),c_0_9])]),
    [final]).

cnf(c_0_38,negated_conjecture,
    ( r1_lattice3(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0))
    | m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0))
    | ~ r1_tarski(X1,X2)
    | ~ r1_lattice3(esk3_0,X2,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22,c_0_15]),c_0_9])]),
    [final]).

cnf(c_0_39,plain,
    ( r2_hidden(esk2_3(X1,X2,X3),X2)
    | r2_lattice3(X1,X2,X3)
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_12]),
    [final]).

cnf(c_0_40,negated_conjecture,
    ( r1_orders_2(esk3_0,esk5_0,esk5_0)
    | ~ r2_hidden(esk5_0,X1)
    | ~ r1_lattice3(esk3_0,X1,esk5_0) ),
    inference(spm,[status(thm)],[c_0_27,c_0_8]),
    [final]).

cnf(c_0_41,negated_conjecture,
    ( r1_lattice3(esk3_0,esk4_0,esk5_0)
    | r1_lattice3(esk3_0,X1,esk5_0)
    | ~ r1_tarski(X1,k4_waybel_0(esk3_0,esk4_0)) ),
    inference(spm,[status(thm)],[c_0_29,c_0_30]),
    [final]).

cnf(c_0_42,negated_conjecture,
    ( r1_orders_2(esk3_0,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0),esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0))
    | r1_lattice3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)
    | m1_subset_1(esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)),u1_struct_0(esk3_0))
    | m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0)) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_32]),c_0_11]),
    [final]).

cnf(c_0_43,negated_conjecture,
    ( r1_orders_2(esk3_0,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0),esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0))
    | r1_lattice3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)
    | m1_subset_1(esk2_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)),u1_struct_0(esk3_0))
    | m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0)) ),
    inference(spm,[status(thm)],[c_0_33,c_0_24]),
    [final]).

cnf(c_0_44,negated_conjecture,
    ( r1_orders_2(esk3_0,esk5_0,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0))
    | m1_subset_1(esk2_3(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)),u1_struct_0(esk3_0))
    | m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0))
    | ~ r2_hidden(esk5_0,X1) ),
    inference(spm,[status(thm)],[c_0_25,c_0_8]),
    [final]).

cnf(c_0_45,negated_conjecture,
    ( r1_orders_2(esk3_0,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0),esk5_0)
    | r1_lattice3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)
    | m1_subset_1(esk2_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0),u1_struct_0(esk3_0))
    | m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0)) ),
    inference(spm,[status(thm)],[c_0_34,c_0_24]),
    [final]).

cnf(c_0_46,negated_conjecture,
    ( r1_orders_2(esk3_0,esk5_0,esk5_0)
    | m1_subset_1(esk2_3(esk3_0,X1,esk5_0),u1_struct_0(esk3_0))
    | ~ r2_hidden(esk5_0,X1) ),
    inference(spm,[status(thm)],[c_0_26,c_0_8]),
    [final]).

cnf(c_0_47,negated_conjecture,
    ( r1_orders_2(esk3_0,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0),esk5_0)
    | m1_subset_1(esk1_3(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)),u1_struct_0(esk3_0))
    | m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0))
    | ~ r2_hidden(esk5_0,X1) ),
    inference(spm,[status(thm)],[c_0_35,c_0_32]),
    [final]).

cnf(c_0_48,negated_conjecture,
    ( r2_lattice3(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0))
    | m1_subset_1(esk2_3(esk3_0,X2,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)),u1_struct_0(esk3_0))
    | m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0))
    | ~ r1_tarski(X1,X2) ),
    inference(spm,[status(thm)],[c_0_36,c_0_20]),
    [final]).

cnf(c_0_49,negated_conjecture,
    ( r2_lattice3(esk3_0,X1,esk5_0)
    | m1_subset_1(esk2_3(esk3_0,X2,esk5_0),u1_struct_0(esk3_0))
    | ~ r1_tarski(X1,X2) ),
    inference(spm,[status(thm)],[c_0_37,c_0_21]),
    [final]).

cnf(c_0_50,negated_conjecture,
    ( r1_lattice3(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0))
    | m1_subset_1(esk1_3(esk3_0,X2,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)),u1_struct_0(esk3_0))
    | m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0))
    | ~ r1_tarski(X1,X2) ),
    inference(spm,[status(thm)],[c_0_38,c_0_32]),
    [final]).

cnf(c_0_51,negated_conjecture,
    ( r2_lattice3(esk3_0,X1,esk5_0)
    | r2_hidden(esk2_3(esk3_0,X1,esk5_0),X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39,c_0_8]),c_0_9])]),
    [final]).

cnf(c_0_52,negated_conjecture,
    ( r1_orders_2(esk3_0,esk5_0,esk5_0)
    | m1_subset_1(esk1_3(esk3_0,X1,esk5_0),u1_struct_0(esk3_0))
    | ~ r2_hidden(esk5_0,X1) ),
    inference(spm,[status(thm)],[c_0_40,c_0_11]),
    [final]).

cnf(c_0_53,negated_conjecture,
    ( r1_orders_2(esk3_0,esk5_0,esk5_0)
    | r1_lattice3(esk3_0,esk4_0,esk5_0)
    | ~ r2_hidden(esk5_0,k4_waybel_0(esk3_0,esk4_0)) ),
    inference(spm,[status(thm)],[c_0_40,c_0_30]),
    [final]).

cnf(c_0_54,negated_conjecture,
    ( r2_lattice3(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0))
    | r2_hidden(esk2_3(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)),X1)
    | m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39,c_0_15]),c_0_9])]),
    [final]).

cnf(c_0_55,negated_conjecture,
    ( r2_hidden(esk1_3(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)),X1)
    | r1_lattice3(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0))
    | m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_18,c_0_15]),c_0_9])]),
    [final]).

cnf(c_0_56,negated_conjecture,
    ( r1_lattice3(esk3_0,X1,esk5_0)
    | m1_subset_1(esk1_3(esk3_0,X2,esk5_0),u1_struct_0(esk3_0))
    | ~ r1_tarski(X1,X2) ),
    inference(spm,[status(thm)],[c_0_29,c_0_11]),
    [final]).

cnf(c_0_57,negated_conjecture,
    ( r1_lattice3(esk3_0,esk4_0,esk5_0)
    | ~ r1_tarski(esk4_0,k4_waybel_0(esk3_0,esk4_0)) ),
    inference(ef,[status(thm)],[c_0_41]),
    [final]).

cnf(c_0_58,plain,
    ( r2_lattice3(X1,X2,X3)
    | ~ r1_orders_2(X1,esk2_3(X1,X2,X3),X3)
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_12]),
    [final]).

cnf(c_0_59,plain,
    ( r1_lattice3(X1,X3,X2)
    | ~ r1_orders_2(X1,X2,esk1_3(X1,X3,X2))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_5]),
    [final]).

cnf(c_0_60,negated_conjecture,
    ( ~ v2_struct_0(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6]),
    [final]).

cnf(c_0_61,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(u1_struct_0(esk3_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_6]),
    [final]).

cnf(c_0_62,negated_conjecture,
    ( v4_orders_2(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6]),
    [final]).

cnf(c_0_63,negated_conjecture,
    ( v3_orders_2(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6]),
    [final]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.33  % Computer   : n006.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % WCLimit    : 600
% 0.13/0.33  % DateTime   : Tue Dec  1 15:09:22 EST 2020
% 0.13/0.33  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.13/0.37  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S047A
% 0.13/0.37  # and selection function PSelectComplexPreferNEQ.
% 0.13/0.37  #
% 0.13/0.37  # Preprocessing time       : 0.026 s
% 0.13/0.37  # Presaturation interreduction done
% 0.13/0.37  
% 0.13/0.37  # No proof found!
% 0.13/0.37  # SZS status CounterSatisfiable
% 0.13/0.37  # SZS output start Saturation
% 0.13/0.37  fof(t36_waybel_0, conjecture, ![X1]:((((~(v2_struct_0(X1))&v3_orders_2(X1))&v4_orders_2(X1))&l1_orders_2(X1))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>![X3]:(m1_subset_1(X3,u1_struct_0(X1))=>(r1_lattice3(X1,X2,X3)<=>r1_lattice3(X1,k4_waybel_0(X1,X2),X3))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t36_waybel_0)).
% 0.13/0.37  fof(d8_lattice3, axiom, ![X1]:(l1_orders_2(X1)=>![X2, X3]:(m1_subset_1(X3,u1_struct_0(X1))=>(r1_lattice3(X1,X2,X3)<=>![X4]:(m1_subset_1(X4,u1_struct_0(X1))=>(r2_hidden(X4,X2)=>r1_orders_2(X1,X3,X4)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d8_lattice3)).
% 0.13/0.37  fof(d9_lattice3, axiom, ![X1]:(l1_orders_2(X1)=>![X2, X3]:(m1_subset_1(X3,u1_struct_0(X1))=>(r2_lattice3(X1,X2,X3)<=>![X4]:(m1_subset_1(X4,u1_struct_0(X1))=>(r2_hidden(X4,X2)=>r1_orders_2(X1,X4,X3)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d9_lattice3)).
% 0.13/0.37  fof(t9_yellow_0, axiom, ![X1]:(l1_orders_2(X1)=>![X2, X3]:(r1_tarski(X2,X3)=>![X4]:(m1_subset_1(X4,u1_struct_0(X1))=>((r1_lattice3(X1,X3,X4)=>r1_lattice3(X1,X2,X4))&(r2_lattice3(X1,X3,X4)=>r2_lattice3(X1,X2,X4)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t9_yellow_0)).
% 0.13/0.37  fof(c_0_4, negated_conjecture, ~(![X1]:((((~(v2_struct_0(X1))&v3_orders_2(X1))&v4_orders_2(X1))&l1_orders_2(X1))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>![X3]:(m1_subset_1(X3,u1_struct_0(X1))=>(r1_lattice3(X1,X2,X3)<=>r1_lattice3(X1,k4_waybel_0(X1,X2),X3)))))), inference(assume_negation,[status(cth)],[t36_waybel_0])).
% 0.13/0.37  fof(c_0_5, plain, ![X5, X6, X7, X8]:((~r1_lattice3(X5,X6,X7)|(~m1_subset_1(X8,u1_struct_0(X5))|(~r2_hidden(X8,X6)|r1_orders_2(X5,X7,X8)))|~m1_subset_1(X7,u1_struct_0(X5))|~l1_orders_2(X5))&((m1_subset_1(esk1_3(X5,X6,X7),u1_struct_0(X5))|r1_lattice3(X5,X6,X7)|~m1_subset_1(X7,u1_struct_0(X5))|~l1_orders_2(X5))&((r2_hidden(esk1_3(X5,X6,X7),X6)|r1_lattice3(X5,X6,X7)|~m1_subset_1(X7,u1_struct_0(X5))|~l1_orders_2(X5))&(~r1_orders_2(X5,X7,esk1_3(X5,X6,X7))|r1_lattice3(X5,X6,X7)|~m1_subset_1(X7,u1_struct_0(X5))|~l1_orders_2(X5))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d8_lattice3])])])])])).
% 0.13/0.37  fof(c_0_6, negated_conjecture, ((((~v2_struct_0(esk3_0)&v3_orders_2(esk3_0))&v4_orders_2(esk3_0))&l1_orders_2(esk3_0))&(m1_subset_1(esk4_0,k1_zfmisc_1(u1_struct_0(esk3_0)))&(m1_subset_1(esk5_0,u1_struct_0(esk3_0))&((~r1_lattice3(esk3_0,esk4_0,esk5_0)|~r1_lattice3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0))&(r1_lattice3(esk3_0,esk4_0,esk5_0)|r1_lattice3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_4])])])])).
% 0.13/0.37  cnf(c_0_7, plain, (m1_subset_1(esk1_3(X1,X2,X3),u1_struct_0(X1))|r1_lattice3(X1,X2,X3)|~m1_subset_1(X3,u1_struct_0(X1))|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_5]), ['final']).
% 0.13/0.37  cnf(c_0_8, negated_conjecture, (m1_subset_1(esk5_0,u1_struct_0(esk3_0))), inference(split_conjunct,[status(thm)],[c_0_6]), ['final']).
% 0.13/0.37  cnf(c_0_9, negated_conjecture, (l1_orders_2(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_6]), ['final']).
% 0.13/0.37  cnf(c_0_10, negated_conjecture, (~r1_lattice3(esk3_0,esk4_0,esk5_0)|~r1_lattice3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)), inference(split_conjunct,[status(thm)],[c_0_6]), ['final']).
% 0.13/0.37  cnf(c_0_11, negated_conjecture, (r1_lattice3(esk3_0,X1,esk5_0)|m1_subset_1(esk1_3(esk3_0,X1,esk5_0),u1_struct_0(esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_7, c_0_8]), c_0_9])]), ['final']).
% 0.13/0.37  fof(c_0_12, plain, ![X10, X11, X12, X13]:((~r2_lattice3(X10,X11,X12)|(~m1_subset_1(X13,u1_struct_0(X10))|(~r2_hidden(X13,X11)|r1_orders_2(X10,X13,X12)))|~m1_subset_1(X12,u1_struct_0(X10))|~l1_orders_2(X10))&((m1_subset_1(esk2_3(X10,X11,X12),u1_struct_0(X10))|r2_lattice3(X10,X11,X12)|~m1_subset_1(X12,u1_struct_0(X10))|~l1_orders_2(X10))&((r2_hidden(esk2_3(X10,X11,X12),X11)|r2_lattice3(X10,X11,X12)|~m1_subset_1(X12,u1_struct_0(X10))|~l1_orders_2(X10))&(~r1_orders_2(X10,esk2_3(X10,X11,X12),X12)|r2_lattice3(X10,X11,X12)|~m1_subset_1(X12,u1_struct_0(X10))|~l1_orders_2(X10))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d9_lattice3])])])])])).
% 0.13/0.37  cnf(c_0_13, negated_conjecture, (m1_subset_1(esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0),u1_struct_0(esk3_0))|~r1_lattice3(esk3_0,esk4_0,esk5_0)), inference(spm,[status(thm)],[c_0_10, c_0_11]), ['final']).
% 0.13/0.37  cnf(c_0_14, plain, (m1_subset_1(esk2_3(X1,X2,X3),u1_struct_0(X1))|r2_lattice3(X1,X2,X3)|~m1_subset_1(X3,u1_struct_0(X1))|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_12]), ['final']).
% 0.13/0.37  cnf(c_0_15, negated_conjecture, (m1_subset_1(esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0),u1_struct_0(esk3_0))|m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0))), inference(spm,[status(thm)],[c_0_13, c_0_11]), ['final']).
% 0.13/0.37  fof(c_0_16, plain, ![X15, X16, X17, X18]:((~r1_lattice3(X15,X17,X18)|r1_lattice3(X15,X16,X18)|~m1_subset_1(X18,u1_struct_0(X15))|~r1_tarski(X16,X17)|~l1_orders_2(X15))&(~r2_lattice3(X15,X17,X18)|r2_lattice3(X15,X16,X18)|~m1_subset_1(X18,u1_struct_0(X15))|~r1_tarski(X16,X17)|~l1_orders_2(X15))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t9_yellow_0])])])])).
% 0.13/0.37  cnf(c_0_17, plain, (r1_orders_2(X1,X3,X4)|~r1_lattice3(X1,X2,X3)|~m1_subset_1(X4,u1_struct_0(X1))|~r2_hidden(X4,X2)|~m1_subset_1(X3,u1_struct_0(X1))|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_5]), ['final']).
% 0.13/0.37  cnf(c_0_18, plain, (r2_hidden(esk1_3(X1,X2,X3),X2)|r1_lattice3(X1,X2,X3)|~m1_subset_1(X3,u1_struct_0(X1))|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_5]), ['final']).
% 0.13/0.37  cnf(c_0_19, plain, (r1_orders_2(X1,X4,X3)|~r2_lattice3(X1,X2,X3)|~m1_subset_1(X4,u1_struct_0(X1))|~r2_hidden(X4,X2)|~m1_subset_1(X3,u1_struct_0(X1))|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_12]), ['final']).
% 0.13/0.37  cnf(c_0_20, negated_conjecture, (r2_lattice3(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0))|m1_subset_1(esk2_3(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)),u1_struct_0(esk3_0))|m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_14, c_0_15]), c_0_9])]), ['final']).
% 0.13/0.37  cnf(c_0_21, negated_conjecture, (r2_lattice3(esk3_0,X1,esk5_0)|m1_subset_1(esk2_3(esk3_0,X1,esk5_0),u1_struct_0(esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_14, c_0_8]), c_0_9])]), ['final']).
% 0.13/0.37  cnf(c_0_22, plain, (r1_lattice3(X1,X4,X3)|~r1_lattice3(X1,X2,X3)|~m1_subset_1(X3,u1_struct_0(X1))|~r1_tarski(X4,X2)|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_16]), ['final']).
% 0.13/0.37  cnf(c_0_23, negated_conjecture, (r1_orders_2(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0))|m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0))|~r2_hidden(esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0),X2)|~r1_lattice3(esk3_0,X2,X1)|~m1_subset_1(X1,u1_struct_0(esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_17, c_0_15]), c_0_9])]), ['final']).
% 0.13/0.37  cnf(c_0_24, negated_conjecture, (r2_hidden(esk1_3(esk3_0,X1,esk5_0),X1)|r1_lattice3(esk3_0,X1,esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_18, c_0_8]), c_0_9])]), ['final']).
% 0.13/0.37  cnf(c_0_25, negated_conjecture, (r1_orders_2(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0))|m1_subset_1(esk2_3(esk3_0,X2,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)),u1_struct_0(esk3_0))|m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0))|~r2_hidden(X1,X2)|~m1_subset_1(X1,u1_struct_0(esk3_0))), inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19, c_0_20]), c_0_9])]), c_0_15]), ['final']).
% 0.13/0.37  cnf(c_0_26, negated_conjecture, (r1_orders_2(esk3_0,X1,esk5_0)|m1_subset_1(esk2_3(esk3_0,X2,esk5_0),u1_struct_0(esk3_0))|~r2_hidden(X1,X2)|~m1_subset_1(X1,u1_struct_0(esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19, c_0_21]), c_0_8]), c_0_9])]), ['final']).
% 0.13/0.37  cnf(c_0_27, negated_conjecture, (r1_orders_2(esk3_0,X1,esk5_0)|~r2_hidden(esk5_0,X2)|~r1_lattice3(esk3_0,X2,X1)|~m1_subset_1(X1,u1_struct_0(esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_17, c_0_8]), c_0_9])]), ['final']).
% 0.13/0.37  cnf(c_0_28, plain, (r2_lattice3(X1,X4,X3)|~r2_lattice3(X1,X2,X3)|~m1_subset_1(X3,u1_struct_0(X1))|~r1_tarski(X4,X2)|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_16]), ['final']).
% 0.13/0.37  cnf(c_0_29, negated_conjecture, (r1_lattice3(esk3_0,X1,esk5_0)|~r1_tarski(X1,X2)|~r1_lattice3(esk3_0,X2,esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22, c_0_8]), c_0_9])]), ['final']).
% 0.13/0.37  cnf(c_0_30, negated_conjecture, (r1_lattice3(esk3_0,esk4_0,esk5_0)|r1_lattice3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)), inference(split_conjunct,[status(thm)],[c_0_6]), ['final']).
% 0.13/0.37  cnf(c_0_31, negated_conjecture, (r1_orders_2(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0))|r1_lattice3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)|m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0))|~r1_lattice3(esk3_0,k4_waybel_0(esk3_0,esk4_0),X1)|~m1_subset_1(X1,u1_struct_0(esk3_0))), inference(spm,[status(thm)],[c_0_23, c_0_24]), ['final']).
% 0.13/0.37  cnf(c_0_32, negated_conjecture, (r1_lattice3(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0))|m1_subset_1(esk1_3(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)),u1_struct_0(esk3_0))|m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_7, c_0_15]), c_0_9])]), ['final']).
% 0.13/0.37  cnf(c_0_33, negated_conjecture, (r1_orders_2(esk3_0,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0),esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0))|m1_subset_1(esk2_3(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)),u1_struct_0(esk3_0))|m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0))|~r2_hidden(esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0),X1)), inference(spm,[status(thm)],[c_0_25, c_0_15]), ['final']).
% 0.13/0.37  cnf(c_0_34, negated_conjecture, (r1_orders_2(esk3_0,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0),esk5_0)|m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0))|m1_subset_1(esk2_3(esk3_0,X1,esk5_0),u1_struct_0(esk3_0))|~r2_hidden(esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0),X1)), inference(spm,[status(thm)],[c_0_26, c_0_15]), ['final']).
% 0.13/0.37  cnf(c_0_35, negated_conjecture, (r1_orders_2(esk3_0,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0),esk5_0)|m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0))|~r2_hidden(esk5_0,X1)|~r1_lattice3(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0))), inference(spm,[status(thm)],[c_0_27, c_0_15]), ['final']).
% 0.13/0.37  cnf(c_0_36, negated_conjecture, (r2_lattice3(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0))|m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0))|~r1_tarski(X1,X2)|~r2_lattice3(esk3_0,X2,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28, c_0_15]), c_0_9])]), ['final']).
% 0.13/0.37  cnf(c_0_37, negated_conjecture, (r2_lattice3(esk3_0,X1,esk5_0)|~r1_tarski(X1,X2)|~r2_lattice3(esk3_0,X2,esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28, c_0_8]), c_0_9])]), ['final']).
% 0.13/0.37  cnf(c_0_38, negated_conjecture, (r1_lattice3(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0))|m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0))|~r1_tarski(X1,X2)|~r1_lattice3(esk3_0,X2,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22, c_0_15]), c_0_9])]), ['final']).
% 0.13/0.37  cnf(c_0_39, plain, (r2_hidden(esk2_3(X1,X2,X3),X2)|r2_lattice3(X1,X2,X3)|~m1_subset_1(X3,u1_struct_0(X1))|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_12]), ['final']).
% 0.13/0.37  cnf(c_0_40, negated_conjecture, (r1_orders_2(esk3_0,esk5_0,esk5_0)|~r2_hidden(esk5_0,X1)|~r1_lattice3(esk3_0,X1,esk5_0)), inference(spm,[status(thm)],[c_0_27, c_0_8]), ['final']).
% 0.13/0.37  cnf(c_0_41, negated_conjecture, (r1_lattice3(esk3_0,esk4_0,esk5_0)|r1_lattice3(esk3_0,X1,esk5_0)|~r1_tarski(X1,k4_waybel_0(esk3_0,esk4_0))), inference(spm,[status(thm)],[c_0_29, c_0_30]), ['final']).
% 0.13/0.37  cnf(c_0_42, negated_conjecture, (r1_orders_2(esk3_0,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0),esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0))|r1_lattice3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)|m1_subset_1(esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)),u1_struct_0(esk3_0))|m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0))), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_32]), c_0_11]), ['final']).
% 0.13/0.37  cnf(c_0_43, negated_conjecture, (r1_orders_2(esk3_0,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0),esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0))|r1_lattice3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)|m1_subset_1(esk2_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)),u1_struct_0(esk3_0))|m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0))), inference(spm,[status(thm)],[c_0_33, c_0_24]), ['final']).
% 0.13/0.37  cnf(c_0_44, negated_conjecture, (r1_orders_2(esk3_0,esk5_0,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0))|m1_subset_1(esk2_3(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)),u1_struct_0(esk3_0))|m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0))|~r2_hidden(esk5_0,X1)), inference(spm,[status(thm)],[c_0_25, c_0_8]), ['final']).
% 0.13/0.37  cnf(c_0_45, negated_conjecture, (r1_orders_2(esk3_0,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0),esk5_0)|r1_lattice3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)|m1_subset_1(esk2_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0),u1_struct_0(esk3_0))|m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0))), inference(spm,[status(thm)],[c_0_34, c_0_24]), ['final']).
% 0.13/0.37  cnf(c_0_46, negated_conjecture, (r1_orders_2(esk3_0,esk5_0,esk5_0)|m1_subset_1(esk2_3(esk3_0,X1,esk5_0),u1_struct_0(esk3_0))|~r2_hidden(esk5_0,X1)), inference(spm,[status(thm)],[c_0_26, c_0_8]), ['final']).
% 0.13/0.37  cnf(c_0_47, negated_conjecture, (r1_orders_2(esk3_0,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0),esk5_0)|m1_subset_1(esk1_3(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)),u1_struct_0(esk3_0))|m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0))|~r2_hidden(esk5_0,X1)), inference(spm,[status(thm)],[c_0_35, c_0_32]), ['final']).
% 0.13/0.37  cnf(c_0_48, negated_conjecture, (r2_lattice3(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0))|m1_subset_1(esk2_3(esk3_0,X2,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)),u1_struct_0(esk3_0))|m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0))|~r1_tarski(X1,X2)), inference(spm,[status(thm)],[c_0_36, c_0_20]), ['final']).
% 0.13/0.37  cnf(c_0_49, negated_conjecture, (r2_lattice3(esk3_0,X1,esk5_0)|m1_subset_1(esk2_3(esk3_0,X2,esk5_0),u1_struct_0(esk3_0))|~r1_tarski(X1,X2)), inference(spm,[status(thm)],[c_0_37, c_0_21]), ['final']).
% 0.13/0.37  cnf(c_0_50, negated_conjecture, (r1_lattice3(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0))|m1_subset_1(esk1_3(esk3_0,X2,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)),u1_struct_0(esk3_0))|m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0))|~r1_tarski(X1,X2)), inference(spm,[status(thm)],[c_0_38, c_0_32]), ['final']).
% 0.13/0.37  cnf(c_0_51, negated_conjecture, (r2_lattice3(esk3_0,X1,esk5_0)|r2_hidden(esk2_3(esk3_0,X1,esk5_0),X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39, c_0_8]), c_0_9])]), ['final']).
% 0.13/0.37  cnf(c_0_52, negated_conjecture, (r1_orders_2(esk3_0,esk5_0,esk5_0)|m1_subset_1(esk1_3(esk3_0,X1,esk5_0),u1_struct_0(esk3_0))|~r2_hidden(esk5_0,X1)), inference(spm,[status(thm)],[c_0_40, c_0_11]), ['final']).
% 0.13/0.37  cnf(c_0_53, negated_conjecture, (r1_orders_2(esk3_0,esk5_0,esk5_0)|r1_lattice3(esk3_0,esk4_0,esk5_0)|~r2_hidden(esk5_0,k4_waybel_0(esk3_0,esk4_0))), inference(spm,[status(thm)],[c_0_40, c_0_30]), ['final']).
% 0.13/0.37  cnf(c_0_54, negated_conjecture, (r2_lattice3(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0))|r2_hidden(esk2_3(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)),X1)|m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39, c_0_15]), c_0_9])]), ['final']).
% 0.13/0.37  cnf(c_0_55, negated_conjecture, (r2_hidden(esk1_3(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0)),X1)|r1_lattice3(esk3_0,X1,esk1_3(esk3_0,k4_waybel_0(esk3_0,esk4_0),esk5_0))|m1_subset_1(esk1_3(esk3_0,esk4_0,esk5_0),u1_struct_0(esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_18, c_0_15]), c_0_9])]), ['final']).
% 0.13/0.37  cnf(c_0_56, negated_conjecture, (r1_lattice3(esk3_0,X1,esk5_0)|m1_subset_1(esk1_3(esk3_0,X2,esk5_0),u1_struct_0(esk3_0))|~r1_tarski(X1,X2)), inference(spm,[status(thm)],[c_0_29, c_0_11]), ['final']).
% 0.13/0.37  cnf(c_0_57, negated_conjecture, (r1_lattice3(esk3_0,esk4_0,esk5_0)|~r1_tarski(esk4_0,k4_waybel_0(esk3_0,esk4_0))), inference(ef,[status(thm)],[c_0_41]), ['final']).
% 0.13/0.37  cnf(c_0_58, plain, (r2_lattice3(X1,X2,X3)|~r1_orders_2(X1,esk2_3(X1,X2,X3),X3)|~m1_subset_1(X3,u1_struct_0(X1))|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_12]), ['final']).
% 0.13/0.37  cnf(c_0_59, plain, (r1_lattice3(X1,X3,X2)|~r1_orders_2(X1,X2,esk1_3(X1,X3,X2))|~m1_subset_1(X2,u1_struct_0(X1))|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_5]), ['final']).
% 0.13/0.37  cnf(c_0_60, negated_conjecture, (~v2_struct_0(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_6]), ['final']).
% 0.13/0.37  cnf(c_0_61, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(u1_struct_0(esk3_0)))), inference(split_conjunct,[status(thm)],[c_0_6]), ['final']).
% 0.13/0.37  cnf(c_0_62, negated_conjecture, (v4_orders_2(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_6]), ['final']).
% 0.13/0.37  cnf(c_0_63, negated_conjecture, (v3_orders_2(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_6]), ['final']).
% 0.13/0.37  # SZS output end Saturation
% 0.13/0.37  # Proof object total steps             : 64
% 0.13/0.37  # Proof object clause steps            : 55
% 0.13/0.37  # Proof object formula steps           : 9
% 0.13/0.37  # Proof object conjectures             : 48
% 0.13/0.37  # Proof object clause conjectures      : 45
% 0.13/0.37  # Proof object formula conjectures     : 3
% 0.13/0.37  # Proof object initial clauses used    : 18
% 0.13/0.37  # Proof object initial formulas used   : 4
% 0.13/0.37  # Proof object generating inferences   : 37
% 0.13/0.37  # Proof object simplifying inferences  : 35
% 0.13/0.37  # Parsed axioms                        : 4
% 0.13/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.37  # Initial clauses                      : 18
% 0.13/0.37  # Removed in clause preprocessing      : 0
% 0.13/0.37  # Initial clauses in saturation        : 18
% 0.13/0.37  # Processed clauses                    : 76
% 0.13/0.37  # ...of these trivial                  : 0
% 0.13/0.37  # ...subsumed                          : 3
% 0.13/0.37  # ...remaining for further processing  : 73
% 0.13/0.37  # Other redundant clauses eliminated   : 0
% 0.13/0.37  # Clauses deleted for lack of memory   : 0
% 0.13/0.37  # Backward-subsumed                    : 0
% 0.13/0.37  # Backward-rewritten                   : 0
% 0.13/0.37  # Generated clauses                    : 41
% 0.13/0.37  # ...of the previous two non-trivial   : 40
% 0.13/0.37  # Contextual simplify-reflections      : 2
% 0.13/0.37  # Paramodulations                      : 39
% 0.13/0.37  # Factorizations                       : 2
% 0.13/0.37  # Equation resolutions                 : 0
% 0.13/0.37  # Propositional unsat checks           : 0
% 0.13/0.37  #    Propositional check models        : 0
% 0.13/0.37  #    Propositional check unsatisfiable : 0
% 0.13/0.37  #    Propositional clauses             : 0
% 0.13/0.37  #    Propositional clauses after purity: 0
% 0.13/0.37  #    Propositional unsat core size     : 0
% 0.13/0.37  #    Propositional preprocessing time  : 0.000
% 0.13/0.37  #    Propositional encoding time       : 0.000
% 0.13/0.37  #    Propositional solver time         : 0.000
% 0.13/0.37  #    Success case prop preproc time    : 0.000
% 0.13/0.37  #    Success case prop encoding time   : 0.000
% 0.13/0.37  #    Success case prop solver time     : 0.000
% 0.13/0.37  # Current number of processed clauses  : 55
% 0.13/0.37  #    Positive orientable unit clauses  : 5
% 0.13/0.37  #    Positive unorientable unit clauses: 0
% 0.13/0.37  #    Negative unit clauses             : 1
% 0.13/0.37  #    Non-unit-clauses                  : 49
% 0.13/0.37  # Current number of unprocessed clauses: 0
% 0.13/0.37  # ...number of literals in the above   : 0
% 0.13/0.37  # Current number of archived formulas  : 0
% 0.13/0.37  # Current number of archived clauses   : 18
% 0.13/0.37  # Clause-clause subsumption calls (NU) : 292
% 0.13/0.37  # Rec. Clause-clause subsumption calls : 98
% 0.13/0.37  # Non-unit clause-clause subsumptions  : 5
% 0.13/0.37  # Unit Clause-clause subsumption calls : 0
% 0.13/0.37  # Rewrite failures with RHS unbound    : 0
% 0.13/0.37  # BW rewrite match attempts            : 0
% 0.13/0.37  # BW rewrite match successes           : 0
% 0.13/0.37  # Condensation attempts                : 0
% 0.13/0.37  # Condensation successes               : 0
% 0.13/0.37  # Termbank termtop insertions          : 3307
% 0.13/0.37  
% 0.13/0.37  # -------------------------------------------------
% 0.13/0.37  # User time                : 0.030 s
% 0.13/0.37  # System time              : 0.004 s
% 0.13/0.37  # Total time               : 0.034 s
% 0.13/0.37  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
