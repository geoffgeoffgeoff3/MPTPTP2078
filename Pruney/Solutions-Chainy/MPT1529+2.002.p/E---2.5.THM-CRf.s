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
% DateTime   : Thu Dec  3 11:15:13 EST 2020

% Result     : Theorem 0.22s
% Output     : CNFRefutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   59 ( 777 expanded)
%              Number of clauses        :   48 ( 316 expanded)
%              Number of leaves         :    5 ( 182 expanded)
%              Depth                    :   15
%              Number of atoms          :  313 (10890 expanded)
%              Number of equality atoms :   41 ( 641 expanded)
%              Maximal formula depth    :   23 (   5 average)
%              Maximal clause size      :   67 (   3 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t7_yellow_0,conjecture,(
    ! [X1] :
      ( l1_orders_2(X1)
     => ! [X2] :
          ( m1_subset_1(X2,u1_struct_0(X1))
         => ! [X3] :
              ( m1_subset_1(X3,u1_struct_0(X1))
             => ( ( r1_lattice3(X1,k1_tarski(X3),X2)
                 => r1_orders_2(X1,X2,X3) )
                & ( r1_orders_2(X1,X2,X3)
                 => r1_lattice3(X1,k1_tarski(X3),X2) )
                & ( r2_lattice3(X1,k1_tarski(X3),X2)
                 => r1_orders_2(X1,X3,X2) )
                & ( r1_orders_2(X1,X3,X2)
                 => r2_lattice3(X1,k1_tarski(X3),X2) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_yellow_0)).

fof(d2_tarski,axiom,(
    ! [X1,X2,X3] :
      ( X3 = k2_tarski(X1,X2)
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ( X4 = X1
            | X4 = X2 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d2_tarski)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

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
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d9_lattice3)).

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
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d8_lattice3)).

fof(c_0_5,negated_conjecture,(
    ~ ! [X1] :
        ( l1_orders_2(X1)
       => ! [X2] :
            ( m1_subset_1(X2,u1_struct_0(X1))
           => ! [X3] :
                ( m1_subset_1(X3,u1_struct_0(X1))
               => ( ( r1_lattice3(X1,k1_tarski(X3),X2)
                   => r1_orders_2(X1,X2,X3) )
                  & ( r1_orders_2(X1,X2,X3)
                   => r1_lattice3(X1,k1_tarski(X3),X2) )
                  & ( r2_lattice3(X1,k1_tarski(X3),X2)
                   => r1_orders_2(X1,X3,X2) )
                  & ( r1_orders_2(X1,X3,X2)
                   => r2_lattice3(X1,k1_tarski(X3),X2) ) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t7_yellow_0])).

fof(c_0_6,plain,(
    ! [X5,X6,X7,X8,X9,X10,X11,X12] :
      ( ( ~ r2_hidden(X8,X7)
        | X8 = X5
        | X8 = X6
        | X7 != k2_tarski(X5,X6) )
      & ( X9 != X5
        | r2_hidden(X9,X7)
        | X7 != k2_tarski(X5,X6) )
      & ( X9 != X6
        | r2_hidden(X9,X7)
        | X7 != k2_tarski(X5,X6) )
      & ( esk1_3(X10,X11,X12) != X10
        | ~ r2_hidden(esk1_3(X10,X11,X12),X12)
        | X12 = k2_tarski(X10,X11) )
      & ( esk1_3(X10,X11,X12) != X11
        | ~ r2_hidden(esk1_3(X10,X11,X12),X12)
        | X12 = k2_tarski(X10,X11) )
      & ( r2_hidden(esk1_3(X10,X11,X12),X12)
        | esk1_3(X10,X11,X12) = X10
        | esk1_3(X10,X11,X12) = X11
        | X12 = k2_tarski(X10,X11) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d2_tarski])])])])])])).

fof(c_0_7,negated_conjecture,
    ( l1_orders_2(esk4_0)
    & m1_subset_1(esk5_0,u1_struct_0(esk4_0))
    & m1_subset_1(esk6_0,u1_struct_0(esk4_0))
    & ( r1_orders_2(esk4_0,esk6_0,esk5_0)
      | r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)
      | r1_orders_2(esk4_0,esk5_0,esk6_0)
      | r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0) )
    & ( ~ r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)
      | r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)
      | r1_orders_2(esk4_0,esk5_0,esk6_0)
      | r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0) )
    & ( r1_orders_2(esk4_0,esk6_0,esk5_0)
      | ~ r1_orders_2(esk4_0,esk6_0,esk5_0)
      | r1_orders_2(esk4_0,esk5_0,esk6_0)
      | r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0) )
    & ( ~ r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)
      | ~ r1_orders_2(esk4_0,esk6_0,esk5_0)
      | r1_orders_2(esk4_0,esk5_0,esk6_0)
      | r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0) )
    & ( r1_orders_2(esk4_0,esk6_0,esk5_0)
      | r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)
      | ~ r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)
      | r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0) )
    & ( ~ r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)
      | r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)
      | ~ r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)
      | r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0) )
    & ( r1_orders_2(esk4_0,esk6_0,esk5_0)
      | ~ r1_orders_2(esk4_0,esk6_0,esk5_0)
      | ~ r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)
      | r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0) )
    & ( ~ r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)
      | ~ r1_orders_2(esk4_0,esk6_0,esk5_0)
      | ~ r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)
      | r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0) )
    & ( r1_orders_2(esk4_0,esk6_0,esk5_0)
      | r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)
      | r1_orders_2(esk4_0,esk5_0,esk6_0)
      | ~ r1_orders_2(esk4_0,esk5_0,esk6_0) )
    & ( ~ r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)
      | r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)
      | r1_orders_2(esk4_0,esk5_0,esk6_0)
      | ~ r1_orders_2(esk4_0,esk5_0,esk6_0) )
    & ( r1_orders_2(esk4_0,esk6_0,esk5_0)
      | ~ r1_orders_2(esk4_0,esk6_0,esk5_0)
      | r1_orders_2(esk4_0,esk5_0,esk6_0)
      | ~ r1_orders_2(esk4_0,esk5_0,esk6_0) )
    & ( ~ r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)
      | ~ r1_orders_2(esk4_0,esk6_0,esk5_0)
      | r1_orders_2(esk4_0,esk5_0,esk6_0)
      | ~ r1_orders_2(esk4_0,esk5_0,esk6_0) )
    & ( r1_orders_2(esk4_0,esk6_0,esk5_0)
      | r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)
      | ~ r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)
      | ~ r1_orders_2(esk4_0,esk5_0,esk6_0) )
    & ( ~ r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)
      | r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)
      | ~ r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)
      | ~ r1_orders_2(esk4_0,esk5_0,esk6_0) )
    & ( r1_orders_2(esk4_0,esk6_0,esk5_0)
      | ~ r1_orders_2(esk4_0,esk6_0,esk5_0)
      | ~ r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)
      | ~ r1_orders_2(esk4_0,esk5_0,esk6_0) )
    & ( ~ r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)
      | ~ r1_orders_2(esk4_0,esk6_0,esk5_0)
      | ~ r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)
      | ~ r1_orders_2(esk4_0,esk5_0,esk6_0) ) ),
    inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_5])])])])).

