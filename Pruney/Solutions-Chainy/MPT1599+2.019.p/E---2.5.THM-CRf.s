%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n012.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:15:45 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   68 ( 313 expanded)
%              Number of clauses        :   43 ( 124 expanded)
%              Number of leaves         :   12 (  84 expanded)
%              Depth                    :   13
%              Number of atoms          :  316 (1131 expanded)
%              Number of equality atoms :   21 ( 167 expanded)
%              Maximal formula depth    :   22 (   5 average)
%              Maximal clause size      :   67 (   3 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(redefinition_r3_orders_2,axiom,(
    ! [X1,X2,X3] :
      ( ( ~ v2_struct_0(X1)
        & v3_orders_2(X1)
        & l1_orders_2(X1)
        & m1_subset_1(X2,u1_struct_0(X1))
        & m1_subset_1(X3,u1_struct_0(X1)) )
     => ( r3_orders_2(X1,X2,X3)
      <=> r1_orders_2(X1,X2,X3) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_r3_orders_2)).

fof(t1_yellow_1,axiom,(
    ! [X1] :
      ( u1_struct_0(k2_yellow_1(X1)) = X1
      & u1_orders_2(k2_yellow_1(X1)) = k1_yellow_1(X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t1_yellow_1)).

fof(dt_k2_yellow_1,axiom,(
    ! [X1] :
      ( v1_orders_2(k2_yellow_1(X1))
      & l1_orders_2(k2_yellow_1(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k2_yellow_1)).

fof(fc5_yellow_1,axiom,(
    ! [X1] :
      ( v1_orders_2(k2_yellow_1(X1))
      & v3_orders_2(k2_yellow_1(X1))
      & v4_orders_2(k2_yellow_1(X1))
      & v5_orders_2(k2_yellow_1(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc5_yellow_1)).

fof(t23_yellow_0,axiom,(
    ! [X1] :
      ( ( v5_orders_2(X1)
        & v2_lattice3(X1)
        & l1_orders_2(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,u1_struct_0(X1))
         => ! [X3] :
              ( m1_subset_1(X3,u1_struct_0(X1))
             => ! [X4] :
                  ( m1_subset_1(X4,u1_struct_0(X1))
                 => ( X4 = k12_lattice3(X1,X2,X3)
                  <=> ( r1_orders_2(X1,X4,X2)
                      & r1_orders_2(X1,X4,X3)
                      & ! [X5] :
                          ( m1_subset_1(X5,u1_struct_0(X1))
                         => ( ( r1_orders_2(X1,X5,X2)
                              & r1_orders_2(X1,X5,X3) )
                           => r1_orders_2(X1,X5,X4) ) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t23_yellow_0)).

fof(dt_k12_lattice3,axiom,(
    ! [X1,X2,X3] :
      ( ( v5_orders_2(X1)
        & v2_lattice3(X1)
        & l1_orders_2(X1)
        & m1_subset_1(X2,u1_struct_0(X1))
        & m1_subset_1(X3,u1_struct_0(X1)) )
     => m1_subset_1(k12_lattice3(X1,X2,X3),u1_struct_0(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k12_lattice3)).

fof(t7_yellow_1,conjecture,(
    ! [X1] :
      ( ~ v1_xboole_0(X1)
     => ( v2_lattice3(k2_yellow_1(X1))
       => ! [X2] :
            ( m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1)))
           => ! [X3] :
                ( m1_subset_1(X3,u1_struct_0(k2_yellow_1(X1)))
               => r1_tarski(k11_lattice3(k2_yellow_1(X1),X2,X3),k3_xboole_0(X2,X3)) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_yellow_1)).

fof(t12_setfam_1,axiom,(
    ! [X1,X2] : k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t12_setfam_1)).

fof(t19_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( ( r1_tarski(X1,X2)
        & r1_tarski(X1,X3) )
     => r1_tarski(X1,k3_xboole_0(X2,X3)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t19_xboole_1)).

fof(t3_yellow_1,axiom,(
    ! [X1] :
      ( ~ v1_xboole_0(X1)
     => ! [X2] :
          ( m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1)))
         => ! [X3] :
              ( m1_subset_1(X3,u1_struct_0(k2_yellow_1(X1)))
             => ( r3_orders_2(k2_yellow_1(X1),X2,X3)
              <=> r1_tarski(X2,X3) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_yellow_1)).

fof(redefinition_k12_lattice3,axiom,(
    ! [X1,X2,X3] :
      ( ( v5_orders_2(X1)
        & v2_lattice3(X1)
        & l1_orders_2(X1)
        & m1_subset_1(X2,u1_struct_0(X1))
        & m1_subset_1(X3,u1_struct_0(X1)) )
     => k12_lattice3(X1,X2,X3) = k11_lattice3(X1,X2,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k12_lattice3)).

fof(fc6_yellow_1,axiom,(
    ! [X1] :
      ( ~ v1_xboole_0(X1)
     => ( ~ v2_struct_0(k2_yellow_1(X1))
        & v1_orders_2(k2_yellow_1(X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc6_yellow_1)).

fof(c_0_12,plain,(
    ! [X11,X12,X13] :
      ( ( ~ r3_orders_2(X11,X12,X13)
        | r1_orders_2(X11,X12,X13)
        | v2_struct_0(X11)
        | ~ v3_orders_2(X11)
        | ~ l1_orders_2(X11)
        | ~ m1_subset_1(X12,u1_struct_0(X11))
        | ~ m1_subset_1(X13,u1_struct_0(X11)) )
      & ( ~ r1_orders_2(X11,X12,X13)
        | r3_orders_2(X11,X12,X13)
        | v2_struct_0(X11)
        | ~ v3_orders_2(X11)
        | ~ l1_orders_2(X11)
        | ~ m1_subset_1(X12,u1_struct_0(X11))
        | ~ m1_subset_1(X13,u1_struct_0(X11)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[redefinition_r3_orders_2])])])])).

fof(c_0_13,plain,(
    ! [X29] :
      ( u1_struct_0(k2_yellow_1(X29)) = X29
      & u1_orders_2(k2_yellow_1(X29)) = k1_yellow_1(X29) ) ),
    inference(variable_rename,[status(thm)],[t1_yellow_1])).

fof(c_0_14,plain,(
    ! [X26] :
      ( v1_orders_2(k2_yellow_1(X26))
      & l1_orders_2(k2_yellow_1(X26)) ) ),
    inference(variable_rename,[status(thm)],[dt_k2_yellow_1])).

fof(c_0_15,plain,(
    ! [X27] :
      ( v1_orders_2(k2_yellow_1(X27))
      & v3_orders_2(k2_yellow_1(X27))
      & v4_orders_2(k2_yellow_1(X27))
      & v5_orders_2(k2_yellow_1(X27)) ) ),
    inference(variable_rename,[status(thm)],[fc5_yellow_1])).

fof(c_0_16,plain,(
    ! [X20,X21,X22,X23,X24] :
      ( ( r1_orders_2(X20,X23,X21)
        | X23 != k12_lattice3(X20,X21,X22)
        | ~ m1_subset_1(X23,u1_struct_0(X20))
        | ~ m1_subset_1(X22,u1_struct_0(X20))
        | ~ m1_subset_1(X21,u1_struct_0(X20))
        | ~ v5_orders_2(X20)
        | ~ v2_lattice3(X20)
        | ~ l1_orders_2(X20) )
      & ( r1_orders_2(X20,X23,X22)
        | X23 != k12_lattice3(X20,X21,X22)
        | ~ m1_subset_1(X23,u1_struct_0(X20))
        | ~ m1_subset_1(X22,u1_struct_0(X20))
        | ~ m1_subset_1(X21,u1_struct_0(X20))
        | ~ v5_orders_2(X20)
        | ~ v2_lattice3(X20)
        | ~ l1_orders_2(X20) )
      & ( ~ m1_subset_1(X24,u1_struct_0(X20))
        | ~ r1_orders_2(X20,X24,X21)
        | ~ r1_orders_2(X20,X24,X22)
        | r1_orders_2(X20,X24,X23)
        | X23 != k12_lattice3(X20,X21,X22)
        | ~ m1_subset_1(X23,u1_struct_0(X20))
        | ~ m1_subset_1(X22,u1_struct_0(X20))
        | ~ m1_subset_1(X21,u1_struct_0(X20))
        | ~ v5_orders_2(X20)
        | ~ v2_lattice3(X20)
        | ~ l1_orders_2(X20) )
      & ( m1_subset_1(esk1_4(X20,X21,X22,X23),u1_struct_0(X20))
        | ~ r1_orders_2(X20,X23,X21)
        | ~ r1_orders_2(X20,X23,X22)
        | X23 = k12_lattice3(X20,X21,X22)
        | ~ m1_subset_1(X23,u1_struct_0(X20))
        | ~ m1_subset_1(X22,u1_struct_0(X20))
        | ~ m1_subset_1(X21,u1_struct_0(X20))
        | ~ v5_orders_2(X20)
        | ~ v2_lattice3(X20)
        | ~ l1_orders_2(X20) )
      & ( r1_orders_2(X20,esk1_4(X20,X21,X22,X23),X21)
        | ~ r1_orders_2(X20,X23,X21)
        | ~ r1_orders_2(X20,X23,X22)
        | X23 = k12_lattice3(X20,X21,X22)
        | ~ m1_subset_1(X23,u1_struct_0(X20))
        | ~ m1_subset_1(X22,u1_struct_0(X20))
        | ~ m1_subset_1(X21,u1_struct_0(X20))
        | ~ v5_orders_2(X20)
        | ~ v2_lattice3(X20)
        | ~ l1_orders_2(X20) )
      & ( r1_orders_2(X20,esk1_4(X20,X21,X22,X23),X22)
        | ~ r1_orders_2(X20,X23,X21)
        | ~ r1_orders_2(X20,X23,X22)
        | X23 = k12_lattice3(X20,X21,X22)
        | ~ m1_subset_1(X23,u1_struct_0(X20))
        | ~ m1_subset_1(X22,u1_struct_0(X20))
        | ~ m1_subset_1(X21,u1_struct_0(X20))
        | ~ v5_orders_2(X20)
        | ~ v2_lattice3(X20)
        | ~ l1_orders_2(X20) )
      & ( ~ r1_orders_2(X20,esk1_4(X20,X21,X22,X23),X23)
        | ~ r1_orders_2(X20,X23,X21)
        | ~ r1_orders_2(X20,X23,X22)
        | X23 = k12_lattice3(X20,X21,X22)
        | ~ m1_subset_1(X23,u1_struct_0(X20))
        | ~ m1_subset_1(X22,u1_struct_0(X20))
        | ~ m1_subset_1(X21,u1_struct_0(X20))
        | ~ v5_orders_2(X20)
        | ~ v2_lattice3(X20)
        | ~ l1_orders_2(X20) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t23_yellow_0])])])])])).

fof(c_0_17,plain,(
    ! [X14,X15,X16] :
      ( ~ v5_orders_2(X14)
      | ~ v2_lattice3(X14)
      | ~ l1_orders_2(X14)
      | ~ m1_subset_1(X15,u1_struct_0(X14))
      | ~ m1_subset_1(X16,u1_struct_0(X14))
      | m1_subset_1(k12_lattice3(X14,X15,X16),u1_struct_0(X14)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k12_lattice3])])).

cnf(c_0_18,plain,
    ( r3_orders_2(X1,X2,X3)
    | v2_struct_0(X1)
    | ~ r1_orders_2(X1,X2,X3)
    | ~ v3_orders_2(X1)
    | ~ l1_orders_2(X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ m1_subset_1(X3,u1_struct_0(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_19,plain,
    ( u1_struct_0(k2_yellow_1(X1)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_20,plain,
    ( l1_orders_2(k2_yellow_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_21,plain,
    ( v3_orders_2(k2_yellow_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_22,plain,
    ( r1_orders_2(X1,X2,X3)
    | X2 != k12_lattice3(X1,X4,X3)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ m1_subset_1(X4,u1_struct_0(X1))
    | ~ v5_orders_2(X1)
    | ~ v2_lattice3(X1)
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_23,plain,
    ( m1_subset_1(k12_lattice3(X1,X2,X3),u1_struct_0(X1))
    | ~ v5_orders_2(X1)
    | ~ v2_lattice3(X1)
    | ~ l1_orders_2(X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ m1_subset_1(X3,u1_struct_0(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_24,plain,
    ( v5_orders_2(k2_yellow_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

fof(c_0_25,negated_conjecture,(
    ~ ! [X1] :
        ( ~ v1_xboole_0(X1)
       => ( v2_lattice3(k2_yellow_1(X1))
         => ! [X2] :
              ( m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1)))
             => ! [X3] :
                  ( m1_subset_1(X3,u1_struct_0(k2_yellow_1(X1)))
                 => r1_tarski(k11_lattice3(k2_yellow_1(X1),X2,X3),k3_xboole_0(X2,X3)) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t7_yellow_1])).

cnf(c_0_26,plain,
    ( r3_orders_2(k2_yellow_1(X1),X2,X3)
    | v2_struct_0(k2_yellow_1(X1))
    | ~ r1_orders_2(k2_yellow_1(X1),X2,X3)
    | ~ m1_subset_1(X3,X1)
    | ~ m1_subset_1(X2,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_18,c_0_19]),c_0_20]),c_0_21])])).

cnf(c_0_27,plain,
    ( r1_orders_2(X1,k12_lattice3(X1,X2,X3),X3)
    | ~ v2_lattice3(X1)
    | ~ v5_orders_2(X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(csr,[status(thm)],[inference(er,[status(thm)],[c_0_22]),c_0_23])).

cnf(c_0_28,plain,
    ( m1_subset_1(k12_lattice3(k2_yellow_1(X1),X2,X3),X1)
    | ~ v2_lattice3(k2_yellow_1(X1))
    | ~ m1_subset_1(X3,X1)
    | ~ m1_subset_1(X2,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_23,c_0_19]),c_0_24]),c_0_20])])).

fof(c_0_29,negated_conjecture,
    ( ~ v1_xboole_0(esk2_0)
    & v2_lattice3(k2_yellow_1(esk2_0))
    & m1_subset_1(esk3_0,u1_struct_0(k2_yellow_1(esk2_0)))
    & m1_subset_1(esk4_0,u1_struct_0(k2_yellow_1(esk2_0)))
    & ~ r1_tarski(k11_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0),k3_xboole_0(esk3_0,esk4_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_25])])])])).

cnf(c_0_30,plain,
    ( r3_orders_2(k2_yellow_1(X1),k12_lattice3(k2_yellow_1(X1),X2,X3),X3)
    | v2_struct_0(k2_yellow_1(X1))
    | ~ v2_lattice3(k2_yellow_1(X1))
    | ~ m1_subset_1(X3,X1)
    | ~ m1_subset_1(X2,X1) ),
    inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26,c_0_27]),c_0_24]),c_0_19]),c_0_19]),c_0_20])]),c_0_28])).

cnf(c_0_31,negated_conjecture,
    ( v2_lattice3(k2_yellow_1(esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_32,negated_conjecture,
    ( m1_subset_1(esk4_0,u1_struct_0(k2_yellow_1(esk2_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_33,plain,
    ( r1_orders_2(X1,X2,X3)
    | X2 != k12_lattice3(X1,X3,X4)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ m1_subset_1(X4,u1_struct_0(X1))
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ v5_orders_2(X1)
    | ~ v2_lattice3(X1)
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

fof(c_0_34,plain,(
    ! [X9,X10] : k1_setfam_1(k2_tarski(X9,X10)) = k3_xboole_0(X9,X10) ),
    inference(variable_rename,[status(thm)],[t12_setfam_1])).

fof(c_0_35,plain,(
    ! [X6,X7,X8] :
      ( ~ r1_tarski(X6,X7)
      | ~ r1_tarski(X6,X8)
      | r1_tarski(X6,k3_xboole_0(X7,X8)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t19_xboole_1])])).

fof(c_0_36,plain,(
    ! [X30,X31,X32] :
      ( ( ~ r3_orders_2(k2_yellow_1(X30),X31,X32)
        | r1_tarski(X31,X32)
        | ~ m1_subset_1(X32,u1_struct_0(k2_yellow_1(X30)))
        | ~ m1_subset_1(X31,u1_struct_0(k2_yellow_1(X30)))
        | v1_xboole_0(X30) )
      & ( ~ r1_tarski(X31,X32)
        | r3_orders_2(k2_yellow_1(X30),X31,X32)
        | ~ m1_subset_1(X32,u1_struct_0(k2_yellow_1(X30)))
        | ~ m1_subset_1(X31,u1_struct_0(k2_yellow_1(X30)))
        | v1_xboole_0(X30) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t3_yellow_1])])])])])).

cnf(c_0_37,negated_conjecture,
    ( r3_orders_2(k2_yellow_1(esk2_0),k12_lattice3(k2_yellow_1(esk2_0),X1,X2),X2)
    | v2_struct_0(k2_yellow_1(esk2_0))
    | ~ m1_subset_1(X2,esk2_0)
    | ~ m1_subset_1(X1,esk2_0) ),
    inference(spm,[status(thm)],[c_0_30,c_0_31])).

cnf(c_0_38,negated_conjecture,
    ( m1_subset_1(esk4_0,esk2_0) ),
    inference(rw,[status(thm)],[c_0_32,c_0_19])).

cnf(c_0_39,negated_conjecture,
    ( m1_subset_1(esk3_0,u1_struct_0(k2_yellow_1(esk2_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_40,plain,
    ( r1_orders_2(X1,k12_lattice3(X1,X2,X3),X2)
    | ~ v2_lattice3(X1)
    | ~ v5_orders_2(X1)
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(csr,[status(thm)],[inference(er,[status(thm)],[c_0_33]),c_0_23])).

cnf(c_0_41,negated_conjecture,
    ( ~ r1_tarski(k11_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0),k3_xboole_0(esk3_0,esk4_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_42,plain,
    ( k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_43,plain,
    ( r1_tarski(X1,k3_xboole_0(X2,X3))
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X1,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

cnf(c_0_44,plain,
    ( r1_tarski(X2,X3)
    | v1_xboole_0(X1)
    | ~ r3_orders_2(k2_yellow_1(X1),X2,X3)
    | ~ m1_subset_1(X3,u1_struct_0(k2_yellow_1(X1)))
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

cnf(c_0_45,negated_conjecture,
    ( r3_orders_2(k2_yellow_1(esk2_0),k12_lattice3(k2_yellow_1(esk2_0),X1,esk4_0),esk4_0)
    | v2_struct_0(k2_yellow_1(esk2_0))
    | ~ m1_subset_1(X1,esk2_0) ),
    inference(spm,[status(thm)],[c_0_37,c_0_38])).

cnf(c_0_46,negated_conjecture,
    ( m1_subset_1(esk3_0,esk2_0) ),
    inference(rw,[status(thm)],[c_0_39,c_0_19])).

cnf(c_0_47,plain,
    ( r3_orders_2(k2_yellow_1(X1),k12_lattice3(k2_yellow_1(X1),X2,X3),X2)
    | v2_struct_0(k2_yellow_1(X1))
    | ~ v2_lattice3(k2_yellow_1(X1))
    | ~ m1_subset_1(X2,X1)
    | ~ m1_subset_1(X3,X1) ),
    inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26,c_0_40]),c_0_24]),c_0_19]),c_0_19]),c_0_20])]),c_0_28])).

cnf(c_0_48,negated_conjecture,
    ( ~ r1_tarski(k11_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0),k1_setfam_1(k2_tarski(esk3_0,esk4_0))) ),
    inference(rw,[status(thm)],[c_0_41,c_0_42])).

cnf(c_0_49,plain,
    ( r1_tarski(X1,k1_setfam_1(k2_tarski(X2,X3)))
    | ~ r1_tarski(X1,X3)
    | ~ r1_tarski(X1,X2) ),
    inference(rw,[status(thm)],[c_0_43,c_0_42])).

fof(c_0_50,plain,(
    ! [X17,X18,X19] :
      ( ~ v5_orders_2(X17)
      | ~ v2_lattice3(X17)
      | ~ l1_orders_2(X17)
      | ~ m1_subset_1(X18,u1_struct_0(X17))
      | ~ m1_subset_1(X19,u1_struct_0(X17))
      | k12_lattice3(X17,X18,X19) = k11_lattice3(X17,X18,X19) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k12_lattice3])])).

cnf(c_0_51,plain,
    ( v1_xboole_0(X1)
    | r1_tarski(X2,X3)
    | ~ r3_orders_2(k2_yellow_1(X1),X2,X3)
    | ~ m1_subset_1(X3,X1)
    | ~ m1_subset_1(X2,X1) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_44,c_0_19]),c_0_19])).

