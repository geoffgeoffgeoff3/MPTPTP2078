%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n013.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:21:27 EST 2020

% Result     : Theorem 0.20s
% Output     : CNFRefutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   83 ( 542 expanded)
%              Number of clauses        :   54 ( 196 expanded)
%              Number of leaves         :   14 ( 132 expanded)
%              Depth                    :   12
%              Number of atoms          :  294 (4087 expanded)
%              Number of equality atoms :   32 ( 143 expanded)
%              Maximal formula depth    :   14 (   4 average)
%              Maximal clause size      :   28 (   2 average)
%              Maximal term depth       :    5 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t8_waybel_7,conjecture,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v3_orders_2(X1)
        & v4_orders_2(X1)
        & v5_orders_2(X1)
        & v1_yellow_0(X1)
        & l1_orders_2(X1) )
     => ! [X2] :
          ( ( ~ v1_xboole_0(X2)
            & v2_waybel_0(X2,X1)
            & v13_waybel_0(X2,X1)
            & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) )
         => ( v1_subset_1(X2,u1_struct_0(X1))
          <=> ~ r2_hidden(k3_yellow_0(X1),X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t8_waybel_7)).

fof(t49_subset_1,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => ( ! [X3] :
            ( m1_subset_1(X3,X1)
           => r2_hidden(X3,X2) )
       => X1 = X2 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t49_subset_1)).

fof(t34_yellow_0,axiom,(
    ! [X1] :
      ( l1_orders_2(X1)
     => ! [X2,X3] :
          ( ( r1_tarski(X2,X3)
            & r1_yellow_0(X1,X2)
            & r1_yellow_0(X1,X3) )
         => r1_orders_2(X1,k1_yellow_0(X1,X2),k1_yellow_0(X1,X3)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t34_yellow_0)).

fof(t2_xboole_1,axiom,(
    ! [X1] : r1_tarski(k1_xboole_0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_xboole_1)).

fof(t34_waybel_0,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v3_orders_2(X1)
        & v4_orders_2(X1)
        & v5_orders_2(X1)
        & l1_orders_2(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,u1_struct_0(X1))
         => ( r1_yellow_0(X1,k5_waybel_0(X1,X2))
            & k1_yellow_0(X1,k5_waybel_0(X1,X2)) = X2 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t34_waybel_0)).

fof(t42_yellow_0,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v5_orders_2(X1)
        & v1_yellow_0(X1)
        & l1_orders_2(X1) )
     => ( r1_yellow_0(X1,k1_xboole_0)
        & r2_yellow_0(X1,u1_struct_0(X1)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t42_yellow_0)).

fof(d7_subset_1,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => ( v1_subset_1(X2,X1)
      <=> X2 != X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d7_subset_1)).

fof(t4_subset,axiom,(
    ! [X1,X2,X3] :
      ( ( r2_hidden(X1,X2)
        & m1_subset_1(X2,k1_zfmisc_1(X3)) )
     => m1_subset_1(X1,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t4_subset)).

fof(dt_k2_subset_1,axiom,(
    ! [X1] : m1_subset_1(k2_subset_1(X1),k1_zfmisc_1(X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k2_subset_1)).

fof(d4_subset_1,axiom,(
    ! [X1] : k2_subset_1(X1) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d4_subset_1)).

fof(d20_waybel_0,axiom,(
    ! [X1] :
      ( l1_orders_2(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ( v13_waybel_0(X2,X1)
          <=> ! [X3] :
                ( m1_subset_1(X3,u1_struct_0(X1))
               => ! [X4] :
                    ( m1_subset_1(X4,u1_struct_0(X1))
                   => ( ( r2_hidden(X3,X2)
                        & r1_orders_2(X1,X3,X4) )
                     => r2_hidden(X4,X2) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d20_waybel_0)).

fof(d11_yellow_0,axiom,(
    ! [X1] :
      ( l1_orders_2(X1)
     => k3_yellow_0(X1) = k1_yellow_0(X1,k1_xboole_0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d11_yellow_0)).

fof(t2_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,X2)
     => ( v1_xboole_0(X2)
        | r2_hidden(X1,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_subset)).

fof(dt_k3_yellow_0,axiom,(
    ! [X1] :
      ( l1_orders_2(X1)
     => m1_subset_1(k3_yellow_0(X1),u1_struct_0(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k3_yellow_0)).

fof(c_0_14,negated_conjecture,(
    ~ ! [X1] :
        ( ( ~ v2_struct_0(X1)
          & v3_orders_2(X1)
          & v4_orders_2(X1)
          & v5_orders_2(X1)
          & v1_yellow_0(X1)
          & l1_orders_2(X1) )
       => ! [X2] :
            ( ( ~ v1_xboole_0(X2)
              & v2_waybel_0(X2,X1)
              & v13_waybel_0(X2,X1)
              & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) )
           => ( v1_subset_1(X2,u1_struct_0(X1))
            <=> ~ r2_hidden(k3_yellow_0(X1),X2) ) ) ) ),
    inference(assume_negation,[status(cth)],[t8_waybel_7])).

fof(c_0_15,plain,(
    ! [X8,X9] :
      ( ( m1_subset_1(esk1_2(X8,X9),X8)
        | X8 = X9
        | ~ m1_subset_1(X9,k1_zfmisc_1(X8)) )
      & ( ~ r2_hidden(esk1_2(X8,X9),X9)
        | X8 = X9
        | ~ m1_subset_1(X9,k1_zfmisc_1(X8)) ) ) ),
    inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t49_subset_1])])])])).

fof(c_0_16,negated_conjecture,
    ( ~ v2_struct_0(esk4_0)
    & v3_orders_2(esk4_0)
    & v4_orders_2(esk4_0)
    & v5_orders_2(esk4_0)
    & v1_yellow_0(esk4_0)
    & l1_orders_2(esk4_0)
    & ~ v1_xboole_0(esk5_0)
    & v2_waybel_0(esk5_0,esk4_0)
    & v13_waybel_0(esk5_0,esk4_0)
    & m1_subset_1(esk5_0,k1_zfmisc_1(u1_struct_0(esk4_0)))
    & ( ~ v1_subset_1(esk5_0,u1_struct_0(esk4_0))
      | r2_hidden(k3_yellow_0(esk4_0),esk5_0) )
    & ( v1_subset_1(esk5_0,u1_struct_0(esk4_0))
      | ~ r2_hidden(k3_yellow_0(esk4_0),esk5_0) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_14])])])])).

fof(c_0_17,plain,(
    ! [X18,X19,X20] :
      ( ~ l1_orders_2(X18)
      | ~ r1_tarski(X19,X20)
      | ~ r1_yellow_0(X18,X19)
      | ~ r1_yellow_0(X18,X20)
      | r1_orders_2(X18,k1_yellow_0(X18,X19),k1_yellow_0(X18,X20)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t34_yellow_0])])])).

fof(c_0_18,plain,(
    ! [X5] : r1_tarski(k1_xboole_0,X5) ),
    inference(variable_rename,[status(thm)],[t2_xboole_1])).

fof(c_0_19,plain,(
    ! [X28,X29] :
      ( ( r1_yellow_0(X28,k5_waybel_0(X28,X29))
        | ~ m1_subset_1(X29,u1_struct_0(X28))
        | v2_struct_0(X28)
        | ~ v3_orders_2(X28)
        | ~ v4_orders_2(X28)
        | ~ v5_orders_2(X28)
        | ~ l1_orders_2(X28) )
      & ( k1_yellow_0(X28,k5_waybel_0(X28,X29)) = X29
        | ~ m1_subset_1(X29,u1_struct_0(X28))
        | v2_struct_0(X28)
        | ~ v3_orders_2(X28)
        | ~ v4_orders_2(X28)
        | ~ v5_orders_2(X28)
        | ~ l1_orders_2(X28) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t34_waybel_0])])])])])).

