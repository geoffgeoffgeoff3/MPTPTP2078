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
% DateTime   : Thu Dec  3 11:15:42 EST 2020

% Result     : Theorem 0.14s
% Output     : CNFRefutation 0.14s
% Verified   : 
% Statistics : Number of formulae       :   65 ( 330 expanded)
%              Number of clauses        :   42 ( 135 expanded)
%              Number of leaves         :   11 (  85 expanded)
%              Depth                    :   14
%              Number of atoms          :  307 (1168 expanded)
%              Number of equality atoms :   19 ( 178 expanded)
%              Maximal formula depth    :   23 (   5 average)
%              Maximal clause size      :   74 (   3 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(l26_lattice3,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v5_orders_2(X1)
        & v1_lattice3(X1)
        & l1_orders_2(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,u1_struct_0(X1))
         => ! [X3] :
              ( m1_subset_1(X3,u1_struct_0(X1))
             => ! [X4] :
                  ( m1_subset_1(X4,u1_struct_0(X1))
                 => ( X4 = k10_lattice3(X1,X2,X3)
                  <=> ( r1_orders_2(X1,X2,X4)
                      & r1_orders_2(X1,X3,X4)
                      & ! [X5] :
                          ( m1_subset_1(X5,u1_struct_0(X1))
                         => ( ( r1_orders_2(X1,X2,X5)
                              & r1_orders_2(X1,X3,X5) )
                           => r1_orders_2(X1,X4,X5) ) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l26_lattice3)).

fof(dt_k10_lattice3,axiom,(
    ! [X1,X2,X3] :
      ( ( l1_orders_2(X1)
        & m1_subset_1(X2,u1_struct_0(X1))
        & m1_subset_1(X3,u1_struct_0(X1)) )
     => m1_subset_1(k10_lattice3(X1,X2,X3),u1_struct_0(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k10_lattice3)).

fof(t1_yellow_1,axiom,(
    ! [X1] :
      ( u1_struct_0(k2_yellow_1(X1)) = X1
      & u1_orders_2(k2_yellow_1(X1)) = k1_yellow_1(X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t1_yellow_1)).

fof(fc5_yellow_1,axiom,(
    ! [X1] :
      ( v1_orders_2(k2_yellow_1(X1))
      & v3_orders_2(k2_yellow_1(X1))
      & v4_orders_2(k2_yellow_1(X1))
      & v5_orders_2(k2_yellow_1(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc5_yellow_1)).

fof(dt_k2_yellow_1,axiom,(
    ! [X1] :
      ( v1_orders_2(k2_yellow_1(X1))
      & l1_orders_2(k2_yellow_1(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k2_yellow_1)).

fof(t6_yellow_1,conjecture,(
    ! [X1] :
      ( ~ v1_xboole_0(X1)
     => ( v1_lattice3(k2_yellow_1(X1))
       => ! [X2] :
            ( m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1)))
           => ! [X3] :
                ( m1_subset_1(X3,u1_struct_0(k2_yellow_1(X1)))
               => r1_tarski(k2_xboole_0(X2,X3),k10_lattice3(k2_yellow_1(X1),X2,X3)) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t6_yellow_1)).

fof(redefinition_r3_orders_2,axiom,(
    ! [X1,X2,X3] :
      ( ( ~ v2_struct_0(X1)
        & v3_orders_2(X1)
        & l1_orders_2(X1)
        & m1_subset_1(X2,u1_struct_0(X1))
        & m1_subset_1(X3,u1_struct_0(X1)) )
     => ( r3_orders_2(X1,X2,X3)
      <=> r1_orders_2(X1,X2,X3) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_r3_orders_2)).

fof(t3_yellow_1,axiom,(
    ! [X1] :
      ( ~ v1_xboole_0(X1)
     => ! [X2] :
          ( m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1)))
         => ! [X3] :
              ( m1_subset_1(X3,u1_struct_0(k2_yellow_1(X1)))
             => ( r3_orders_2(k2_yellow_1(X1),X2,X3)
              <=> r1_tarski(X2,X3) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_yellow_1)).

fof(t13_lattice3,axiom,(
    ! [X1] :
      ( ( v5_orders_2(X1)
        & v1_lattice3(X1)
        & l1_orders_2(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,u1_struct_0(X1))
         => ! [X3] :
              ( m1_subset_1(X3,u1_struct_0(X1))
             => k10_lattice3(X1,X2,X3) = k10_lattice3(X1,X3,X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t13_lattice3)).

fof(t8_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( ( r1_tarski(X1,X2)
        & r1_tarski(X3,X2) )
     => r1_tarski(k2_xboole_0(X1,X3),X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t8_xboole_1)).

fof(fc6_yellow_1,axiom,(
    ! [X1] :
      ( ~ v1_xboole_0(X1)
     => ( ~ v2_struct_0(k2_yellow_1(X1))
        & v1_orders_2(k2_yellow_1(X1)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc6_yellow_1)).

fof(c_0_11,plain,(
    ! [X15,X16,X17,X18,X19] :
      ( ( r1_orders_2(X15,X16,X18)
        | X18 != k10_lattice3(X15,X16,X17)
        | ~ m1_subset_1(X18,u1_struct_0(X15))
        | ~ m1_subset_1(X17,u1_struct_0(X15))
        | ~ m1_subset_1(X16,u1_struct_0(X15))
        | v2_struct_0(X15)
        | ~ v5_orders_2(X15)
        | ~ v1_lattice3(X15)
        | ~ l1_orders_2(X15) )
      & ( r1_orders_2(X15,X17,X18)
        | X18 != k10_lattice3(X15,X16,X17)
        | ~ m1_subset_1(X18,u1_struct_0(X15))
        | ~ m1_subset_1(X17,u1_struct_0(X15))
        | ~ m1_subset_1(X16,u1_struct_0(X15))
        | v2_struct_0(X15)
        | ~ v5_orders_2(X15)
        | ~ v1_lattice3(X15)
        | ~ l1_orders_2(X15) )
      & ( ~ m1_subset_1(X19,u1_struct_0(X15))
        | ~ r1_orders_2(X15,X16,X19)
        | ~ r1_orders_2(X15,X17,X19)
        | r1_orders_2(X15,X18,X19)
        | X18 != k10_lattice3(X15,X16,X17)
        | ~ m1_subset_1(X18,u1_struct_0(X15))
        | ~ m1_subset_1(X17,u1_struct_0(X15))
        | ~ m1_subset_1(X16,u1_struct_0(X15))
        | v2_struct_0(X15)
        | ~ v5_orders_2(X15)
        | ~ v1_lattice3(X15)
        | ~ l1_orders_2(X15) )
      & ( m1_subset_1(esk1_4(X15,X16,X17,X18),u1_struct_0(X15))
        | ~ r1_orders_2(X15,X16,X18)
        | ~ r1_orders_2(X15,X17,X18)
        | X18 = k10_lattice3(X15,X16,X17)
        | ~ m1_subset_1(X18,u1_struct_0(X15))
        | ~ m1_subset_1(X17,u1_struct_0(X15))
        | ~ m1_subset_1(X16,u1_struct_0(X15))
        | v2_struct_0(X15)
        | ~ v5_orders_2(X15)
        | ~ v1_lattice3(X15)
        | ~ l1_orders_2(X15) )
      & ( r1_orders_2(X15,X16,esk1_4(X15,X16,X17,X18))
        | ~ r1_orders_2(X15,X16,X18)
        | ~ r1_orders_2(X15,X17,X18)
        | X18 = k10_lattice3(X15,X16,X17)
        | ~ m1_subset_1(X18,u1_struct_0(X15))
        | ~ m1_subset_1(X17,u1_struct_0(X15))
        | ~ m1_subset_1(X16,u1_struct_0(X15))
        | v2_struct_0(X15)
        | ~ v5_orders_2(X15)
        | ~ v1_lattice3(X15)
        | ~ l1_orders_2(X15) )
      & ( r1_orders_2(X15,X17,esk1_4(X15,X16,X17,X18))
        | ~ r1_orders_2(X15,X16,X18)
        | ~ r1_orders_2(X15,X17,X18)
        | X18 = k10_lattice3(X15,X16,X17)
        | ~ m1_subset_1(X18,u1_struct_0(X15))
        | ~ m1_subset_1(X17,u1_struct_0(X15))
        | ~ m1_subset_1(X16,u1_struct_0(X15))
        | v2_struct_0(X15)
        | ~ v5_orders_2(X15)
        | ~ v1_lattice3(X15)
        | ~ l1_orders_2(X15) )
      & ( ~ r1_orders_2(X15,X18,esk1_4(X15,X16,X17,X18))
        | ~ r1_orders_2(X15,X16,X18)
        | ~ r1_orders_2(X15,X17,X18)
        | X18 = k10_lattice3(X15,X16,X17)
        | ~ m1_subset_1(X18,u1_struct_0(X15))
        | ~ m1_subset_1(X17,u1_struct_0(X15))
        | ~ m1_subset_1(X16,u1_struct_0(X15))
        | v2_struct_0(X15)
        | ~ v5_orders_2(X15)
        | ~ v1_lattice3(X15)
        | ~ l1_orders_2(X15) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[l26_lattice3])])])])])])).

fof(c_0_12,plain,(
    ! [X12,X13,X14] :
      ( ~ l1_orders_2(X12)
      | ~ m1_subset_1(X13,u1_struct_0(X12))
      | ~ m1_subset_1(X14,u1_struct_0(X12))
      | m1_subset_1(k10_lattice3(X12,X13,X14),u1_struct_0(X12)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k10_lattice3])])).

cnf(c_0_13,plain,
    ( r1_orders_2(X1,X2,X3)
    | v2_struct_0(X1)
    | X3 != k10_lattice3(X1,X4,X2)
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ m1_subset_1(X4,u1_struct_0(X1))
    | ~ v5_orders_2(X1)
    | ~ v1_lattice3(X1)
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_14,plain,
    ( m1_subset_1(k10_lattice3(X1,X2,X3),u1_struct_0(X1))
    | ~ l1_orders_2(X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ m1_subset_1(X3,u1_struct_0(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

fof(c_0_15,plain,(
    ! [X27] :
      ( u1_struct_0(k2_yellow_1(X27)) = X27
      & u1_orders_2(k2_yellow_1(X27)) = k1_yellow_1(X27) ) ),
    inference(variable_rename,[status(thm)],[t1_yellow_1])).

fof(c_0_16,plain,(
    ! [X25] :
      ( v1_orders_2(k2_yellow_1(X25))
      & v3_orders_2(k2_yellow_1(X25))
      & v4_orders_2(k2_yellow_1(X25))
      & v5_orders_2(k2_yellow_1(X25)) ) ),
    inference(variable_rename,[status(thm)],[fc5_yellow_1])).

fof(c_0_17,plain,(
    ! [X24] :
      ( v1_orders_2(k2_yellow_1(X24))
      & l1_orders_2(k2_yellow_1(X24)) ) ),
    inference(variable_rename,[status(thm)],[dt_k2_yellow_1])).

fof(c_0_18,negated_conjecture,(
    ~ ! [X1] :
        ( ~ v1_xboole_0(X1)
       => ( v1_lattice3(k2_yellow_1(X1))
         => ! [X2] :
              ( m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1)))
             => ! [X3] :
                  ( m1_subset_1(X3,u1_struct_0(k2_yellow_1(X1)))
                 => r1_tarski(k2_xboole_0(X2,X3),k10_lattice3(k2_yellow_1(X1),X2,X3)) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t6_yellow_1])).

cnf(c_0_19,plain,
    ( r1_orders_2(X1,X2,k10_lattice3(X1,X3,X2))
    | v2_struct_0(X1)
    | ~ v1_lattice3(X1)
    | ~ v5_orders_2(X1)
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(csr,[status(thm)],[inference(er,[status(thm)],[c_0_13]),c_0_14])).

cnf(c_0_20,plain,
    ( u1_struct_0(k2_yellow_1(X1)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_21,plain,
    ( v5_orders_2(k2_yellow_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_22,plain,
    ( l1_orders_2(k2_yellow_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

fof(c_0_23,negated_conjecture,
    ( ~ v1_xboole_0(esk2_0)
    & v1_lattice3(k2_yellow_1(esk2_0))
    & m1_subset_1(esk3_0,u1_struct_0(k2_yellow_1(esk2_0)))
    & m1_subset_1(esk4_0,u1_struct_0(k2_yellow_1(esk2_0)))
    & ~ r1_tarski(k2_xboole_0(esk3_0,esk4_0),k10_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_18])])])])).

cnf(c_0_24,plain,
    ( r1_orders_2(k2_yellow_1(X1),X2,k10_lattice3(k2_yellow_1(X1),X3,X2))
    | v2_struct_0(k2_yellow_1(X1))
    | ~ v1_lattice3(k2_yellow_1(X1))
    | ~ m1_subset_1(X3,X1)
    | ~ m1_subset_1(X2,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19,c_0_20]),c_0_21]),c_0_22])])).

cnf(c_0_25,negated_conjecture,
    ( v1_lattice3(k2_yellow_1(esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_26,negated_conjecture,
    ( m1_subset_1(esk4_0,u1_struct_0(k2_yellow_1(esk2_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_27,negated_conjecture,
    ( m1_subset_1(esk3_0,u1_struct_0(k2_yellow_1(esk2_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

fof(c_0_28,plain,(
    ! [X9,X10,X11] :
      ( ( ~ r3_orders_2(X9,X10,X11)
        | r1_orders_2(X9,X10,X11)
        | v2_struct_0(X9)
        | ~ v3_orders_2(X9)
        | ~ l1_orders_2(X9)
        | ~ m1_subset_1(X10,u1_struct_0(X9))
        | ~ m1_subset_1(X11,u1_struct_0(X9)) )
      & ( ~ r1_orders_2(X9,X10,X11)
        | r3_orders_2(X9,X10,X11)
        | v2_struct_0(X9)
        | ~ v3_orders_2(X9)
        | ~ l1_orders_2(X9)
        | ~ m1_subset_1(X10,u1_struct_0(X9))
        | ~ m1_subset_1(X11,u1_struct_0(X9)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[redefinition_r3_orders_2])])])])).

cnf(c_0_29,negated_conjecture,
    ( r1_orders_2(k2_yellow_1(esk2_0),X1,k10_lattice3(k2_yellow_1(esk2_0),X2,X1))
    | v2_struct_0(k2_yellow_1(esk2_0))
    | ~ m1_subset_1(X2,esk2_0)
    | ~ m1_subset_1(X1,esk2_0) ),
    inference(spm,[status(thm)],[c_0_24,c_0_25])).

cnf(c_0_30,negated_conjecture,
    ( m1_subset_1(esk4_0,esk2_0) ),
    inference(rw,[status(thm)],[c_0_26,c_0_20])).

cnf(c_0_31,negated_conjecture,
    ( m1_subset_1(esk3_0,esk2_0) ),
    inference(rw,[status(thm)],[c_0_27,c_0_20])).

cnf(c_0_32,plain,
    ( r3_orders_2(X1,X2,X3)
    | v2_struct_0(X1)
    | ~ r1_orders_2(X1,X2,X3)
    | ~ v3_orders_2(X1)
    | ~ l1_orders_2(X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ m1_subset_1(X3,u1_struct_0(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_33,plain,
    ( v3_orders_2(k2_yellow_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_34,negated_conjecture,
    ( r1_orders_2(k2_yellow_1(esk2_0),X1,k10_lattice3(k2_yellow_1(esk2_0),esk4_0,X1))
    | v2_struct_0(k2_yellow_1(esk2_0))
    | ~ m1_subset_1(X1,esk2_0) ),
    inference(spm,[status(thm)],[c_0_29,c_0_30])).

cnf(c_0_35,negated_conjecture,
    ( r1_orders_2(k2_yellow_1(esk2_0),X1,k10_lattice3(k2_yellow_1(esk2_0),esk3_0,X1))
    | v2_struct_0(k2_yellow_1(esk2_0))
    | ~ m1_subset_1(X1,esk2_0) ),
    inference(spm,[status(thm)],[c_0_29,c_0_31])).

fof(c_0_36,plain,(
    ! [X28,X29,X30] :
      ( ( ~ r3_orders_2(k2_yellow_1(X28),X29,X30)
        | r1_tarski(X29,X30)
        | ~ m1_subset_1(X30,u1_struct_0(k2_yellow_1(X28)))
        | ~ m1_subset_1(X29,u1_struct_0(k2_yellow_1(X28)))
        | v1_xboole_0(X28) )
      & ( ~ r1_tarski(X29,X30)
        | r3_orders_2(k2_yellow_1(X28),X29,X30)
        | ~ m1_subset_1(X30,u1_struct_0(k2_yellow_1(X28)))
        | ~ m1_subset_1(X29,u1_struct_0(k2_yellow_1(X28)))
        | v1_xboole_0(X28) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t3_yellow_1])])])])])).

cnf(c_0_37,plain,
    ( r3_orders_2(k2_yellow_1(X1),X2,X3)
    | v2_struct_0(k2_yellow_1(X1))
    | ~ r1_orders_2(k2_yellow_1(X1),X2,X3)
    | ~ m1_subset_1(X3,X1)
    | ~ m1_subset_1(X2,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32,c_0_20]),c_0_22]),c_0_33])])).

cnf(c_0_38,negated_conjecture,
    ( r1_orders_2(k2_yellow_1(esk2_0),esk3_0,k10_lattice3(k2_yellow_1(esk2_0),esk4_0,esk3_0))
    | v2_struct_0(k2_yellow_1(esk2_0)) ),
    inference(spm,[status(thm)],[c_0_34,c_0_31])).

cnf(c_0_39,negated_conjecture,
    ( r1_orders_2(k2_yellow_1(esk2_0),esk4_0,k10_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0))
    | v2_struct_0(k2_yellow_1(esk2_0)) ),
    inference(spm,[status(thm)],[c_0_35,c_0_30])).

cnf(c_0_40,plain,
    ( r1_tarski(X2,X3)
    | v1_xboole_0(X1)
    | ~ r3_orders_2(k2_yellow_1(X1),X2,X3)
    | ~ m1_subset_1(X3,u1_struct_0(k2_yellow_1(X1)))
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

cnf(c_0_41,negated_conjecture,
    ( r3_orders_2(k2_yellow_1(esk2_0),esk3_0,k10_lattice3(k2_yellow_1(esk2_0),esk4_0,esk3_0))
    | v2_struct_0(k2_yellow_1(esk2_0))
    | ~ m1_subset_1(k10_lattice3(k2_yellow_1(esk2_0),esk4_0,esk3_0),esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_38]),c_0_31])])).

cnf(c_0_42,plain,
    ( m1_subset_1(k10_lattice3(k2_yellow_1(X1),X2,X3),X1)
    | ~ m1_subset_1(X3,X1)
    | ~ m1_subset_1(X2,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_14,c_0_20]),c_0_22])])).

fof(c_0_43,plain,(
    ! [X21,X22,X23] :
      ( ~ v5_orders_2(X21)
      | ~ v1_lattice3(X21)
      | ~ l1_orders_2(X21)
      | ~ m1_subset_1(X22,u1_struct_0(X21))
      | ~ m1_subset_1(X23,u1_struct_0(X21))
      | k10_lattice3(X21,X22,X23) = k10_lattice3(X21,X23,X22) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t13_lattice3])])])).

cnf(c_0_44,negated_conjecture,
    ( r3_orders_2(k2_yellow_1(esk2_0),esk4_0,k10_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0))
    | v2_struct_0(k2_yellow_1(esk2_0))
    | ~ m1_subset_1(k10_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0),esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_39]),c_0_30])])).

cnf(c_0_45,plain,
    ( v1_xboole_0(X1)
    | r1_tarski(X2,X3)
    | ~ r3_orders_2(k2_yellow_1(X1),X2,X3)
    | ~ m1_subset_1(X3,X1)
    | ~ m1_subset_1(X2,X1) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_40,c_0_20]),c_0_20])).

cnf(c_0_46,negated_conjecture,
    ( r3_orders_2(k2_yellow_1(esk2_0),esk3_0,k10_lattice3(k2_yellow_1(esk2_0),esk4_0,esk3_0))
    | v2_struct_0(k2_yellow_1(esk2_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41,c_0_42]),c_0_31]),c_0_30])])).

