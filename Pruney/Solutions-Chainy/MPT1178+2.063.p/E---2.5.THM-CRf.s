%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n017.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:10:20 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   62 ( 392 expanded)
%              Number of clauses        :   44 ( 140 expanded)
%              Number of leaves         :    9 (  96 expanded)
%              Depth                    :   13
%              Number of atoms          :  255 (2128 expanded)
%              Number of equality atoms :   49 ( 372 expanded)
%              Maximal formula depth    :   19 (   5 average)
%              Maximal clause size      :   36 (   3 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t87_orders_2,conjecture,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v3_orders_2(X1)
        & v4_orders_2(X1)
        & v5_orders_2(X1)
        & l1_orders_2(X1) )
     => ! [X2] :
          ( m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
         => k3_tarski(k4_orders_2(X1,X2)) != k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t87_orders_2)).

fof(t91_orders_1,axiom,(
    ! [X1] :
      ( ~ ( ? [X2] :
              ( X2 != k1_xboole_0
              & r2_hidden(X2,X1) )
          & k3_tarski(X1) = k1_xboole_0 )
      & ~ ( k3_tarski(X1) != k1_xboole_0
          & ! [X2] :
              ~ ( X2 != k1_xboole_0
                & r2_hidden(X2,X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t91_orders_1)).

fof(t5_subset,axiom,(
    ! [X1,X2,X3] :
      ~ ( r2_hidden(X1,X2)
        & m1_subset_1(X2,k1_zfmisc_1(X3))
        & v1_xboole_0(X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t5_subset)).

fof(t4_subset_1,axiom,(
    ! [X1] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t4_subset_1)).

fof(d17_orders_2,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v3_orders_2(X1)
        & v4_orders_2(X1)
        & v5_orders_2(X1)
        & l1_orders_2(X1) )
     => ! [X2] :
          ( m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
         => ! [X3] :
              ( X3 = k4_orders_2(X1,X2)
            <=> ! [X4] :
                  ( r2_hidden(X4,X3)
                <=> m2_orders_2(X4,X1,X2) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d17_orders_2)).

fof(t7_xboole_0,axiom,(
    ! [X1] :
      ~ ( X1 != k1_xboole_0
        & ! [X2] : ~ r2_hidden(X2,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_xboole_0)).

fof(t79_orders_2,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v3_orders_2(X1)
        & v4_orders_2(X1)
        & v5_orders_2(X1)
        & l1_orders_2(X1) )
     => ! [X2] :
          ( m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
         => ! [X3] :
              ( m2_orders_2(X3,X1,X2)
             => r2_hidden(k1_funct_1(X2,u1_struct_0(X1)),X3) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t79_orders_2)).

fof(fc1_xboole_0,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc1_xboole_0)).

fof(fc9_orders_2,axiom,(
    ! [X1,X2] :
      ( ( ~ v2_struct_0(X1)
        & v3_orders_2(X1)
        & v4_orders_2(X1)
        & v5_orders_2(X1)
        & l1_orders_2(X1)
        & m1_orders_1(X2,k1_orders_1(u1_struct_0(X1))) )
     => ~ v1_xboole_0(k4_orders_2(X1,X2)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc9_orders_2)).

fof(c_0_9,negated_conjecture,(
    ~ ! [X1] :
        ( ( ~ v2_struct_0(X1)
          & v3_orders_2(X1)
          & v4_orders_2(X1)
          & v5_orders_2(X1)
          & l1_orders_2(X1) )
       => ! [X2] :
            ( m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
           => k3_tarski(k4_orders_2(X1,X2)) != k1_xboole_0 ) ) ),
    inference(assume_negation,[status(cth)],[t87_orders_2])).

fof(c_0_10,plain,(
    ! [X26,X27,X28] :
      ( ( X27 = k1_xboole_0
        | ~ r2_hidden(X27,X26)
        | k3_tarski(X26) != k1_xboole_0 )
      & ( esk3_1(X28) != k1_xboole_0
        | k3_tarski(X28) = k1_xboole_0 )
      & ( r2_hidden(esk3_1(X28),X28)
        | k3_tarski(X28) = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[t91_orders_1])])])])])])).

fof(c_0_11,negated_conjecture,
    ( ~ v2_struct_0(esk4_0)
    & v3_orders_2(esk4_0)
    & v4_orders_2(esk4_0)
    & v5_orders_2(esk4_0)
    & l1_orders_2(esk4_0)
    & m1_orders_1(esk5_0,k1_orders_1(u1_struct_0(esk4_0)))
    & k3_tarski(k4_orders_2(esk4_0,esk5_0)) = k1_xboole_0 ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_9])])])])).

fof(c_0_12,plain,(
    ! [X11,X12,X13] :
      ( ~ r2_hidden(X11,X12)
      | ~ m1_subset_1(X12,k1_zfmisc_1(X13))
      | ~ v1_xboole_0(X13) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t5_subset])])).

fof(c_0_13,plain,(
    ! [X7] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X7)) ),
    inference(variable_rename,[status(thm)],[t4_subset_1])).