cnf(c_0_20,plain,
    ( m1_subset_1(esk1_2(X1,X2),X1)
    | X1 = X2
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_21,negated_conjecture,
    ( m1_subset_1(esk5_0,k1_zfmisc_1(u1_struct_0(esk4_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

fof(c_0_22,plain,(
    ! [X21] :
      ( ( r1_yellow_0(X21,k1_xboole_0)
        | v2_struct_0(X21)
        | ~ v5_orders_2(X21)
        | ~ v1_yellow_0(X21)
        | ~ l1_orders_2(X21) )
      & ( r2_yellow_0(X21,u1_struct_0(X21))
        | v2_struct_0(X21)
        | ~ v5_orders_2(X21)
        | ~ v1_yellow_0(X21)
        | ~ l1_orders_2(X21) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t42_yellow_0])])])])).

fof(c_0_23,plain,(
    ! [X30,X31] :
      ( ( ~ v1_subset_1(X31,X30)
        | X31 != X30
        | ~ m1_subset_1(X31,k1_zfmisc_1(X30)) )
      & ( X31 = X30
        | v1_subset_1(X31,X30)
        | ~ m1_subset_1(X31,k1_zfmisc_1(X30)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d7_subset_1])])])).

cnf(c_0_24,plain,
    ( r1_orders_2(X1,k1_yellow_0(X1,X2),k1_yellow_0(X1,X3))
    | ~ l1_orders_2(X1)
    | ~ r1_tarski(X2,X3)
    | ~ r1_yellow_0(X1,X2)
    | ~ r1_yellow_0(X1,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_25,plain,
    ( r1_tarski(k1_xboole_0,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_26,plain,
    ( r1_yellow_0(X1,k5_waybel_0(X1,X2))
    | v2_struct_0(X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_27,negated_conjecture,
    ( esk5_0 = u1_struct_0(esk4_0)
    | m1_subset_1(esk1_2(u1_struct_0(esk4_0),esk5_0),u1_struct_0(esk4_0)) ),
    inference(spm,[status(thm)],[c_0_20,c_0_21])).

cnf(c_0_28,negated_conjecture,
    ( v4_orders_2(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_29,negated_conjecture,
    ( v3_orders_2(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_30,negated_conjecture,
    ( v5_orders_2(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_31,negated_conjecture,
    ( l1_orders_2(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_32,negated_conjecture,
    ( ~ v2_struct_0(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_33,plain,
    ( r1_yellow_0(X1,k1_xboole_0)
    | v2_struct_0(X1)
    | ~ v5_orders_2(X1)
    | ~ v1_yellow_0(X1)
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_34,negated_conjecture,
    ( v1_yellow_0(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

fof(c_0_35,plain,(
    ! [X13,X14,X15] :
      ( ~ r2_hidden(X13,X14)
      | ~ m1_subset_1(X14,k1_zfmisc_1(X15))
      | m1_subset_1(X13,X15) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t4_subset])])).

cnf(c_0_36,plain,
    ( X1 = X2
    | v1_subset_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_37,plain,
    ( r1_orders_2(X1,k1_yellow_0(X1,k1_xboole_0),k1_yellow_0(X1,X2))
    | ~ r1_yellow_0(X1,k1_xboole_0)
    | ~ r1_yellow_0(X1,X2)
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_24,c_0_25])).

cnf(c_0_38,negated_conjecture,
    ( esk5_0 = u1_struct_0(esk4_0)
    | r1_yellow_0(esk4_0,k5_waybel_0(esk4_0,esk1_2(u1_struct_0(esk4_0),esk5_0))) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26,c_0_27]),c_0_28]),c_0_29]),c_0_30]),c_0_31])]),c_0_32])).

cnf(c_0_39,negated_conjecture,
    ( r1_yellow_0(esk4_0,k1_xboole_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_34]),c_0_30]),c_0_31])]),c_0_32])).