cnf(c_0_47,negated_conjecture,
    ( ~ v1_xboole_0(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_48,plain,
    ( k10_lattice3(X1,X2,X3) = k10_lattice3(X1,X3,X2)
    | ~ v5_orders_2(X1)
    | ~ v1_lattice3(X1)
    | ~ l1_orders_2(X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ m1_subset_1(X3,u1_struct_0(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_43])).

fof(c_0_49,plain,(
    ! [X6,X7,X8] :
      ( ~ r1_tarski(X6,X7)
      | ~ r1_tarski(X8,X7)
      | r1_tarski(k2_xboole_0(X6,X8),X7) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t8_xboole_1])])).

cnf(c_0_50,negated_conjecture,
    ( r3_orders_2(k2_yellow_1(esk2_0),esk4_0,k10_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0))
    | v2_struct_0(k2_yellow_1(esk2_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44,c_0_42]),c_0_30]),c_0_31])])).

cnf(c_0_51,negated_conjecture,
    ( v2_struct_0(k2_yellow_1(esk2_0))
    | r1_tarski(esk3_0,k10_lattice3(k2_yellow_1(esk2_0),esk4_0,esk3_0))
    | ~ m1_subset_1(k10_lattice3(k2_yellow_1(esk2_0),esk4_0,esk3_0),esk2_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45,c_0_46]),c_0_31])]),c_0_47])).