cnf(c_0_52,negated_conjecture,
    ( r3_orders_2(k2_yellow_1(esk2_0),k12_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0),esk4_0)
    | v2_struct_0(k2_yellow_1(esk2_0)) ),
    inference(spm,[status(thm)],[c_0_45,c_0_46])).

cnf(c_0_53,negated_conjecture,
    ( ~ v1_xboole_0(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_54,negated_conjecture,
    ( r3_orders_2(k2_yellow_1(esk2_0),k12_lattice3(k2_yellow_1(esk2_0),X1,X2),X1)
    | v2_struct_0(k2_yellow_1(esk2_0))
    | ~ m1_subset_1(X1,esk2_0)
    | ~ m1_subset_1(X2,esk2_0) ),
    inference(spm,[status(thm)],[c_0_47,c_0_31])).

cnf(c_0_55,negated_conjecture,
    ( ~ r1_tarski(k11_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0),esk4_0)
    | ~ r1_tarski(k11_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0),esk3_0) ),
    inference(spm,[status(thm)],[c_0_48,c_0_49])).

cnf(c_0_56,plain,
    ( k12_lattice3(X1,X2,X3) = k11_lattice3(X1,X2,X3)
    | ~ v5_orders_2(X1)
    | ~ v2_lattice3(X1)
    | ~ l1_orders_2(X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ m1_subset_1(X3,u1_struct_0(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_50])).

cnf(c_0_57,negated_conjecture,
    ( v2_struct_0(k2_yellow_1(esk2_0))
    | r1_tarski(k12_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0),esk4_0)
    | ~ m1_subset_1(k12_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0),esk2_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51,c_0_52]),c_0_38])]),c_0_53])).