cnf(c_0_40,plain,
    ( k1_yellow_0(X1,k5_waybel_0(X1,X2)) = X2
    | v2_struct_0(X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_41,plain,
    ( m1_subset_1(X1,X3)
    | ~ r2_hidden(X1,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

cnf(c_0_42,negated_conjecture,
    ( r2_hidden(k3_yellow_0(esk4_0),esk5_0)
    | ~ v1_subset_1(esk5_0,u1_struct_0(esk4_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_43,negated_conjecture,
    ( esk5_0 = u1_struct_0(esk4_0)
    | v1_subset_1(esk5_0,u1_struct_0(esk4_0)) ),
    inference(spm,[status(thm)],[c_0_36,c_0_21])).

fof(c_0_44,plain,(
    ! [X7] : m1_subset_1(k2_subset_1(X7),k1_zfmisc_1(X7)) ),
    inference(variable_rename,[status(thm)],[dt_k2_subset_1])).

fof(c_0_45,plain,(
    ! [X6] : k2_subset_1(X6) = X6 ),
    inference(variable_rename,[status(thm)],[d4_subset_1])).

fof(c_0_46,plain,(
    ! [X22,X23,X24,X25] :
      ( ( ~ v13_waybel_0(X23,X22)
        | ~ m1_subset_1(X24,u1_struct_0(X22))
        | ~ m1_subset_1(X25,u1_struct_0(X22))
        | ~ r2_hidden(X24,X23)
        | ~ r1_orders_2(X22,X24,X25)
        | r2_hidden(X25,X23)
        | ~ m1_subset_1(X23,k1_zfmisc_1(u1_struct_0(X22)))
        | ~ l1_orders_2(X22) )
      & ( m1_subset_1(esk2_2(X22,X23),u1_struct_0(X22))
        | v13_waybel_0(X23,X22)
        | ~ m1_subset_1(X23,k1_zfmisc_1(u1_struct_0(X22)))
        | ~ l1_orders_2(X22) )
      & ( m1_subset_1(esk3_2(X22,X23),u1_struct_0(X22))
        | v13_waybel_0(X23,X22)
        | ~ m1_subset_1(X23,k1_zfmisc_1(u1_struct_0(X22)))
        | ~ l1_orders_2(X22) )
      & ( r2_hidden(esk2_2(X22,X23),X23)
        | v13_waybel_0(X23,X22)
        | ~ m1_subset_1(X23,k1_zfmisc_1(u1_struct_0(X22)))
        | ~ l1_orders_2(X22) )
      & ( r1_orders_2(X22,esk2_2(X22,X23),esk3_2(X22,X23))
        | v13_waybel_0(X23,X22)
        | ~ m1_subset_1(X23,k1_zfmisc_1(u1_struct_0(X22)))
        | ~ l1_orders_2(X22) )
      & ( ~ r2_hidden(esk3_2(X22,X23),X23)
        | v13_waybel_0(X23,X22)
        | ~ m1_subset_1(X23,k1_zfmisc_1(u1_struct_0(X22)))
        | ~ l1_orders_2(X22) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d20_waybel_0])])])])])).

cnf(c_0_47,negated_conjecture,
    ( esk5_0 = u1_struct_0(esk4_0)
    | r1_orders_2(esk4_0,k1_yellow_0(esk4_0,k1_xboole_0),k1_yellow_0(esk4_0,k5_waybel_0(esk4_0,esk1_2(u1_struct_0(esk4_0),esk5_0)))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_38]),c_0_39]),c_0_31])])).

cnf(c_0_48,negated_conjecture,
    ( k1_yellow_0(esk4_0,k5_waybel_0(esk4_0,esk1_2(u1_struct_0(esk4_0),esk5_0))) = esk1_2(u1_struct_0(esk4_0),esk5_0)
    | esk5_0 = u1_struct_0(esk4_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_27]),c_0_28]),c_0_29]),c_0_30]),c_0_31])]),c_0_32])).

fof(c_0_49,plain,(
    ! [X16] :
      ( ~ l1_orders_2(X16)
      | k3_yellow_0(X16) = k1_yellow_0(X16,k1_xboole_0) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d11_yellow_0])])).

cnf(c_0_50,negated_conjecture,
    ( m1_subset_1(X1,u1_struct_0(esk4_0))
    | ~ r2_hidden(X1,esk5_0) ),
    inference(spm,[status(thm)],[c_0_41,c_0_21])).

cnf(c_0_51,negated_conjecture,
    ( esk5_0 = u1_struct_0(esk4_0)
    | r2_hidden(k3_yellow_0(esk4_0),esk5_0) ),
    inference(spm,[status(thm)],[c_0_42,c_0_43])).

fof(c_0_52,plain,(
    ! [X11,X12] :
      ( ~ m1_subset_1(X11,X12)
      | v1_xboole_0(X12)
      | r2_hidden(X11,X12) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_subset])])).

fof(c_0_53,plain,(
    ! [X17] :
      ( ~ l1_orders_2(X17)
      | m1_subset_1(k3_yellow_0(X17),u1_struct_0(X17)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k3_yellow_0])])).

cnf(c_0_54,plain,
    ( m1_subset_1(k2_subset_1(X1),k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_44])).

cnf(c_0_55,plain,
    ( k2_subset_1(X1) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_45])).

cnf(c_0_56,plain,
    ( r2_hidden(X4,X1)
    | ~ v13_waybel_0(X1,X2)
    | ~ m1_subset_1(X3,u1_struct_0(X2))
    | ~ m1_subset_1(X4,u1_struct_0(X2))
    | ~ r2_hidden(X3,X1)
    | ~ r1_orders_2(X2,X3,X4)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))
    | ~ l1_orders_2(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_46])).

cnf(c_0_57,negated_conjecture,
    ( esk5_0 = u1_struct_0(esk4_0)
    | r1_orders_2(esk4_0,k1_yellow_0(esk4_0,k1_xboole_0),esk1_2(u1_struct_0(esk4_0),esk5_0)) ),
    inference(spm,[status(thm)],[c_0_47,c_0_48])).

cnf(c_0_58,plain,
    ( k3_yellow_0(X1) = k1_yellow_0(X1,k1_xboole_0)
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_49])).

cnf(c_0_59,negated_conjecture,
    ( ~ v1_xboole_0(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_60,negated_conjecture,
    ( esk5_0 = u1_struct_0(esk4_0)
    | m1_subset_1(k3_yellow_0(esk4_0),u1_struct_0(esk4_0)) ),
    inference(spm,[status(thm)],[c_0_50,c_0_51])).

cnf(c_0_61,plain,
    ( v1_xboole_0(X2)
    | r2_hidden(X1,X2)
    | ~ m1_subset_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_52])).

cnf(c_0_62,plain,
    ( m1_subset_1(k3_yellow_0(X1),u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_53])).

cnf(c_0_63,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X1)) ),
    inference(rw,[status(thm)],[c_0_54,c_0_55])).

cnf(c_0_64,plain,
    ( r2_hidden(X1,X2)
    | ~ v13_waybel_0(X2,X3)
    | ~ r1_orders_2(X3,X4,X1)
    | ~ l1_orders_2(X3)
    | ~ r2_hidden(X4,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X3)))
    | ~ m1_subset_1(X1,u1_struct_0(X3)) ),
    inference(csr,[status(thm)],[c_0_56,c_0_41])).