fof(c_0_8,plain,(
    ! [X14] : k2_tarski(X14,X14) = k1_tarski(X14) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

cnf(c_0_9,plain,
    ( X1 = X3
    | X1 = X4
    | ~ r2_hidden(X1,X2)
    | X2 != k2_tarski(X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

fof(c_0_10,plain,(
    ! [X20,X21,X22,X23] :
      ( ( ~ r2_lattice3(X20,X21,X22)
        | ~ m1_subset_1(X23,u1_struct_0(X20))
        | ~ r2_hidden(X23,X21)
        | r1_orders_2(X20,X23,X22)
        | ~ m1_subset_1(X22,u1_struct_0(X20))
        | ~ l1_orders_2(X20) )
      & ( m1_subset_1(esk3_3(X20,X21,X22),u1_struct_0(X20))
        | r2_lattice3(X20,X21,X22)
        | ~ m1_subset_1(X22,u1_struct_0(X20))
        | ~ l1_orders_2(X20) )
      & ( r2_hidden(esk3_3(X20,X21,X22),X21)
        | r2_lattice3(X20,X21,X22)
        | ~ m1_subset_1(X22,u1_struct_0(X20))
        | ~ l1_orders_2(X20) )
      & ( ~ r1_orders_2(X20,esk3_3(X20,X21,X22),X22)
        | r2_lattice3(X20,X21,X22)
        | ~ m1_subset_1(X22,u1_struct_0(X20))
        | ~ l1_orders_2(X20) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d9_lattice3])])])])])).

cnf(c_0_11,negated_conjecture,
    ( r1_orders_2(esk4_0,esk6_0,esk5_0)
    | r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)
    | r1_orders_2(esk4_0,esk5_0,esk6_0)
    | r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_12,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_13,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k2_tarski(X4,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_14,plain,
    ( X1 = X2
    | X1 = X3
    | ~ r2_hidden(X1,k2_tarski(X2,X3)) ),
    inference(er,[status(thm)],[c_0_9])).

cnf(c_0_15,plain,
    ( r2_hidden(esk3_3(X1,X2,X3),X2)
    | r2_lattice3(X1,X2,X3)
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_16,plain,
    ( r1_orders_2(X1,X4,X3)
    | ~ r2_lattice3(X1,X2,X3)
    | ~ m1_subset_1(X4,u1_struct_0(X1))
    | ~ r2_hidden(X4,X2)
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_17,negated_conjecture,
    ( r1_orders_2(esk4_0,esk5_0,esk6_0)
    | r1_orders_2(esk4_0,esk6_0,esk5_0)
    | r1_lattice3(esk4_0,k2_tarski(esk6_0,esk6_0),esk5_0)
    | r2_lattice3(esk4_0,k2_tarski(esk6_0,esk6_0),esk5_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_11,c_0_12]),c_0_12])).

cnf(c_0_18,negated_conjecture,
    ( m1_subset_1(esk5_0,u1_struct_0(esk4_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_19,negated_conjecture,
    ( l1_orders_2(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_20,plain,
    ( r2_hidden(X1,X2)
    | X2 != k2_tarski(X3,X1) ),
    inference(er,[status(thm)],[c_0_13])).

cnf(c_0_21,plain,
    ( esk3_3(X1,k2_tarski(X2,X3),X4) = X3
    | esk3_3(X1,k2_tarski(X2,X3),X4) = X2
    | r2_lattice3(X1,k2_tarski(X2,X3),X4)
    | ~ m1_subset_1(X4,u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_14,c_0_15])).

fof(c_0_22,plain,(
    ! [X15,X16,X17,X18] :
      ( ( ~ r1_lattice3(X15,X16,X17)
        | ~ m1_subset_1(X18,u1_struct_0(X15))
        | ~ r2_hidden(X18,X16)
        | r1_orders_2(X15,X17,X18)
        | ~ m1_subset_1(X17,u1_struct_0(X15))
        | ~ l1_orders_2(X15) )
      & ( m1_subset_1(esk2_3(X15,X16,X17),u1_struct_0(X15))
        | r1_lattice3(X15,X16,X17)
        | ~ m1_subset_1(X17,u1_struct_0(X15))
        | ~ l1_orders_2(X15) )
      & ( r2_hidden(esk2_3(X15,X16,X17),X16)
        | r1_lattice3(X15,X16,X17)
        | ~ m1_subset_1(X17,u1_struct_0(X15))
        | ~ l1_orders_2(X15) )
      & ( ~ r1_orders_2(X15,X17,esk2_3(X15,X16,X17))
        | r1_lattice3(X15,X16,X17)
        | ~ m1_subset_1(X17,u1_struct_0(X15))
        | ~ l1_orders_2(X15) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d8_lattice3])])])])])).

cnf(c_0_23,negated_conjecture,
    ( r1_orders_2(esk4_0,esk6_0,esk5_0)
    | r1_orders_2(esk4_0,esk5_0,esk6_0)
    | r1_orders_2(esk4_0,X1,esk5_0)
    | r1_lattice3(esk4_0,k2_tarski(esk6_0,esk6_0),esk5_0)
    | ~ m1_subset_1(X1,u1_struct_0(esk4_0))
    | ~ r2_hidden(X1,k2_tarski(esk6_0,esk6_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_16,c_0_17]),c_0_18]),c_0_19])])).