fof(c_0_14,plain,(
    ! [X14,X15,X16,X17,X18,X19] :
      ( ( ~ r2_hidden(X17,X16)
        | m2_orders_2(X17,X14,X15)
        | X16 != k4_orders_2(X14,X15)
        | ~ m1_orders_1(X15,k1_orders_1(u1_struct_0(X14)))
        | v2_struct_0(X14)
        | ~ v3_orders_2(X14)
        | ~ v4_orders_2(X14)
        | ~ v5_orders_2(X14)
        | ~ l1_orders_2(X14) )
      & ( ~ m2_orders_2(X18,X14,X15)
        | r2_hidden(X18,X16)
        | X16 != k4_orders_2(X14,X15)
        | ~ m1_orders_1(X15,k1_orders_1(u1_struct_0(X14)))
        | v2_struct_0(X14)
        | ~ v3_orders_2(X14)
        | ~ v4_orders_2(X14)
        | ~ v5_orders_2(X14)
        | ~ l1_orders_2(X14) )
      & ( ~ r2_hidden(esk2_3(X14,X15,X19),X19)
        | ~ m2_orders_2(esk2_3(X14,X15,X19),X14,X15)
        | X19 = k4_orders_2(X14,X15)
        | ~ m1_orders_1(X15,k1_orders_1(u1_struct_0(X14)))
        | v2_struct_0(X14)
        | ~ v3_orders_2(X14)
        | ~ v4_orders_2(X14)
        | ~ v5_orders_2(X14)
        | ~ l1_orders_2(X14) )
      & ( r2_hidden(esk2_3(X14,X15,X19),X19)
        | m2_orders_2(esk2_3(X14,X15,X19),X14,X15)
        | X19 = k4_orders_2(X14,X15)
        | ~ m1_orders_1(X15,k1_orders_1(u1_struct_0(X14)))
        | v2_struct_0(X14)
        | ~ v3_orders_2(X14)
        | ~ v4_orders_2(X14)
        | ~ v5_orders_2(X14)
        | ~ l1_orders_2(X14) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d17_orders_2])])])])])])])).

cnf(c_0_15,plain,
    ( X1 = k1_xboole_0
    | ~ r2_hidden(X1,X2)
    | k3_tarski(X2) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_16,negated_conjecture,
    ( k3_tarski(k4_orders_2(esk4_0,esk5_0)) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

fof(c_0_17,plain,(
    ! [X5] :
      ( X5 = k1_xboole_0
      | r2_hidden(esk1_1(X5),X5) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t7_xboole_0])])])])).

cnf(c_0_18,plain,
    ( ~ r2_hidden(X1,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X3))
    | ~ v1_xboole_0(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_19,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_20,plain,
    ( m2_orders_2(X1,X3,X4)
    | v2_struct_0(X3)
    | ~ r2_hidden(X1,X2)
    | X2 != k4_orders_2(X3,X4)
    | ~ m1_orders_1(X4,k1_orders_1(u1_struct_0(X3)))
    | ~ v3_orders_2(X3)
    | ~ v4_orders_2(X3)
    | ~ v5_orders_2(X3)
    | ~ l1_orders_2(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_21,negated_conjecture,
    ( X1 = k1_xboole_0
    | ~ r2_hidden(X1,k4_orders_2(esk4_0,esk5_0)) ),
    inference(spm,[status(thm)],[c_0_15,c_0_16])).

cnf(c_0_22,plain,
    ( X1 = k1_xboole_0
    | r2_hidden(esk1_1(X1),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_23,plain,
    ( r2_hidden(X1,X4)
    | v2_struct_0(X2)
    | ~ m2_orders_2(X1,X2,X3)
    | X4 != k4_orders_2(X2,X3)
    | ~ m1_orders_1(X3,k1_orders_1(u1_struct_0(X2)))
    | ~ v3_orders_2(X2)
    | ~ v4_orders_2(X2)
    | ~ v5_orders_2(X2)
    | ~ l1_orders_2(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_24,plain,
    ( ~ r2_hidden(X1,k1_xboole_0)
    | ~ v1_xboole_0(X2) ),
    inference(spm,[status(thm)],[c_0_18,c_0_19])).

cnf(c_0_25,plain,
    ( r2_hidden(esk3_1(X1),X1)
    | k3_tarski(X1) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

fof(c_0_26,plain,(
    ! [X23,X24,X25] :
      ( v2_struct_0(X23)
      | ~ v3_orders_2(X23)
      | ~ v4_orders_2(X23)
      | ~ v5_orders_2(X23)
      | ~ l1_orders_2(X23)
      | ~ m1_orders_1(X24,k1_orders_1(u1_struct_0(X23)))
      | ~ m2_orders_2(X25,X23,X24)
      | r2_hidden(k1_funct_1(X24,u1_struct_0(X23)),X25) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t79_orders_2])])])])).

cnf(c_0_27,plain,
    ( m2_orders_2(X1,X2,X3)
    | v2_struct_0(X2)
    | ~ m1_orders_1(X3,k1_orders_1(u1_struct_0(X2)))
    | ~ l1_orders_2(X2)
    | ~ v5_orders_2(X2)
    | ~ v4_orders_2(X2)
    | ~ v3_orders_2(X2)
    | ~ r2_hidden(X1,k4_orders_2(X2,X3)) ),
    inference(er,[status(thm)],[c_0_20])).

cnf(c_0_28,negated_conjecture,
    ( m1_orders_1(esk5_0,k1_orders_1(u1_struct_0(esk4_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_29,negated_conjecture,
    ( l1_orders_2(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_30,negated_conjecture,
    ( v5_orders_2(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_31,negated_conjecture,
    ( v4_orders_2(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_32,negated_conjecture,
    ( v3_orders_2(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_33,negated_conjecture,
    ( ~ v2_struct_0(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_34,negated_conjecture,
    ( esk1_1(k4_orders_2(esk4_0,esk5_0)) = k1_xboole_0
    | k4_orders_2(esk4_0,esk5_0) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_21,c_0_22])).

cnf(c_0_35,plain,
    ( v2_struct_0(X1)
    | r2_hidden(X2,k4_orders_2(X1,X3))
    | ~ m2_orders_2(X2,X1,X3)
    | ~ m1_orders_1(X3,k1_orders_1(u1_struct_0(X1)))
    | ~ l1_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v3_orders_2(X1) ),
    inference(er,[status(thm)],[c_0_23])).

cnf(c_0_36,plain,
    ( r2_hidden(esk2_3(X1,X2,X3),X3)
    | m2_orders_2(esk2_3(X1,X2,X3),X1,X2)
    | X3 = k4_orders_2(X1,X2)
    | v2_struct_0(X1)
    | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_37,plain,
    ( k3_tarski(k1_xboole_0) = k1_xboole_0
    | ~ v1_xboole_0(X1) ),
    inference(spm,[status(thm)],[c_0_24,c_0_25])).

cnf(c_0_38,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(split_conjunct,[status(thm)],[fc1_xboole_0])).

cnf(c_0_39,plain,
    ( v2_struct_0(X1)
    | r2_hidden(k1_funct_1(X2,u1_struct_0(X1)),X3)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
    | ~ m2_orders_2(X3,X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_40,negated_conjecture,
    ( m2_orders_2(X1,esk4_0,esk5_0)
    | ~ r2_hidden(X1,k4_orders_2(esk4_0,esk5_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27,c_0_28]),c_0_29]),c_0_30]),c_0_31]),c_0_32])]),c_0_33])).

cnf(c_0_41,negated_conjecture,
    ( k4_orders_2(esk4_0,esk5_0) = k1_xboole_0
    | r2_hidden(k1_xboole_0,k4_orders_2(esk4_0,esk5_0)) ),
    inference(spm,[status(thm)],[c_0_22,c_0_34])).

cnf(c_0_42,negated_conjecture,
    ( r2_hidden(X1,k4_orders_2(esk4_0,esk5_0))
    | ~ m2_orders_2(X1,esk4_0,esk5_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35,c_0_28]),c_0_29]),c_0_30]),c_0_31]),c_0_32])]),c_0_33])).