cnf(c_0_52,plain,
    ( k10_lattice3(k2_yellow_1(X1),X2,X3) = k10_lattice3(k2_yellow_1(X1),X3,X2)
    | ~ v1_lattice3(k2_yellow_1(X1))
    | ~ m1_subset_1(X3,X1)
    | ~ m1_subset_1(X2,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48,c_0_20]),c_0_21]),c_0_22])])).

cnf(c_0_53,negated_conjecture,
    ( ~ r1_tarski(k2_xboole_0(esk3_0,esk4_0),k10_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_54,plain,
    ( r1_tarski(k2_xboole_0(X1,X3),X2)
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X3,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_49])).

cnf(c_0_55,negated_conjecture,
    ( v2_struct_0(k2_yellow_1(esk2_0))
    | r1_tarski(esk4_0,k10_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0))
    | ~ m1_subset_1(k10_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0),esk2_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45,c_0_50]),c_0_30])]),c_0_47])).

cnf(c_0_56,negated_conjecture,
    ( v2_struct_0(k2_yellow_1(esk2_0))
    | r1_tarski(esk3_0,k10_lattice3(k2_yellow_1(esk2_0),esk4_0,esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51,c_0_42]),c_0_31]),c_0_30])])).

cnf(c_0_57,negated_conjecture,
    ( k10_lattice3(k2_yellow_1(esk2_0),X1,X2) = k10_lattice3(k2_yellow_1(esk2_0),X2,X1)
    | ~ m1_subset_1(X2,esk2_0)
    | ~ m1_subset_1(X1,esk2_0) ),
    inference(spm,[status(thm)],[c_0_52,c_0_25])).