cnf(c_0_58,negated_conjecture,
    ( r3_orders_2(k2_yellow_1(esk2_0),k12_lattice3(k2_yellow_1(esk2_0),esk3_0,X1),esk3_0)
    | v2_struct_0(k2_yellow_1(esk2_0))
    | ~ m1_subset_1(X1,esk2_0) ),
    inference(spm,[status(thm)],[c_0_54,c_0_46])).

cnf(c_0_59,negated_conjecture,
    ( ~ r1_tarski(k12_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0),esk4_0)
    | ~ r1_tarski(k12_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0),esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55,c_0_56]),c_0_31]),c_0_24]),c_0_19]),c_0_38]),c_0_19]),c_0_46]),c_0_20])])).

cnf(c_0_60,negated_conjecture,
    ( v2_struct_0(k2_yellow_1(esk2_0))
    | r1_tarski(k12_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0),esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57,c_0_28]),c_0_31]),c_0_38]),c_0_46])])).

cnf(c_0_61,negated_conjecture,
    ( r3_orders_2(k2_yellow_1(esk2_0),k12_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0),esk3_0)
    | v2_struct_0(k2_yellow_1(esk2_0)) ),
    inference(spm,[status(thm)],[c_0_58,c_0_38])).

cnf(c_0_62,negated_conjecture,
    ( v2_struct_0(k2_yellow_1(esk2_0))
    | ~ r1_tarski(k12_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0),esk3_0) ),
    inference(spm,[status(thm)],[c_0_59,c_0_60])).