cnf(c_0_43,negated_conjecture,
    ( X1 = k4_orders_2(esk4_0,esk5_0)
    | m2_orders_2(esk2_3(esk4_0,esk5_0,X1),esk4_0,esk5_0)
    | r2_hidden(esk2_3(esk4_0,esk5_0,X1),X1) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_36,c_0_28]),c_0_29]),c_0_30]),c_0_31]),c_0_32])]),c_0_33])).

cnf(c_0_44,plain,
    ( k3_tarski(k1_xboole_0) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_37,c_0_38])).

cnf(c_0_45,negated_conjecture,
    ( r2_hidden(k1_funct_1(esk5_0,u1_struct_0(esk4_0)),X1)
    | ~ m2_orders_2(X1,esk4_0,esk5_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39,c_0_28]),c_0_29]),c_0_30]),c_0_31]),c_0_32])]),c_0_33])).

cnf(c_0_46,negated_conjecture,
    ( k4_orders_2(esk4_0,esk5_0) = k1_xboole_0
    | m2_orders_2(k1_xboole_0,esk4_0,esk5_0) ),
    inference(spm,[status(thm)],[c_0_40,c_0_41])).

cnf(c_0_47,negated_conjecture,
    ( X1 = k4_orders_2(esk4_0,esk5_0)
    | r2_hidden(esk2_3(esk4_0,esk5_0,X1),k4_orders_2(esk4_0,esk5_0))
    | r2_hidden(esk2_3(esk4_0,esk5_0,X1),X1) ),
    inference(spm,[status(thm)],[c_0_42,c_0_43])).

cnf(c_0_48,plain,
    ( X1 = k1_xboole_0
    | ~ r2_hidden(X1,k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_15,c_0_44])).

cnf(c_0_49,negated_conjecture,
    ( k4_orders_2(esk4_0,esk5_0) = k1_xboole_0
    | r2_hidden(k1_funct_1(esk5_0,u1_struct_0(esk4_0)),k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_45,c_0_46])).