fof(c_0_58,plain,(
    ! [X26] :
      ( ( ~ v2_struct_0(k2_yellow_1(X26))
        | v1_xboole_0(X26) )
      & ( v1_orders_2(k2_yellow_1(X26))
        | v1_xboole_0(X26) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc6_yellow_1])])])])).

cnf(c_0_59,negated_conjecture,
    ( ~ r1_tarski(esk4_0,k10_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0))
    | ~ r1_tarski(esk3_0,k10_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0)) ),
    inference(spm,[status(thm)],[c_0_53,c_0_54])).

cnf(c_0_60,negated_conjecture,
    ( v2_struct_0(k2_yellow_1(esk2_0))
    | r1_tarski(esk4_0,k10_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55,c_0_42]),c_0_30]),c_0_31])])).

cnf(c_0_61,negated_conjecture,
    ( v2_struct_0(k2_yellow_1(esk2_0))
    | r1_tarski(esk3_0,k10_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_56,c_0_57]),c_0_31]),c_0_30])])).

cnf(c_0_62,plain,
    ( v1_xboole_0(X1)
    | ~ v2_struct_0(k2_yellow_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_58])).

cnf(c_0_63,negated_conjecture,
    ( v2_struct_0(k2_yellow_1(esk2_0)) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_59,c_0_60]),c_0_61])).

