%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n003.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:15:48 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   85 ( 528 expanded)
%              Number of clauses        :   48 ( 217 expanded)
%              Number of leaves         :   18 ( 142 expanded)
%              Depth                    :   17
%              Number of atoms          :  365 (1541 expanded)
%              Number of equality atoms :   30 ( 256 expanded)
%              Maximal formula depth    :   19 (   5 average)
%              Maximal clause size      :   50 (   3 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t14_yellow_1,conjecture,(
    ! [X1] :
      ( ~ v1_xboole_0(X1)
     => ( r2_hidden(k3_tarski(X1),X1)
       => k4_yellow_0(k2_yellow_1(X1)) = k3_tarski(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t14_yellow_1)).

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

fof(t1_yellow_1,axiom,(
    ! [X1] :
      ( u1_struct_0(k2_yellow_1(X1)) = X1
      & u1_orders_2(k2_yellow_1(X1)) = k1_yellow_1(X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t1_yellow_1)).

fof(t1_subset,axiom,(
    ! [X1,X2] :
      ( r2_hidden(X1,X2)
     => m1_subset_1(X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t1_subset)).

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

fof(dt_k4_yellow_0,axiom,(
    ! [X1] :
      ( l1_orders_2(X1)
     => m1_subset_1(k4_yellow_0(X1),u1_struct_0(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k4_yellow_0)).

fof(l49_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( r2_hidden(X1,X2)
     => r1_tarski(X1,k3_tarski(X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l49_zfmisc_1)).

fof(t2_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,X2)
     => ( v1_xboole_0(X2)
        | r2_hidden(X1,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_subset)).

fof(t25_orders_2,axiom,(
    ! [X1] :
      ( ( v5_orders_2(X1)
        & l1_orders_2(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,u1_struct_0(X1))
         => ! [X3] :
              ( m1_subset_1(X3,u1_struct_0(X1))
             => ( ( r1_orders_2(X1,X2,X3)
                  & r1_orders_2(X1,X3,X2) )
               => X2 = X3 ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t25_orders_2)).

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

fof(t7_ordinal1,axiom,(
    ! [X1,X2] :
      ~ ( r2_hidden(X1,X2)
        & r1_tarski(X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_ordinal1)).

fof(t2_xboole_1,axiom,(
    ! [X1] : r1_tarski(k1_xboole_0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_xboole_1)).

fof(d12_yellow_0,axiom,(
    ! [X1] :
      ( l1_orders_2(X1)
     => k4_yellow_0(X1) = k2_yellow_0(X1,k1_xboole_0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d12_yellow_0)).

fof(d10_yellow_0,axiom,(
    ! [X1] :
      ( l1_orders_2(X1)
     => ! [X2,X3] :
          ( m1_subset_1(X3,u1_struct_0(X1))
         => ( r2_yellow_0(X1,X2)
           => ( X3 = k2_yellow_0(X1,X2)
            <=> ( r1_lattice3(X1,X2,X3)
                & ! [X4] :
                    ( m1_subset_1(X4,u1_struct_0(X1))
                   => ( r1_lattice3(X1,X2,X4)
                     => r1_orders_2(X1,X4,X3) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d10_yellow_0)).

fof(t31_yellow_0,axiom,(
    ! [X1] :
      ( ( v5_orders_2(X1)
        & l1_orders_2(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,u1_struct_0(X1))
         => ! [X3] :
              ( ( ( X2 = k2_yellow_0(X1,X3)
                  & r2_yellow_0(X1,X3) )
               => ( r1_lattice3(X1,X3,X2)
                  & ! [X4] :
                      ( m1_subset_1(X4,u1_struct_0(X1))
                     => ( r1_lattice3(X1,X3,X4)
                       => r1_orders_2(X1,X4,X2) ) ) ) )
              & ( ( r1_lattice3(X1,X3,X2)
                  & ! [X4] :
                      ( m1_subset_1(X4,u1_struct_0(X1))
                     => ( r1_lattice3(X1,X3,X4)
                       => r1_orders_2(X1,X4,X2) ) ) )
               => ( X2 = k2_yellow_0(X1,X3)
                  & r2_yellow_0(X1,X3) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t31_yellow_0)).

fof(fc6_yellow_1,axiom,(
    ! [X1] :
      ( ~ v1_xboole_0(X1)
     => ( ~ v2_struct_0(k2_yellow_1(X1))
        & v1_orders_2(k2_yellow_1(X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc6_yellow_1)).

fof(c_0_18,negated_conjecture,(
    ~ ! [X1] :
        ( ~ v1_xboole_0(X1)
       => ( r2_hidden(k3_tarski(X1),X1)
         => k4_yellow_0(k2_yellow_1(X1)) = k3_tarski(X1) ) ) ),
    inference(assume_negation,[status(cth)],[t14_yellow_1])).

fof(c_0_19,plain,(
    ! [X47,X48,X49] :
      ( ( ~ r3_orders_2(k2_yellow_1(X47),X48,X49)
        | r1_tarski(X48,X49)
        | ~ m1_subset_1(X49,u1_struct_0(k2_yellow_1(X47)))
        | ~ m1_subset_1(X48,u1_struct_0(k2_yellow_1(X47)))
        | v1_xboole_0(X47) )
      & ( ~ r1_tarski(X48,X49)
        | r3_orders_2(k2_yellow_1(X47),X48,X49)
        | ~ m1_subset_1(X49,u1_struct_0(k2_yellow_1(X47)))
        | ~ m1_subset_1(X48,u1_struct_0(k2_yellow_1(X47)))
        | v1_xboole_0(X47) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t3_yellow_1])])])])])).

fof(c_0_20,plain,(
    ! [X46] :
      ( u1_struct_0(k2_yellow_1(X46)) = X46
      & u1_orders_2(k2_yellow_1(X46)) = k1_yellow_1(X46) ) ),
    inference(variable_rename,[status(thm)],[t1_yellow_1])).

fof(c_0_21,plain,(
    ! [X8,X9] :
      ( ~ r2_hidden(X8,X9)
      | m1_subset_1(X8,X9) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_subset])])).

fof(c_0_22,negated_conjecture,
    ( ~ v1_xboole_0(esk5_0)
    & r2_hidden(k3_tarski(esk5_0),esk5_0)
    & k4_yellow_0(k2_yellow_1(esk5_0)) != k3_tarski(esk5_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_18])])])])).

fof(c_0_23,plain,(
    ! [X14,X15,X16] :
      ( ( ~ r3_orders_2(X14,X15,X16)
        | r1_orders_2(X14,X15,X16)
        | v2_struct_0(X14)
        | ~ v3_orders_2(X14)
        | ~ l1_orders_2(X14)
        | ~ m1_subset_1(X15,u1_struct_0(X14))
        | ~ m1_subset_1(X16,u1_struct_0(X14)) )
      & ( ~ r1_orders_2(X14,X15,X16)
        | r3_orders_2(X14,X15,X16)
        | v2_struct_0(X14)
        | ~ v3_orders_2(X14)
        | ~ l1_orders_2(X14)
        | ~ m1_subset_1(X15,u1_struct_0(X14))
        | ~ m1_subset_1(X16,u1_struct_0(X14)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[redefinition_r3_orders_2])])])])).

fof(c_0_24,plain,(
    ! [X43] :
      ( v1_orders_2(k2_yellow_1(X43))
      & l1_orders_2(k2_yellow_1(X43)) ) ),
    inference(variable_rename,[status(thm)],[dt_k2_yellow_1])).

fof(c_0_25,plain,(
    ! [X44] :
      ( v1_orders_2(k2_yellow_1(X44))
      & v3_orders_2(k2_yellow_1(X44))
      & v4_orders_2(k2_yellow_1(X44))
      & v5_orders_2(k2_yellow_1(X44)) ) ),
    inference(variable_rename,[status(thm)],[fc5_yellow_1])).

cnf(c_0_26,plain,
    ( r3_orders_2(k2_yellow_1(X3),X1,X2)
    | v1_xboole_0(X3)
    | ~ r1_tarski(X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X3)))
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_27,plain,
    ( u1_struct_0(k2_yellow_1(X1)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_28,plain,
    ( m1_subset_1(X1,X2)
    | ~ r2_hidden(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_29,negated_conjecture,
    ( r2_hidden(k3_tarski(esk5_0),esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_30,plain,
    ( r1_orders_2(X1,X2,X3)
    | v2_struct_0(X1)
    | ~ r3_orders_2(X1,X2,X3)
    | ~ v3_orders_2(X1)
    | ~ l1_orders_2(X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ m1_subset_1(X3,u1_struct_0(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_31,plain,
    ( l1_orders_2(k2_yellow_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_32,plain,
    ( v3_orders_2(k2_yellow_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_33,plain,
    ( r3_orders_2(k2_yellow_1(X1),X2,X3)
    | v1_xboole_0(X1)
    | ~ m1_subset_1(X3,X1)
    | ~ m1_subset_1(X2,X1)
    | ~ r1_tarski(X2,X3) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_26,c_0_27]),c_0_27])).

cnf(c_0_34,negated_conjecture,
    ( m1_subset_1(k3_tarski(esk5_0),esk5_0) ),
    inference(spm,[status(thm)],[c_0_28,c_0_29])).

cnf(c_0_35,negated_conjecture,
    ( ~ v1_xboole_0(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

fof(c_0_36,plain,(
    ! [X36] :
      ( ~ l1_orders_2(X36)
      | m1_subset_1(k4_yellow_0(X36),u1_struct_0(X36)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k4_yellow_0])])).

cnf(c_0_37,plain,
    ( r1_orders_2(k2_yellow_1(X1),X2,X3)
    | v2_struct_0(k2_yellow_1(X1))
    | ~ r3_orders_2(k2_yellow_1(X1),X2,X3)
    | ~ m1_subset_1(X3,X1)
    | ~ m1_subset_1(X2,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_30,c_0_27]),c_0_31]),c_0_32])])).

cnf(c_0_38,negated_conjecture,
    ( r3_orders_2(k2_yellow_1(esk5_0),X1,k3_tarski(esk5_0))
    | ~ m1_subset_1(X1,esk5_0)
    | ~ r1_tarski(X1,k3_tarski(esk5_0)) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_34]),c_0_35])).

fof(c_0_39,plain,(
    ! [X6,X7] :
      ( ~ r2_hidden(X6,X7)
      | r1_tarski(X6,k3_tarski(X7)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l49_zfmisc_1])])).

fof(c_0_40,plain,(
    ! [X10,X11] :
      ( ~ m1_subset_1(X10,X11)
      | v1_xboole_0(X11)
      | r2_hidden(X10,X11) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_subset])])).

cnf(c_0_41,plain,
    ( m1_subset_1(k4_yellow_0(X1),u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

fof(c_0_42,plain,(
    ! [X17,X18,X19] :
      ( ~ v5_orders_2(X17)
      | ~ l1_orders_2(X17)
      | ~ m1_subset_1(X18,u1_struct_0(X17))
      | ~ m1_subset_1(X19,u1_struct_0(X17))
      | ~ r1_orders_2(X17,X18,X19)
      | ~ r1_orders_2(X17,X19,X18)
      | X18 = X19 ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t25_orders_2])])])).

cnf(c_0_43,negated_conjecture,
    ( r1_orders_2(k2_yellow_1(esk5_0),X1,k3_tarski(esk5_0))
    | v2_struct_0(k2_yellow_1(esk5_0))
    | ~ m1_subset_1(X1,esk5_0)
    | ~ r1_tarski(X1,k3_tarski(esk5_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_38]),c_0_34])])).

cnf(c_0_44,plain,
    ( r1_tarski(X1,k3_tarski(X2))
    | ~ r2_hidden(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_45,plain,
    ( v1_xboole_0(X2)
    | r2_hidden(X1,X2)
    | ~ m1_subset_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_40])).

cnf(c_0_46,plain,
    ( m1_subset_1(k4_yellow_0(k2_yellow_1(X1)),X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41,c_0_27]),c_0_31])])).

fof(c_0_47,plain,(
    ! [X20,X21,X22,X23] :
      ( ( ~ r1_lattice3(X20,X21,X22)
        | ~ m1_subset_1(X23,u1_struct_0(X20))
        | ~ r2_hidden(X23,X21)
        | r1_orders_2(X20,X22,X23)
        | ~ m1_subset_1(X22,u1_struct_0(X20))
        | ~ l1_orders_2(X20) )
      & ( m1_subset_1(esk1_3(X20,X21,X22),u1_struct_0(X20))
        | r1_lattice3(X20,X21,X22)
        | ~ m1_subset_1(X22,u1_struct_0(X20))
        | ~ l1_orders_2(X20) )
      & ( r2_hidden(esk1_3(X20,X21,X22),X21)
        | r1_lattice3(X20,X21,X22)
        | ~ m1_subset_1(X22,u1_struct_0(X20))
        | ~ l1_orders_2(X20) )
      & ( ~ r1_orders_2(X20,X22,esk1_3(X20,X21,X22))
        | r1_lattice3(X20,X21,X22)
        | ~ m1_subset_1(X22,u1_struct_0(X20))
        | ~ l1_orders_2(X20) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d8_lattice3])])])])])).

cnf(c_0_48,plain,
    ( X2 = X3
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ r1_orders_2(X1,X2,X3)
    | ~ r1_orders_2(X1,X3,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_42])).

cnf(c_0_49,negated_conjecture,
    ( r1_orders_2(k2_yellow_1(esk5_0),X1,k3_tarski(esk5_0))
    | v2_struct_0(k2_yellow_1(esk5_0))
    | ~ r2_hidden(X1,esk5_0) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_43,c_0_44]),c_0_28])).

cnf(c_0_50,plain,
    ( v1_xboole_0(X1)
    | r2_hidden(k4_yellow_0(k2_yellow_1(X1)),X1) ),
    inference(spm,[status(thm)],[c_0_45,c_0_46])).

fof(c_0_51,plain,(
    ! [X12,X13] :
      ( ~ r2_hidden(X12,X13)
      | ~ r1_tarski(X13,X12) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t7_ordinal1])])).