cnf(c_0_24,plain,
    ( r2_hidden(X1,k2_tarski(X2,X1)) ),
    inference(er,[status(thm)],[c_0_20])).

cnf(c_0_25,negated_conjecture,
    ( m1_subset_1(esk6_0,u1_struct_0(esk4_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_26,negated_conjecture,
    ( esk3_3(esk4_0,k2_tarski(X1,X2),esk5_0) = X1
    | esk3_3(esk4_0,k2_tarski(X1,X2),esk5_0) = X2
    | r2_lattice3(esk4_0,k2_tarski(X1,X2),esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_21,c_0_18]),c_0_19])])).

cnf(c_0_27,plain,
    ( r1_orders_2(X1,X3,X4)
    | ~ r1_lattice3(X1,X2,X3)
    | ~ m1_subset_1(X4,u1_struct_0(X1))
    | ~ r2_hidden(X4,X2)
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_28,negated_conjecture,
    ( r1_orders_2(esk4_0,esk5_0,esk6_0)
    | r1_orders_2(esk4_0,esk6_0,esk5_0)
    | r1_lattice3(esk4_0,k2_tarski(esk6_0,esk6_0),esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_23,c_0_24]),c_0_25])])).

cnf(c_0_29,negated_conjecture,
    ( r1_orders_2(esk4_0,esk5_0,esk6_0)
    | r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)
    | ~ r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)
    | ~ r1_orders_2(esk4_0,esk6_0,esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_30,plain,
    ( r2_lattice3(X1,X2,X3)
    | ~ r1_orders_2(X1,esk3_3(X1,X2,X3),X3)
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_31,negated_conjecture,
    ( esk3_3(esk4_0,k2_tarski(X1,X1),esk5_0) = X1
    | r2_lattice3(esk4_0,k2_tarski(X1,X1),esk5_0) ),
    inference(er,[status(thm)],[inference(ef,[status(thm)],[c_0_26])])).

cnf(c_0_32,negated_conjecture,
    ( r1_orders_2(esk4_0,esk6_0,esk5_0)
    | r1_orders_2(esk4_0,esk5_0,esk6_0)
    | r1_orders_2(esk4_0,esk5_0,X1)
    | ~ m1_subset_1(X1,u1_struct_0(esk4_0))
    | ~ r2_hidden(X1,k2_tarski(esk6_0,esk6_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27,c_0_28]),c_0_18]),c_0_19])])).

cnf(c_0_33,negated_conjecture,
    ( r1_orders_2(esk4_0,esk5_0,esk6_0)
    | r1_lattice3(esk4_0,k2_tarski(esk6_0,esk6_0),esk5_0)
    | ~ r1_orders_2(esk4_0,esk6_0,esk5_0)
    | ~ r2_lattice3(esk4_0,k2_tarski(esk6_0,esk6_0),esk5_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_29,c_0_12]),c_0_12])).

cnf(c_0_34,negated_conjecture,
    ( r2_lattice3(esk4_0,k2_tarski(X1,X1),esk5_0)
    | ~ r1_orders_2(esk4_0,X1,esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_30,c_0_31]),c_0_18]),c_0_19])])).

cnf(c_0_35,negated_conjecture,
    ( r1_orders_2(esk4_0,esk5_0,esk6_0)
    | r1_orders_2(esk4_0,esk6_0,esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32,c_0_24]),c_0_25])])).

cnf(c_0_36,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k2_tarski(X2,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_37,negated_conjecture,
    ( ~ r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)
    | ~ r1_orders_2(esk4_0,esk6_0,esk5_0)
    | ~ r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)
    | ~ r1_orders_2(esk4_0,esk5_0,esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_38,negated_conjecture,
    ( r1_orders_2(esk4_0,esk5_0,esk6_0)
    | r1_lattice3(esk4_0,k2_tarski(esk6_0,esk6_0),esk5_0) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_34]),c_0_35])).

cnf(c_0_39,plain,
    ( r2_hidden(X1,X2)
    | X2 != k2_tarski(X1,X3) ),
    inference(er,[status(thm)],[c_0_36])).

cnf(c_0_40,plain,
    ( r2_hidden(esk2_3(X1,X2,X3),X2)
    | r1_lattice3(X1,X2,X3)
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_41,negated_conjecture,
    ( r1_orders_2(esk4_0,esk6_0,esk5_0)
    | r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)
    | ~ r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)
    | ~ r1_orders_2(esk4_0,esk5_0,esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_42,negated_conjecture,
    ( ~ r1_orders_2(esk4_0,esk5_0,esk6_0)
    | ~ r1_orders_2(esk4_0,esk6_0,esk5_0)
    | ~ r1_lattice3(esk4_0,k2_tarski(esk6_0,esk6_0),esk5_0)
    | ~ r2_lattice3(esk4_0,k2_tarski(esk6_0,esk6_0),esk5_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_37,c_0_12]),c_0_12])).

cnf(c_0_43,negated_conjecture,
    ( r1_orders_2(esk4_0,esk5_0,esk6_0)
    | r1_orders_2(esk4_0,esk5_0,X1)
    | ~ m1_subset_1(X1,u1_struct_0(esk4_0))
    | ~ r2_hidden(X1,k2_tarski(esk6_0,esk6_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27,c_0_38]),c_0_18]),c_0_19])])).

cnf(c_0_44,plain,
    ( r2_hidden(X1,k2_tarski(X1,X2)) ),
    inference(er,[status(thm)],[c_0_39])).

cnf(c_0_45,plain,
    ( esk2_3(X1,k2_tarski(X2,X3),X4) = X3
    | esk2_3(X1,k2_tarski(X2,X3),X4) = X2
    | r1_lattice3(X1,k2_tarski(X2,X3),X4)
    | ~ m1_subset_1(X4,u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_14,c_0_40])).

cnf(c_0_46,negated_conjecture,
    ( r1_orders_2(esk4_0,esk6_0,esk5_0)
    | r2_lattice3(esk4_0,k2_tarski(esk6_0,esk6_0),esk5_0)
    | ~ r1_orders_2(esk4_0,esk5_0,esk6_0)
    | ~ r1_lattice3(esk4_0,k2_tarski(esk6_0,esk6_0),esk5_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_41,c_0_12]),c_0_12])).