cnf(c_0_65,negated_conjecture,
    ( esk5_0 = u1_struct_0(esk4_0)
    | r1_orders_2(esk4_0,k3_yellow_0(esk4_0),esk1_2(u1_struct_0(esk4_0),esk5_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57,c_0_58]),c_0_31])])).

cnf(c_0_66,plain,
    ( X1 = X2
    | ~ r2_hidden(esk1_2(X1,X2),X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_67,plain,
    ( ~ v1_subset_1(X1,X2)
    | X1 != X2
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_68,negated_conjecture,
    ( m1_subset_1(k3_yellow_0(esk4_0),u1_struct_0(esk4_0))
    | ~ v1_xboole_0(u1_struct_0(esk4_0)) ),
    inference(spm,[status(thm)],[c_0_59,c_0_60])).

cnf(c_0_69,plain,
    ( v1_xboole_0(u1_struct_0(X1))
    | r2_hidden(k3_yellow_0(X1),u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_61,c_0_62])).

cnf(c_0_70,plain,
    ( m1_subset_1(X1,X2)
    | ~ r2_hidden(X1,X2) ),
    inference(spm,[status(thm)],[c_0_41,c_0_63])).

cnf(c_0_71,negated_conjecture,
    ( esk5_0 = u1_struct_0(esk4_0)
    | r2_hidden(esk1_2(u1_struct_0(esk4_0),esk5_0),X1)
    | ~ v13_waybel_0(X1,esk4_0)
    | ~ r2_hidden(k3_yellow_0(esk4_0),X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk4_0))) ),
    inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_64,c_0_65]),c_0_31])]),c_0_27])).

cnf(c_0_72,negated_conjecture,
    ( v13_waybel_0(esk5_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_73,negated_conjecture,
    ( esk5_0 = u1_struct_0(esk4_0)
    | ~ r2_hidden(esk1_2(u1_struct_0(esk4_0),esk5_0),esk5_0) ),
    inference(spm,[status(thm)],[c_0_66,c_0_21])).

cnf(c_0_74,plain,
    ( ~ v1_subset_1(X1,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X1)) ),
    inference(er,[status(thm)],[c_0_67])).

cnf(c_0_75,negated_conjecture,
    ( m1_subset_1(k3_yellow_0(esk4_0),u1_struct_0(esk4_0)) ),
    inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_68,c_0_69]),c_0_31])]),c_0_70])).

cnf(c_0_76,negated_conjecture,
    ( esk5_0 = u1_struct_0(esk4_0) ),
    inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_71,c_0_21]),c_0_72])]),c_0_51]),c_0_73])).

cnf(c_0_77,negated_conjecture,
    ( v1_subset_1(esk5_0,u1_struct_0(esk4_0))
    | ~ r2_hidden(k3_yellow_0(esk4_0),esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_78,plain,
    ( ~ v1_subset_1(X1,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_74,c_0_63])])).

cnf(c_0_79,negated_conjecture,
    ( v1_xboole_0(u1_struct_0(esk4_0))
    | r2_hidden(k3_yellow_0(esk4_0),u1_struct_0(esk4_0)) ),
    inference(spm,[status(thm)],[c_0_61,c_0_75])).

cnf(c_0_80,negated_conjecture,
    ( ~ v1_xboole_0(u1_struct_0(esk4_0)) ),
    inference(rw,[status(thm)],[c_0_59,c_0_76])).

cnf(c_0_81,negated_conjecture,
    ( ~ r2_hidden(k3_yellow_0(esk4_0),u1_struct_0(esk4_0)) ),
    inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_77,c_0_76]),c_0_76]),c_0_78])).