fof(c_0_52,plain,(
    ! [X5] : r1_tarski(k1_xboole_0,X5) ),
    inference(variable_rename,[status(thm)],[t2_xboole_1])).

cnf(c_0_53,plain,
    ( r2_hidden(esk1_3(X1,X2,X3),X2)
    | r1_lattice3(X1,X2,X3)
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_47])).

cnf(c_0_54,plain,
    ( X1 = k4_yellow_0(X2)
    | ~ v5_orders_2(X2)
    | ~ r1_orders_2(X2,k4_yellow_0(X2),X1)
    | ~ r1_orders_2(X2,X1,k4_yellow_0(X2))
    | ~ l1_orders_2(X2)
    | ~ m1_subset_1(X1,u1_struct_0(X2)) ),
    inference(spm,[status(thm)],[c_0_48,c_0_41])).

cnf(c_0_55,negated_conjecture,
    ( r1_orders_2(k2_yellow_1(esk5_0),k4_yellow_0(k2_yellow_1(esk5_0)),k3_tarski(esk5_0))
    | v2_struct_0(k2_yellow_1(esk5_0)) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_49,c_0_50]),c_0_35])).

cnf(c_0_56,plain,
    ( v5_orders_2(k2_yellow_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_57,negated_conjecture,
    ( k4_yellow_0(k2_yellow_1(esk5_0)) != k3_tarski(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

fof(c_0_58,plain,(
    ! [X35] :
      ( ~ l1_orders_2(X35)
      | k4_yellow_0(X35) = k2_yellow_0(X35,k1_xboole_0) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d12_yellow_0])])).

fof(c_0_59,plain,(
    ! [X30,X31,X32,X33] :
      ( ( r1_lattice3(X30,X31,X32)
        | X32 != k2_yellow_0(X30,X31)
        | ~ r2_yellow_0(X30,X31)
        | ~ m1_subset_1(X32,u1_struct_0(X30))
        | ~ l1_orders_2(X30) )
      & ( ~ m1_subset_1(X33,u1_struct_0(X30))
        | ~ r1_lattice3(X30,X31,X33)
        | r1_orders_2(X30,X33,X32)
        | X32 != k2_yellow_0(X30,X31)
        | ~ r2_yellow_0(X30,X31)
        | ~ m1_subset_1(X32,u1_struct_0(X30))
        | ~ l1_orders_2(X30) )
      & ( m1_subset_1(esk3_3(X30,X31,X32),u1_struct_0(X30))
        | ~ r1_lattice3(X30,X31,X32)
        | X32 = k2_yellow_0(X30,X31)
        | ~ r2_yellow_0(X30,X31)
        | ~ m1_subset_1(X32,u1_struct_0(X30))
        | ~ l1_orders_2(X30) )
      & ( r1_lattice3(X30,X31,esk3_3(X30,X31,X32))
        | ~ r1_lattice3(X30,X31,X32)
        | X32 = k2_yellow_0(X30,X31)
        | ~ r2_yellow_0(X30,X31)
        | ~ m1_subset_1(X32,u1_struct_0(X30))
        | ~ l1_orders_2(X30) )
      & ( ~ r1_orders_2(X30,esk3_3(X30,X31,X32),X32)
        | ~ r1_lattice3(X30,X31,X32)
        | X32 = k2_yellow_0(X30,X31)
        | ~ r2_yellow_0(X30,X31)
        | ~ m1_subset_1(X32,u1_struct_0(X30))
        | ~ l1_orders_2(X30) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_yellow_0])])])])])).