cnf(c_0_47,negated_conjecture,
    ( ~ r1_orders_2(esk4_0,esk5_0,esk6_0)
    | ~ r1_orders_2(esk4_0,esk6_0,esk5_0)
    | ~ r1_lattice3(esk4_0,k2_tarski(esk6_0,esk6_0),esk5_0) ),
    inference(spm,[status(thm)],[c_0_42,c_0_34])).

cnf(c_0_48,negated_conjecture,
    ( r1_orders_2(esk4_0,esk5_0,esk6_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43,c_0_44]),c_0_25])])).

cnf(c_0_49,negated_conjecture,
    ( esk2_3(esk4_0,k2_tarski(X1,X2),esk5_0) = X1
    | esk2_3(esk4_0,k2_tarski(X1,X2),esk5_0) = X2
    | r1_lattice3(esk4_0,k2_tarski(X1,X2),esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45,c_0_18]),c_0_19])])).

cnf(c_0_50,negated_conjecture,
    ( r1_orders_2(esk4_0,esk6_0,esk5_0)
    | r1_orders_2(esk4_0,X1,esk5_0)
    | ~ r1_orders_2(esk4_0,esk5_0,esk6_0)
    | ~ r1_lattice3(esk4_0,k2_tarski(esk6_0,esk6_0),esk5_0)
    | ~ m1_subset_1(X1,u1_struct_0(esk4_0))
    | ~ r2_hidden(X1,k2_tarski(esk6_0,esk6_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_16,c_0_46]),c_0_18]),c_0_19])])).

cnf(c_0_51,negated_conjecture,
    ( ~ r1_orders_2(esk4_0,esk6_0,esk5_0)
    | ~ r1_lattice3(esk4_0,k2_tarski(esk6_0,esk6_0),esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_47,c_0_48])])).

cnf(c_0_52,plain,
    ( r1_lattice3(X1,X3,X2)
    | ~ r1_orders_2(X1,X2,esk2_3(X1,X3,X2))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_53,negated_conjecture,
    ( esk2_3(esk4_0,k2_tarski(X1,X1),esk5_0) = X1
    | r1_lattice3(esk4_0,k2_tarski(X1,X1),esk5_0) ),
    inference(er,[status(thm)],[inference(ef,[status(thm)],[c_0_49])])).

cnf(c_0_54,negated_conjecture,
    ( r1_orders_2(esk4_0,X1,esk5_0)
    | ~ r1_lattice3(esk4_0,k2_tarski(esk6_0,esk6_0),esk5_0)
    | ~ m1_subset_1(X1,u1_struct_0(esk4_0))
    | ~ r2_hidden(X1,k2_tarski(esk6_0,esk6_0)) ),
    inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_50,c_0_48])]),c_0_51])).

cnf(c_0_55,negated_conjecture,
    ( r1_lattice3(esk4_0,k2_tarski(X1,X1),esk5_0)
    | ~ r1_orders_2(esk4_0,esk5_0,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_52,c_0_53]),c_0_18]),c_0_19])])).

cnf(c_0_56,negated_conjecture,
    ( r1_orders_2(esk4_0,X1,esk5_0)
    | ~ m1_subset_1(X1,u1_struct_0(esk4_0))
    | ~ r2_hidden(X1,k2_tarski(esk6_0,esk6_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_54,c_0_55]),c_0_48])])).

cnf(c_0_57,negated_conjecture,
    ( ~ r1_orders_2(esk4_0,esk6_0,esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51,c_0_55]),c_0_48])])).