cnf(c_0_64,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_62,c_0_63]),c_0_47]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.34  % Computer   : n015.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 20:16:53 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  # Version: 2.5pre002
% 0.14/0.35  # No SInE strategy applied
% 0.14/0.35  # Trying AutoSched0 for 299 seconds
% 0.14/0.39  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.14/0.39  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.14/0.39  #
% 0.14/0.39  # Preprocessing time       : 0.029 s
% 0.14/0.39  # Presaturation interreduction done
% 0.14/0.39  
% 0.14/0.39  # Proof found!
% 0.14/0.39  # SZS status Theorem
% 0.14/0.39  # SZS output start CNFRefutation
% 0.14/0.39  fof(l26_lattice3, axiom, ![X1]:((((~(v2_struct_0(X1))&v5_orders_2(X1))&v1_lattice3(X1))&l1_orders_2(X1))=>![X2]:(m1_subset_1(X2,u1_struct_0(X1))=>![X3]:(m1_subset_1(X3,u1_struct_0(X1))=>![X4]:(m1_subset_1(X4,u1_struct_0(X1))=>(X4=k10_lattice3(X1,X2,X3)<=>((r1_orders_2(X1,X2,X4)&r1_orders_2(X1,X3,X4))&![X5]:(m1_subset_1(X5,u1_struct_0(X1))=>((r1_orders_2(X1,X2,X5)&r1_orders_2(X1,X3,X5))=>r1_orders_2(X1,X4,X5))))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l26_lattice3)).
% 0.14/0.39  fof(dt_k10_lattice3, axiom, ![X1, X2, X3]:(((l1_orders_2(X1)&m1_subset_1(X2,u1_struct_0(X1)))&m1_subset_1(X3,u1_struct_0(X1)))=>m1_subset_1(k10_lattice3(X1,X2,X3),u1_struct_0(X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k10_lattice3)).
% 0.14/0.39  fof(t1_yellow_1, axiom, ![X1]:(u1_struct_0(k2_yellow_1(X1))=X1&u1_orders_2(k2_yellow_1(X1))=k1_yellow_1(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t1_yellow_1)).
% 0.14/0.39  fof(fc5_yellow_1, axiom, ![X1]:(((v1_orders_2(k2_yellow_1(X1))&v3_orders_2(k2_yellow_1(X1)))&v4_orders_2(k2_yellow_1(X1)))&v5_orders_2(k2_yellow_1(X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc5_yellow_1)).
% 0.14/0.39  fof(dt_k2_yellow_1, axiom, ![X1]:(v1_orders_2(k2_yellow_1(X1))&l1_orders_2(k2_yellow_1(X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k2_yellow_1)).
% 0.14/0.39  fof(t6_yellow_1, conjecture, ![X1]:(~(v1_xboole_0(X1))=>(v1_lattice3(k2_yellow_1(X1))=>![X2]:(m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1)))=>![X3]:(m1_subset_1(X3,u1_struct_0(k2_yellow_1(X1)))=>r1_tarski(k2_xboole_0(X2,X3),k10_lattice3(k2_yellow_1(X1),X2,X3)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t6_yellow_1)).
% 0.14/0.39  fof(redefinition_r3_orders_2, axiom, ![X1, X2, X3]:(((((~(v2_struct_0(X1))&v3_orders_2(X1))&l1_orders_2(X1))&m1_subset_1(X2,u1_struct_0(X1)))&m1_subset_1(X3,u1_struct_0(X1)))=>(r3_orders_2(X1,X2,X3)<=>r1_orders_2(X1,X2,X3))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_r3_orders_2)).
% 0.14/0.39  fof(t3_yellow_1, axiom, ![X1]:(~(v1_xboole_0(X1))=>![X2]:(m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1)))=>![X3]:(m1_subset_1(X3,u1_struct_0(k2_yellow_1(X1)))=>(r3_orders_2(k2_yellow_1(X1),X2,X3)<=>r1_tarski(X2,X3))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_yellow_1)).
% 0.14/0.39  fof(t13_lattice3, axiom, ![X1]:(((v5_orders_2(X1)&v1_lattice3(X1))&l1_orders_2(X1))=>![X2]:(m1_subset_1(X2,u1_struct_0(X1))=>![X3]:(m1_subset_1(X3,u1_struct_0(X1))=>k10_lattice3(X1,X2,X3)=k10_lattice3(X1,X3,X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t13_lattice3)).
% 0.14/0.39  fof(t8_xboole_1, axiom, ![X1, X2, X3]:((r1_tarski(X1,X2)&r1_tarski(X3,X2))=>r1_tarski(k2_xboole_0(X1,X3),X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t8_xboole_1)).
% 0.14/0.39  fof(fc6_yellow_1, axiom, ![X1]:(~(v1_xboole_0(X1))=>(~(v2_struct_0(k2_yellow_1(X1)))&v1_orders_2(k2_yellow_1(X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc6_yellow_1)).
% 0.14/0.39  fof(c_0_11, plain, ![X15, X16, X17, X18, X19]:((((r1_orders_2(X15,X16,X18)|X18!=k10_lattice3(X15,X16,X17)|~m1_subset_1(X18,u1_struct_0(X15))|~m1_subset_1(X17,u1_struct_0(X15))|~m1_subset_1(X16,u1_struct_0(X15))|(v2_struct_0(X15)|~v5_orders_2(X15)|~v1_lattice3(X15)|~l1_orders_2(X15)))&(r1_orders_2(X15,X17,X18)|X18!=k10_lattice3(X15,X16,X17)|~m1_subset_1(X18,u1_struct_0(X15))|~m1_subset_1(X17,u1_struct_0(X15))|~m1_subset_1(X16,u1_struct_0(X15))|(v2_struct_0(X15)|~v5_orders_2(X15)|~v1_lattice3(X15)|~l1_orders_2(X15))))&(~m1_subset_1(X19,u1_struct_0(X15))|(~r1_orders_2(X15,X16,X19)|~r1_orders_2(X15,X17,X19)|r1_orders_2(X15,X18,X19))|X18!=k10_lattice3(X15,X16,X17)|~m1_subset_1(X18,u1_struct_0(X15))|~m1_subset_1(X17,u1_struct_0(X15))|~m1_subset_1(X16,u1_struct_0(X15))|(v2_struct_0(X15)|~v5_orders_2(X15)|~v1_lattice3(X15)|~l1_orders_2(X15))))&((m1_subset_1(esk1_4(X15,X16,X17,X18),u1_struct_0(X15))|(~r1_orders_2(X15,X16,X18)|~r1_orders_2(X15,X17,X18))|X18=k10_lattice3(X15,X16,X17)|~m1_subset_1(X18,u1_struct_0(X15))|~m1_subset_1(X17,u1_struct_0(X15))|~m1_subset_1(X16,u1_struct_0(X15))|(v2_struct_0(X15)|~v5_orders_2(X15)|~v1_lattice3(X15)|~l1_orders_2(X15)))&(((r1_orders_2(X15,X16,esk1_4(X15,X16,X17,X18))|(~r1_orders_2(X15,X16,X18)|~r1_orders_2(X15,X17,X18))|X18=k10_lattice3(X15,X16,X17)|~m1_subset_1(X18,u1_struct_0(X15))|~m1_subset_1(X17,u1_struct_0(X15))|~m1_subset_1(X16,u1_struct_0(X15))|(v2_struct_0(X15)|~v5_orders_2(X15)|~v1_lattice3(X15)|~l1_orders_2(X15)))&(r1_orders_2(X15,X17,esk1_4(X15,X16,X17,X18))|(~r1_orders_2(X15,X16,X18)|~r1_orders_2(X15,X17,X18))|X18=k10_lattice3(X15,X16,X17)|~m1_subset_1(X18,u1_struct_0(X15))|~m1_subset_1(X17,u1_struct_0(X15))|~m1_subset_1(X16,u1_struct_0(X15))|(v2_struct_0(X15)|~v5_orders_2(X15)|~v1_lattice3(X15)|~l1_orders_2(X15))))&(~r1_orders_2(X15,X18,esk1_4(X15,X16,X17,X18))|(~r1_orders_2(X15,X16,X18)|~r1_orders_2(X15,X17,X18))|X18=k10_lattice3(X15,X16,X17)|~m1_subset_1(X18,u1_struct_0(X15))|~m1_subset_1(X17,u1_struct_0(X15))|~m1_subset_1(X16,u1_struct_0(X15))|(v2_struct_0(X15)|~v5_orders_2(X15)|~v1_lattice3(X15)|~l1_orders_2(X15)))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[l26_lattice3])])])])])])).
% 0.14/0.39  fof(c_0_12, plain, ![X12, X13, X14]:(~l1_orders_2(X12)|~m1_subset_1(X13,u1_struct_0(X12))|~m1_subset_1(X14,u1_struct_0(X12))|m1_subset_1(k10_lattice3(X12,X13,X14),u1_struct_0(X12))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k10_lattice3])])).
% 0.14/0.39  cnf(c_0_13, plain, (r1_orders_2(X1,X2,X3)|v2_struct_0(X1)|X3!=k10_lattice3(X1,X4,X2)|~m1_subset_1(X3,u1_struct_0(X1))|~m1_subset_1(X2,u1_struct_0(X1))|~m1_subset_1(X4,u1_struct_0(X1))|~v5_orders_2(X1)|~v1_lattice3(X1)|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.14/0.39  cnf(c_0_14, plain, (m1_subset_1(k10_lattice3(X1,X2,X3),u1_struct_0(X1))|~l1_orders_2(X1)|~m1_subset_1(X2,u1_struct_0(X1))|~m1_subset_1(X3,u1_struct_0(X1))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.14/0.39  fof(c_0_15, plain, ![X27]:(u1_struct_0(k2_yellow_1(X27))=X27&u1_orders_2(k2_yellow_1(X27))=k1_yellow_1(X27)), inference(variable_rename,[status(thm)],[t1_yellow_1])).
% 0.14/0.39  fof(c_0_16, plain, ![X25]:(((v1_orders_2(k2_yellow_1(X25))&v3_orders_2(k2_yellow_1(X25)))&v4_orders_2(k2_yellow_1(X25)))&v5_orders_2(k2_yellow_1(X25))), inference(variable_rename,[status(thm)],[fc5_yellow_1])).
% 0.14/0.39  fof(c_0_17, plain, ![X24]:(v1_orders_2(k2_yellow_1(X24))&l1_orders_2(k2_yellow_1(X24))), inference(variable_rename,[status(thm)],[dt_k2_yellow_1])).
% 0.14/0.39  fof(c_0_18, negated_conjecture, ~(![X1]:(~(v1_xboole_0(X1))=>(v1_lattice3(k2_yellow_1(X1))=>![X2]:(m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1)))=>![X3]:(m1_subset_1(X3,u1_struct_0(k2_yellow_1(X1)))=>r1_tarski(k2_xboole_0(X2,X3),k10_lattice3(k2_yellow_1(X1),X2,X3))))))), inference(assume_negation,[status(cth)],[t6_yellow_1])).
% 0.14/0.39  cnf(c_0_19, plain, (r1_orders_2(X1,X2,k10_lattice3(X1,X3,X2))|v2_struct_0(X1)|~v1_lattice3(X1)|~v5_orders_2(X1)|~m1_subset_1(X3,u1_struct_0(X1))|~m1_subset_1(X2,u1_struct_0(X1))|~l1_orders_2(X1)), inference(csr,[status(thm)],[inference(er,[status(thm)],[c_0_13]), c_0_14])).
% 0.14/0.39  cnf(c_0_20, plain, (u1_struct_0(k2_yellow_1(X1))=X1), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.39  cnf(c_0_21, plain, (v5_orders_2(k2_yellow_1(X1))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.14/0.39  cnf(c_0_22, plain, (l1_orders_2(k2_yellow_1(X1))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.14/0.39  fof(c_0_23, negated_conjecture, (~v1_xboole_0(esk2_0)&(v1_lattice3(k2_yellow_1(esk2_0))&(m1_subset_1(esk3_0,u1_struct_0(k2_yellow_1(esk2_0)))&(m1_subset_1(esk4_0,u1_struct_0(k2_yellow_1(esk2_0)))&~r1_tarski(k2_xboole_0(esk3_0,esk4_0),k10_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0)))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_18])])])])).
% 0.14/0.39  cnf(c_0_24, plain, (r1_orders_2(k2_yellow_1(X1),X2,k10_lattice3(k2_yellow_1(X1),X3,X2))|v2_struct_0(k2_yellow_1(X1))|~v1_lattice3(k2_yellow_1(X1))|~m1_subset_1(X3,X1)|~m1_subset_1(X2,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19, c_0_20]), c_0_21]), c_0_22])])).
% 0.14/0.39  cnf(c_0_25, negated_conjecture, (v1_lattice3(k2_yellow_1(esk2_0))), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.14/0.39  cnf(c_0_26, negated_conjecture, (m1_subset_1(esk4_0,u1_struct_0(k2_yellow_1(esk2_0)))), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.14/0.39  cnf(c_0_27, negated_conjecture, (m1_subset_1(esk3_0,u1_struct_0(k2_yellow_1(esk2_0)))), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.14/0.39  fof(c_0_28, plain, ![X9, X10, X11]:((~r3_orders_2(X9,X10,X11)|r1_orders_2(X9,X10,X11)|(v2_struct_0(X9)|~v3_orders_2(X9)|~l1_orders_2(X9)|~m1_subset_1(X10,u1_struct_0(X9))|~m1_subset_1(X11,u1_struct_0(X9))))&(~r1_orders_2(X9,X10,X11)|r3_orders_2(X9,X10,X11)|(v2_struct_0(X9)|~v3_orders_2(X9)|~l1_orders_2(X9)|~m1_subset_1(X10,u1_struct_0(X9))|~m1_subset_1(X11,u1_struct_0(X9))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[redefinition_r3_orders_2])])])])).
% 0.14/0.39  cnf(c_0_29, negated_conjecture, (r1_orders_2(k2_yellow_1(esk2_0),X1,k10_lattice3(k2_yellow_1(esk2_0),X2,X1))|v2_struct_0(k2_yellow_1(esk2_0))|~m1_subset_1(X2,esk2_0)|~m1_subset_1(X1,esk2_0)), inference(spm,[status(thm)],[c_0_24, c_0_25])).
% 0.14/0.39  cnf(c_0_30, negated_conjecture, (m1_subset_1(esk4_0,esk2_0)), inference(rw,[status(thm)],[c_0_26, c_0_20])).
% 0.14/0.39  cnf(c_0_31, negated_conjecture, (m1_subset_1(esk3_0,esk2_0)), inference(rw,[status(thm)],[c_0_27, c_0_20])).
% 0.14/0.39  cnf(c_0_32, plain, (r3_orders_2(X1,X2,X3)|v2_struct_0(X1)|~r1_orders_2(X1,X2,X3)|~v3_orders_2(X1)|~l1_orders_2(X1)|~m1_subset_1(X2,u1_struct_0(X1))|~m1_subset_1(X3,u1_struct_0(X1))), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.14/0.39  cnf(c_0_33, plain, (v3_orders_2(k2_yellow_1(X1))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.14/0.39  cnf(c_0_34, negated_conjecture, (r1_orders_2(k2_yellow_1(esk2_0),X1,k10_lattice3(k2_yellow_1(esk2_0),esk4_0,X1))|v2_struct_0(k2_yellow_1(esk2_0))|~m1_subset_1(X1,esk2_0)), inference(spm,[status(thm)],[c_0_29, c_0_30])).
% 0.14/0.39  cnf(c_0_35, negated_conjecture, (r1_orders_2(k2_yellow_1(esk2_0),X1,k10_lattice3(k2_yellow_1(esk2_0),esk3_0,X1))|v2_struct_0(k2_yellow_1(esk2_0))|~m1_subset_1(X1,esk2_0)), inference(spm,[status(thm)],[c_0_29, c_0_31])).
% 0.14/0.39  fof(c_0_36, plain, ![X28, X29, X30]:((~r3_orders_2(k2_yellow_1(X28),X29,X30)|r1_tarski(X29,X30)|~m1_subset_1(X30,u1_struct_0(k2_yellow_1(X28)))|~m1_subset_1(X29,u1_struct_0(k2_yellow_1(X28)))|v1_xboole_0(X28))&(~r1_tarski(X29,X30)|r3_orders_2(k2_yellow_1(X28),X29,X30)|~m1_subset_1(X30,u1_struct_0(k2_yellow_1(X28)))|~m1_subset_1(X29,u1_struct_0(k2_yellow_1(X28)))|v1_xboole_0(X28))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t3_yellow_1])])])])])).
% 0.14/0.39  cnf(c_0_37, plain, (r3_orders_2(k2_yellow_1(X1),X2,X3)|v2_struct_0(k2_yellow_1(X1))|~r1_orders_2(k2_yellow_1(X1),X2,X3)|~m1_subset_1(X3,X1)|~m1_subset_1(X2,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32, c_0_20]), c_0_22]), c_0_33])])).
% 0.14/0.39  cnf(c_0_38, negated_conjecture, (r1_orders_2(k2_yellow_1(esk2_0),esk3_0,k10_lattice3(k2_yellow_1(esk2_0),esk4_0,esk3_0))|v2_struct_0(k2_yellow_1(esk2_0))), inference(spm,[status(thm)],[c_0_34, c_0_31])).
% 0.14/0.39  cnf(c_0_39, negated_conjecture, (r1_orders_2(k2_yellow_1(esk2_0),esk4_0,k10_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0))|v2_struct_0(k2_yellow_1(esk2_0))), inference(spm,[status(thm)],[c_0_35, c_0_30])).
% 0.14/0.39  cnf(c_0_40, plain, (r1_tarski(X2,X3)|v1_xboole_0(X1)|~r3_orders_2(k2_yellow_1(X1),X2,X3)|~m1_subset_1(X3,u1_struct_0(k2_yellow_1(X1)))|~m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1)))), inference(split_conjunct,[status(thm)],[c_0_36])).
% 0.14/0.39  cnf(c_0_41, negated_conjecture, (r3_orders_2(k2_yellow_1(esk2_0),esk3_0,k10_lattice3(k2_yellow_1(esk2_0),esk4_0,esk3_0))|v2_struct_0(k2_yellow_1(esk2_0))|~m1_subset_1(k10_lattice3(k2_yellow_1(esk2_0),esk4_0,esk3_0),esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_38]), c_0_31])])).
% 0.14/0.39  cnf(c_0_42, plain, (m1_subset_1(k10_lattice3(k2_yellow_1(X1),X2,X3),X1)|~m1_subset_1(X3,X1)|~m1_subset_1(X2,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_14, c_0_20]), c_0_22])])).
% 0.14/0.39  fof(c_0_43, plain, ![X21, X22, X23]:(~v5_orders_2(X21)|~v1_lattice3(X21)|~l1_orders_2(X21)|(~m1_subset_1(X22,u1_struct_0(X21))|(~m1_subset_1(X23,u1_struct_0(X21))|k10_lattice3(X21,X22,X23)=k10_lattice3(X21,X23,X22)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t13_lattice3])])])).
% 0.14/0.39  cnf(c_0_44, negated_conjecture, (r3_orders_2(k2_yellow_1(esk2_0),esk4_0,k10_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0))|v2_struct_0(k2_yellow_1(esk2_0))|~m1_subset_1(k10_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0),esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_39]), c_0_30])])).
% 0.14/0.39  cnf(c_0_45, plain, (v1_xboole_0(X1)|r1_tarski(X2,X3)|~r3_orders_2(k2_yellow_1(X1),X2,X3)|~m1_subset_1(X3,X1)|~m1_subset_1(X2,X1)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_40, c_0_20]), c_0_20])).
% 0.14/0.39  cnf(c_0_46, negated_conjecture, (r3_orders_2(k2_yellow_1(esk2_0),esk3_0,k10_lattice3(k2_yellow_1(esk2_0),esk4_0,esk3_0))|v2_struct_0(k2_yellow_1(esk2_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41, c_0_42]), c_0_31]), c_0_30])])).
% 0.14/0.39  cnf(c_0_47, negated_conjecture, (~v1_xboole_0(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.14/0.39  cnf(c_0_48, plain, (k10_lattice3(X1,X2,X3)=k10_lattice3(X1,X3,X2)|~v5_orders_2(X1)|~v1_lattice3(X1)|~l1_orders_2(X1)|~m1_subset_1(X2,u1_struct_0(X1))|~m1_subset_1(X3,u1_struct_0(X1))), inference(split_conjunct,[status(thm)],[c_0_43])).
% 0.14/0.39  fof(c_0_49, plain, ![X6, X7, X8]:(~r1_tarski(X6,X7)|~r1_tarski(X8,X7)|r1_tarski(k2_xboole_0(X6,X8),X7)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t8_xboole_1])])).
% 0.14/0.39  cnf(c_0_50, negated_conjecture, (r3_orders_2(k2_yellow_1(esk2_0),esk4_0,k10_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0))|v2_struct_0(k2_yellow_1(esk2_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44, c_0_42]), c_0_30]), c_0_31])])).
% 0.14/0.39  cnf(c_0_51, negated_conjecture, (v2_struct_0(k2_yellow_1(esk2_0))|r1_tarski(esk3_0,k10_lattice3(k2_yellow_1(esk2_0),esk4_0,esk3_0))|~m1_subset_1(k10_lattice3(k2_yellow_1(esk2_0),esk4_0,esk3_0),esk2_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45, c_0_46]), c_0_31])]), c_0_47])).
% 0.14/0.39  cnf(c_0_52, plain, (k10_lattice3(k2_yellow_1(X1),X2,X3)=k10_lattice3(k2_yellow_1(X1),X3,X2)|~v1_lattice3(k2_yellow_1(X1))|~m1_subset_1(X3,X1)|~m1_subset_1(X2,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48, c_0_20]), c_0_21]), c_0_22])])).
% 0.14/0.39  cnf(c_0_53, negated_conjecture, (~r1_tarski(k2_xboole_0(esk3_0,esk4_0),k10_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0))), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.14/0.39  cnf(c_0_54, plain, (r1_tarski(k2_xboole_0(X1,X3),X2)|~r1_tarski(X1,X2)|~r1_tarski(X3,X2)), inference(split_conjunct,[status(thm)],[c_0_49])).
% 0.14/0.39  cnf(c_0_55, negated_conjecture, (v2_struct_0(k2_yellow_1(esk2_0))|r1_tarski(esk4_0,k10_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0))|~m1_subset_1(k10_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0),esk2_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45, c_0_50]), c_0_30])]), c_0_47])).
% 0.14/0.39  cnf(c_0_56, negated_conjecture, (v2_struct_0(k2_yellow_1(esk2_0))|r1_tarski(esk3_0,k10_lattice3(k2_yellow_1(esk2_0),esk4_0,esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51, c_0_42]), c_0_31]), c_0_30])])).
% 0.14/0.39  cnf(c_0_57, negated_conjecture, (k10_lattice3(k2_yellow_1(esk2_0),X1,X2)=k10_lattice3(k2_yellow_1(esk2_0),X2,X1)|~m1_subset_1(X2,esk2_0)|~m1_subset_1(X1,esk2_0)), inference(spm,[status(thm)],[c_0_52, c_0_25])).
% 0.14/0.39  fof(c_0_58, plain, ![X26]:((~v2_struct_0(k2_yellow_1(X26))|v1_xboole_0(X26))&(v1_orders_2(k2_yellow_1(X26))|v1_xboole_0(X26))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc6_yellow_1])])])])).
% 0.14/0.39  cnf(c_0_59, negated_conjecture, (~r1_tarski(esk4_0,k10_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0))|~r1_tarski(esk3_0,k10_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0))), inference(spm,[status(thm)],[c_0_53, c_0_54])).
% 0.14/0.39  cnf(c_0_60, negated_conjecture, (v2_struct_0(k2_yellow_1(esk2_0))|r1_tarski(esk4_0,k10_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55, c_0_42]), c_0_30]), c_0_31])])).
% 0.14/0.39  cnf(c_0_61, negated_conjecture, (v2_struct_0(k2_yellow_1(esk2_0))|r1_tarski(esk3_0,k10_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_56, c_0_57]), c_0_31]), c_0_30])])).
% 0.14/0.39  cnf(c_0_62, plain, (v1_xboole_0(X1)|~v2_struct_0(k2_yellow_1(X1))), inference(split_conjunct,[status(thm)],[c_0_58])).
% 0.14/0.39  cnf(c_0_63, negated_conjecture, (v2_struct_0(k2_yellow_1(esk2_0))), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_59, c_0_60]), c_0_61])).
% 0.14/0.39  cnf(c_0_64, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_62, c_0_63]), c_0_47]), ['proof']).
% 0.14/0.39  # SZS output end CNFRefutation
% 0.14/0.39  # Proof object total steps             : 65
% 0.14/0.39  # Proof object clause steps            : 42
% 0.14/0.39  # Proof object formula steps           : 23
% 0.14/0.39  # Proof object conjectures             : 28
% 0.14/0.39  # Proof object clause conjectures      : 25
% 0.14/0.39  # Proof object formula conjectures     : 3
% 0.14/0.39  # Proof object initial clauses used    : 16
% 0.14/0.39  # Proof object initial formulas used   : 11
% 0.14/0.39  # Proof object generating inferences   : 22
% 0.14/0.39  # Proof object simplifying inferences  : 44
% 0.14/0.39  # Training examples: 0 positive, 0 negative
% 0.14/0.39  # Parsed axioms                        : 11
% 0.14/0.39  # Removed by relevancy pruning/SinE    : 0
% 0.14/0.39  # Initial clauses                      : 29
% 0.14/0.39  # Removed in clause preprocessing      : 1
% 0.14/0.39  # Initial clauses in saturation        : 28
% 0.14/0.39  # Processed clauses                    : 139
% 0.14/0.39  # ...of these trivial                  : 2
% 0.14/0.39  # ...subsumed                          : 29
% 0.14/0.39  # ...remaining for further processing  : 108
% 0.14/0.39  # Other redundant clauses eliminated   : 3
% 0.14/0.39  # Clauses deleted for lack of memory   : 0
% 0.14/0.39  # Backward-subsumed                    : 6
% 0.14/0.39  # Backward-rewritten                   : 32
% 0.14/0.39  # Generated clauses                    : 141
% 0.14/0.39  # ...of the previous two non-trivial   : 140
% 0.14/0.39  # Contextual simplify-reflections      : 4
% 0.14/0.39  # Paramodulations                      : 138
% 0.14/0.39  # Factorizations                       : 0
% 0.14/0.39  # Equation resolutions                 : 3
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
% 0.14/0.39  # Current number of processed clauses  : 41
% 0.14/0.39  #    Positive orientable unit clauses  : 10
% 0.14/0.39  #    Positive unorientable unit clauses: 0
% 0.14/0.39  #    Negative unit clauses             : 2
% 0.14/0.39  #    Non-unit-clauses                  : 29
% 0.14/0.39  # Current number of unprocessed clauses: 51
% 0.14/0.39  # ...number of literals in the above   : 289
% 0.14/0.39  # Current number of archived formulas  : 0
% 0.14/0.39  # Current number of archived clauses   : 65
% 0.14/0.39  # Clause-clause subsumption calls (NU) : 938
% 0.14/0.39  # Rec. Clause-clause subsumption calls : 468
% 0.14/0.39  # Non-unit clause-clause subsumptions  : 39
% 0.14/0.39  # Unit Clause-clause subsumption calls : 0
% 0.14/0.39  # Rewrite failures with RHS unbound    : 0
% 0.14/0.39  # BW rewrite match attempts            : 2
% 0.14/0.39  # BW rewrite match successes           : 2
% 0.14/0.39  # Condensation attempts                : 0
% 0.14/0.39  # Condensation successes               : 0
% 0.14/0.39  # Termbank termtop insertions          : 6942
% 0.14/0.39  
% 0.14/0.39  # -------------------------------------------------
% 0.14/0.39  # User time                : 0.038 s
% 0.14/0.39  # System time              : 0.004 s
% 0.14/0.39  # Total time               : 0.043 s
% 0.14/0.39  # Maximum resident set size: 1588 pages
%------------------------------------------------------------------------------