cnf(c_0_60,plain,
    ( ~ r2_hidden(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_51])).

cnf(c_0_61,plain,
    ( r1_tarski(k1_xboole_0,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_52])).

cnf(c_0_62,plain,
    ( r1_lattice3(k2_yellow_1(X1),X2,X3)
    | r2_hidden(esk1_3(k2_yellow_1(X1),X2,X3),X2)
    | ~ m1_subset_1(X3,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53,c_0_27]),c_0_31])])).

cnf(c_0_63,negated_conjecture,
    ( v2_struct_0(k2_yellow_1(esk5_0))
    | ~ r1_orders_2(k2_yellow_1(esk5_0),k3_tarski(esk5_0),k4_yellow_0(k2_yellow_1(esk5_0))) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_54,c_0_55]),c_0_56]),c_0_31]),c_0_27]),c_0_34])]),c_0_57])).

cnf(c_0_64,plain,
    ( k4_yellow_0(X1) = k2_yellow_0(X1,k1_xboole_0)
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_58])).

cnf(c_0_65,plain,
    ( r1_orders_2(X2,X1,X4)
    | ~ m1_subset_1(X1,u1_struct_0(X2))
    | ~ r1_lattice3(X2,X3,X1)
    | X4 != k2_yellow_0(X2,X3)
    | ~ r2_yellow_0(X2,X3)
    | ~ m1_subset_1(X4,u1_struct_0(X2))
    | ~ l1_orders_2(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_59])).

cnf(c_0_66,plain,
    ( ~ r2_hidden(X1,k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_60,c_0_61])).

cnf(c_0_67,negated_conjecture,
    ( r1_lattice3(k2_yellow_1(esk5_0),X1,k3_tarski(esk5_0))
    | r2_hidden(esk1_3(k2_yellow_1(esk5_0),X1,k3_tarski(esk5_0)),X1) ),
    inference(spm,[status(thm)],[c_0_62,c_0_34])).

fof(c_0_68,plain,(
    ! [X37,X38,X39,X40,X41] :
      ( ( r1_lattice3(X37,X39,X38)
        | X38 != k2_yellow_0(X37,X39)
        | ~ r2_yellow_0(X37,X39)
        | ~ m1_subset_1(X38,u1_struct_0(X37))
        | ~ v5_orders_2(X37)
        | ~ l1_orders_2(X37) )
      & ( ~ m1_subset_1(X40,u1_struct_0(X37))
        | ~ r1_lattice3(X37,X39,X40)
        | r1_orders_2(X37,X40,X38)
        | X38 != k2_yellow_0(X37,X39)
        | ~ r2_yellow_0(X37,X39)
        | ~ m1_subset_1(X38,u1_struct_0(X37))
        | ~ v5_orders_2(X37)
        | ~ l1_orders_2(X37) )
      & ( X38 = k2_yellow_0(X37,X41)
        | m1_subset_1(esk4_3(X37,X38,X41),u1_struct_0(X37))
        | ~ r1_lattice3(X37,X41,X38)
        | ~ m1_subset_1(X38,u1_struct_0(X37))
        | ~ v5_orders_2(X37)
        | ~ l1_orders_2(X37) )
      & ( r2_yellow_0(X37,X41)
        | m1_subset_1(esk4_3(X37,X38,X41),u1_struct_0(X37))
        | ~ r1_lattice3(X37,X41,X38)
        | ~ m1_subset_1(X38,u1_struct_0(X37))
        | ~ v5_orders_2(X37)
        | ~ l1_orders_2(X37) )
      & ( X38 = k2_yellow_0(X37,X41)
        | r1_lattice3(X37,X41,esk4_3(X37,X38,X41))
        | ~ r1_lattice3(X37,X41,X38)
        | ~ m1_subset_1(X38,u1_struct_0(X37))
        | ~ v5_orders_2(X37)
        | ~ l1_orders_2(X37) )
      & ( r2_yellow_0(X37,X41)
        | r1_lattice3(X37,X41,esk4_3(X37,X38,X41))
        | ~ r1_lattice3(X37,X41,X38)
        | ~ m1_subset_1(X38,u1_struct_0(X37))
        | ~ v5_orders_2(X37)
        | ~ l1_orders_2(X37) )
      & ( X38 = k2_yellow_0(X37,X41)
        | ~ r1_orders_2(X37,esk4_3(X37,X38,X41),X38)
        | ~ r1_lattice3(X37,X41,X38)
        | ~ m1_subset_1(X38,u1_struct_0(X37))
        | ~ v5_orders_2(X37)
        | ~ l1_orders_2(X37) )
      & ( r2_yellow_0(X37,X41)
        | ~ r1_orders_2(X37,esk4_3(X37,X38,X41),X38)
        | ~ r1_lattice3(X37,X41,X38)
        | ~ m1_subset_1(X38,u1_struct_0(X37))
        | ~ v5_orders_2(X37)
        | ~ l1_orders_2(X37) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[t31_yellow_0])])])])])])).