cnf(c_0_50,plain,
    ( X3 = k4_orders_2(X1,X2)
    | v2_struct_0(X1)
    | ~ r2_hidden(esk2_3(X1,X2,X3),X3)
    | ~ m2_orders_2(esk2_3(X1,X2,X3),X1,X2)
    | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_51,negated_conjecture,
    ( esk2_3(esk4_0,esk5_0,X1) = k1_xboole_0
    | X1 = k4_orders_2(esk4_0,esk5_0)
    | r2_hidden(esk2_3(esk4_0,esk5_0,X1),X1) ),
    inference(spm,[status(thm)],[c_0_21,c_0_47])).

fof(c_0_52,plain,(
    ! [X21,X22] :
      ( v2_struct_0(X21)
      | ~ v3_orders_2(X21)
      | ~ v4_orders_2(X21)
      | ~ v5_orders_2(X21)
      | ~ l1_orders_2(X21)
      | ~ m1_orders_1(X22,k1_orders_1(u1_struct_0(X21)))
      | ~ v1_xboole_0(k4_orders_2(X21,X22)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc9_orders_2])])])).

cnf(c_0_53,negated_conjecture,
    ( k1_funct_1(esk5_0,u1_struct_0(esk4_0)) = k1_xboole_0
    | k4_orders_2(esk4_0,esk5_0) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_48,c_0_49])).

cnf(c_0_54,negated_conjecture,
    ( X1 = k4_orders_2(esk4_0,esk5_0)
    | ~ m2_orders_2(esk2_3(esk4_0,esk5_0,X1),esk4_0,esk5_0)
    | ~ r2_hidden(esk2_3(esk4_0,esk5_0,X1),X1) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50,c_0_28]),c_0_29]),c_0_30]),c_0_31]),c_0_32])]),c_0_33])).

cnf(c_0_55,negated_conjecture,
    ( esk2_3(esk4_0,esk5_0,k1_xboole_0) = k1_xboole_0
    | k4_orders_2(esk4_0,esk5_0) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_48,c_0_51])).

cnf(c_0_56,plain,
    ( v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
    | ~ v1_xboole_0(k4_orders_2(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_52])).

cnf(c_0_57,negated_conjecture,
    ( k4_orders_2(esk4_0,esk5_0) = k1_xboole_0
    | r2_hidden(k1_xboole_0,k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_49,c_0_53])).

cnf(c_0_58,negated_conjecture,
    ( k4_orders_2(esk4_0,esk5_0) = k1_xboole_0
    | ~ m2_orders_2(k1_xboole_0,esk4_0,esk5_0)
    | ~ r2_hidden(k1_xboole_0,k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_54,c_0_55])).

cnf(c_0_59,negated_conjecture,
    ( r2_hidden(k1_xboole_0,k1_xboole_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_56,c_0_57]),c_0_28]),c_0_29]),c_0_30]),c_0_31]),c_0_32]),c_0_38])]),c_0_33])).

cnf(c_0_60,negated_conjecture,
    ( k4_orders_2(esk4_0,esk5_0) = k1_xboole_0 ),
    inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_58,c_0_59])]),c_0_46])).