cnf(c_0_58,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_56,c_0_44]),c_0_25])]),c_0_57]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.14  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.15/0.35  % Computer   : n024.cluster.edu
% 0.15/0.35  % Model      : x86_64 x86_64
% 0.15/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.15/0.35  % Memory     : 8042.1875MB
% 0.15/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.15/0.35  % CPULimit   : 60
% 0.15/0.35  % WCLimit    : 600
% 0.15/0.35  % DateTime   : Tue Dec  1 15:35:36 EST 2020
% 0.15/0.35  % CPUTime    : 
% 0.15/0.35  # Version: 2.5pre002
% 0.15/0.35  # No SInE strategy applied
% 0.15/0.35  # Trying AutoSched0 for 299 seconds
% 0.22/0.39  # AutoSched0-Mode selected heuristic G_E___207_B07_F1_AE_CS_SP_PI_PS_S0Y
% 0.22/0.39  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.22/0.39  #
% 0.22/0.39  # Preprocessing time       : 0.028 s
% 0.22/0.39  # Presaturation interreduction done
% 0.22/0.39  
% 0.22/0.39  # Proof found!
% 0.22/0.39  # SZS status Theorem
% 0.22/0.39  # SZS output start CNFRefutation
% 0.22/0.39  fof(t7_yellow_0, conjecture, ![X1]:(l1_orders_2(X1)=>![X2]:(m1_subset_1(X2,u1_struct_0(X1))=>![X3]:(m1_subset_1(X3,u1_struct_0(X1))=>((((r1_lattice3(X1,k1_tarski(X3),X2)=>r1_orders_2(X1,X2,X3))&(r1_orders_2(X1,X2,X3)=>r1_lattice3(X1,k1_tarski(X3),X2)))&(r2_lattice3(X1,k1_tarski(X3),X2)=>r1_orders_2(X1,X3,X2)))&(r1_orders_2(X1,X3,X2)=>r2_lattice3(X1,k1_tarski(X3),X2)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t7_yellow_0)).
% 0.22/0.39  fof(d2_tarski, axiom, ![X1, X2, X3]:(X3=k2_tarski(X1,X2)<=>![X4]:(r2_hidden(X4,X3)<=>(X4=X1|X4=X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d2_tarski)).
% 0.22/0.39  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t69_enumset1)).
% 0.22/0.39  fof(d9_lattice3, axiom, ![X1]:(l1_orders_2(X1)=>![X2, X3]:(m1_subset_1(X3,u1_struct_0(X1))=>(r2_lattice3(X1,X2,X3)<=>![X4]:(m1_subset_1(X4,u1_struct_0(X1))=>(r2_hidden(X4,X2)=>r1_orders_2(X1,X4,X3)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d9_lattice3)).
% 0.22/0.39  fof(d8_lattice3, axiom, ![X1]:(l1_orders_2(X1)=>![X2, X3]:(m1_subset_1(X3,u1_struct_0(X1))=>(r1_lattice3(X1,X2,X3)<=>![X4]:(m1_subset_1(X4,u1_struct_0(X1))=>(r2_hidden(X4,X2)=>r1_orders_2(X1,X3,X4)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d8_lattice3)).
% 0.22/0.39  fof(c_0_5, negated_conjecture, ~(![X1]:(l1_orders_2(X1)=>![X2]:(m1_subset_1(X2,u1_struct_0(X1))=>![X3]:(m1_subset_1(X3,u1_struct_0(X1))=>((((r1_lattice3(X1,k1_tarski(X3),X2)=>r1_orders_2(X1,X2,X3))&(r1_orders_2(X1,X2,X3)=>r1_lattice3(X1,k1_tarski(X3),X2)))&(r2_lattice3(X1,k1_tarski(X3),X2)=>r1_orders_2(X1,X3,X2)))&(r1_orders_2(X1,X3,X2)=>r2_lattice3(X1,k1_tarski(X3),X2))))))), inference(assume_negation,[status(cth)],[t7_yellow_0])).
% 0.22/0.39  fof(c_0_6, plain, ![X5, X6, X7, X8, X9, X10, X11, X12]:(((~r2_hidden(X8,X7)|(X8=X5|X8=X6)|X7!=k2_tarski(X5,X6))&((X9!=X5|r2_hidden(X9,X7)|X7!=k2_tarski(X5,X6))&(X9!=X6|r2_hidden(X9,X7)|X7!=k2_tarski(X5,X6))))&(((esk1_3(X10,X11,X12)!=X10|~r2_hidden(esk1_3(X10,X11,X12),X12)|X12=k2_tarski(X10,X11))&(esk1_3(X10,X11,X12)!=X11|~r2_hidden(esk1_3(X10,X11,X12),X12)|X12=k2_tarski(X10,X11)))&(r2_hidden(esk1_3(X10,X11,X12),X12)|(esk1_3(X10,X11,X12)=X10|esk1_3(X10,X11,X12)=X11)|X12=k2_tarski(X10,X11)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d2_tarski])])])])])])).
% 0.22/0.39  fof(c_0_7, negated_conjecture, (l1_orders_2(esk4_0)&(m1_subset_1(esk5_0,u1_struct_0(esk4_0))&(m1_subset_1(esk6_0,u1_struct_0(esk4_0))&(((((r1_orders_2(esk4_0,esk6_0,esk5_0)|(r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)|(r1_orders_2(esk4_0,esk5_0,esk6_0)|r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0))))&(~r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)|(r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)|(r1_orders_2(esk4_0,esk5_0,esk6_0)|r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)))))&((r1_orders_2(esk4_0,esk6_0,esk5_0)|(~r1_orders_2(esk4_0,esk6_0,esk5_0)|(r1_orders_2(esk4_0,esk5_0,esk6_0)|r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0))))&(~r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)|(~r1_orders_2(esk4_0,esk6_0,esk5_0)|(r1_orders_2(esk4_0,esk5_0,esk6_0)|r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0))))))&(((r1_orders_2(esk4_0,esk6_0,esk5_0)|(r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)|(~r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)|r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0))))&(~r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)|(r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)|(~r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)|r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)))))&((r1_orders_2(esk4_0,esk6_0,esk5_0)|(~r1_orders_2(esk4_0,esk6_0,esk5_0)|(~r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)|r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0))))&(~r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)|(~r1_orders_2(esk4_0,esk6_0,esk5_0)|(~r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)|r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)))))))&((((r1_orders_2(esk4_0,esk6_0,esk5_0)|(r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)|(r1_orders_2(esk4_0,esk5_0,esk6_0)|~r1_orders_2(esk4_0,esk5_0,esk6_0))))&(~r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)|(r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)|(r1_orders_2(esk4_0,esk5_0,esk6_0)|~r1_orders_2(esk4_0,esk5_0,esk6_0)))))&((r1_orders_2(esk4_0,esk6_0,esk5_0)|(~r1_orders_2(esk4_0,esk6_0,esk5_0)|(r1_orders_2(esk4_0,esk5_0,esk6_0)|~r1_orders_2(esk4_0,esk5_0,esk6_0))))&(~r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)|(~r1_orders_2(esk4_0,esk6_0,esk5_0)|(r1_orders_2(esk4_0,esk5_0,esk6_0)|~r1_orders_2(esk4_0,esk5_0,esk6_0))))))&(((r1_orders_2(esk4_0,esk6_0,esk5_0)|(r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)|(~r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)|~r1_orders_2(esk4_0,esk5_0,esk6_0))))&(~r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)|(r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)|(~r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)|~r1_orders_2(esk4_0,esk5_0,esk6_0)))))&((r1_orders_2(esk4_0,esk6_0,esk5_0)|(~r1_orders_2(esk4_0,esk6_0,esk5_0)|(~r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)|~r1_orders_2(esk4_0,esk5_0,esk6_0))))&(~r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)|(~r1_orders_2(esk4_0,esk6_0,esk5_0)|(~r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)|~r1_orders_2(esk4_0,esk5_0,esk6_0))))))))))), inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_5])])])])).
% 0.22/0.39  fof(c_0_8, plain, ![X14]:k2_tarski(X14,X14)=k1_tarski(X14), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.22/0.39  cnf(c_0_9, plain, (X1=X3|X1=X4|~r2_hidden(X1,X2)|X2!=k2_tarski(X3,X4)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.22/0.39  fof(c_0_10, plain, ![X20, X21, X22, X23]:((~r2_lattice3(X20,X21,X22)|(~m1_subset_1(X23,u1_struct_0(X20))|(~r2_hidden(X23,X21)|r1_orders_2(X20,X23,X22)))|~m1_subset_1(X22,u1_struct_0(X20))|~l1_orders_2(X20))&((m1_subset_1(esk3_3(X20,X21,X22),u1_struct_0(X20))|r2_lattice3(X20,X21,X22)|~m1_subset_1(X22,u1_struct_0(X20))|~l1_orders_2(X20))&((r2_hidden(esk3_3(X20,X21,X22),X21)|r2_lattice3(X20,X21,X22)|~m1_subset_1(X22,u1_struct_0(X20))|~l1_orders_2(X20))&(~r1_orders_2(X20,esk3_3(X20,X21,X22),X22)|r2_lattice3(X20,X21,X22)|~m1_subset_1(X22,u1_struct_0(X20))|~l1_orders_2(X20))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d9_lattice3])])])])])).
% 0.22/0.39  cnf(c_0_11, negated_conjecture, (r1_orders_2(esk4_0,esk6_0,esk5_0)|r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)|r1_orders_2(esk4_0,esk5_0,esk6_0)|r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.22/0.39  cnf(c_0_12, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.22/0.39  cnf(c_0_13, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k2_tarski(X4,X2)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.22/0.39  cnf(c_0_14, plain, (X1=X2|X1=X3|~r2_hidden(X1,k2_tarski(X2,X3))), inference(er,[status(thm)],[c_0_9])).
% 0.22/0.39  cnf(c_0_15, plain, (r2_hidden(esk3_3(X1,X2,X3),X2)|r2_lattice3(X1,X2,X3)|~m1_subset_1(X3,u1_struct_0(X1))|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.22/0.39  cnf(c_0_16, plain, (r1_orders_2(X1,X4,X3)|~r2_lattice3(X1,X2,X3)|~m1_subset_1(X4,u1_struct_0(X1))|~r2_hidden(X4,X2)|~m1_subset_1(X3,u1_struct_0(X1))|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.22/0.39  cnf(c_0_17, negated_conjecture, (r1_orders_2(esk4_0,esk5_0,esk6_0)|r1_orders_2(esk4_0,esk6_0,esk5_0)|r1_lattice3(esk4_0,k2_tarski(esk6_0,esk6_0),esk5_0)|r2_lattice3(esk4_0,k2_tarski(esk6_0,esk6_0),esk5_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_11, c_0_12]), c_0_12])).
% 0.22/0.39  cnf(c_0_18, negated_conjecture, (m1_subset_1(esk5_0,u1_struct_0(esk4_0))), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.22/0.39  cnf(c_0_19, negated_conjecture, (l1_orders_2(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.22/0.39  cnf(c_0_20, plain, (r2_hidden(X1,X2)|X2!=k2_tarski(X3,X1)), inference(er,[status(thm)],[c_0_13])).
% 0.22/0.39  cnf(c_0_21, plain, (esk3_3(X1,k2_tarski(X2,X3),X4)=X3|esk3_3(X1,k2_tarski(X2,X3),X4)=X2|r2_lattice3(X1,k2_tarski(X2,X3),X4)|~m1_subset_1(X4,u1_struct_0(X1))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_14, c_0_15])).
% 0.22/0.39  fof(c_0_22, plain, ![X15, X16, X17, X18]:((~r1_lattice3(X15,X16,X17)|(~m1_subset_1(X18,u1_struct_0(X15))|(~r2_hidden(X18,X16)|r1_orders_2(X15,X17,X18)))|~m1_subset_1(X17,u1_struct_0(X15))|~l1_orders_2(X15))&((m1_subset_1(esk2_3(X15,X16,X17),u1_struct_0(X15))|r1_lattice3(X15,X16,X17)|~m1_subset_1(X17,u1_struct_0(X15))|~l1_orders_2(X15))&((r2_hidden(esk2_3(X15,X16,X17),X16)|r1_lattice3(X15,X16,X17)|~m1_subset_1(X17,u1_struct_0(X15))|~l1_orders_2(X15))&(~r1_orders_2(X15,X17,esk2_3(X15,X16,X17))|r1_lattice3(X15,X16,X17)|~m1_subset_1(X17,u1_struct_0(X15))|~l1_orders_2(X15))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d8_lattice3])])])])])).
% 0.22/0.39  cnf(c_0_23, negated_conjecture, (r1_orders_2(esk4_0,esk6_0,esk5_0)|r1_orders_2(esk4_0,esk5_0,esk6_0)|r1_orders_2(esk4_0,X1,esk5_0)|r1_lattice3(esk4_0,k2_tarski(esk6_0,esk6_0),esk5_0)|~m1_subset_1(X1,u1_struct_0(esk4_0))|~r2_hidden(X1,k2_tarski(esk6_0,esk6_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_16, c_0_17]), c_0_18]), c_0_19])])).
% 0.22/0.39  cnf(c_0_24, plain, (r2_hidden(X1,k2_tarski(X2,X1))), inference(er,[status(thm)],[c_0_20])).
% 0.22/0.39  cnf(c_0_25, negated_conjecture, (m1_subset_1(esk6_0,u1_struct_0(esk4_0))), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.22/0.39  cnf(c_0_26, negated_conjecture, (esk3_3(esk4_0,k2_tarski(X1,X2),esk5_0)=X1|esk3_3(esk4_0,k2_tarski(X1,X2),esk5_0)=X2|r2_lattice3(esk4_0,k2_tarski(X1,X2),esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_21, c_0_18]), c_0_19])])).
% 0.22/0.39  cnf(c_0_27, plain, (r1_orders_2(X1,X3,X4)|~r1_lattice3(X1,X2,X3)|~m1_subset_1(X4,u1_struct_0(X1))|~r2_hidden(X4,X2)|~m1_subset_1(X3,u1_struct_0(X1))|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.22/0.39  cnf(c_0_28, negated_conjecture, (r1_orders_2(esk4_0,esk5_0,esk6_0)|r1_orders_2(esk4_0,esk6_0,esk5_0)|r1_lattice3(esk4_0,k2_tarski(esk6_0,esk6_0),esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_23, c_0_24]), c_0_25])])).
% 0.22/0.39  cnf(c_0_29, negated_conjecture, (r1_orders_2(esk4_0,esk5_0,esk6_0)|r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)|~r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)|~r1_orders_2(esk4_0,esk6_0,esk5_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.22/0.39  cnf(c_0_30, plain, (r2_lattice3(X1,X2,X3)|~r1_orders_2(X1,esk3_3(X1,X2,X3),X3)|~m1_subset_1(X3,u1_struct_0(X1))|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.22/0.39  cnf(c_0_31, negated_conjecture, (esk3_3(esk4_0,k2_tarski(X1,X1),esk5_0)=X1|r2_lattice3(esk4_0,k2_tarski(X1,X1),esk5_0)), inference(er,[status(thm)],[inference(ef,[status(thm)],[c_0_26])])).
% 0.22/0.39  cnf(c_0_32, negated_conjecture, (r1_orders_2(esk4_0,esk6_0,esk5_0)|r1_orders_2(esk4_0,esk5_0,esk6_0)|r1_orders_2(esk4_0,esk5_0,X1)|~m1_subset_1(X1,u1_struct_0(esk4_0))|~r2_hidden(X1,k2_tarski(esk6_0,esk6_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27, c_0_28]), c_0_18]), c_0_19])])).
% 0.22/0.39  cnf(c_0_33, negated_conjecture, (r1_orders_2(esk4_0,esk5_0,esk6_0)|r1_lattice3(esk4_0,k2_tarski(esk6_0,esk6_0),esk5_0)|~r1_orders_2(esk4_0,esk6_0,esk5_0)|~r2_lattice3(esk4_0,k2_tarski(esk6_0,esk6_0),esk5_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_29, c_0_12]), c_0_12])).
% 0.22/0.39  cnf(c_0_34, negated_conjecture, (r2_lattice3(esk4_0,k2_tarski(X1,X1),esk5_0)|~r1_orders_2(esk4_0,X1,esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_30, c_0_31]), c_0_18]), c_0_19])])).
% 0.22/0.39  cnf(c_0_35, negated_conjecture, (r1_orders_2(esk4_0,esk5_0,esk6_0)|r1_orders_2(esk4_0,esk6_0,esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32, c_0_24]), c_0_25])])).
% 0.22/0.39  cnf(c_0_36, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k2_tarski(X2,X4)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.22/0.39  cnf(c_0_37, negated_conjecture, (~r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)|~r1_orders_2(esk4_0,esk6_0,esk5_0)|~r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)|~r1_orders_2(esk4_0,esk5_0,esk6_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.22/0.39  cnf(c_0_38, negated_conjecture, (r1_orders_2(esk4_0,esk5_0,esk6_0)|r1_lattice3(esk4_0,k2_tarski(esk6_0,esk6_0),esk5_0)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_33, c_0_34]), c_0_35])).
% 0.22/0.39  cnf(c_0_39, plain, (r2_hidden(X1,X2)|X2!=k2_tarski(X1,X3)), inference(er,[status(thm)],[c_0_36])).
% 0.22/0.39  cnf(c_0_40, plain, (r2_hidden(esk2_3(X1,X2,X3),X2)|r1_lattice3(X1,X2,X3)|~m1_subset_1(X3,u1_struct_0(X1))|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.22/0.39  cnf(c_0_41, negated_conjecture, (r1_orders_2(esk4_0,esk6_0,esk5_0)|r2_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)|~r1_lattice3(esk4_0,k1_tarski(esk6_0),esk5_0)|~r1_orders_2(esk4_0,esk5_0,esk6_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.22/0.39  cnf(c_0_42, negated_conjecture, (~r1_orders_2(esk4_0,esk5_0,esk6_0)|~r1_orders_2(esk4_0,esk6_0,esk5_0)|~r1_lattice3(esk4_0,k2_tarski(esk6_0,esk6_0),esk5_0)|~r2_lattice3(esk4_0,k2_tarski(esk6_0,esk6_0),esk5_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_37, c_0_12]), c_0_12])).
% 0.22/0.39  cnf(c_0_43, negated_conjecture, (r1_orders_2(esk4_0,esk5_0,esk6_0)|r1_orders_2(esk4_0,esk5_0,X1)|~m1_subset_1(X1,u1_struct_0(esk4_0))|~r2_hidden(X1,k2_tarski(esk6_0,esk6_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27, c_0_38]), c_0_18]), c_0_19])])).
% 0.22/0.39  cnf(c_0_44, plain, (r2_hidden(X1,k2_tarski(X1,X2))), inference(er,[status(thm)],[c_0_39])).
% 0.22/0.39  cnf(c_0_45, plain, (esk2_3(X1,k2_tarski(X2,X3),X4)=X3|esk2_3(X1,k2_tarski(X2,X3),X4)=X2|r1_lattice3(X1,k2_tarski(X2,X3),X4)|~m1_subset_1(X4,u1_struct_0(X1))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_14, c_0_40])).
% 0.22/0.39  cnf(c_0_46, negated_conjecture, (r1_orders_2(esk4_0,esk6_0,esk5_0)|r2_lattice3(esk4_0,k2_tarski(esk6_0,esk6_0),esk5_0)|~r1_orders_2(esk4_0,esk5_0,esk6_0)|~r1_lattice3(esk4_0,k2_tarski(esk6_0,esk6_0),esk5_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_41, c_0_12]), c_0_12])).
% 0.22/0.39  cnf(c_0_47, negated_conjecture, (~r1_orders_2(esk4_0,esk5_0,esk6_0)|~r1_orders_2(esk4_0,esk6_0,esk5_0)|~r1_lattice3(esk4_0,k2_tarski(esk6_0,esk6_0),esk5_0)), inference(spm,[status(thm)],[c_0_42, c_0_34])).
% 0.22/0.39  cnf(c_0_48, negated_conjecture, (r1_orders_2(esk4_0,esk5_0,esk6_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43, c_0_44]), c_0_25])])).
% 0.22/0.39  cnf(c_0_49, negated_conjecture, (esk2_3(esk4_0,k2_tarski(X1,X2),esk5_0)=X1|esk2_3(esk4_0,k2_tarski(X1,X2),esk5_0)=X2|r1_lattice3(esk4_0,k2_tarski(X1,X2),esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45, c_0_18]), c_0_19])])).
% 0.22/0.39  cnf(c_0_50, negated_conjecture, (r1_orders_2(esk4_0,esk6_0,esk5_0)|r1_orders_2(esk4_0,X1,esk5_0)|~r1_orders_2(esk4_0,esk5_0,esk6_0)|~r1_lattice3(esk4_0,k2_tarski(esk6_0,esk6_0),esk5_0)|~m1_subset_1(X1,u1_struct_0(esk4_0))|~r2_hidden(X1,k2_tarski(esk6_0,esk6_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_16, c_0_46]), c_0_18]), c_0_19])])).
% 0.22/0.39  cnf(c_0_51, negated_conjecture, (~r1_orders_2(esk4_0,esk6_0,esk5_0)|~r1_lattice3(esk4_0,k2_tarski(esk6_0,esk6_0),esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_47, c_0_48])])).
% 0.22/0.39  cnf(c_0_52, plain, (r1_lattice3(X1,X3,X2)|~r1_orders_2(X1,X2,esk2_3(X1,X3,X2))|~m1_subset_1(X2,u1_struct_0(X1))|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.22/0.39  cnf(c_0_53, negated_conjecture, (esk2_3(esk4_0,k2_tarski(X1,X1),esk5_0)=X1|r1_lattice3(esk4_0,k2_tarski(X1,X1),esk5_0)), inference(er,[status(thm)],[inference(ef,[status(thm)],[c_0_49])])).
% 0.22/0.39  cnf(c_0_54, negated_conjecture, (r1_orders_2(esk4_0,X1,esk5_0)|~r1_lattice3(esk4_0,k2_tarski(esk6_0,esk6_0),esk5_0)|~m1_subset_1(X1,u1_struct_0(esk4_0))|~r2_hidden(X1,k2_tarski(esk6_0,esk6_0))), inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_50, c_0_48])]), c_0_51])).
% 0.22/0.39  cnf(c_0_55, negated_conjecture, (r1_lattice3(esk4_0,k2_tarski(X1,X1),esk5_0)|~r1_orders_2(esk4_0,esk5_0,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_52, c_0_53]), c_0_18]), c_0_19])])).
% 0.22/0.39  cnf(c_0_56, negated_conjecture, (r1_orders_2(esk4_0,X1,esk5_0)|~m1_subset_1(X1,u1_struct_0(esk4_0))|~r2_hidden(X1,k2_tarski(esk6_0,esk6_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_54, c_0_55]), c_0_48])])).
% 0.22/0.39  cnf(c_0_57, negated_conjecture, (~r1_orders_2(esk4_0,esk6_0,esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51, c_0_55]), c_0_48])])).
% 0.22/0.39  cnf(c_0_58, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_56, c_0_44]), c_0_25])]), c_0_57]), ['proof']).
% 0.22/0.39  # SZS output end CNFRefutation
% 0.22/0.39  # Proof object total steps             : 59
% 0.22/0.39  # Proof object clause steps            : 48
% 0.22/0.39  # Proof object formula steps           : 11
% 0.22/0.39  # Proof object conjectures             : 34
% 0.22/0.39  # Proof object clause conjectures      : 31
% 0.22/0.39  # Proof object formula conjectures     : 3
% 0.22/0.39  # Proof object initial clauses used    : 17
% 0.22/0.39  # Proof object initial formulas used   : 5
% 0.22/0.39  # Proof object generating inferences   : 23
% 0.22/0.39  # Proof object simplifying inferences  : 53
% 0.22/0.39  # Training examples: 0 positive, 0 negative
% 0.22/0.39  # Parsed axioms                        : 5
% 0.22/0.39  # Removed by relevancy pruning/SinE    : 0
% 0.22/0.39  # Initial clauses                      : 34
% 0.22/0.39  # Removed in clause preprocessing      : 13
% 0.22/0.39  # Initial clauses in saturation        : 21
% 0.22/0.39  # Processed clauses                    : 131
% 0.22/0.39  # ...of these trivial                  : 0
% 0.22/0.39  # ...subsumed                          : 20
% 0.22/0.39  # ...remaining for further processing  : 111
% 0.22/0.39  # Other redundant clauses eliminated   : 28
% 0.22/0.39  # Clauses deleted for lack of memory   : 0
% 0.22/0.39  # Backward-subsumed                    : 7
% 0.22/0.39  # Backward-rewritten                   : 6
% 0.22/0.39  # Generated clauses                    : 271
% 0.22/0.39  # ...of the previous two non-trivial   : 186
% 0.22/0.39  # Contextual simplify-reflections      : 3
% 0.22/0.39  # Paramodulations                      : 220
% 0.22/0.39  # Factorizations                       : 20
% 0.22/0.39  # Equation resolutions                 : 31
% 0.22/0.39  # Propositional unsat checks           : 0
% 0.22/0.39  #    Propositional check models        : 0
% 0.22/0.39  #    Propositional check unsatisfiable : 0
% 0.22/0.39  #    Propositional clauses             : 0
% 0.22/0.39  #    Propositional clauses after purity: 0
% 0.22/0.39  #    Propositional unsat core size     : 0
% 0.22/0.39  #    Propositional preprocessing time  : 0.000
% 0.22/0.39  #    Propositional encoding time       : 0.000
% 0.22/0.39  #    Propositional solver time         : 0.000
% 0.22/0.39  #    Success case prop preproc time    : 0.000
% 0.22/0.39  #    Success case prop encoding time   : 0.000
% 0.22/0.39  #    Success case prop solver time     : 0.000
% 0.22/0.39  # Current number of processed clauses  : 75
% 0.22/0.39  #    Positive orientable unit clauses  : 6
% 0.22/0.39  #    Positive unorientable unit clauses: 0
% 0.22/0.39  #    Negative unit clauses             : 1
% 0.22/0.39  #    Non-unit-clauses                  : 68
% 0.22/0.39  # Current number of unprocessed clauses: 86
% 0.22/0.39  # ...number of literals in the above   : 466
% 0.22/0.39  # Current number of archived formulas  : 0
% 0.22/0.39  # Current number of archived clauses   : 35
% 0.22/0.39  # Clause-clause subsumption calls (NU) : 1102
% 0.22/0.39  # Rec. Clause-clause subsumption calls : 350
% 0.22/0.39  # Non-unit clause-clause subsumptions  : 30
% 0.22/0.39  # Unit Clause-clause subsumption calls : 9
% 0.22/0.39  # Rewrite failures with RHS unbound    : 0
% 0.22/0.39  # BW rewrite match attempts            : 4
% 0.22/0.39  # BW rewrite match successes           : 1
% 0.22/0.39  # Condensation attempts                : 0
% 0.22/0.39  # Condensation successes               : 0
% 0.22/0.39  # Termbank termtop insertions          : 8619
% 0.22/0.39  
% 0.22/0.39  # -------------------------------------------------
% 0.22/0.39  # User time                : 0.034 s
% 0.22/0.39  # System time              : 0.008 s
% 0.22/0.39  # Total time               : 0.042 s
% 0.22/0.39  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