fof(c_0_69,plain,(
    ! [X45] :
      ( ( ~ v2_struct_0(k2_yellow_1(X45))
        | v1_xboole_0(X45) )
      & ( v1_orders_2(k2_yellow_1(X45))
        | v1_xboole_0(X45) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc6_yellow_1])])])])).

cnf(c_0_70,negated_conjecture,
    ( v2_struct_0(k2_yellow_1(esk5_0))
    | ~ r1_orders_2(k2_yellow_1(esk5_0),k3_tarski(esk5_0),k2_yellow_0(k2_yellow_1(esk5_0),k1_xboole_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_63,c_0_64]),c_0_31])])).

cnf(c_0_71,plain,
    ( r1_orders_2(X1,X2,k2_yellow_0(X1,X3))
    | ~ r2_yellow_0(X1,X3)
    | ~ r1_lattice3(X1,X3,X2)
    | ~ l1_orders_2(X1)
    | ~ m1_subset_1(k2_yellow_0(X1,X3),u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1)) ),
    inference(er,[status(thm)],[c_0_65])).

cnf(c_0_72,negated_conjecture,
    ( r1_lattice3(k2_yellow_1(esk5_0),k1_xboole_0,k3_tarski(esk5_0)) ),
    inference(spm,[status(thm)],[c_0_66,c_0_67])).

cnf(c_0_73,plain,
    ( m1_subset_1(k2_yellow_0(k2_yellow_1(X1),k1_xboole_0),X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_46,c_0_64]),c_0_31])])).

cnf(c_0_74,plain,
    ( r2_yellow_0(X1,X2)
    | m1_subset_1(esk4_3(X1,X3,X2),u1_struct_0(X1))
    | ~ r1_lattice3(X1,X2,X3)
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_68])).

cnf(c_0_75,plain,
    ( v1_xboole_0(X1)
    | ~ v2_struct_0(k2_yellow_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_69])).

cnf(c_0_76,negated_conjecture,
    ( v2_struct_0(k2_yellow_1(esk5_0))
    | ~ r2_yellow_0(k2_yellow_1(esk5_0),k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_70,c_0_71]),c_0_72]),c_0_31]),c_0_27]),c_0_73]),c_0_27]),c_0_34])])).

cnf(c_0_77,plain,
    ( r2_yellow_0(k2_yellow_1(X1),X2)
    | m1_subset_1(esk4_3(k2_yellow_1(X1),X3,X2),X1)
    | ~ r1_lattice3(k2_yellow_1(X1),X2,X3)
    | ~ m1_subset_1(X3,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_74,c_0_27]),c_0_56]),c_0_31])])).

cnf(c_0_78,negated_conjecture,
    ( ~ r2_yellow_0(k2_yellow_1(esk5_0),k1_xboole_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_75,c_0_76]),c_0_35])).

cnf(c_0_79,negated_conjecture,
    ( m1_subset_1(esk4_3(k2_yellow_1(esk5_0),k3_tarski(esk5_0),k1_xboole_0),esk5_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_77,c_0_72]),c_0_34])]),c_0_78])).

cnf(c_0_80,negated_conjecture,
    ( r2_hidden(esk4_3(k2_yellow_1(esk5_0),k3_tarski(esk5_0),k1_xboole_0),esk5_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_45,c_0_79]),c_0_35])).

cnf(c_0_81,plain,
    ( r2_yellow_0(X1,X2)
    | ~ r1_orders_2(X1,esk4_3(X1,X3,X2),X3)
    | ~ r1_lattice3(X1,X2,X3)
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_68])).

cnf(c_0_82,negated_conjecture,
    ( r1_orders_2(k2_yellow_1(esk5_0),esk4_3(k2_yellow_1(esk5_0),k3_tarski(esk5_0),k1_xboole_0),k3_tarski(esk5_0))
    | v2_struct_0(k2_yellow_1(esk5_0)) ),
    inference(spm,[status(thm)],[c_0_49,c_0_80])).

cnf(c_0_83,negated_conjecture,
    ( v2_struct_0(k2_yellow_1(esk5_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_81,c_0_82]),c_0_72]),c_0_56]),c_0_31]),c_0_27]),c_0_34])]),c_0_78])).