fof(c_0_63,plain,(
    ! [X28] :
      ( ( ~ v2_struct_0(k2_yellow_1(X28))
        | v1_xboole_0(X28) )
      & ( v1_orders_2(k2_yellow_1(X28))
        | v1_xboole_0(X28) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc6_yellow_1])])])])).

cnf(c_0_64,negated_conjecture,
    ( v2_struct_0(k2_yellow_1(esk2_0))
    | ~ m1_subset_1(k12_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0),esk2_0) ),
    inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51,c_0_61]),c_0_46])]),c_0_53]),c_0_62])).

cnf(c_0_65,plain,
    ( v1_xboole_0(X1)
    | ~ v2_struct_0(k2_yellow_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_63])).

cnf(c_0_66,negated_conjecture,
    ( v2_struct_0(k2_yellow_1(esk2_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_64,c_0_28]),c_0_31]),c_0_38]),c_0_46])])).

cnf(c_0_67,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_65,c_0_66]),c_0_53]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n012.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 15:44:22 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.19/0.40  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.19/0.40  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.19/0.40  #
% 0.19/0.40  # Preprocessing time       : 0.040 s
% 0.19/0.40  # Presaturation interreduction done
% 0.19/0.40  
% 0.19/0.40  # Proof found!
% 0.19/0.40  # SZS status Theorem
% 0.19/0.40  # SZS output start CNFRefutation
% 0.19/0.40  fof(redefinition_r3_orders_2, axiom, ![X1, X2, X3]:(((((~(v2_struct_0(X1))&v3_orders_2(X1))&l1_orders_2(X1))&m1_subset_1(X2,u1_struct_0(X1)))&m1_subset_1(X3,u1_struct_0(X1)))=>(r3_orders_2(X1,X2,X3)<=>r1_orders_2(X1,X2,X3))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_r3_orders_2)).
% 0.19/0.40  fof(t1_yellow_1, axiom, ![X1]:(u1_struct_0(k2_yellow_1(X1))=X1&u1_orders_2(k2_yellow_1(X1))=k1_yellow_1(X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t1_yellow_1)).
% 0.19/0.40  fof(dt_k2_yellow_1, axiom, ![X1]:(v1_orders_2(k2_yellow_1(X1))&l1_orders_2(k2_yellow_1(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k2_yellow_1)).
% 0.19/0.40  fof(fc5_yellow_1, axiom, ![X1]:(((v1_orders_2(k2_yellow_1(X1))&v3_orders_2(k2_yellow_1(X1)))&v4_orders_2(k2_yellow_1(X1)))&v5_orders_2(k2_yellow_1(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc5_yellow_1)).
% 0.19/0.40  fof(t23_yellow_0, axiom, ![X1]:(((v5_orders_2(X1)&v2_lattice3(X1))&l1_orders_2(X1))=>![X2]:(m1_subset_1(X2,u1_struct_0(X1))=>![X3]:(m1_subset_1(X3,u1_struct_0(X1))=>![X4]:(m1_subset_1(X4,u1_struct_0(X1))=>(X4=k12_lattice3(X1,X2,X3)<=>((r1_orders_2(X1,X4,X2)&r1_orders_2(X1,X4,X3))&![X5]:(m1_subset_1(X5,u1_struct_0(X1))=>((r1_orders_2(X1,X5,X2)&r1_orders_2(X1,X5,X3))=>r1_orders_2(X1,X5,X4))))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t23_yellow_0)).
% 0.19/0.40  fof(dt_k12_lattice3, axiom, ![X1, X2, X3]:(((((v5_orders_2(X1)&v2_lattice3(X1))&l1_orders_2(X1))&m1_subset_1(X2,u1_struct_0(X1)))&m1_subset_1(X3,u1_struct_0(X1)))=>m1_subset_1(k12_lattice3(X1,X2,X3),u1_struct_0(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k12_lattice3)).
% 0.19/0.40  fof(t7_yellow_1, conjecture, ![X1]:(~(v1_xboole_0(X1))=>(v2_lattice3(k2_yellow_1(X1))=>![X2]:(m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1)))=>![X3]:(m1_subset_1(X3,u1_struct_0(k2_yellow_1(X1)))=>r1_tarski(k11_lattice3(k2_yellow_1(X1),X2,X3),k3_xboole_0(X2,X3)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t7_yellow_1)).
% 0.19/0.40  fof(t12_setfam_1, axiom, ![X1, X2]:k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t12_setfam_1)).
% 0.19/0.40  fof(t19_xboole_1, axiom, ![X1, X2, X3]:((r1_tarski(X1,X2)&r1_tarski(X1,X3))=>r1_tarski(X1,k3_xboole_0(X2,X3))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t19_xboole_1)).
% 0.19/0.40  fof(t3_yellow_1, axiom, ![X1]:(~(v1_xboole_0(X1))=>![X2]:(m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1)))=>![X3]:(m1_subset_1(X3,u1_struct_0(k2_yellow_1(X1)))=>(r3_orders_2(k2_yellow_1(X1),X2,X3)<=>r1_tarski(X2,X3))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t3_yellow_1)).
% 0.19/0.40  fof(redefinition_k12_lattice3, axiom, ![X1, X2, X3]:(((((v5_orders_2(X1)&v2_lattice3(X1))&l1_orders_2(X1))&m1_subset_1(X2,u1_struct_0(X1)))&m1_subset_1(X3,u1_struct_0(X1)))=>k12_lattice3(X1,X2,X3)=k11_lattice3(X1,X2,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k12_lattice3)).
% 0.19/0.40  fof(fc6_yellow_1, axiom, ![X1]:(~(v1_xboole_0(X1))=>(~(v2_struct_0(k2_yellow_1(X1)))&v1_orders_2(k2_yellow_1(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc6_yellow_1)).
% 0.19/0.40  fof(c_0_12, plain, ![X11, X12, X13]:((~r3_orders_2(X11,X12,X13)|r1_orders_2(X11,X12,X13)|(v2_struct_0(X11)|~v3_orders_2(X11)|~l1_orders_2(X11)|~m1_subset_1(X12,u1_struct_0(X11))|~m1_subset_1(X13,u1_struct_0(X11))))&(~r1_orders_2(X11,X12,X13)|r3_orders_2(X11,X12,X13)|(v2_struct_0(X11)|~v3_orders_2(X11)|~l1_orders_2(X11)|~m1_subset_1(X12,u1_struct_0(X11))|~m1_subset_1(X13,u1_struct_0(X11))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[redefinition_r3_orders_2])])])])).
% 0.19/0.40  fof(c_0_13, plain, ![X29]:(u1_struct_0(k2_yellow_1(X29))=X29&u1_orders_2(k2_yellow_1(X29))=k1_yellow_1(X29)), inference(variable_rename,[status(thm)],[t1_yellow_1])).
% 0.19/0.40  fof(c_0_14, plain, ![X26]:(v1_orders_2(k2_yellow_1(X26))&l1_orders_2(k2_yellow_1(X26))), inference(variable_rename,[status(thm)],[dt_k2_yellow_1])).
% 0.19/0.40  fof(c_0_15, plain, ![X27]:(((v1_orders_2(k2_yellow_1(X27))&v3_orders_2(k2_yellow_1(X27)))&v4_orders_2(k2_yellow_1(X27)))&v5_orders_2(k2_yellow_1(X27))), inference(variable_rename,[status(thm)],[fc5_yellow_1])).
% 0.19/0.40  fof(c_0_16, plain, ![X20, X21, X22, X23, X24]:((((r1_orders_2(X20,X23,X21)|X23!=k12_lattice3(X20,X21,X22)|~m1_subset_1(X23,u1_struct_0(X20))|~m1_subset_1(X22,u1_struct_0(X20))|~m1_subset_1(X21,u1_struct_0(X20))|(~v5_orders_2(X20)|~v2_lattice3(X20)|~l1_orders_2(X20)))&(r1_orders_2(X20,X23,X22)|X23!=k12_lattice3(X20,X21,X22)|~m1_subset_1(X23,u1_struct_0(X20))|~m1_subset_1(X22,u1_struct_0(X20))|~m1_subset_1(X21,u1_struct_0(X20))|(~v5_orders_2(X20)|~v2_lattice3(X20)|~l1_orders_2(X20))))&(~m1_subset_1(X24,u1_struct_0(X20))|(~r1_orders_2(X20,X24,X21)|~r1_orders_2(X20,X24,X22)|r1_orders_2(X20,X24,X23))|X23!=k12_lattice3(X20,X21,X22)|~m1_subset_1(X23,u1_struct_0(X20))|~m1_subset_1(X22,u1_struct_0(X20))|~m1_subset_1(X21,u1_struct_0(X20))|(~v5_orders_2(X20)|~v2_lattice3(X20)|~l1_orders_2(X20))))&((m1_subset_1(esk1_4(X20,X21,X22,X23),u1_struct_0(X20))|(~r1_orders_2(X20,X23,X21)|~r1_orders_2(X20,X23,X22))|X23=k12_lattice3(X20,X21,X22)|~m1_subset_1(X23,u1_struct_0(X20))|~m1_subset_1(X22,u1_struct_0(X20))|~m1_subset_1(X21,u1_struct_0(X20))|(~v5_orders_2(X20)|~v2_lattice3(X20)|~l1_orders_2(X20)))&(((r1_orders_2(X20,esk1_4(X20,X21,X22,X23),X21)|(~r1_orders_2(X20,X23,X21)|~r1_orders_2(X20,X23,X22))|X23=k12_lattice3(X20,X21,X22)|~m1_subset_1(X23,u1_struct_0(X20))|~m1_subset_1(X22,u1_struct_0(X20))|~m1_subset_1(X21,u1_struct_0(X20))|(~v5_orders_2(X20)|~v2_lattice3(X20)|~l1_orders_2(X20)))&(r1_orders_2(X20,esk1_4(X20,X21,X22,X23),X22)|(~r1_orders_2(X20,X23,X21)|~r1_orders_2(X20,X23,X22))|X23=k12_lattice3(X20,X21,X22)|~m1_subset_1(X23,u1_struct_0(X20))|~m1_subset_1(X22,u1_struct_0(X20))|~m1_subset_1(X21,u1_struct_0(X20))|(~v5_orders_2(X20)|~v2_lattice3(X20)|~l1_orders_2(X20))))&(~r1_orders_2(X20,esk1_4(X20,X21,X22,X23),X23)|(~r1_orders_2(X20,X23,X21)|~r1_orders_2(X20,X23,X22))|X23=k12_lattice3(X20,X21,X22)|~m1_subset_1(X23,u1_struct_0(X20))|~m1_subset_1(X22,u1_struct_0(X20))|~m1_subset_1(X21,u1_struct_0(X20))|(~v5_orders_2(X20)|~v2_lattice3(X20)|~l1_orders_2(X20)))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t23_yellow_0])])])])])).
% 0.19/0.40  fof(c_0_17, plain, ![X14, X15, X16]:(~v5_orders_2(X14)|~v2_lattice3(X14)|~l1_orders_2(X14)|~m1_subset_1(X15,u1_struct_0(X14))|~m1_subset_1(X16,u1_struct_0(X14))|m1_subset_1(k12_lattice3(X14,X15,X16),u1_struct_0(X14))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k12_lattice3])])).
% 0.19/0.40  cnf(c_0_18, plain, (r3_orders_2(X1,X2,X3)|v2_struct_0(X1)|~r1_orders_2(X1,X2,X3)|~v3_orders_2(X1)|~l1_orders_2(X1)|~m1_subset_1(X2,u1_struct_0(X1))|~m1_subset_1(X3,u1_struct_0(X1))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.19/0.40  cnf(c_0_19, plain, (u1_struct_0(k2_yellow_1(X1))=X1), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.19/0.40  cnf(c_0_20, plain, (l1_orders_2(k2_yellow_1(X1))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.19/0.40  cnf(c_0_21, plain, (v3_orders_2(k2_yellow_1(X1))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.40  cnf(c_0_22, plain, (r1_orders_2(X1,X2,X3)|X2!=k12_lattice3(X1,X4,X3)|~m1_subset_1(X2,u1_struct_0(X1))|~m1_subset_1(X3,u1_struct_0(X1))|~m1_subset_1(X4,u1_struct_0(X1))|~v5_orders_2(X1)|~v2_lattice3(X1)|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.19/0.40  cnf(c_0_23, plain, (m1_subset_1(k12_lattice3(X1,X2,X3),u1_struct_0(X1))|~v5_orders_2(X1)|~v2_lattice3(X1)|~l1_orders_2(X1)|~m1_subset_1(X2,u1_struct_0(X1))|~m1_subset_1(X3,u1_struct_0(X1))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.19/0.40  cnf(c_0_24, plain, (v5_orders_2(k2_yellow_1(X1))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.40  fof(c_0_25, negated_conjecture, ~(![X1]:(~(v1_xboole_0(X1))=>(v2_lattice3(k2_yellow_1(X1))=>![X2]:(m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1)))=>![X3]:(m1_subset_1(X3,u1_struct_0(k2_yellow_1(X1)))=>r1_tarski(k11_lattice3(k2_yellow_1(X1),X2,X3),k3_xboole_0(X2,X3))))))), inference(assume_negation,[status(cth)],[t7_yellow_1])).
% 0.19/0.40  cnf(c_0_26, plain, (r3_orders_2(k2_yellow_1(X1),X2,X3)|v2_struct_0(k2_yellow_1(X1))|~r1_orders_2(k2_yellow_1(X1),X2,X3)|~m1_subset_1(X3,X1)|~m1_subset_1(X2,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_18, c_0_19]), c_0_20]), c_0_21])])).
% 0.19/0.40  cnf(c_0_27, plain, (r1_orders_2(X1,k12_lattice3(X1,X2,X3),X3)|~v2_lattice3(X1)|~v5_orders_2(X1)|~m1_subset_1(X2,u1_struct_0(X1))|~m1_subset_1(X3,u1_struct_0(X1))|~l1_orders_2(X1)), inference(csr,[status(thm)],[inference(er,[status(thm)],[c_0_22]), c_0_23])).
% 0.19/0.40  cnf(c_0_28, plain, (m1_subset_1(k12_lattice3(k2_yellow_1(X1),X2,X3),X1)|~v2_lattice3(k2_yellow_1(X1))|~m1_subset_1(X3,X1)|~m1_subset_1(X2,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_23, c_0_19]), c_0_24]), c_0_20])])).
% 0.19/0.40  fof(c_0_29, negated_conjecture, (~v1_xboole_0(esk2_0)&(v2_lattice3(k2_yellow_1(esk2_0))&(m1_subset_1(esk3_0,u1_struct_0(k2_yellow_1(esk2_0)))&(m1_subset_1(esk4_0,u1_struct_0(k2_yellow_1(esk2_0)))&~r1_tarski(k11_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0),k3_xboole_0(esk3_0,esk4_0)))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_25])])])])).
% 0.19/0.40  cnf(c_0_30, plain, (r3_orders_2(k2_yellow_1(X1),k12_lattice3(k2_yellow_1(X1),X2,X3),X3)|v2_struct_0(k2_yellow_1(X1))|~v2_lattice3(k2_yellow_1(X1))|~m1_subset_1(X3,X1)|~m1_subset_1(X2,X1)), inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26, c_0_27]), c_0_24]), c_0_19]), c_0_19]), c_0_20])]), c_0_28])).
% 0.19/0.40  cnf(c_0_31, negated_conjecture, (v2_lattice3(k2_yellow_1(esk2_0))), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.19/0.40  cnf(c_0_32, negated_conjecture, (m1_subset_1(esk4_0,u1_struct_0(k2_yellow_1(esk2_0)))), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.19/0.40  cnf(c_0_33, plain, (r1_orders_2(X1,X2,X3)|X2!=k12_lattice3(X1,X3,X4)|~m1_subset_1(X2,u1_struct_0(X1))|~m1_subset_1(X4,u1_struct_0(X1))|~m1_subset_1(X3,u1_struct_0(X1))|~v5_orders_2(X1)|~v2_lattice3(X1)|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.19/0.40  fof(c_0_34, plain, ![X9, X10]:k1_setfam_1(k2_tarski(X9,X10))=k3_xboole_0(X9,X10), inference(variable_rename,[status(thm)],[t12_setfam_1])).
% 0.19/0.40  fof(c_0_35, plain, ![X6, X7, X8]:(~r1_tarski(X6,X7)|~r1_tarski(X6,X8)|r1_tarski(X6,k3_xboole_0(X7,X8))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t19_xboole_1])])).
% 0.19/0.40  fof(c_0_36, plain, ![X30, X31, X32]:((~r3_orders_2(k2_yellow_1(X30),X31,X32)|r1_tarski(X31,X32)|~m1_subset_1(X32,u1_struct_0(k2_yellow_1(X30)))|~m1_subset_1(X31,u1_struct_0(k2_yellow_1(X30)))|v1_xboole_0(X30))&(~r1_tarski(X31,X32)|r3_orders_2(k2_yellow_1(X30),X31,X32)|~m1_subset_1(X32,u1_struct_0(k2_yellow_1(X30)))|~m1_subset_1(X31,u1_struct_0(k2_yellow_1(X30)))|v1_xboole_0(X30))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t3_yellow_1])])])])])).
% 0.19/0.40  cnf(c_0_37, negated_conjecture, (r3_orders_2(k2_yellow_1(esk2_0),k12_lattice3(k2_yellow_1(esk2_0),X1,X2),X2)|v2_struct_0(k2_yellow_1(esk2_0))|~m1_subset_1(X2,esk2_0)|~m1_subset_1(X1,esk2_0)), inference(spm,[status(thm)],[c_0_30, c_0_31])).
% 0.19/0.40  cnf(c_0_38, negated_conjecture, (m1_subset_1(esk4_0,esk2_0)), inference(rw,[status(thm)],[c_0_32, c_0_19])).
% 0.19/0.40  cnf(c_0_39, negated_conjecture, (m1_subset_1(esk3_0,u1_struct_0(k2_yellow_1(esk2_0)))), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.19/0.40  cnf(c_0_40, plain, (r1_orders_2(X1,k12_lattice3(X1,X2,X3),X2)|~v2_lattice3(X1)|~v5_orders_2(X1)|~m1_subset_1(X3,u1_struct_0(X1))|~m1_subset_1(X2,u1_struct_0(X1))|~l1_orders_2(X1)), inference(csr,[status(thm)],[inference(er,[status(thm)],[c_0_33]), c_0_23])).
% 0.19/0.40  cnf(c_0_41, negated_conjecture, (~r1_tarski(k11_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0),k3_xboole_0(esk3_0,esk4_0))), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.19/0.40  cnf(c_0_42, plain, (k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.19/0.40  cnf(c_0_43, plain, (r1_tarski(X1,k3_xboole_0(X2,X3))|~r1_tarski(X1,X2)|~r1_tarski(X1,X3)), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.19/0.40  cnf(c_0_44, plain, (r1_tarski(X2,X3)|v1_xboole_0(X1)|~r3_orders_2(k2_yellow_1(X1),X2,X3)|~m1_subset_1(X3,u1_struct_0(k2_yellow_1(X1)))|~m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1)))), inference(split_conjunct,[status(thm)],[c_0_36])).
% 0.19/0.40  cnf(c_0_45, negated_conjecture, (r3_orders_2(k2_yellow_1(esk2_0),k12_lattice3(k2_yellow_1(esk2_0),X1,esk4_0),esk4_0)|v2_struct_0(k2_yellow_1(esk2_0))|~m1_subset_1(X1,esk2_0)), inference(spm,[status(thm)],[c_0_37, c_0_38])).
% 0.19/0.40  cnf(c_0_46, negated_conjecture, (m1_subset_1(esk3_0,esk2_0)), inference(rw,[status(thm)],[c_0_39, c_0_19])).
% 0.19/0.40  cnf(c_0_47, plain, (r3_orders_2(k2_yellow_1(X1),k12_lattice3(k2_yellow_1(X1),X2,X3),X2)|v2_struct_0(k2_yellow_1(X1))|~v2_lattice3(k2_yellow_1(X1))|~m1_subset_1(X2,X1)|~m1_subset_1(X3,X1)), inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26, c_0_40]), c_0_24]), c_0_19]), c_0_19]), c_0_20])]), c_0_28])).
% 0.19/0.40  cnf(c_0_48, negated_conjecture, (~r1_tarski(k11_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0),k1_setfam_1(k2_tarski(esk3_0,esk4_0)))), inference(rw,[status(thm)],[c_0_41, c_0_42])).
% 0.19/0.40  cnf(c_0_49, plain, (r1_tarski(X1,k1_setfam_1(k2_tarski(X2,X3)))|~r1_tarski(X1,X3)|~r1_tarski(X1,X2)), inference(rw,[status(thm)],[c_0_43, c_0_42])).
% 0.19/0.40  fof(c_0_50, plain, ![X17, X18, X19]:(~v5_orders_2(X17)|~v2_lattice3(X17)|~l1_orders_2(X17)|~m1_subset_1(X18,u1_struct_0(X17))|~m1_subset_1(X19,u1_struct_0(X17))|k12_lattice3(X17,X18,X19)=k11_lattice3(X17,X18,X19)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k12_lattice3])])).
% 0.19/0.40  cnf(c_0_51, plain, (v1_xboole_0(X1)|r1_tarski(X2,X3)|~r3_orders_2(k2_yellow_1(X1),X2,X3)|~m1_subset_1(X3,X1)|~m1_subset_1(X2,X1)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_44, c_0_19]), c_0_19])).
% 0.19/0.40  cnf(c_0_52, negated_conjecture, (r3_orders_2(k2_yellow_1(esk2_0),k12_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0),esk4_0)|v2_struct_0(k2_yellow_1(esk2_0))), inference(spm,[status(thm)],[c_0_45, c_0_46])).
% 0.19/0.40  cnf(c_0_53, negated_conjecture, (~v1_xboole_0(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.19/0.40  cnf(c_0_54, negated_conjecture, (r3_orders_2(k2_yellow_1(esk2_0),k12_lattice3(k2_yellow_1(esk2_0),X1,X2),X1)|v2_struct_0(k2_yellow_1(esk2_0))|~m1_subset_1(X1,esk2_0)|~m1_subset_1(X2,esk2_0)), inference(spm,[status(thm)],[c_0_47, c_0_31])).
% 0.19/0.40  cnf(c_0_55, negated_conjecture, (~r1_tarski(k11_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0),esk4_0)|~r1_tarski(k11_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0),esk3_0)), inference(spm,[status(thm)],[c_0_48, c_0_49])).
% 0.19/0.40  cnf(c_0_56, plain, (k12_lattice3(X1,X2,X3)=k11_lattice3(X1,X2,X3)|~v5_orders_2(X1)|~v2_lattice3(X1)|~l1_orders_2(X1)|~m1_subset_1(X2,u1_struct_0(X1))|~m1_subset_1(X3,u1_struct_0(X1))), inference(split_conjunct,[status(thm)],[c_0_50])).
% 0.19/0.40  cnf(c_0_57, negated_conjecture, (v2_struct_0(k2_yellow_1(esk2_0))|r1_tarski(k12_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0),esk4_0)|~m1_subset_1(k12_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0),esk2_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51, c_0_52]), c_0_38])]), c_0_53])).
% 0.19/0.40  cnf(c_0_58, negated_conjecture, (r3_orders_2(k2_yellow_1(esk2_0),k12_lattice3(k2_yellow_1(esk2_0),esk3_0,X1),esk3_0)|v2_struct_0(k2_yellow_1(esk2_0))|~m1_subset_1(X1,esk2_0)), inference(spm,[status(thm)],[c_0_54, c_0_46])).
% 0.19/0.40  cnf(c_0_59, negated_conjecture, (~r1_tarski(k12_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0),esk4_0)|~r1_tarski(k12_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0),esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55, c_0_56]), c_0_31]), c_0_24]), c_0_19]), c_0_38]), c_0_19]), c_0_46]), c_0_20])])).
% 0.19/0.40  cnf(c_0_60, negated_conjecture, (v2_struct_0(k2_yellow_1(esk2_0))|r1_tarski(k12_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0),esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57, c_0_28]), c_0_31]), c_0_38]), c_0_46])])).
% 0.19/0.40  cnf(c_0_61, negated_conjecture, (r3_orders_2(k2_yellow_1(esk2_0),k12_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0),esk3_0)|v2_struct_0(k2_yellow_1(esk2_0))), inference(spm,[status(thm)],[c_0_58, c_0_38])).
% 0.19/0.40  cnf(c_0_62, negated_conjecture, (v2_struct_0(k2_yellow_1(esk2_0))|~r1_tarski(k12_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0),esk3_0)), inference(spm,[status(thm)],[c_0_59, c_0_60])).
% 0.19/0.40  fof(c_0_63, plain, ![X28]:((~v2_struct_0(k2_yellow_1(X28))|v1_xboole_0(X28))&(v1_orders_2(k2_yellow_1(X28))|v1_xboole_0(X28))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc6_yellow_1])])])])).
% 0.19/0.40  cnf(c_0_64, negated_conjecture, (v2_struct_0(k2_yellow_1(esk2_0))|~m1_subset_1(k12_lattice3(k2_yellow_1(esk2_0),esk3_0,esk4_0),esk2_0)), inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51, c_0_61]), c_0_46])]), c_0_53]), c_0_62])).
% 0.19/0.40  cnf(c_0_65, plain, (v1_xboole_0(X1)|~v2_struct_0(k2_yellow_1(X1))), inference(split_conjunct,[status(thm)],[c_0_63])).
% 0.19/0.40  cnf(c_0_66, negated_conjecture, (v2_struct_0(k2_yellow_1(esk2_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_64, c_0_28]), c_0_31]), c_0_38]), c_0_46])])).
% 0.19/0.40  cnf(c_0_67, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_65, c_0_66]), c_0_53]), ['proof']).
% 0.19/0.40  # SZS output end CNFRefutation
% 0.19/0.40  # Proof object total steps             : 68
% 0.19/0.40  # Proof object clause steps            : 43
% 0.19/0.40  # Proof object formula steps           : 25
% 0.19/0.40  # Proof object conjectures             : 25
% 0.19/0.40  # Proof object clause conjectures      : 22
% 0.19/0.40  # Proof object formula conjectures     : 3
% 0.19/0.40  # Proof object initial clauses used    : 18
% 0.19/0.40  # Proof object initial formulas used   : 12
% 0.19/0.40  # Proof object generating inferences   : 18
% 0.19/0.40  # Proof object simplifying inferences  : 52
% 0.19/0.40  # Training examples: 0 positive, 0 negative
% 0.19/0.40  # Parsed axioms                        : 12
% 0.19/0.40  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.40  # Initial clauses                      : 30
% 0.19/0.40  # Removed in clause preprocessing      : 2
% 0.19/0.40  # Initial clauses in saturation        : 28
% 0.19/0.40  # Processed clauses                    : 121
% 0.19/0.40  # ...of these trivial                  : 2
% 0.19/0.40  # ...subsumed                          : 11
% 0.19/0.40  # ...remaining for further processing  : 108
% 0.19/0.40  # Other redundant clauses eliminated   : 3
% 0.19/0.40  # Clauses deleted for lack of memory   : 0
% 0.19/0.40  # Backward-subsumed                    : 5
% 0.19/0.40  # Backward-rewritten                   : 34
% 0.19/0.40  # Generated clauses                    : 94
% 0.19/0.40  # ...of the previous two non-trivial   : 93
% 0.19/0.40  # Contextual simplify-reflections      : 6
% 0.19/0.40  # Paramodulations                      : 91
% 0.19/0.40  # Factorizations                       : 0
% 0.19/0.40  # Equation resolutions                 : 3
% 0.19/0.40  # Propositional unsat checks           : 0
% 0.19/0.40  #    Propositional check models        : 0
% 0.19/0.40  #    Propositional check unsatisfiable : 0
% 0.19/0.40  #    Propositional clauses             : 0
% 0.19/0.40  #    Propositional clauses after purity: 0
% 0.19/0.40  #    Propositional unsat core size     : 0
% 0.19/0.40  #    Propositional preprocessing time  : 0.000
% 0.19/0.40  #    Propositional encoding time       : 0.000
% 0.19/0.40  #    Propositional solver time         : 0.000
% 0.19/0.40  #    Success case prop preproc time    : 0.000
% 0.19/0.40  #    Success case prop encoding time   : 0.000
% 0.19/0.40  #    Success case prop solver time     : 0.000
% 0.19/0.40  # Current number of processed clauses  : 40
% 0.19/0.40  #    Positive orientable unit clauses  : 10
% 0.19/0.40  #    Positive unorientable unit clauses: 0
% 0.19/0.40  #    Negative unit clauses             : 3
% 0.19/0.40  #    Non-unit-clauses                  : 27
% 0.19/0.40  # Current number of unprocessed clauses: 26
% 0.19/0.40  # ...number of literals in the above   : 208
% 0.19/0.40  # Current number of archived formulas  : 0
% 0.19/0.40  # Current number of archived clauses   : 67
% 0.19/0.40  # Clause-clause subsumption calls (NU) : 769
% 0.19/0.40  # Rec. Clause-clause subsumption calls : 257
% 0.19/0.40  # Non-unit clause-clause subsumptions  : 22
% 0.19/0.40  # Unit Clause-clause subsumption calls : 7
% 0.19/0.40  # Rewrite failures with RHS unbound    : 0
% 0.19/0.40  # BW rewrite match attempts            : 2
% 0.19/0.40  # BW rewrite match successes           : 2
% 0.19/0.40  # Condensation attempts                : 0
% 0.19/0.40  # Condensation successes               : 0
% 0.19/0.40  # Termbank termtop insertions          : 5818
% 0.19/0.40  
% 0.19/0.40  # -------------------------------------------------
% 0.19/0.40  # User time                : 0.054 s
% 0.19/0.40  # System time              : 0.005 s
% 0.19/0.40  # Total time               : 0.060 s
% 0.19/0.40  # Maximum resident set size: 1584 pages
%------------------------------------------------------------------------------