cnf(c_0_82,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[c_0_79,c_0_80]),c_0_81]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.33  % Computer   : n013.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % WCLimit    : 600
% 0.13/0.33  % DateTime   : Tue Dec  1 13:50:39 EST 2020
% 0.13/0.33  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.20/0.37  # AutoSched0-Mode selected heuristic G_E___208_B07_F1_SE_CS_SP_PS_S2q
% 0.20/0.37  # and selection function SelectCQArNTNp.
% 0.20/0.37  #
% 0.20/0.37  # Preprocessing time       : 0.028 s
% 0.20/0.37  # Presaturation interreduction done
% 0.20/0.37  
% 0.20/0.37  # Proof found!
% 0.20/0.37  # SZS status Theorem
% 0.20/0.37  # SZS output start CNFRefutation
% 0.20/0.37  fof(t8_waybel_7, conjecture, ![X1]:((((((~(v2_struct_0(X1))&v3_orders_2(X1))&v4_orders_2(X1))&v5_orders_2(X1))&v1_yellow_0(X1))&l1_orders_2(X1))=>![X2]:((((~(v1_xboole_0(X2))&v2_waybel_0(X2,X1))&v13_waybel_0(X2,X1))&m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))))=>(v1_subset_1(X2,u1_struct_0(X1))<=>~(r2_hidden(k3_yellow_0(X1),X2))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t8_waybel_7)).
% 0.20/0.37  fof(t49_subset_1, axiom, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>(![X3]:(m1_subset_1(X3,X1)=>r2_hidden(X3,X2))=>X1=X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t49_subset_1)).
% 0.20/0.37  fof(t34_yellow_0, axiom, ![X1]:(l1_orders_2(X1)=>![X2, X3]:(((r1_tarski(X2,X3)&r1_yellow_0(X1,X2))&r1_yellow_0(X1,X3))=>r1_orders_2(X1,k1_yellow_0(X1,X2),k1_yellow_0(X1,X3)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t34_yellow_0)).
% 0.20/0.37  fof(t2_xboole_1, axiom, ![X1]:r1_tarski(k1_xboole_0,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t2_xboole_1)).
% 0.20/0.37  fof(t34_waybel_0, axiom, ![X1]:(((((~(v2_struct_0(X1))&v3_orders_2(X1))&v4_orders_2(X1))&v5_orders_2(X1))&l1_orders_2(X1))=>![X2]:(m1_subset_1(X2,u1_struct_0(X1))=>(r1_yellow_0(X1,k5_waybel_0(X1,X2))&k1_yellow_0(X1,k5_waybel_0(X1,X2))=X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t34_waybel_0)).
% 0.20/0.37  fof(t42_yellow_0, axiom, ![X1]:((((~(v2_struct_0(X1))&v5_orders_2(X1))&v1_yellow_0(X1))&l1_orders_2(X1))=>(r1_yellow_0(X1,k1_xboole_0)&r2_yellow_0(X1,u1_struct_0(X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t42_yellow_0)).
% 0.20/0.37  fof(d7_subset_1, axiom, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>(v1_subset_1(X2,X1)<=>X2!=X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d7_subset_1)).
% 0.20/0.37  fof(t4_subset, axiom, ![X1, X2, X3]:((r2_hidden(X1,X2)&m1_subset_1(X2,k1_zfmisc_1(X3)))=>m1_subset_1(X1,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t4_subset)).
% 0.20/0.37  fof(dt_k2_subset_1, axiom, ![X1]:m1_subset_1(k2_subset_1(X1),k1_zfmisc_1(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k2_subset_1)).
% 0.20/0.37  fof(d4_subset_1, axiom, ![X1]:k2_subset_1(X1)=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', d4_subset_1)).
% 0.20/0.37  fof(d20_waybel_0, axiom, ![X1]:(l1_orders_2(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>(v13_waybel_0(X2,X1)<=>![X3]:(m1_subset_1(X3,u1_struct_0(X1))=>![X4]:(m1_subset_1(X4,u1_struct_0(X1))=>((r2_hidden(X3,X2)&r1_orders_2(X1,X3,X4))=>r2_hidden(X4,X2))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d20_waybel_0)).
% 0.20/0.37  fof(d11_yellow_0, axiom, ![X1]:(l1_orders_2(X1)=>k3_yellow_0(X1)=k1_yellow_0(X1,k1_xboole_0)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d11_yellow_0)).
% 0.20/0.37  fof(t2_subset, axiom, ![X1, X2]:(m1_subset_1(X1,X2)=>(v1_xboole_0(X2)|r2_hidden(X1,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t2_subset)).
% 0.20/0.37  fof(dt_k3_yellow_0, axiom, ![X1]:(l1_orders_2(X1)=>m1_subset_1(k3_yellow_0(X1),u1_struct_0(X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k3_yellow_0)).
% 0.20/0.37  fof(c_0_14, negated_conjecture, ~(![X1]:((((((~(v2_struct_0(X1))&v3_orders_2(X1))&v4_orders_2(X1))&v5_orders_2(X1))&v1_yellow_0(X1))&l1_orders_2(X1))=>![X2]:((((~(v1_xboole_0(X2))&v2_waybel_0(X2,X1))&v13_waybel_0(X2,X1))&m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))))=>(v1_subset_1(X2,u1_struct_0(X1))<=>~(r2_hidden(k3_yellow_0(X1),X2)))))), inference(assume_negation,[status(cth)],[t8_waybel_7])).
% 0.20/0.37  fof(c_0_15, plain, ![X8, X9]:((m1_subset_1(esk1_2(X8,X9),X8)|X8=X9|~m1_subset_1(X9,k1_zfmisc_1(X8)))&(~r2_hidden(esk1_2(X8,X9),X9)|X8=X9|~m1_subset_1(X9,k1_zfmisc_1(X8)))), inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t49_subset_1])])])])).
% 0.20/0.37  fof(c_0_16, negated_conjecture, ((((((~v2_struct_0(esk4_0)&v3_orders_2(esk4_0))&v4_orders_2(esk4_0))&v5_orders_2(esk4_0))&v1_yellow_0(esk4_0))&l1_orders_2(esk4_0))&((((~v1_xboole_0(esk5_0)&v2_waybel_0(esk5_0,esk4_0))&v13_waybel_0(esk5_0,esk4_0))&m1_subset_1(esk5_0,k1_zfmisc_1(u1_struct_0(esk4_0))))&((~v1_subset_1(esk5_0,u1_struct_0(esk4_0))|r2_hidden(k3_yellow_0(esk4_0),esk5_0))&(v1_subset_1(esk5_0,u1_struct_0(esk4_0))|~r2_hidden(k3_yellow_0(esk4_0),esk5_0))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_14])])])])).
% 0.20/0.37  fof(c_0_17, plain, ![X18, X19, X20]:(~l1_orders_2(X18)|(~r1_tarski(X19,X20)|~r1_yellow_0(X18,X19)|~r1_yellow_0(X18,X20)|r1_orders_2(X18,k1_yellow_0(X18,X19),k1_yellow_0(X18,X20)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t34_yellow_0])])])).
% 0.20/0.37  fof(c_0_18, plain, ![X5]:r1_tarski(k1_xboole_0,X5), inference(variable_rename,[status(thm)],[t2_xboole_1])).
% 0.20/0.37  fof(c_0_19, plain, ![X28, X29]:((r1_yellow_0(X28,k5_waybel_0(X28,X29))|~m1_subset_1(X29,u1_struct_0(X28))|(v2_struct_0(X28)|~v3_orders_2(X28)|~v4_orders_2(X28)|~v5_orders_2(X28)|~l1_orders_2(X28)))&(k1_yellow_0(X28,k5_waybel_0(X28,X29))=X29|~m1_subset_1(X29,u1_struct_0(X28))|(v2_struct_0(X28)|~v3_orders_2(X28)|~v4_orders_2(X28)|~v5_orders_2(X28)|~l1_orders_2(X28)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t34_waybel_0])])])])])).
% 0.20/0.37  cnf(c_0_20, plain, (m1_subset_1(esk1_2(X1,X2),X1)|X1=X2|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.37  cnf(c_0_21, negated_conjecture, (m1_subset_1(esk5_0,k1_zfmisc_1(u1_struct_0(esk4_0)))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.20/0.37  fof(c_0_22, plain, ![X21]:((r1_yellow_0(X21,k1_xboole_0)|(v2_struct_0(X21)|~v5_orders_2(X21)|~v1_yellow_0(X21)|~l1_orders_2(X21)))&(r2_yellow_0(X21,u1_struct_0(X21))|(v2_struct_0(X21)|~v5_orders_2(X21)|~v1_yellow_0(X21)|~l1_orders_2(X21)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t42_yellow_0])])])])).
% 0.20/0.37  fof(c_0_23, plain, ![X30, X31]:((~v1_subset_1(X31,X30)|X31!=X30|~m1_subset_1(X31,k1_zfmisc_1(X30)))&(X31=X30|v1_subset_1(X31,X30)|~m1_subset_1(X31,k1_zfmisc_1(X30)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d7_subset_1])])])).
% 0.20/0.37  cnf(c_0_24, plain, (r1_orders_2(X1,k1_yellow_0(X1,X2),k1_yellow_0(X1,X3))|~l1_orders_2(X1)|~r1_tarski(X2,X3)|~r1_yellow_0(X1,X2)|~r1_yellow_0(X1,X3)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.20/0.37  cnf(c_0_25, plain, (r1_tarski(k1_xboole_0,X1)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.20/0.37  cnf(c_0_26, plain, (r1_yellow_0(X1,k5_waybel_0(X1,X2))|v2_struct_0(X1)|~m1_subset_1(X2,u1_struct_0(X1))|~v3_orders_2(X1)|~v4_orders_2(X1)|~v5_orders_2(X1)|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.20/0.37  cnf(c_0_27, negated_conjecture, (esk5_0=u1_struct_0(esk4_0)|m1_subset_1(esk1_2(u1_struct_0(esk4_0),esk5_0),u1_struct_0(esk4_0))), inference(spm,[status(thm)],[c_0_20, c_0_21])).
% 0.20/0.37  cnf(c_0_28, negated_conjecture, (v4_orders_2(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.20/0.37  cnf(c_0_29, negated_conjecture, (v3_orders_2(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.20/0.37  cnf(c_0_30, negated_conjecture, (v5_orders_2(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.20/0.37  cnf(c_0_31, negated_conjecture, (l1_orders_2(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.20/0.37  cnf(c_0_32, negated_conjecture, (~v2_struct_0(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.20/0.37  cnf(c_0_33, plain, (r1_yellow_0(X1,k1_xboole_0)|v2_struct_0(X1)|~v5_orders_2(X1)|~v1_yellow_0(X1)|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.20/0.37  cnf(c_0_34, negated_conjecture, (v1_yellow_0(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.20/0.37  fof(c_0_35, plain, ![X13, X14, X15]:(~r2_hidden(X13,X14)|~m1_subset_1(X14,k1_zfmisc_1(X15))|m1_subset_1(X13,X15)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t4_subset])])).
% 0.20/0.37  cnf(c_0_36, plain, (X1=X2|v1_subset_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.20/0.37  cnf(c_0_37, plain, (r1_orders_2(X1,k1_yellow_0(X1,k1_xboole_0),k1_yellow_0(X1,X2))|~r1_yellow_0(X1,k1_xboole_0)|~r1_yellow_0(X1,X2)|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_24, c_0_25])).
% 0.20/0.37  cnf(c_0_38, negated_conjecture, (esk5_0=u1_struct_0(esk4_0)|r1_yellow_0(esk4_0,k5_waybel_0(esk4_0,esk1_2(u1_struct_0(esk4_0),esk5_0)))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26, c_0_27]), c_0_28]), c_0_29]), c_0_30]), c_0_31])]), c_0_32])).
% 0.20/0.37  cnf(c_0_39, negated_conjecture, (r1_yellow_0(esk4_0,k1_xboole_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33, c_0_34]), c_0_30]), c_0_31])]), c_0_32])).
% 0.20/0.37  cnf(c_0_40, plain, (k1_yellow_0(X1,k5_waybel_0(X1,X2))=X2|v2_struct_0(X1)|~m1_subset_1(X2,u1_struct_0(X1))|~v3_orders_2(X1)|~v4_orders_2(X1)|~v5_orders_2(X1)|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.20/0.37  cnf(c_0_41, plain, (m1_subset_1(X1,X3)|~r2_hidden(X1,X2)|~m1_subset_1(X2,k1_zfmisc_1(X3))), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.20/0.37  cnf(c_0_42, negated_conjecture, (r2_hidden(k3_yellow_0(esk4_0),esk5_0)|~v1_subset_1(esk5_0,u1_struct_0(esk4_0))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.20/0.37  cnf(c_0_43, negated_conjecture, (esk5_0=u1_struct_0(esk4_0)|v1_subset_1(esk5_0,u1_struct_0(esk4_0))), inference(spm,[status(thm)],[c_0_36, c_0_21])).
% 0.20/0.37  fof(c_0_44, plain, ![X7]:m1_subset_1(k2_subset_1(X7),k1_zfmisc_1(X7)), inference(variable_rename,[status(thm)],[dt_k2_subset_1])).
% 0.20/0.37  fof(c_0_45, plain, ![X6]:k2_subset_1(X6)=X6, inference(variable_rename,[status(thm)],[d4_subset_1])).
% 0.20/0.37  fof(c_0_46, plain, ![X22, X23, X24, X25]:((~v13_waybel_0(X23,X22)|(~m1_subset_1(X24,u1_struct_0(X22))|(~m1_subset_1(X25,u1_struct_0(X22))|(~r2_hidden(X24,X23)|~r1_orders_2(X22,X24,X25)|r2_hidden(X25,X23))))|~m1_subset_1(X23,k1_zfmisc_1(u1_struct_0(X22)))|~l1_orders_2(X22))&((m1_subset_1(esk2_2(X22,X23),u1_struct_0(X22))|v13_waybel_0(X23,X22)|~m1_subset_1(X23,k1_zfmisc_1(u1_struct_0(X22)))|~l1_orders_2(X22))&((m1_subset_1(esk3_2(X22,X23),u1_struct_0(X22))|v13_waybel_0(X23,X22)|~m1_subset_1(X23,k1_zfmisc_1(u1_struct_0(X22)))|~l1_orders_2(X22))&(((r2_hidden(esk2_2(X22,X23),X23)|v13_waybel_0(X23,X22)|~m1_subset_1(X23,k1_zfmisc_1(u1_struct_0(X22)))|~l1_orders_2(X22))&(r1_orders_2(X22,esk2_2(X22,X23),esk3_2(X22,X23))|v13_waybel_0(X23,X22)|~m1_subset_1(X23,k1_zfmisc_1(u1_struct_0(X22)))|~l1_orders_2(X22)))&(~r2_hidden(esk3_2(X22,X23),X23)|v13_waybel_0(X23,X22)|~m1_subset_1(X23,k1_zfmisc_1(u1_struct_0(X22)))|~l1_orders_2(X22)))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d20_waybel_0])])])])])).
% 0.20/0.37  cnf(c_0_47, negated_conjecture, (esk5_0=u1_struct_0(esk4_0)|r1_orders_2(esk4_0,k1_yellow_0(esk4_0,k1_xboole_0),k1_yellow_0(esk4_0,k5_waybel_0(esk4_0,esk1_2(u1_struct_0(esk4_0),esk5_0))))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_38]), c_0_39]), c_0_31])])).
% 0.20/0.37  cnf(c_0_48, negated_conjecture, (k1_yellow_0(esk4_0,k5_waybel_0(esk4_0,esk1_2(u1_struct_0(esk4_0),esk5_0)))=esk1_2(u1_struct_0(esk4_0),esk5_0)|esk5_0=u1_struct_0(esk4_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_27]), c_0_28]), c_0_29]), c_0_30]), c_0_31])]), c_0_32])).
% 0.20/0.37  fof(c_0_49, plain, ![X16]:(~l1_orders_2(X16)|k3_yellow_0(X16)=k1_yellow_0(X16,k1_xboole_0)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d11_yellow_0])])).
% 0.20/0.37  cnf(c_0_50, negated_conjecture, (m1_subset_1(X1,u1_struct_0(esk4_0))|~r2_hidden(X1,esk5_0)), inference(spm,[status(thm)],[c_0_41, c_0_21])).
% 0.20/0.37  cnf(c_0_51, negated_conjecture, (esk5_0=u1_struct_0(esk4_0)|r2_hidden(k3_yellow_0(esk4_0),esk5_0)), inference(spm,[status(thm)],[c_0_42, c_0_43])).
% 0.20/0.37  fof(c_0_52, plain, ![X11, X12]:(~m1_subset_1(X11,X12)|(v1_xboole_0(X12)|r2_hidden(X11,X12))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_subset])])).
% 0.20/0.37  fof(c_0_53, plain, ![X17]:(~l1_orders_2(X17)|m1_subset_1(k3_yellow_0(X17),u1_struct_0(X17))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k3_yellow_0])])).
% 0.20/0.37  cnf(c_0_54, plain, (m1_subset_1(k2_subset_1(X1),k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_44])).
% 0.20/0.37  cnf(c_0_55, plain, (k2_subset_1(X1)=X1), inference(split_conjunct,[status(thm)],[c_0_45])).
% 0.20/0.37  cnf(c_0_56, plain, (r2_hidden(X4,X1)|~v13_waybel_0(X1,X2)|~m1_subset_1(X3,u1_struct_0(X2))|~m1_subset_1(X4,u1_struct_0(X2))|~r2_hidden(X3,X1)|~r1_orders_2(X2,X3,X4)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))|~l1_orders_2(X2)), inference(split_conjunct,[status(thm)],[c_0_46])).
% 0.20/0.37  cnf(c_0_57, negated_conjecture, (esk5_0=u1_struct_0(esk4_0)|r1_orders_2(esk4_0,k1_yellow_0(esk4_0,k1_xboole_0),esk1_2(u1_struct_0(esk4_0),esk5_0))), inference(spm,[status(thm)],[c_0_47, c_0_48])).
% 0.20/0.37  cnf(c_0_58, plain, (k3_yellow_0(X1)=k1_yellow_0(X1,k1_xboole_0)|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_49])).
% 0.20/0.37  cnf(c_0_59, negated_conjecture, (~v1_xboole_0(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.20/0.37  cnf(c_0_60, negated_conjecture, (esk5_0=u1_struct_0(esk4_0)|m1_subset_1(k3_yellow_0(esk4_0),u1_struct_0(esk4_0))), inference(spm,[status(thm)],[c_0_50, c_0_51])).
% 0.20/0.37  cnf(c_0_61, plain, (v1_xboole_0(X2)|r2_hidden(X1,X2)|~m1_subset_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_52])).
% 0.20/0.37  cnf(c_0_62, plain, (m1_subset_1(k3_yellow_0(X1),u1_struct_0(X1))|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_53])).
% 0.20/0.37  cnf(c_0_63, plain, (m1_subset_1(X1,k1_zfmisc_1(X1))), inference(rw,[status(thm)],[c_0_54, c_0_55])).
% 0.20/0.37  cnf(c_0_64, plain, (r2_hidden(X1,X2)|~v13_waybel_0(X2,X3)|~r1_orders_2(X3,X4,X1)|~l1_orders_2(X3)|~r2_hidden(X4,X2)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X3)))|~m1_subset_1(X1,u1_struct_0(X3))), inference(csr,[status(thm)],[c_0_56, c_0_41])).
% 0.20/0.37  cnf(c_0_65, negated_conjecture, (esk5_0=u1_struct_0(esk4_0)|r1_orders_2(esk4_0,k3_yellow_0(esk4_0),esk1_2(u1_struct_0(esk4_0),esk5_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57, c_0_58]), c_0_31])])).
% 0.20/0.37  cnf(c_0_66, plain, (X1=X2|~r2_hidden(esk1_2(X1,X2),X2)|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.37  cnf(c_0_67, plain, (~v1_subset_1(X1,X2)|X1!=X2|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.20/0.37  cnf(c_0_68, negated_conjecture, (m1_subset_1(k3_yellow_0(esk4_0),u1_struct_0(esk4_0))|~v1_xboole_0(u1_struct_0(esk4_0))), inference(spm,[status(thm)],[c_0_59, c_0_60])).
% 0.20/0.37  cnf(c_0_69, plain, (v1_xboole_0(u1_struct_0(X1))|r2_hidden(k3_yellow_0(X1),u1_struct_0(X1))|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_61, c_0_62])).
% 0.20/0.37  cnf(c_0_70, plain, (m1_subset_1(X1,X2)|~r2_hidden(X1,X2)), inference(spm,[status(thm)],[c_0_41, c_0_63])).
% 0.20/0.37  cnf(c_0_71, negated_conjecture, (esk5_0=u1_struct_0(esk4_0)|r2_hidden(esk1_2(u1_struct_0(esk4_0),esk5_0),X1)|~v13_waybel_0(X1,esk4_0)|~r2_hidden(k3_yellow_0(esk4_0),X1)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk4_0)))), inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_64, c_0_65]), c_0_31])]), c_0_27])).
% 0.20/0.37  cnf(c_0_72, negated_conjecture, (v13_waybel_0(esk5_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.20/0.37  cnf(c_0_73, negated_conjecture, (esk5_0=u1_struct_0(esk4_0)|~r2_hidden(esk1_2(u1_struct_0(esk4_0),esk5_0),esk5_0)), inference(spm,[status(thm)],[c_0_66, c_0_21])).
% 0.20/0.37  cnf(c_0_74, plain, (~v1_subset_1(X1,X1)|~m1_subset_1(X1,k1_zfmisc_1(X1))), inference(er,[status(thm)],[c_0_67])).
% 0.20/0.37  cnf(c_0_75, negated_conjecture, (m1_subset_1(k3_yellow_0(esk4_0),u1_struct_0(esk4_0))), inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_68, c_0_69]), c_0_31])]), c_0_70])).
% 0.20/0.37  cnf(c_0_76, negated_conjecture, (esk5_0=u1_struct_0(esk4_0)), inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_71, c_0_21]), c_0_72])]), c_0_51]), c_0_73])).
% 0.20/0.37  cnf(c_0_77, negated_conjecture, (v1_subset_1(esk5_0,u1_struct_0(esk4_0))|~r2_hidden(k3_yellow_0(esk4_0),esk5_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.20/0.37  cnf(c_0_78, plain, (~v1_subset_1(X1,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_74, c_0_63])])).
% 0.20/0.37  cnf(c_0_79, negated_conjecture, (v1_xboole_0(u1_struct_0(esk4_0))|r2_hidden(k3_yellow_0(esk4_0),u1_struct_0(esk4_0))), inference(spm,[status(thm)],[c_0_61, c_0_75])).
% 0.20/0.37  cnf(c_0_80, negated_conjecture, (~v1_xboole_0(u1_struct_0(esk4_0))), inference(rw,[status(thm)],[c_0_59, c_0_76])).
% 0.20/0.37  cnf(c_0_81, negated_conjecture, (~r2_hidden(k3_yellow_0(esk4_0),u1_struct_0(esk4_0))), inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_77, c_0_76]), c_0_76]), c_0_78])).
% 0.20/0.37  cnf(c_0_82, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(sr,[status(thm)],[c_0_79, c_0_80]), c_0_81]), ['proof']).
% 0.20/0.37  # SZS output end CNFRefutation
% 0.20/0.37  # Proof object total steps             : 83
% 0.20/0.37  # Proof object clause steps            : 54
% 0.20/0.37  # Proof object formula steps           : 29
% 0.20/0.37  # Proof object conjectures             : 34
% 0.20/0.37  # Proof object clause conjectures      : 31
% 0.20/0.37  # Proof object formula conjectures     : 3
% 0.20/0.37  # Proof object initial clauses used    : 27
% 0.20/0.37  # Proof object initial formulas used   : 14
% 0.20/0.37  # Proof object generating inferences   : 20
% 0.20/0.37  # Proof object simplifying inferences  : 42
% 0.20/0.37  # Training examples: 0 positive, 0 negative
% 0.20/0.37  # Parsed axioms                        : 14
% 0.20/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.20/0.37  # Initial clauses                      : 34
% 0.20/0.37  # Removed in clause preprocessing      : 1
% 0.20/0.37  # Initial clauses in saturation        : 33
% 0.20/0.37  # Processed clauses                    : 124
% 0.20/0.37  # ...of these trivial                  : 0
% 0.20/0.37  # ...subsumed                          : 7
% 0.20/0.37  # ...remaining for further processing  : 116
% 0.20/0.37  # Other redundant clauses eliminated   : 1
% 0.20/0.37  # Clauses deleted for lack of memory   : 0
% 0.20/0.37  # Backward-subsumed                    : 5
% 0.20/0.37  # Backward-rewritten                   : 26
% 0.20/0.37  # Generated clauses                    : 80
% 0.20/0.37  # ...of the previous two non-trivial   : 77
% 0.20/0.37  # Contextual simplify-reflections      : 5
% 0.20/0.37  # Paramodulations                      : 78
% 0.20/0.37  # Factorizations                       : 0
% 0.20/0.37  # Equation resolutions                 : 1
% 0.20/0.37  # Propositional unsat checks           : 0
% 0.20/0.37  #    Propositional check models        : 0
% 0.20/0.37  #    Propositional check unsatisfiable : 0
% 0.20/0.37  #    Propositional clauses             : 0
% 0.20/0.37  #    Propositional clauses after purity: 0
% 0.20/0.37  #    Propositional unsat core size     : 0
% 0.20/0.37  #    Propositional preprocessing time  : 0.000
% 0.20/0.37  #    Propositional encoding time       : 0.000
% 0.20/0.37  #    Propositional solver time         : 0.000
% 0.20/0.37  #    Success case prop preproc time    : 0.000
% 0.20/0.37  #    Success case prop encoding time   : 0.000
% 0.20/0.37  #    Success case prop solver time     : 0.000
% 0.20/0.37  # Current number of processed clauses  : 50
% 0.20/0.37  #    Positive orientable unit clauses  : 17
% 0.20/0.37  #    Positive unorientable unit clauses: 0
% 0.20/0.37  #    Negative unit clauses             : 4
% 0.20/0.37  #    Non-unit-clauses                  : 29
% 0.20/0.37  # Current number of unprocessed clauses: 18
% 0.20/0.37  # ...number of literals in the above   : 74
% 0.20/0.37  # Current number of archived formulas  : 0
% 0.20/0.37  # Current number of archived clauses   : 66
% 0.20/0.37  # Clause-clause subsumption calls (NU) : 173
% 0.20/0.37  # Rec. Clause-clause subsumption calls : 74
% 0.20/0.37  # Non-unit clause-clause subsumptions  : 13
% 0.20/0.37  # Unit Clause-clause subsumption calls : 26
% 0.20/0.37  # Rewrite failures with RHS unbound    : 0
% 0.20/0.37  # BW rewrite match attempts            : 9
% 0.20/0.37  # BW rewrite match successes           : 6
% 0.20/0.37  # Condensation attempts                : 0
% 0.20/0.37  # Condensation successes               : 0
% 0.20/0.37  # Termbank termtop insertions          : 4392
% 0.20/0.37  
% 0.20/0.37  # -------------------------------------------------
% 0.20/0.37  # User time                : 0.033 s
% 0.20/0.37  # System time              : 0.006 s
% 0.20/0.37  # Total time               : 0.039 s
% 0.20/0.37  # Maximum resident set size: 1588 pages
%------------------------------------------------------------------------------