cnf(c_0_84,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_75,c_0_83]),c_0_35]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n003.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 14:17:42 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.19/0.46  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S5PRR_RG_S04BN
% 0.19/0.46  # and selection function PSelectComplexExceptUniqMaxHorn.
% 0.19/0.46  #
% 0.19/0.46  # Preprocessing time       : 0.054 s
% 0.19/0.46  # Presaturation interreduction done
% 0.19/0.46  
% 0.19/0.46  # Proof found!
% 0.19/0.46  # SZS status Theorem
% 0.19/0.46  # SZS output start CNFRefutation
% 0.19/0.46  fof(t14_yellow_1, conjecture, ![X1]:(~(v1_xboole_0(X1))=>(r2_hidden(k3_tarski(X1),X1)=>k4_yellow_0(k2_yellow_1(X1))=k3_tarski(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t14_yellow_1)).
% 0.19/0.46  fof(t3_yellow_1, axiom, ![X1]:(~(v1_xboole_0(X1))=>![X2]:(m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1)))=>![X3]:(m1_subset_1(X3,u1_struct_0(k2_yellow_1(X1)))=>(r3_orders_2(k2_yellow_1(X1),X2,X3)<=>r1_tarski(X2,X3))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t3_yellow_1)).
% 0.19/0.46  fof(t1_yellow_1, axiom, ![X1]:(u1_struct_0(k2_yellow_1(X1))=X1&u1_orders_2(k2_yellow_1(X1))=k1_yellow_1(X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t1_yellow_1)).
% 0.19/0.46  fof(t1_subset, axiom, ![X1, X2]:(r2_hidden(X1,X2)=>m1_subset_1(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t1_subset)).
% 0.19/0.46  fof(redefinition_r3_orders_2, axiom, ![X1, X2, X3]:(((((~(v2_struct_0(X1))&v3_orders_2(X1))&l1_orders_2(X1))&m1_subset_1(X2,u1_struct_0(X1)))&m1_subset_1(X3,u1_struct_0(X1)))=>(r3_orders_2(X1,X2,X3)<=>r1_orders_2(X1,X2,X3))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_r3_orders_2)).
% 0.19/0.46  fof(dt_k2_yellow_1, axiom, ![X1]:(v1_orders_2(k2_yellow_1(X1))&l1_orders_2(k2_yellow_1(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k2_yellow_1)).
% 0.19/0.46  fof(fc5_yellow_1, axiom, ![X1]:(((v1_orders_2(k2_yellow_1(X1))&v3_orders_2(k2_yellow_1(X1)))&v4_orders_2(k2_yellow_1(X1)))&v5_orders_2(k2_yellow_1(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc5_yellow_1)).
% 0.19/0.46  fof(dt_k4_yellow_0, axiom, ![X1]:(l1_orders_2(X1)=>m1_subset_1(k4_yellow_0(X1),u1_struct_0(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k4_yellow_0)).
% 0.19/0.46  fof(l49_zfmisc_1, axiom, ![X1, X2]:(r2_hidden(X1,X2)=>r1_tarski(X1,k3_tarski(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l49_zfmisc_1)).
% 0.19/0.46  fof(t2_subset, axiom, ![X1, X2]:(m1_subset_1(X1,X2)=>(v1_xboole_0(X2)|r2_hidden(X1,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t2_subset)).
% 0.19/0.46  fof(t25_orders_2, axiom, ![X1]:((v5_orders_2(X1)&l1_orders_2(X1))=>![X2]:(m1_subset_1(X2,u1_struct_0(X1))=>![X3]:(m1_subset_1(X3,u1_struct_0(X1))=>((r1_orders_2(X1,X2,X3)&r1_orders_2(X1,X3,X2))=>X2=X3)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t25_orders_2)).
% 0.19/0.46  fof(d8_lattice3, axiom, ![X1]:(l1_orders_2(X1)=>![X2, X3]:(m1_subset_1(X3,u1_struct_0(X1))=>(r1_lattice3(X1,X2,X3)<=>![X4]:(m1_subset_1(X4,u1_struct_0(X1))=>(r2_hidden(X4,X2)=>r1_orders_2(X1,X3,X4)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d8_lattice3)).
% 0.19/0.46  fof(t7_ordinal1, axiom, ![X1, X2]:~((r2_hidden(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t7_ordinal1)).
% 0.19/0.46  fof(t2_xboole_1, axiom, ![X1]:r1_tarski(k1_xboole_0,X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t2_xboole_1)).
% 0.19/0.46  fof(d12_yellow_0, axiom, ![X1]:(l1_orders_2(X1)=>k4_yellow_0(X1)=k2_yellow_0(X1,k1_xboole_0)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d12_yellow_0)).
% 0.19/0.46  fof(d10_yellow_0, axiom, ![X1]:(l1_orders_2(X1)=>![X2, X3]:(m1_subset_1(X3,u1_struct_0(X1))=>(r2_yellow_0(X1,X2)=>(X3=k2_yellow_0(X1,X2)<=>(r1_lattice3(X1,X2,X3)&![X4]:(m1_subset_1(X4,u1_struct_0(X1))=>(r1_lattice3(X1,X2,X4)=>r1_orders_2(X1,X4,X3)))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d10_yellow_0)).
% 0.19/0.46  fof(t31_yellow_0, axiom, ![X1]:((v5_orders_2(X1)&l1_orders_2(X1))=>![X2]:(m1_subset_1(X2,u1_struct_0(X1))=>![X3]:(((X2=k2_yellow_0(X1,X3)&r2_yellow_0(X1,X3))=>(r1_lattice3(X1,X3,X2)&![X4]:(m1_subset_1(X4,u1_struct_0(X1))=>(r1_lattice3(X1,X3,X4)=>r1_orders_2(X1,X4,X2)))))&((r1_lattice3(X1,X3,X2)&![X4]:(m1_subset_1(X4,u1_struct_0(X1))=>(r1_lattice3(X1,X3,X4)=>r1_orders_2(X1,X4,X2))))=>(X2=k2_yellow_0(X1,X3)&r2_yellow_0(X1,X3)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t31_yellow_0)).
% 0.19/0.46  fof(fc6_yellow_1, axiom, ![X1]:(~(v1_xboole_0(X1))=>(~(v2_struct_0(k2_yellow_1(X1)))&v1_orders_2(k2_yellow_1(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc6_yellow_1)).
% 0.19/0.46  fof(c_0_18, negated_conjecture, ~(![X1]:(~(v1_xboole_0(X1))=>(r2_hidden(k3_tarski(X1),X1)=>k4_yellow_0(k2_yellow_1(X1))=k3_tarski(X1)))), inference(assume_negation,[status(cth)],[t14_yellow_1])).
% 0.19/0.46  fof(c_0_19, plain, ![X47, X48, X49]:((~r3_orders_2(k2_yellow_1(X47),X48,X49)|r1_tarski(X48,X49)|~m1_subset_1(X49,u1_struct_0(k2_yellow_1(X47)))|~m1_subset_1(X48,u1_struct_0(k2_yellow_1(X47)))|v1_xboole_0(X47))&(~r1_tarski(X48,X49)|r3_orders_2(k2_yellow_1(X47),X48,X49)|~m1_subset_1(X49,u1_struct_0(k2_yellow_1(X47)))|~m1_subset_1(X48,u1_struct_0(k2_yellow_1(X47)))|v1_xboole_0(X47))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t3_yellow_1])])])])])).
% 0.19/0.46  fof(c_0_20, plain, ![X46]:(u1_struct_0(k2_yellow_1(X46))=X46&u1_orders_2(k2_yellow_1(X46))=k1_yellow_1(X46)), inference(variable_rename,[status(thm)],[t1_yellow_1])).
% 0.19/0.46  fof(c_0_21, plain, ![X8, X9]:(~r2_hidden(X8,X9)|m1_subset_1(X8,X9)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_subset])])).
% 0.19/0.46  fof(c_0_22, negated_conjecture, (~v1_xboole_0(esk5_0)&(r2_hidden(k3_tarski(esk5_0),esk5_0)&k4_yellow_0(k2_yellow_1(esk5_0))!=k3_tarski(esk5_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_18])])])])).
% 0.19/0.46  fof(c_0_23, plain, ![X14, X15, X16]:((~r3_orders_2(X14,X15,X16)|r1_orders_2(X14,X15,X16)|(v2_struct_0(X14)|~v3_orders_2(X14)|~l1_orders_2(X14)|~m1_subset_1(X15,u1_struct_0(X14))|~m1_subset_1(X16,u1_struct_0(X14))))&(~r1_orders_2(X14,X15,X16)|r3_orders_2(X14,X15,X16)|(v2_struct_0(X14)|~v3_orders_2(X14)|~l1_orders_2(X14)|~m1_subset_1(X15,u1_struct_0(X14))|~m1_subset_1(X16,u1_struct_0(X14))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[redefinition_r3_orders_2])])])])).
% 0.19/0.46  fof(c_0_24, plain, ![X43]:(v1_orders_2(k2_yellow_1(X43))&l1_orders_2(k2_yellow_1(X43))), inference(variable_rename,[status(thm)],[dt_k2_yellow_1])).
% 0.19/0.46  fof(c_0_25, plain, ![X44]:(((v1_orders_2(k2_yellow_1(X44))&v3_orders_2(k2_yellow_1(X44)))&v4_orders_2(k2_yellow_1(X44)))&v5_orders_2(k2_yellow_1(X44))), inference(variable_rename,[status(thm)],[fc5_yellow_1])).
% 0.19/0.46  cnf(c_0_26, plain, (r3_orders_2(k2_yellow_1(X3),X1,X2)|v1_xboole_0(X3)|~r1_tarski(X1,X2)|~m1_subset_1(X2,u1_struct_0(k2_yellow_1(X3)))|~m1_subset_1(X1,u1_struct_0(k2_yellow_1(X3)))), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.19/0.46  cnf(c_0_27, plain, (u1_struct_0(k2_yellow_1(X1))=X1), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.19/0.46  cnf(c_0_28, plain, (m1_subset_1(X1,X2)|~r2_hidden(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.19/0.46  cnf(c_0_29, negated_conjecture, (r2_hidden(k3_tarski(esk5_0),esk5_0)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.19/0.46  cnf(c_0_30, plain, (r1_orders_2(X1,X2,X3)|v2_struct_0(X1)|~r3_orders_2(X1,X2,X3)|~v3_orders_2(X1)|~l1_orders_2(X1)|~m1_subset_1(X2,u1_struct_0(X1))|~m1_subset_1(X3,u1_struct_0(X1))), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.19/0.46  cnf(c_0_31, plain, (l1_orders_2(k2_yellow_1(X1))), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.19/0.46  cnf(c_0_32, plain, (v3_orders_2(k2_yellow_1(X1))), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.19/0.46  cnf(c_0_33, plain, (r3_orders_2(k2_yellow_1(X1),X2,X3)|v1_xboole_0(X1)|~m1_subset_1(X3,X1)|~m1_subset_1(X2,X1)|~r1_tarski(X2,X3)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_26, c_0_27]), c_0_27])).
% 0.19/0.46  cnf(c_0_34, negated_conjecture, (m1_subset_1(k3_tarski(esk5_0),esk5_0)), inference(spm,[status(thm)],[c_0_28, c_0_29])).
% 0.19/0.46  cnf(c_0_35, negated_conjecture, (~v1_xboole_0(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.19/0.46  fof(c_0_36, plain, ![X36]:(~l1_orders_2(X36)|m1_subset_1(k4_yellow_0(X36),u1_struct_0(X36))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k4_yellow_0])])).
% 0.19/0.46  cnf(c_0_37, plain, (r1_orders_2(k2_yellow_1(X1),X2,X3)|v2_struct_0(k2_yellow_1(X1))|~r3_orders_2(k2_yellow_1(X1),X2,X3)|~m1_subset_1(X3,X1)|~m1_subset_1(X2,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_30, c_0_27]), c_0_31]), c_0_32])])).
% 0.19/0.46  cnf(c_0_38, negated_conjecture, (r3_orders_2(k2_yellow_1(esk5_0),X1,k3_tarski(esk5_0))|~m1_subset_1(X1,esk5_0)|~r1_tarski(X1,k3_tarski(esk5_0))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_33, c_0_34]), c_0_35])).
% 0.19/0.46  fof(c_0_39, plain, ![X6, X7]:(~r2_hidden(X6,X7)|r1_tarski(X6,k3_tarski(X7))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l49_zfmisc_1])])).
% 0.19/0.46  fof(c_0_40, plain, ![X10, X11]:(~m1_subset_1(X10,X11)|(v1_xboole_0(X11)|r2_hidden(X10,X11))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_subset])])).
% 0.19/0.46  cnf(c_0_41, plain, (m1_subset_1(k4_yellow_0(X1),u1_struct_0(X1))|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_36])).
% 0.19/0.46  fof(c_0_42, plain, ![X17, X18, X19]:(~v5_orders_2(X17)|~l1_orders_2(X17)|(~m1_subset_1(X18,u1_struct_0(X17))|(~m1_subset_1(X19,u1_struct_0(X17))|(~r1_orders_2(X17,X18,X19)|~r1_orders_2(X17,X19,X18)|X18=X19)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t25_orders_2])])])).
% 0.19/0.46  cnf(c_0_43, negated_conjecture, (r1_orders_2(k2_yellow_1(esk5_0),X1,k3_tarski(esk5_0))|v2_struct_0(k2_yellow_1(esk5_0))|~m1_subset_1(X1,esk5_0)|~r1_tarski(X1,k3_tarski(esk5_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_38]), c_0_34])])).
% 0.19/0.46  cnf(c_0_44, plain, (r1_tarski(X1,k3_tarski(X2))|~r2_hidden(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.19/0.46  cnf(c_0_45, plain, (v1_xboole_0(X2)|r2_hidden(X1,X2)|~m1_subset_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_40])).
% 0.19/0.46  cnf(c_0_46, plain, (m1_subset_1(k4_yellow_0(k2_yellow_1(X1)),X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41, c_0_27]), c_0_31])])).
% 0.19/0.46  fof(c_0_47, plain, ![X20, X21, X22, X23]:((~r1_lattice3(X20,X21,X22)|(~m1_subset_1(X23,u1_struct_0(X20))|(~r2_hidden(X23,X21)|r1_orders_2(X20,X22,X23)))|~m1_subset_1(X22,u1_struct_0(X20))|~l1_orders_2(X20))&((m1_subset_1(esk1_3(X20,X21,X22),u1_struct_0(X20))|r1_lattice3(X20,X21,X22)|~m1_subset_1(X22,u1_struct_0(X20))|~l1_orders_2(X20))&((r2_hidden(esk1_3(X20,X21,X22),X21)|r1_lattice3(X20,X21,X22)|~m1_subset_1(X22,u1_struct_0(X20))|~l1_orders_2(X20))&(~r1_orders_2(X20,X22,esk1_3(X20,X21,X22))|r1_lattice3(X20,X21,X22)|~m1_subset_1(X22,u1_struct_0(X20))|~l1_orders_2(X20))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d8_lattice3])])])])])).
% 0.19/0.46  cnf(c_0_48, plain, (X2=X3|~v5_orders_2(X1)|~l1_orders_2(X1)|~m1_subset_1(X2,u1_struct_0(X1))|~m1_subset_1(X3,u1_struct_0(X1))|~r1_orders_2(X1,X2,X3)|~r1_orders_2(X1,X3,X2)), inference(split_conjunct,[status(thm)],[c_0_42])).
% 0.19/0.46  cnf(c_0_49, negated_conjecture, (r1_orders_2(k2_yellow_1(esk5_0),X1,k3_tarski(esk5_0))|v2_struct_0(k2_yellow_1(esk5_0))|~r2_hidden(X1,esk5_0)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_43, c_0_44]), c_0_28])).
% 0.19/0.46  cnf(c_0_50, plain, (v1_xboole_0(X1)|r2_hidden(k4_yellow_0(k2_yellow_1(X1)),X1)), inference(spm,[status(thm)],[c_0_45, c_0_46])).
% 0.19/0.46  fof(c_0_51, plain, ![X12, X13]:(~r2_hidden(X12,X13)|~r1_tarski(X13,X12)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t7_ordinal1])])).
% 0.19/0.46  fof(c_0_52, plain, ![X5]:r1_tarski(k1_xboole_0,X5), inference(variable_rename,[status(thm)],[t2_xboole_1])).
% 0.19/0.46  cnf(c_0_53, plain, (r2_hidden(esk1_3(X1,X2,X3),X2)|r1_lattice3(X1,X2,X3)|~m1_subset_1(X3,u1_struct_0(X1))|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_47])).
% 0.19/0.46  cnf(c_0_54, plain, (X1=k4_yellow_0(X2)|~v5_orders_2(X2)|~r1_orders_2(X2,k4_yellow_0(X2),X1)|~r1_orders_2(X2,X1,k4_yellow_0(X2))|~l1_orders_2(X2)|~m1_subset_1(X1,u1_struct_0(X2))), inference(spm,[status(thm)],[c_0_48, c_0_41])).
% 0.19/0.46  cnf(c_0_55, negated_conjecture, (r1_orders_2(k2_yellow_1(esk5_0),k4_yellow_0(k2_yellow_1(esk5_0)),k3_tarski(esk5_0))|v2_struct_0(k2_yellow_1(esk5_0))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_49, c_0_50]), c_0_35])).
% 0.19/0.46  cnf(c_0_56, plain, (v5_orders_2(k2_yellow_1(X1))), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.19/0.46  cnf(c_0_57, negated_conjecture, (k4_yellow_0(k2_yellow_1(esk5_0))!=k3_tarski(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.19/0.46  fof(c_0_58, plain, ![X35]:(~l1_orders_2(X35)|k4_yellow_0(X35)=k2_yellow_0(X35,k1_xboole_0)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d12_yellow_0])])).
% 0.19/0.46  fof(c_0_59, plain, ![X30, X31, X32, X33]:(((r1_lattice3(X30,X31,X32)|X32!=k2_yellow_0(X30,X31)|~r2_yellow_0(X30,X31)|~m1_subset_1(X32,u1_struct_0(X30))|~l1_orders_2(X30))&(~m1_subset_1(X33,u1_struct_0(X30))|(~r1_lattice3(X30,X31,X33)|r1_orders_2(X30,X33,X32))|X32!=k2_yellow_0(X30,X31)|~r2_yellow_0(X30,X31)|~m1_subset_1(X32,u1_struct_0(X30))|~l1_orders_2(X30)))&((m1_subset_1(esk3_3(X30,X31,X32),u1_struct_0(X30))|~r1_lattice3(X30,X31,X32)|X32=k2_yellow_0(X30,X31)|~r2_yellow_0(X30,X31)|~m1_subset_1(X32,u1_struct_0(X30))|~l1_orders_2(X30))&((r1_lattice3(X30,X31,esk3_3(X30,X31,X32))|~r1_lattice3(X30,X31,X32)|X32=k2_yellow_0(X30,X31)|~r2_yellow_0(X30,X31)|~m1_subset_1(X32,u1_struct_0(X30))|~l1_orders_2(X30))&(~r1_orders_2(X30,esk3_3(X30,X31,X32),X32)|~r1_lattice3(X30,X31,X32)|X32=k2_yellow_0(X30,X31)|~r2_yellow_0(X30,X31)|~m1_subset_1(X32,u1_struct_0(X30))|~l1_orders_2(X30))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_yellow_0])])])])])).
% 0.19/0.46  cnf(c_0_60, plain, (~r2_hidden(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_51])).
% 0.19/0.46  cnf(c_0_61, plain, (r1_tarski(k1_xboole_0,X1)), inference(split_conjunct,[status(thm)],[c_0_52])).
% 0.19/0.46  cnf(c_0_62, plain, (r1_lattice3(k2_yellow_1(X1),X2,X3)|r2_hidden(esk1_3(k2_yellow_1(X1),X2,X3),X2)|~m1_subset_1(X3,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53, c_0_27]), c_0_31])])).
% 0.19/0.46  cnf(c_0_63, negated_conjecture, (v2_struct_0(k2_yellow_1(esk5_0))|~r1_orders_2(k2_yellow_1(esk5_0),k3_tarski(esk5_0),k4_yellow_0(k2_yellow_1(esk5_0)))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_54, c_0_55]), c_0_56]), c_0_31]), c_0_27]), c_0_34])]), c_0_57])).
% 0.19/0.46  cnf(c_0_64, plain, (k4_yellow_0(X1)=k2_yellow_0(X1,k1_xboole_0)|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_58])).
% 0.19/0.46  cnf(c_0_65, plain, (r1_orders_2(X2,X1,X4)|~m1_subset_1(X1,u1_struct_0(X2))|~r1_lattice3(X2,X3,X1)|X4!=k2_yellow_0(X2,X3)|~r2_yellow_0(X2,X3)|~m1_subset_1(X4,u1_struct_0(X2))|~l1_orders_2(X2)), inference(split_conjunct,[status(thm)],[c_0_59])).
% 0.19/0.46  cnf(c_0_66, plain, (~r2_hidden(X1,k1_xboole_0)), inference(spm,[status(thm)],[c_0_60, c_0_61])).
% 0.19/0.46  cnf(c_0_67, negated_conjecture, (r1_lattice3(k2_yellow_1(esk5_0),X1,k3_tarski(esk5_0))|r2_hidden(esk1_3(k2_yellow_1(esk5_0),X1,k3_tarski(esk5_0)),X1)), inference(spm,[status(thm)],[c_0_62, c_0_34])).
% 0.19/0.46  fof(c_0_68, plain, ![X37, X38, X39, X40, X41]:(((r1_lattice3(X37,X39,X38)|(X38!=k2_yellow_0(X37,X39)|~r2_yellow_0(X37,X39))|~m1_subset_1(X38,u1_struct_0(X37))|(~v5_orders_2(X37)|~l1_orders_2(X37)))&(~m1_subset_1(X40,u1_struct_0(X37))|(~r1_lattice3(X37,X39,X40)|r1_orders_2(X37,X40,X38))|(X38!=k2_yellow_0(X37,X39)|~r2_yellow_0(X37,X39))|~m1_subset_1(X38,u1_struct_0(X37))|(~v5_orders_2(X37)|~l1_orders_2(X37))))&(((X38=k2_yellow_0(X37,X41)|(m1_subset_1(esk4_3(X37,X38,X41),u1_struct_0(X37))|~r1_lattice3(X37,X41,X38))|~m1_subset_1(X38,u1_struct_0(X37))|(~v5_orders_2(X37)|~l1_orders_2(X37)))&(r2_yellow_0(X37,X41)|(m1_subset_1(esk4_3(X37,X38,X41),u1_struct_0(X37))|~r1_lattice3(X37,X41,X38))|~m1_subset_1(X38,u1_struct_0(X37))|(~v5_orders_2(X37)|~l1_orders_2(X37))))&(((X38=k2_yellow_0(X37,X41)|(r1_lattice3(X37,X41,esk4_3(X37,X38,X41))|~r1_lattice3(X37,X41,X38))|~m1_subset_1(X38,u1_struct_0(X37))|(~v5_orders_2(X37)|~l1_orders_2(X37)))&(r2_yellow_0(X37,X41)|(r1_lattice3(X37,X41,esk4_3(X37,X38,X41))|~r1_lattice3(X37,X41,X38))|~m1_subset_1(X38,u1_struct_0(X37))|(~v5_orders_2(X37)|~l1_orders_2(X37))))&((X38=k2_yellow_0(X37,X41)|(~r1_orders_2(X37,esk4_3(X37,X38,X41),X38)|~r1_lattice3(X37,X41,X38))|~m1_subset_1(X38,u1_struct_0(X37))|(~v5_orders_2(X37)|~l1_orders_2(X37)))&(r2_yellow_0(X37,X41)|(~r1_orders_2(X37,esk4_3(X37,X38,X41),X38)|~r1_lattice3(X37,X41,X38))|~m1_subset_1(X38,u1_struct_0(X37))|(~v5_orders_2(X37)|~l1_orders_2(X37))))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[t31_yellow_0])])])])])])).
% 0.19/0.46  fof(c_0_69, plain, ![X45]:((~v2_struct_0(k2_yellow_1(X45))|v1_xboole_0(X45))&(v1_orders_2(k2_yellow_1(X45))|v1_xboole_0(X45))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc6_yellow_1])])])])).
% 0.19/0.46  cnf(c_0_70, negated_conjecture, (v2_struct_0(k2_yellow_1(esk5_0))|~r1_orders_2(k2_yellow_1(esk5_0),k3_tarski(esk5_0),k2_yellow_0(k2_yellow_1(esk5_0),k1_xboole_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_63, c_0_64]), c_0_31])])).
% 0.19/0.46  cnf(c_0_71, plain, (r1_orders_2(X1,X2,k2_yellow_0(X1,X3))|~r2_yellow_0(X1,X3)|~r1_lattice3(X1,X3,X2)|~l1_orders_2(X1)|~m1_subset_1(k2_yellow_0(X1,X3),u1_struct_0(X1))|~m1_subset_1(X2,u1_struct_0(X1))), inference(er,[status(thm)],[c_0_65])).
% 0.19/0.46  cnf(c_0_72, negated_conjecture, (r1_lattice3(k2_yellow_1(esk5_0),k1_xboole_0,k3_tarski(esk5_0))), inference(spm,[status(thm)],[c_0_66, c_0_67])).
% 0.19/0.46  cnf(c_0_73, plain, (m1_subset_1(k2_yellow_0(k2_yellow_1(X1),k1_xboole_0),X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_46, c_0_64]), c_0_31])])).
% 0.19/0.46  cnf(c_0_74, plain, (r2_yellow_0(X1,X2)|m1_subset_1(esk4_3(X1,X3,X2),u1_struct_0(X1))|~r1_lattice3(X1,X2,X3)|~m1_subset_1(X3,u1_struct_0(X1))|~v5_orders_2(X1)|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_68])).
% 0.19/0.46  cnf(c_0_75, plain, (v1_xboole_0(X1)|~v2_struct_0(k2_yellow_1(X1))), inference(split_conjunct,[status(thm)],[c_0_69])).
% 0.19/0.46  cnf(c_0_76, negated_conjecture, (v2_struct_0(k2_yellow_1(esk5_0))|~r2_yellow_0(k2_yellow_1(esk5_0),k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_70, c_0_71]), c_0_72]), c_0_31]), c_0_27]), c_0_73]), c_0_27]), c_0_34])])).
% 0.19/0.46  cnf(c_0_77, plain, (r2_yellow_0(k2_yellow_1(X1),X2)|m1_subset_1(esk4_3(k2_yellow_1(X1),X3,X2),X1)|~r1_lattice3(k2_yellow_1(X1),X2,X3)|~m1_subset_1(X3,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_74, c_0_27]), c_0_56]), c_0_31])])).
% 0.19/0.46  cnf(c_0_78, negated_conjecture, (~r2_yellow_0(k2_yellow_1(esk5_0),k1_xboole_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_75, c_0_76]), c_0_35])).
% 0.19/0.46  cnf(c_0_79, negated_conjecture, (m1_subset_1(esk4_3(k2_yellow_1(esk5_0),k3_tarski(esk5_0),k1_xboole_0),esk5_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_77, c_0_72]), c_0_34])]), c_0_78])).
% 0.19/0.46  cnf(c_0_80, negated_conjecture, (r2_hidden(esk4_3(k2_yellow_1(esk5_0),k3_tarski(esk5_0),k1_xboole_0),esk5_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_45, c_0_79]), c_0_35])).
% 0.19/0.46  cnf(c_0_81, plain, (r2_yellow_0(X1,X2)|~r1_orders_2(X1,esk4_3(X1,X3,X2),X3)|~r1_lattice3(X1,X2,X3)|~m1_subset_1(X3,u1_struct_0(X1))|~v5_orders_2(X1)|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_68])).
% 0.19/0.46  cnf(c_0_82, negated_conjecture, (r1_orders_2(k2_yellow_1(esk5_0),esk4_3(k2_yellow_1(esk5_0),k3_tarski(esk5_0),k1_xboole_0),k3_tarski(esk5_0))|v2_struct_0(k2_yellow_1(esk5_0))), inference(spm,[status(thm)],[c_0_49, c_0_80])).
% 0.19/0.46  cnf(c_0_83, negated_conjecture, (v2_struct_0(k2_yellow_1(esk5_0))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_81, c_0_82]), c_0_72]), c_0_56]), c_0_31]), c_0_27]), c_0_34])]), c_0_78])).
% 0.19/0.46  cnf(c_0_84, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_75, c_0_83]), c_0_35]), ['proof']).
% 0.19/0.46  # SZS output end CNFRefutation
% 0.19/0.46  # Proof object total steps             : 85
% 0.19/0.46  # Proof object clause steps            : 48
% 0.19/0.46  # Proof object formula steps           : 37
% 0.19/0.46  # Proof object conjectures             : 22
% 0.19/0.46  # Proof object clause conjectures      : 19
% 0.19/0.46  # Proof object formula conjectures     : 3
% 0.19/0.46  # Proof object initial clauses used    : 22
% 0.19/0.46  # Proof object initial formulas used   : 18
% 0.19/0.46  # Proof object generating inferences   : 24
% 0.19/0.46  # Proof object simplifying inferences  : 48
% 0.19/0.46  # Training examples: 0 positive, 0 negative
% 0.19/0.46  # Parsed axioms                        : 19
% 0.19/0.46  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.46  # Initial clauses                      : 46
% 0.19/0.46  # Removed in clause preprocessing      : 1
% 0.19/0.46  # Initial clauses in saturation        : 45
% 0.19/0.46  # Processed clauses                    : 497
% 0.19/0.46  # ...of these trivial                  : 3
% 0.19/0.46  # ...subsumed                          : 177
% 0.19/0.46  # ...remaining for further processing  : 317
% 0.19/0.46  # Other redundant clauses eliminated   : 4
% 0.19/0.46  # Clauses deleted for lack of memory   : 0
% 0.19/0.46  # Backward-subsumed                    : 9
% 0.19/0.46  # Backward-rewritten                   : 74
% 0.19/0.46  # Generated clauses                    : 911
% 0.19/0.46  # ...of the previous two non-trivial   : 891
% 0.19/0.46  # Contextual simplify-reflections      : 23
% 0.19/0.46  # Paramodulations                      : 907
% 0.19/0.46  # Factorizations                       : 0
% 0.19/0.46  # Equation resolutions                 : 4
% 0.19/0.46  # Propositional unsat checks           : 0
% 0.19/0.46  #    Propositional check models        : 0
% 0.19/0.46  #    Propositional check unsatisfiable : 0
% 0.19/0.46  #    Propositional clauses             : 0
% 0.19/0.46  #    Propositional clauses after purity: 0
% 0.19/0.46  #    Propositional unsat core size     : 0
% 0.19/0.46  #    Propositional preprocessing time  : 0.000
% 0.19/0.46  #    Propositional encoding time       : 0.000
% 0.19/0.46  #    Propositional solver time         : 0.000
% 0.19/0.46  #    Success case prop preproc time    : 0.000
% 0.19/0.46  #    Success case prop encoding time   : 0.000
% 0.19/0.46  #    Success case prop solver time     : 0.000
% 0.19/0.46  # Current number of processed clauses  : 189
% 0.19/0.46  #    Positive orientable unit clauses  : 21
% 0.19/0.46  #    Positive unorientable unit clauses: 0
% 0.19/0.46  #    Negative unit clauses             : 6
% 0.19/0.46  #    Non-unit-clauses                  : 162
% 0.19/0.46  # Current number of unprocessed clauses: 471
% 0.19/0.46  # ...number of literals in the above   : 2288
% 0.19/0.46  # Current number of archived formulas  : 0
% 0.19/0.46  # Current number of archived clauses   : 125
% 0.19/0.46  # Clause-clause subsumption calls (NU) : 12383
% 0.19/0.46  # Rec. Clause-clause subsumption calls : 4757
% 0.19/0.46  # Non-unit clause-clause subsumptions  : 194
% 0.19/0.46  # Unit Clause-clause subsumption calls : 93
% 0.19/0.46  # Rewrite failures with RHS unbound    : 0
% 0.19/0.46  # BW rewrite match attempts            : 3
% 0.19/0.46  # BW rewrite match successes           : 1
% 0.19/0.46  # Condensation attempts                : 0
% 0.19/0.46  # Condensation successes               : 0
% 0.19/0.46  # Termbank termtop insertions          : 30881
% 0.19/0.46  
% 0.19/0.46  # -------------------------------------------------
% 0.19/0.46  # User time                : 0.113 s
% 0.19/0.46  # System time              : 0.008 s
% 0.19/0.46  # Total time               : 0.121 s
% 0.19/0.46  # Maximum resident set size: 1596 pages
%------------------------------------------------------------------------------