cnf(c_0_61,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_56,c_0_60]),c_0_28]),c_0_29]),c_0_30]),c_0_31]),c_0_32]),c_0_38])]),c_0_33]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n017.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 10:09:31 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.13/0.38  # AutoSched0-Mode selected heuristic G_E___008_C18_F1_PI_SE_CS_SP_CO_S4S
% 0.13/0.38  # and selection function SelectNewComplexAHPNS.
% 0.13/0.38  #
% 0.13/0.38  # Preprocessing time       : 0.028 s
% 0.13/0.38  
% 0.13/0.38  # Proof found!
% 0.13/0.38  # SZS status Theorem
% 0.13/0.38  # SZS output start CNFRefutation
% 0.13/0.38  fof(t87_orders_2, conjecture, ![X1]:(((((~(v2_struct_0(X1))&v3_orders_2(X1))&v4_orders_2(X1))&v5_orders_2(X1))&l1_orders_2(X1))=>![X2]:(m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))=>k3_tarski(k4_orders_2(X1,X2))!=k1_xboole_0)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t87_orders_2)).
% 0.13/0.38  fof(t91_orders_1, axiom, ![X1]:(~((?[X2]:(X2!=k1_xboole_0&r2_hidden(X2,X1))&k3_tarski(X1)=k1_xboole_0))&~((k3_tarski(X1)!=k1_xboole_0&![X2]:~((X2!=k1_xboole_0&r2_hidden(X2,X1)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t91_orders_1)).
% 0.13/0.38  fof(t5_subset, axiom, ![X1, X2, X3]:~(((r2_hidden(X1,X2)&m1_subset_1(X2,k1_zfmisc_1(X3)))&v1_xboole_0(X3))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t5_subset)).
% 0.13/0.38  fof(t4_subset_1, axiom, ![X1]:m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t4_subset_1)).
% 0.13/0.38  fof(d17_orders_2, axiom, ![X1]:(((((~(v2_struct_0(X1))&v3_orders_2(X1))&v4_orders_2(X1))&v5_orders_2(X1))&l1_orders_2(X1))=>![X2]:(m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))=>![X3]:(X3=k4_orders_2(X1,X2)<=>![X4]:(r2_hidden(X4,X3)<=>m2_orders_2(X4,X1,X2))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d17_orders_2)).
% 0.13/0.38  fof(t7_xboole_0, axiom, ![X1]:~((X1!=k1_xboole_0&![X2]:~(r2_hidden(X2,X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t7_xboole_0)).
% 0.13/0.38  fof(t79_orders_2, axiom, ![X1]:(((((~(v2_struct_0(X1))&v3_orders_2(X1))&v4_orders_2(X1))&v5_orders_2(X1))&l1_orders_2(X1))=>![X2]:(m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))=>![X3]:(m2_orders_2(X3,X1,X2)=>r2_hidden(k1_funct_1(X2,u1_struct_0(X1)),X3)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t79_orders_2)).
% 0.13/0.38  fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc1_xboole_0)).
% 0.13/0.38  fof(fc9_orders_2, axiom, ![X1, X2]:((((((~(v2_struct_0(X1))&v3_orders_2(X1))&v4_orders_2(X1))&v5_orders_2(X1))&l1_orders_2(X1))&m1_orders_1(X2,k1_orders_1(u1_struct_0(X1))))=>~(v1_xboole_0(k4_orders_2(X1,X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc9_orders_2)).
% 0.13/0.38  fof(c_0_9, negated_conjecture, ~(![X1]:(((((~(v2_struct_0(X1))&v3_orders_2(X1))&v4_orders_2(X1))&v5_orders_2(X1))&l1_orders_2(X1))=>![X2]:(m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))=>k3_tarski(k4_orders_2(X1,X2))!=k1_xboole_0))), inference(assume_negation,[status(cth)],[t87_orders_2])).
% 0.13/0.38  fof(c_0_10, plain, ![X26, X27, X28]:((X27=k1_xboole_0|~r2_hidden(X27,X26)|k3_tarski(X26)!=k1_xboole_0)&((esk3_1(X28)!=k1_xboole_0|k3_tarski(X28)=k1_xboole_0)&(r2_hidden(esk3_1(X28),X28)|k3_tarski(X28)=k1_xboole_0))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[t91_orders_1])])])])])])).
% 0.13/0.38  fof(c_0_11, negated_conjecture, (((((~v2_struct_0(esk4_0)&v3_orders_2(esk4_0))&v4_orders_2(esk4_0))&v5_orders_2(esk4_0))&l1_orders_2(esk4_0))&(m1_orders_1(esk5_0,k1_orders_1(u1_struct_0(esk4_0)))&k3_tarski(k4_orders_2(esk4_0,esk5_0))=k1_xboole_0)), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_9])])])])).
% 0.13/0.38  fof(c_0_12, plain, ![X11, X12, X13]:(~r2_hidden(X11,X12)|~m1_subset_1(X12,k1_zfmisc_1(X13))|~v1_xboole_0(X13)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t5_subset])])).
% 0.13/0.38  fof(c_0_13, plain, ![X7]:m1_subset_1(k1_xboole_0,k1_zfmisc_1(X7)), inference(variable_rename,[status(thm)],[t4_subset_1])).
% 0.13/0.38  fof(c_0_14, plain, ![X14, X15, X16, X17, X18, X19]:(((~r2_hidden(X17,X16)|m2_orders_2(X17,X14,X15)|X16!=k4_orders_2(X14,X15)|~m1_orders_1(X15,k1_orders_1(u1_struct_0(X14)))|(v2_struct_0(X14)|~v3_orders_2(X14)|~v4_orders_2(X14)|~v5_orders_2(X14)|~l1_orders_2(X14)))&(~m2_orders_2(X18,X14,X15)|r2_hidden(X18,X16)|X16!=k4_orders_2(X14,X15)|~m1_orders_1(X15,k1_orders_1(u1_struct_0(X14)))|(v2_struct_0(X14)|~v3_orders_2(X14)|~v4_orders_2(X14)|~v5_orders_2(X14)|~l1_orders_2(X14))))&((~r2_hidden(esk2_3(X14,X15,X19),X19)|~m2_orders_2(esk2_3(X14,X15,X19),X14,X15)|X19=k4_orders_2(X14,X15)|~m1_orders_1(X15,k1_orders_1(u1_struct_0(X14)))|(v2_struct_0(X14)|~v3_orders_2(X14)|~v4_orders_2(X14)|~v5_orders_2(X14)|~l1_orders_2(X14)))&(r2_hidden(esk2_3(X14,X15,X19),X19)|m2_orders_2(esk2_3(X14,X15,X19),X14,X15)|X19=k4_orders_2(X14,X15)|~m1_orders_1(X15,k1_orders_1(u1_struct_0(X14)))|(v2_struct_0(X14)|~v3_orders_2(X14)|~v4_orders_2(X14)|~v5_orders_2(X14)|~l1_orders_2(X14))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d17_orders_2])])])])])])])).
% 0.13/0.38  cnf(c_0_15, plain, (X1=k1_xboole_0|~r2_hidden(X1,X2)|k3_tarski(X2)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_16, negated_conjecture, (k3_tarski(k4_orders_2(esk4_0,esk5_0))=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.13/0.38  fof(c_0_17, plain, ![X5]:(X5=k1_xboole_0|r2_hidden(esk1_1(X5),X5)), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t7_xboole_0])])])])).
% 0.13/0.38  cnf(c_0_18, plain, (~r2_hidden(X1,X2)|~m1_subset_1(X2,k1_zfmisc_1(X3))|~v1_xboole_0(X3)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.13/0.38  cnf(c_0_19, plain, (m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.13/0.38  cnf(c_0_20, plain, (m2_orders_2(X1,X3,X4)|v2_struct_0(X3)|~r2_hidden(X1,X2)|X2!=k4_orders_2(X3,X4)|~m1_orders_1(X4,k1_orders_1(u1_struct_0(X3)))|~v3_orders_2(X3)|~v4_orders_2(X3)|~v5_orders_2(X3)|~l1_orders_2(X3)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.13/0.38  cnf(c_0_21, negated_conjecture, (X1=k1_xboole_0|~r2_hidden(X1,k4_orders_2(esk4_0,esk5_0))), inference(spm,[status(thm)],[c_0_15, c_0_16])).
% 0.13/0.38  cnf(c_0_22, plain, (X1=k1_xboole_0|r2_hidden(esk1_1(X1),X1)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.13/0.38  cnf(c_0_23, plain, (r2_hidden(X1,X4)|v2_struct_0(X2)|~m2_orders_2(X1,X2,X3)|X4!=k4_orders_2(X2,X3)|~m1_orders_1(X3,k1_orders_1(u1_struct_0(X2)))|~v3_orders_2(X2)|~v4_orders_2(X2)|~v5_orders_2(X2)|~l1_orders_2(X2)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.13/0.38  cnf(c_0_24, plain, (~r2_hidden(X1,k1_xboole_0)|~v1_xboole_0(X2)), inference(spm,[status(thm)],[c_0_18, c_0_19])).
% 0.13/0.38  cnf(c_0_25, plain, (r2_hidden(esk3_1(X1),X1)|k3_tarski(X1)=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  fof(c_0_26, plain, ![X23, X24, X25]:(v2_struct_0(X23)|~v3_orders_2(X23)|~v4_orders_2(X23)|~v5_orders_2(X23)|~l1_orders_2(X23)|(~m1_orders_1(X24,k1_orders_1(u1_struct_0(X23)))|(~m2_orders_2(X25,X23,X24)|r2_hidden(k1_funct_1(X24,u1_struct_0(X23)),X25)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t79_orders_2])])])])).
% 0.13/0.38  cnf(c_0_27, plain, (m2_orders_2(X1,X2,X3)|v2_struct_0(X2)|~m1_orders_1(X3,k1_orders_1(u1_struct_0(X2)))|~l1_orders_2(X2)|~v5_orders_2(X2)|~v4_orders_2(X2)|~v3_orders_2(X2)|~r2_hidden(X1,k4_orders_2(X2,X3))), inference(er,[status(thm)],[c_0_20])).
% 0.13/0.38  cnf(c_0_28, negated_conjecture, (m1_orders_1(esk5_0,k1_orders_1(u1_struct_0(esk4_0)))), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.13/0.38  cnf(c_0_29, negated_conjecture, (l1_orders_2(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.13/0.38  cnf(c_0_30, negated_conjecture, (v5_orders_2(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.13/0.38  cnf(c_0_31, negated_conjecture, (v4_orders_2(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.13/0.38  cnf(c_0_32, negated_conjecture, (v3_orders_2(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.13/0.38  cnf(c_0_33, negated_conjecture, (~v2_struct_0(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.13/0.38  cnf(c_0_34, negated_conjecture, (esk1_1(k4_orders_2(esk4_0,esk5_0))=k1_xboole_0|k4_orders_2(esk4_0,esk5_0)=k1_xboole_0), inference(spm,[status(thm)],[c_0_21, c_0_22])).
% 0.13/0.38  cnf(c_0_35, plain, (v2_struct_0(X1)|r2_hidden(X2,k4_orders_2(X1,X3))|~m2_orders_2(X2,X1,X3)|~m1_orders_1(X3,k1_orders_1(u1_struct_0(X1)))|~l1_orders_2(X1)|~v5_orders_2(X1)|~v4_orders_2(X1)|~v3_orders_2(X1)), inference(er,[status(thm)],[c_0_23])).
% 0.13/0.38  cnf(c_0_36, plain, (r2_hidden(esk2_3(X1,X2,X3),X3)|m2_orders_2(esk2_3(X1,X2,X3),X1,X2)|X3=k4_orders_2(X1,X2)|v2_struct_0(X1)|~m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))|~v3_orders_2(X1)|~v4_orders_2(X1)|~v5_orders_2(X1)|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.13/0.38  cnf(c_0_37, plain, (k3_tarski(k1_xboole_0)=k1_xboole_0|~v1_xboole_0(X1)), inference(spm,[status(thm)],[c_0_24, c_0_25])).
% 0.13/0.38  cnf(c_0_38, plain, (v1_xboole_0(k1_xboole_0)), inference(split_conjunct,[status(thm)],[fc1_xboole_0])).
% 0.13/0.38  cnf(c_0_39, plain, (v2_struct_0(X1)|r2_hidden(k1_funct_1(X2,u1_struct_0(X1)),X3)|~v3_orders_2(X1)|~v4_orders_2(X1)|~v5_orders_2(X1)|~l1_orders_2(X1)|~m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))|~m2_orders_2(X3,X1,X2)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.13/0.38  cnf(c_0_40, negated_conjecture, (m2_orders_2(X1,esk4_0,esk5_0)|~r2_hidden(X1,k4_orders_2(esk4_0,esk5_0))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27, c_0_28]), c_0_29]), c_0_30]), c_0_31]), c_0_32])]), c_0_33])).
% 0.13/0.38  cnf(c_0_41, negated_conjecture, (k4_orders_2(esk4_0,esk5_0)=k1_xboole_0|r2_hidden(k1_xboole_0,k4_orders_2(esk4_0,esk5_0))), inference(spm,[status(thm)],[c_0_22, c_0_34])).
% 0.13/0.38  cnf(c_0_42, negated_conjecture, (r2_hidden(X1,k4_orders_2(esk4_0,esk5_0))|~m2_orders_2(X1,esk4_0,esk5_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35, c_0_28]), c_0_29]), c_0_30]), c_0_31]), c_0_32])]), c_0_33])).
% 0.13/0.38  cnf(c_0_43, negated_conjecture, (X1=k4_orders_2(esk4_0,esk5_0)|m2_orders_2(esk2_3(esk4_0,esk5_0,X1),esk4_0,esk5_0)|r2_hidden(esk2_3(esk4_0,esk5_0,X1),X1)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_36, c_0_28]), c_0_29]), c_0_30]), c_0_31]), c_0_32])]), c_0_33])).
% 0.13/0.38  cnf(c_0_44, plain, (k3_tarski(k1_xboole_0)=k1_xboole_0), inference(spm,[status(thm)],[c_0_37, c_0_38])).
% 0.13/0.38  cnf(c_0_45, negated_conjecture, (r2_hidden(k1_funct_1(esk5_0,u1_struct_0(esk4_0)),X1)|~m2_orders_2(X1,esk4_0,esk5_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39, c_0_28]), c_0_29]), c_0_30]), c_0_31]), c_0_32])]), c_0_33])).
% 0.13/0.38  cnf(c_0_46, negated_conjecture, (k4_orders_2(esk4_0,esk5_0)=k1_xboole_0|m2_orders_2(k1_xboole_0,esk4_0,esk5_0)), inference(spm,[status(thm)],[c_0_40, c_0_41])).
% 0.13/0.38  cnf(c_0_47, negated_conjecture, (X1=k4_orders_2(esk4_0,esk5_0)|r2_hidden(esk2_3(esk4_0,esk5_0,X1),k4_orders_2(esk4_0,esk5_0))|r2_hidden(esk2_3(esk4_0,esk5_0,X1),X1)), inference(spm,[status(thm)],[c_0_42, c_0_43])).
% 0.13/0.38  cnf(c_0_48, plain, (X1=k1_xboole_0|~r2_hidden(X1,k1_xboole_0)), inference(spm,[status(thm)],[c_0_15, c_0_44])).
% 0.13/0.38  cnf(c_0_49, negated_conjecture, (k4_orders_2(esk4_0,esk5_0)=k1_xboole_0|r2_hidden(k1_funct_1(esk5_0,u1_struct_0(esk4_0)),k1_xboole_0)), inference(spm,[status(thm)],[c_0_45, c_0_46])).
% 0.13/0.38  cnf(c_0_50, plain, (X3=k4_orders_2(X1,X2)|v2_struct_0(X1)|~r2_hidden(esk2_3(X1,X2,X3),X3)|~m2_orders_2(esk2_3(X1,X2,X3),X1,X2)|~m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))|~v3_orders_2(X1)|~v4_orders_2(X1)|~v5_orders_2(X1)|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.13/0.38  cnf(c_0_51, negated_conjecture, (esk2_3(esk4_0,esk5_0,X1)=k1_xboole_0|X1=k4_orders_2(esk4_0,esk5_0)|r2_hidden(esk2_3(esk4_0,esk5_0,X1),X1)), inference(spm,[status(thm)],[c_0_21, c_0_47])).
% 0.13/0.38  fof(c_0_52, plain, ![X21, X22]:(v2_struct_0(X21)|~v3_orders_2(X21)|~v4_orders_2(X21)|~v5_orders_2(X21)|~l1_orders_2(X21)|~m1_orders_1(X22,k1_orders_1(u1_struct_0(X21)))|~v1_xboole_0(k4_orders_2(X21,X22))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc9_orders_2])])])).
% 0.13/0.38  cnf(c_0_53, negated_conjecture, (k1_funct_1(esk5_0,u1_struct_0(esk4_0))=k1_xboole_0|k4_orders_2(esk4_0,esk5_0)=k1_xboole_0), inference(spm,[status(thm)],[c_0_48, c_0_49])).
% 0.13/0.38  cnf(c_0_54, negated_conjecture, (X1=k4_orders_2(esk4_0,esk5_0)|~m2_orders_2(esk2_3(esk4_0,esk5_0,X1),esk4_0,esk5_0)|~r2_hidden(esk2_3(esk4_0,esk5_0,X1),X1)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50, c_0_28]), c_0_29]), c_0_30]), c_0_31]), c_0_32])]), c_0_33])).
% 0.13/0.38  cnf(c_0_55, negated_conjecture, (esk2_3(esk4_0,esk5_0,k1_xboole_0)=k1_xboole_0|k4_orders_2(esk4_0,esk5_0)=k1_xboole_0), inference(spm,[status(thm)],[c_0_48, c_0_51])).
% 0.13/0.38  cnf(c_0_56, plain, (v2_struct_0(X1)|~v3_orders_2(X1)|~v4_orders_2(X1)|~v5_orders_2(X1)|~l1_orders_2(X1)|~m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))|~v1_xboole_0(k4_orders_2(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_52])).
% 0.13/0.38  cnf(c_0_57, negated_conjecture, (k4_orders_2(esk4_0,esk5_0)=k1_xboole_0|r2_hidden(k1_xboole_0,k1_xboole_0)), inference(spm,[status(thm)],[c_0_49, c_0_53])).
% 0.13/0.38  cnf(c_0_58, negated_conjecture, (k4_orders_2(esk4_0,esk5_0)=k1_xboole_0|~m2_orders_2(k1_xboole_0,esk4_0,esk5_0)|~r2_hidden(k1_xboole_0,k1_xboole_0)), inference(spm,[status(thm)],[c_0_54, c_0_55])).
% 0.13/0.38  cnf(c_0_59, negated_conjecture, (r2_hidden(k1_xboole_0,k1_xboole_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_56, c_0_57]), c_0_28]), c_0_29]), c_0_30]), c_0_31]), c_0_32]), c_0_38])]), c_0_33])).
% 0.13/0.38  cnf(c_0_60, negated_conjecture, (k4_orders_2(esk4_0,esk5_0)=k1_xboole_0), inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_58, c_0_59])]), c_0_46])).
% 0.13/0.38  cnf(c_0_61, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_56, c_0_60]), c_0_28]), c_0_29]), c_0_30]), c_0_31]), c_0_32]), c_0_38])]), c_0_33]), ['proof']).
% 0.13/0.38  # SZS output end CNFRefutation
% 0.13/0.38  # Proof object total steps             : 62
% 0.13/0.38  # Proof object clause steps            : 44
% 0.13/0.38  # Proof object formula steps           : 18
% 0.13/0.38  # Proof object conjectures             : 29
% 0.13/0.38  # Proof object clause conjectures      : 26
% 0.13/0.38  # Proof object formula conjectures     : 3
% 0.13/0.38  # Proof object initial clauses used    : 19
% 0.13/0.38  # Proof object initial formulas used   : 9
% 0.13/0.38  # Proof object generating inferences   : 22
% 0.13/0.38  # Proof object simplifying inferences  : 51
% 0.13/0.38  # Training examples: 0 positive, 0 negative
% 0.13/0.38  # Parsed axioms                        : 10
% 0.13/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.38  # Initial clauses                      : 21
% 0.13/0.38  # Removed in clause preprocessing      : 0
% 0.13/0.38  # Initial clauses in saturation        : 21
% 0.13/0.38  # Processed clauses                    : 52
% 0.13/0.38  # ...of these trivial                  : 0
% 0.13/0.38  # ...subsumed                          : 5
% 0.13/0.38  # ...remaining for further processing  : 47
% 0.13/0.38  # Other redundant clauses eliminated   : 2
% 0.13/0.38  # Clauses deleted for lack of memory   : 0
% 0.13/0.38  # Backward-subsumed                    : 1
% 0.13/0.38  # Backward-rewritten                   : 17
% 0.13/0.38  # Generated clauses                    : 52
% 0.13/0.38  # ...of the previous two non-trivial   : 51
% 0.13/0.38  # Contextual simplify-reflections      : 1
% 0.13/0.38  # Paramodulations                      : 48
% 0.13/0.38  # Factorizations                       : 2
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
% 0.13/0.38  # Current number of processed clauses  : 27
% 0.13/0.38  #    Positive orientable unit clauses  : 10
% 0.13/0.38  #    Positive unorientable unit clauses: 0
% 0.13/0.38  #    Negative unit clauses             : 1
% 0.13/0.38  #    Non-unit-clauses                  : 16
% 0.13/0.38  # Current number of unprocessed clauses: 13
% 0.13/0.38  # ...number of literals in the above   : 33
% 0.13/0.38  # Current number of archived formulas  : 0
% 0.13/0.38  # Current number of archived clauses   : 18
% 0.13/0.38  # Clause-clause subsumption calls (NU) : 158
% 0.13/0.38  # Rec. Clause-clause subsumption calls : 80
% 0.13/0.38  # Non-unit clause-clause subsumptions  : 7
% 0.13/0.38  # Unit Clause-clause subsumption calls : 6
% 0.13/0.38  # Rewrite failures with RHS unbound    : 0
% 0.13/0.38  # BW rewrite match attempts            : 3
% 0.13/0.38  # BW rewrite match successes           : 3
% 0.13/0.38  # Condensation attempts                : 52
% 0.13/0.38  # Condensation successes               : 0
% 0.13/0.38  # Termbank termtop insertions          : 2791
% 0.13/0.38  
% 0.13/0.38  # -------------------------------------------------
% 0.13/0.38  # User time                : 0.029 s
% 0.13/0.38  # System time              : 0.005 s
% 0.13/0.38  # Total time               : 0.035 s
% 0.13/0.38  # Maximum resident set size: 1580 pages
%------------------------------------------------------------------------------
