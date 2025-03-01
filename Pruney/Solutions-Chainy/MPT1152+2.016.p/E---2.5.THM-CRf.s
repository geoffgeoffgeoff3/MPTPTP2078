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
% DateTime   : Thu Dec  3 11:09:39 EST 2020

% Result     : Theorem 0.20s
% Output     : CNFRefutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   52 ( 114 expanded)
%              Number of clauses        :   29 (  42 expanded)
%              Number of leaves         :   11 (  29 expanded)
%              Depth                    :    9
%              Number of atoms          :  252 ( 651 expanded)
%              Number of equality atoms :   34 (  86 expanded)
%              Maximal formula depth    :   21 (   5 average)
%              Maximal clause size      :   56 (   3 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(d10_orders_2,axiom,(
    ! [X1] :
      ( l1_orders_2(X1)
     => ! [X2] :
          ( m1_subset_1(X2,u1_struct_0(X1))
         => ! [X3] :
              ( m1_subset_1(X3,u1_struct_0(X1))
             => ( r2_orders_2(X1,X2,X3)
              <=> ( r1_orders_2(X1,X2,X3)
                  & X2 != X3 ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_orders_2)).

fof(t46_orders_2,conjecture,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v3_orders_2(X1)
        & v4_orders_2(X1)
        & v5_orders_2(X1)
        & l1_orders_2(X1) )
     => k2_orders_2(X1,k2_struct_0(X1)) = k1_xboole_0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t46_orders_2)).

fof(fraenkel_a_2_1_orders_2,axiom,(
    ! [X1,X2,X3] :
      ( ( ~ v2_struct_0(X2)
        & v3_orders_2(X2)
        & v4_orders_2(X2)
        & v5_orders_2(X2)
        & l1_orders_2(X2)
        & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2))) )
     => ( r2_hidden(X1,a_2_1_orders_2(X2,X3))
      <=> ? [X4] :
            ( m1_subset_1(X4,u1_struct_0(X2))
            & X1 = X4
            & ! [X5] :
                ( m1_subset_1(X5,u1_struct_0(X2))
               => ( r2_hidden(X5,X3)
                 => r2_orders_2(X2,X4,X5) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fraenkel_a_2_1_orders_2)).

fof(t2_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,X2)
     => ( v1_xboole_0(X2)
        | r2_hidden(X1,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_subset)).

fof(dt_k2_subset_1,axiom,(
    ! [X1] : m1_subset_1(k2_subset_1(X1),k1_zfmisc_1(X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k2_subset_1)).

fof(d4_subset_1,axiom,(
    ! [X1] : k2_subset_1(X1) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d4_subset_1)).

fof(d3_struct_0,axiom,(
    ! [X1] :
      ( l1_struct_0(X1)
     => k2_struct_0(X1) = u1_struct_0(X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_struct_0)).

fof(d13_orders_2,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v3_orders_2(X1)
        & v4_orders_2(X1)
        & v5_orders_2(X1)
        & l1_orders_2(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => k2_orders_2(X1,X2) = a_2_1_orders_2(X1,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d13_orders_2)).

fof(t34_mcart_1,axiom,(
    ! [X1] :
      ~ ( X1 != k1_xboole_0
        & ! [X2] :
            ~ ( r2_hidden(X2,X1)
              & ! [X3,X4,X5,X6] :
                  ~ ( ( r2_hidden(X3,X1)
                      | r2_hidden(X4,X1) )
                    & X2 = k4_mcart_1(X3,X4,X5,X6) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t34_mcart_1)).

fof(dt_l1_orders_2,axiom,(
    ! [X1] :
      ( l1_orders_2(X1)
     => l1_struct_0(X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_l1_orders_2)).

fof(fc2_struct_0,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & l1_struct_0(X1) )
     => ~ v1_xboole_0(u1_struct_0(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc2_struct_0)).

fof(c_0_11,plain,(
    ! [X19,X20,X21] :
      ( ( r1_orders_2(X19,X20,X21)
        | ~ r2_orders_2(X19,X20,X21)
        | ~ m1_subset_1(X21,u1_struct_0(X19))
        | ~ m1_subset_1(X20,u1_struct_0(X19))
        | ~ l1_orders_2(X19) )
      & ( X20 != X21
        | ~ r2_orders_2(X19,X20,X21)
        | ~ m1_subset_1(X21,u1_struct_0(X19))
        | ~ m1_subset_1(X20,u1_struct_0(X19))
        | ~ l1_orders_2(X19) )
      & ( ~ r1_orders_2(X19,X20,X21)
        | X20 = X21
        | r2_orders_2(X19,X20,X21)
        | ~ m1_subset_1(X21,u1_struct_0(X19))
        | ~ m1_subset_1(X20,u1_struct_0(X19))
        | ~ l1_orders_2(X19) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_orders_2])])])])).

fof(c_0_12,negated_conjecture,(
    ~ ! [X1] :
        ( ( ~ v2_struct_0(X1)
          & v3_orders_2(X1)
          & v4_orders_2(X1)
          & v5_orders_2(X1)
          & l1_orders_2(X1) )
       => k2_orders_2(X1,k2_struct_0(X1)) = k1_xboole_0 ) ),
    inference(assume_negation,[status(cth)],[t46_orders_2])).

cnf(c_0_13,plain,
    ( X1 != X2
    | ~ r2_orders_2(X3,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X3))
    | ~ m1_subset_1(X1,u1_struct_0(X3))
    | ~ l1_orders_2(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

fof(c_0_14,plain,(
    ! [X25,X26,X27,X29,X30] :
      ( ( m1_subset_1(esk2_3(X25,X26,X27),u1_struct_0(X26))
        | ~ r2_hidden(X25,a_2_1_orders_2(X26,X27))
        | v2_struct_0(X26)
        | ~ v3_orders_2(X26)
        | ~ v4_orders_2(X26)
        | ~ v5_orders_2(X26)
        | ~ l1_orders_2(X26)
        | ~ m1_subset_1(X27,k1_zfmisc_1(u1_struct_0(X26))) )
      & ( X25 = esk2_3(X25,X26,X27)
        | ~ r2_hidden(X25,a_2_1_orders_2(X26,X27))
        | v2_struct_0(X26)
        | ~ v3_orders_2(X26)
        | ~ v4_orders_2(X26)
        | ~ v5_orders_2(X26)
        | ~ l1_orders_2(X26)
        | ~ m1_subset_1(X27,k1_zfmisc_1(u1_struct_0(X26))) )
      & ( ~ m1_subset_1(X29,u1_struct_0(X26))
        | ~ r2_hidden(X29,X27)
        | r2_orders_2(X26,esk2_3(X25,X26,X27),X29)
        | ~ r2_hidden(X25,a_2_1_orders_2(X26,X27))
        | v2_struct_0(X26)
        | ~ v3_orders_2(X26)
        | ~ v4_orders_2(X26)
        | ~ v5_orders_2(X26)
        | ~ l1_orders_2(X26)
        | ~ m1_subset_1(X27,k1_zfmisc_1(u1_struct_0(X26))) )
      & ( m1_subset_1(esk3_4(X25,X26,X27,X30),u1_struct_0(X26))
        | ~ m1_subset_1(X30,u1_struct_0(X26))
        | X25 != X30
        | r2_hidden(X25,a_2_1_orders_2(X26,X27))
        | v2_struct_0(X26)
        | ~ v3_orders_2(X26)
        | ~ v4_orders_2(X26)
        | ~ v5_orders_2(X26)
        | ~ l1_orders_2(X26)
        | ~ m1_subset_1(X27,k1_zfmisc_1(u1_struct_0(X26))) )
      & ( r2_hidden(esk3_4(X25,X26,X27,X30),X27)
        | ~ m1_subset_1(X30,u1_struct_0(X26))
        | X25 != X30
        | r2_hidden(X25,a_2_1_orders_2(X26,X27))
        | v2_struct_0(X26)
        | ~ v3_orders_2(X26)
        | ~ v4_orders_2(X26)
        | ~ v5_orders_2(X26)
        | ~ l1_orders_2(X26)
        | ~ m1_subset_1(X27,k1_zfmisc_1(u1_struct_0(X26))) )
      & ( ~ r2_orders_2(X26,X30,esk3_4(X25,X26,X27,X30))
        | ~ m1_subset_1(X30,u1_struct_0(X26))
        | X25 != X30
        | r2_hidden(X25,a_2_1_orders_2(X26,X27))
        | v2_struct_0(X26)
        | ~ v3_orders_2(X26)
        | ~ v4_orders_2(X26)
        | ~ v5_orders_2(X26)
        | ~ l1_orders_2(X26)
        | ~ m1_subset_1(X27,k1_zfmisc_1(u1_struct_0(X26))) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fraenkel_a_2_1_orders_2])])])])])])).

fof(c_0_15,plain,(
    ! [X9,X10] :
      ( ~ m1_subset_1(X9,X10)
      | v1_xboole_0(X10)
      | r2_hidden(X9,X10) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_subset])])).

fof(c_0_16,plain,(
    ! [X8] : m1_subset_1(k2_subset_1(X8),k1_zfmisc_1(X8)) ),
    inference(variable_rename,[status(thm)],[dt_k2_subset_1])).

fof(c_0_17,plain,(
    ! [X7] : k2_subset_1(X7) = X7 ),
    inference(variable_rename,[status(thm)],[d4_subset_1])).

fof(c_0_18,negated_conjecture,
    ( ~ v2_struct_0(esk4_0)
    & v3_orders_2(esk4_0)
    & v4_orders_2(esk4_0)
    & v5_orders_2(esk4_0)
    & l1_orders_2(esk4_0)
    & k2_orders_2(esk4_0,k2_struct_0(esk4_0)) != k1_xboole_0 ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_12])])])])).

fof(c_0_19,plain,(
    ! [X17] :
      ( ~ l1_struct_0(X17)
      | k2_struct_0(X17) = u1_struct_0(X17) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_struct_0])])).

cnf(c_0_20,plain,
    ( ~ r2_orders_2(X1,X2,X2)
    | ~ l1_orders_2(X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1)) ),
    inference(er,[status(thm)],[c_0_13])).

cnf(c_0_21,plain,
    ( r2_orders_2(X2,esk2_3(X4,X2,X3),X1)
    | v2_struct_0(X2)
    | ~ m1_subset_1(X1,u1_struct_0(X2))
    | ~ r2_hidden(X1,X3)
    | ~ r2_hidden(X4,a_2_1_orders_2(X2,X3))
    | ~ v3_orders_2(X2)
    | ~ v4_orders_2(X2)
    | ~ v5_orders_2(X2)
    | ~ l1_orders_2(X2)
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_22,plain,
    ( m1_subset_1(esk2_3(X1,X2,X3),u1_struct_0(X2))
    | v2_struct_0(X2)
    | ~ r2_hidden(X1,a_2_1_orders_2(X2,X3))
    | ~ v3_orders_2(X2)
    | ~ v4_orders_2(X2)
    | ~ v5_orders_2(X2)
    | ~ l1_orders_2(X2)
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_23,plain,
    ( v1_xboole_0(X2)
    | r2_hidden(X1,X2)
    | ~ m1_subset_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_24,plain,
    ( m1_subset_1(k2_subset_1(X1),k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_25,plain,
    ( k2_subset_1(X1) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_26,negated_conjecture,
    ( k2_orders_2(esk4_0,k2_struct_0(esk4_0)) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_27,plain,
    ( k2_struct_0(X1) = u1_struct_0(X1)
    | ~ l1_struct_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

fof(c_0_28,plain,(
    ! [X22,X23] :
      ( v2_struct_0(X22)
      | ~ v3_orders_2(X22)
      | ~ v4_orders_2(X22)
      | ~ v5_orders_2(X22)
      | ~ l1_orders_2(X22)
      | ~ m1_subset_1(X23,k1_zfmisc_1(u1_struct_0(X22)))
      | k2_orders_2(X22,X23) = a_2_1_orders_2(X22,X23) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d13_orders_2])])])])).

cnf(c_0_29,plain,
    ( v2_struct_0(X1)
    | ~ v5_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v3_orders_2(X1)
    | ~ l1_orders_2(X1)
    | ~ r2_hidden(esk2_3(X2,X1,X3),X3)
    | ~ r2_hidden(X2,a_2_1_orders_2(X1,X3))
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_20,c_0_21]),c_0_22])).

cnf(c_0_30,plain,
    ( v2_struct_0(X1)
    | r2_hidden(esk2_3(X2,X1,X3),u1_struct_0(X1))
    | v1_xboole_0(u1_struct_0(X1))
    | ~ v5_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v3_orders_2(X1)
    | ~ l1_orders_2(X1)
    | ~ r2_hidden(X2,a_2_1_orders_2(X1,X3))
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(spm,[status(thm)],[c_0_23,c_0_22])).

cnf(c_0_31,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X1)) ),
    inference(rw,[status(thm)],[c_0_24,c_0_25])).

fof(c_0_32,plain,(
    ! [X11,X13,X14,X15,X16] :
      ( ( r2_hidden(esk1_1(X11),X11)
        | X11 = k1_xboole_0 )
      & ( ~ r2_hidden(X13,X11)
        | esk1_1(X11) != k4_mcart_1(X13,X14,X15,X16)
        | X11 = k1_xboole_0 )
      & ( ~ r2_hidden(X14,X11)
        | esk1_1(X11) != k4_mcart_1(X13,X14,X15,X16)
        | X11 = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[t34_mcart_1])])])])])])).

cnf(c_0_33,negated_conjecture,
    ( k2_orders_2(esk4_0,u1_struct_0(esk4_0)) != k1_xboole_0
    | ~ l1_struct_0(esk4_0) ),
    inference(spm,[status(thm)],[c_0_26,c_0_27])).

cnf(c_0_34,plain,
    ( v2_struct_0(X1)
    | k2_orders_2(X1,X2) = a_2_1_orders_2(X1,X2)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_35,negated_conjecture,
    ( v5_orders_2(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_36,negated_conjecture,
    ( v4_orders_2(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_37,negated_conjecture,
    ( v3_orders_2(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_38,negated_conjecture,
    ( l1_orders_2(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_39,negated_conjecture,
    ( ~ v2_struct_0(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

fof(c_0_40,plain,(
    ! [X24] :
      ( ~ l1_orders_2(X24)
      | l1_struct_0(X24) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_l1_orders_2])])).

cnf(c_0_41,plain,
    ( v2_struct_0(X1)
    | v1_xboole_0(u1_struct_0(X1))
    | ~ v5_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v3_orders_2(X1)
    | ~ l1_orders_2(X1)
    | ~ r2_hidden(X2,a_2_1_orders_2(X1,u1_struct_0(X1))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29,c_0_30]),c_0_31])])).

cnf(c_0_42,plain,
    ( r2_hidden(esk1_1(X1),X1)
    | X1 = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

cnf(c_0_43,negated_conjecture,
    ( a_2_1_orders_2(esk4_0,u1_struct_0(esk4_0)) != k1_xboole_0
    | ~ l1_struct_0(esk4_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_34]),c_0_35]),c_0_36]),c_0_37]),c_0_38]),c_0_31])]),c_0_39])).

cnf(c_0_44,plain,
    ( l1_struct_0(X1)
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_40])).

fof(c_0_45,plain,(
    ! [X18] :
      ( v2_struct_0(X18)
      | ~ l1_struct_0(X18)
      | ~ v1_xboole_0(u1_struct_0(X18)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc2_struct_0])])])).

cnf(c_0_46,plain,
    ( a_2_1_orders_2(X1,u1_struct_0(X1)) = k1_xboole_0
    | v2_struct_0(X1)
    | v1_xboole_0(u1_struct_0(X1))
    | ~ v5_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v3_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_41,c_0_42])).

cnf(c_0_47,negated_conjecture,
    ( a_2_1_orders_2(esk4_0,u1_struct_0(esk4_0)) != k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43,c_0_44]),c_0_38])])).

cnf(c_0_48,plain,
    ( v2_struct_0(X1)
    | ~ l1_struct_0(X1)
    | ~ v1_xboole_0(u1_struct_0(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_45])).

cnf(c_0_49,negated_conjecture,
    ( v1_xboole_0(u1_struct_0(esk4_0)) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_46,c_0_35]),c_0_36]),c_0_37]),c_0_38])]),c_0_47]),c_0_39])).

cnf(c_0_50,negated_conjecture,
    ( ~ l1_struct_0(esk4_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_48,c_0_49]),c_0_39])).

cnf(c_0_51,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50,c_0_44]),c_0_38])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.34  % Computer   : n012.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 10:07:52 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  # Version: 2.5pre002
% 0.14/0.34  # No SInE strategy applied
% 0.14/0.34  # Trying AutoSched0 for 299 seconds
% 0.20/0.38  # AutoSched0-Mode selected heuristic G_E___300_C18_F1_SE_CS_SP_S0Y
% 0.20/0.38  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.20/0.38  #
% 0.20/0.38  # Preprocessing time       : 0.028 s
% 0.20/0.38  
% 0.20/0.38  # Proof found!
% 0.20/0.38  # SZS status Theorem
% 0.20/0.38  # SZS output start CNFRefutation
% 0.20/0.38  fof(d10_orders_2, axiom, ![X1]:(l1_orders_2(X1)=>![X2]:(m1_subset_1(X2,u1_struct_0(X1))=>![X3]:(m1_subset_1(X3,u1_struct_0(X1))=>(r2_orders_2(X1,X2,X3)<=>(r1_orders_2(X1,X2,X3)&X2!=X3))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d10_orders_2)).
% 0.20/0.38  fof(t46_orders_2, conjecture, ![X1]:(((((~(v2_struct_0(X1))&v3_orders_2(X1))&v4_orders_2(X1))&v5_orders_2(X1))&l1_orders_2(X1))=>k2_orders_2(X1,k2_struct_0(X1))=k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t46_orders_2)).
% 0.20/0.38  fof(fraenkel_a_2_1_orders_2, axiom, ![X1, X2, X3]:((((((~(v2_struct_0(X2))&v3_orders_2(X2))&v4_orders_2(X2))&v5_orders_2(X2))&l1_orders_2(X2))&m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2))))=>(r2_hidden(X1,a_2_1_orders_2(X2,X3))<=>?[X4]:((m1_subset_1(X4,u1_struct_0(X2))&X1=X4)&![X5]:(m1_subset_1(X5,u1_struct_0(X2))=>(r2_hidden(X5,X3)=>r2_orders_2(X2,X4,X5)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fraenkel_a_2_1_orders_2)).
% 0.20/0.38  fof(t2_subset, axiom, ![X1, X2]:(m1_subset_1(X1,X2)=>(v1_xboole_0(X2)|r2_hidden(X1,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t2_subset)).
% 0.20/0.38  fof(dt_k2_subset_1, axiom, ![X1]:m1_subset_1(k2_subset_1(X1),k1_zfmisc_1(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k2_subset_1)).
% 0.20/0.38  fof(d4_subset_1, axiom, ![X1]:k2_subset_1(X1)=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', d4_subset_1)).
% 0.20/0.38  fof(d3_struct_0, axiom, ![X1]:(l1_struct_0(X1)=>k2_struct_0(X1)=u1_struct_0(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d3_struct_0)).
% 0.20/0.38  fof(d13_orders_2, axiom, ![X1]:(((((~(v2_struct_0(X1))&v3_orders_2(X1))&v4_orders_2(X1))&v5_orders_2(X1))&l1_orders_2(X1))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>k2_orders_2(X1,X2)=a_2_1_orders_2(X1,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d13_orders_2)).
% 0.20/0.38  fof(t34_mcart_1, axiom, ![X1]:~((X1!=k1_xboole_0&![X2]:~((r2_hidden(X2,X1)&![X3, X4, X5, X6]:~(((r2_hidden(X3,X1)|r2_hidden(X4,X1))&X2=k4_mcart_1(X3,X4,X5,X6))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t34_mcart_1)).
% 0.20/0.38  fof(dt_l1_orders_2, axiom, ![X1]:(l1_orders_2(X1)=>l1_struct_0(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_l1_orders_2)).
% 0.20/0.38  fof(fc2_struct_0, axiom, ![X1]:((~(v2_struct_0(X1))&l1_struct_0(X1))=>~(v1_xboole_0(u1_struct_0(X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc2_struct_0)).
% 0.20/0.38  fof(c_0_11, plain, ![X19, X20, X21]:(((r1_orders_2(X19,X20,X21)|~r2_orders_2(X19,X20,X21)|~m1_subset_1(X21,u1_struct_0(X19))|~m1_subset_1(X20,u1_struct_0(X19))|~l1_orders_2(X19))&(X20!=X21|~r2_orders_2(X19,X20,X21)|~m1_subset_1(X21,u1_struct_0(X19))|~m1_subset_1(X20,u1_struct_0(X19))|~l1_orders_2(X19)))&(~r1_orders_2(X19,X20,X21)|X20=X21|r2_orders_2(X19,X20,X21)|~m1_subset_1(X21,u1_struct_0(X19))|~m1_subset_1(X20,u1_struct_0(X19))|~l1_orders_2(X19))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_orders_2])])])])).
% 0.20/0.38  fof(c_0_12, negated_conjecture, ~(![X1]:(((((~(v2_struct_0(X1))&v3_orders_2(X1))&v4_orders_2(X1))&v5_orders_2(X1))&l1_orders_2(X1))=>k2_orders_2(X1,k2_struct_0(X1))=k1_xboole_0)), inference(assume_negation,[status(cth)],[t46_orders_2])).
% 0.20/0.38  cnf(c_0_13, plain, (X1!=X2|~r2_orders_2(X3,X1,X2)|~m1_subset_1(X2,u1_struct_0(X3))|~m1_subset_1(X1,u1_struct_0(X3))|~l1_orders_2(X3)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.20/0.38  fof(c_0_14, plain, ![X25, X26, X27, X29, X30]:((((m1_subset_1(esk2_3(X25,X26,X27),u1_struct_0(X26))|~r2_hidden(X25,a_2_1_orders_2(X26,X27))|(v2_struct_0(X26)|~v3_orders_2(X26)|~v4_orders_2(X26)|~v5_orders_2(X26)|~l1_orders_2(X26)|~m1_subset_1(X27,k1_zfmisc_1(u1_struct_0(X26)))))&(X25=esk2_3(X25,X26,X27)|~r2_hidden(X25,a_2_1_orders_2(X26,X27))|(v2_struct_0(X26)|~v3_orders_2(X26)|~v4_orders_2(X26)|~v5_orders_2(X26)|~l1_orders_2(X26)|~m1_subset_1(X27,k1_zfmisc_1(u1_struct_0(X26))))))&(~m1_subset_1(X29,u1_struct_0(X26))|(~r2_hidden(X29,X27)|r2_orders_2(X26,esk2_3(X25,X26,X27),X29))|~r2_hidden(X25,a_2_1_orders_2(X26,X27))|(v2_struct_0(X26)|~v3_orders_2(X26)|~v4_orders_2(X26)|~v5_orders_2(X26)|~l1_orders_2(X26)|~m1_subset_1(X27,k1_zfmisc_1(u1_struct_0(X26))))))&((m1_subset_1(esk3_4(X25,X26,X27,X30),u1_struct_0(X26))|(~m1_subset_1(X30,u1_struct_0(X26))|X25!=X30)|r2_hidden(X25,a_2_1_orders_2(X26,X27))|(v2_struct_0(X26)|~v3_orders_2(X26)|~v4_orders_2(X26)|~v5_orders_2(X26)|~l1_orders_2(X26)|~m1_subset_1(X27,k1_zfmisc_1(u1_struct_0(X26)))))&((r2_hidden(esk3_4(X25,X26,X27,X30),X27)|(~m1_subset_1(X30,u1_struct_0(X26))|X25!=X30)|r2_hidden(X25,a_2_1_orders_2(X26,X27))|(v2_struct_0(X26)|~v3_orders_2(X26)|~v4_orders_2(X26)|~v5_orders_2(X26)|~l1_orders_2(X26)|~m1_subset_1(X27,k1_zfmisc_1(u1_struct_0(X26)))))&(~r2_orders_2(X26,X30,esk3_4(X25,X26,X27,X30))|(~m1_subset_1(X30,u1_struct_0(X26))|X25!=X30)|r2_hidden(X25,a_2_1_orders_2(X26,X27))|(v2_struct_0(X26)|~v3_orders_2(X26)|~v4_orders_2(X26)|~v5_orders_2(X26)|~l1_orders_2(X26)|~m1_subset_1(X27,k1_zfmisc_1(u1_struct_0(X26)))))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fraenkel_a_2_1_orders_2])])])])])])).
% 0.20/0.38  fof(c_0_15, plain, ![X9, X10]:(~m1_subset_1(X9,X10)|(v1_xboole_0(X10)|r2_hidden(X9,X10))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_subset])])).
% 0.20/0.38  fof(c_0_16, plain, ![X8]:m1_subset_1(k2_subset_1(X8),k1_zfmisc_1(X8)), inference(variable_rename,[status(thm)],[dt_k2_subset_1])).
% 0.20/0.38  fof(c_0_17, plain, ![X7]:k2_subset_1(X7)=X7, inference(variable_rename,[status(thm)],[d4_subset_1])).
% 0.20/0.38  fof(c_0_18, negated_conjecture, (((((~v2_struct_0(esk4_0)&v3_orders_2(esk4_0))&v4_orders_2(esk4_0))&v5_orders_2(esk4_0))&l1_orders_2(esk4_0))&k2_orders_2(esk4_0,k2_struct_0(esk4_0))!=k1_xboole_0), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_12])])])])).
% 0.20/0.38  fof(c_0_19, plain, ![X17]:(~l1_struct_0(X17)|k2_struct_0(X17)=u1_struct_0(X17)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_struct_0])])).
% 0.20/0.38  cnf(c_0_20, plain, (~r2_orders_2(X1,X2,X2)|~l1_orders_2(X1)|~m1_subset_1(X2,u1_struct_0(X1))), inference(er,[status(thm)],[c_0_13])).
% 0.20/0.38  cnf(c_0_21, plain, (r2_orders_2(X2,esk2_3(X4,X2,X3),X1)|v2_struct_0(X2)|~m1_subset_1(X1,u1_struct_0(X2))|~r2_hidden(X1,X3)|~r2_hidden(X4,a_2_1_orders_2(X2,X3))|~v3_orders_2(X2)|~v4_orders_2(X2)|~v5_orders_2(X2)|~l1_orders_2(X2)|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2)))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.20/0.38  cnf(c_0_22, plain, (m1_subset_1(esk2_3(X1,X2,X3),u1_struct_0(X2))|v2_struct_0(X2)|~r2_hidden(X1,a_2_1_orders_2(X2,X3))|~v3_orders_2(X2)|~v4_orders_2(X2)|~v5_orders_2(X2)|~l1_orders_2(X2)|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2)))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.20/0.38  cnf(c_0_23, plain, (v1_xboole_0(X2)|r2_hidden(X1,X2)|~m1_subset_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.38  cnf(c_0_24, plain, (m1_subset_1(k2_subset_1(X1),k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.20/0.38  cnf(c_0_25, plain, (k2_subset_1(X1)=X1), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.20/0.38  cnf(c_0_26, negated_conjecture, (k2_orders_2(esk4_0,k2_struct_0(esk4_0))!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.20/0.38  cnf(c_0_27, plain, (k2_struct_0(X1)=u1_struct_0(X1)|~l1_struct_0(X1)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.20/0.38  fof(c_0_28, plain, ![X22, X23]:(v2_struct_0(X22)|~v3_orders_2(X22)|~v4_orders_2(X22)|~v5_orders_2(X22)|~l1_orders_2(X22)|(~m1_subset_1(X23,k1_zfmisc_1(u1_struct_0(X22)))|k2_orders_2(X22,X23)=a_2_1_orders_2(X22,X23))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d13_orders_2])])])])).
% 0.20/0.38  cnf(c_0_29, plain, (v2_struct_0(X1)|~v5_orders_2(X1)|~v4_orders_2(X1)|~v3_orders_2(X1)|~l1_orders_2(X1)|~r2_hidden(esk2_3(X2,X1,X3),X3)|~r2_hidden(X2,a_2_1_orders_2(X1,X3))|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_20, c_0_21]), c_0_22])).
% 0.20/0.38  cnf(c_0_30, plain, (v2_struct_0(X1)|r2_hidden(esk2_3(X2,X1,X3),u1_struct_0(X1))|v1_xboole_0(u1_struct_0(X1))|~v5_orders_2(X1)|~v4_orders_2(X1)|~v3_orders_2(X1)|~l1_orders_2(X1)|~r2_hidden(X2,a_2_1_orders_2(X1,X3))|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))), inference(spm,[status(thm)],[c_0_23, c_0_22])).
% 0.20/0.38  cnf(c_0_31, plain, (m1_subset_1(X1,k1_zfmisc_1(X1))), inference(rw,[status(thm)],[c_0_24, c_0_25])).
% 0.20/0.38  fof(c_0_32, plain, ![X11, X13, X14, X15, X16]:((r2_hidden(esk1_1(X11),X11)|X11=k1_xboole_0)&((~r2_hidden(X13,X11)|esk1_1(X11)!=k4_mcart_1(X13,X14,X15,X16)|X11=k1_xboole_0)&(~r2_hidden(X14,X11)|esk1_1(X11)!=k4_mcart_1(X13,X14,X15,X16)|X11=k1_xboole_0))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[t34_mcart_1])])])])])])).
% 0.20/0.38  cnf(c_0_33, negated_conjecture, (k2_orders_2(esk4_0,u1_struct_0(esk4_0))!=k1_xboole_0|~l1_struct_0(esk4_0)), inference(spm,[status(thm)],[c_0_26, c_0_27])).
% 0.20/0.38  cnf(c_0_34, plain, (v2_struct_0(X1)|k2_orders_2(X1,X2)=a_2_1_orders_2(X1,X2)|~v3_orders_2(X1)|~v4_orders_2(X1)|~v5_orders_2(X1)|~l1_orders_2(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.20/0.38  cnf(c_0_35, negated_conjecture, (v5_orders_2(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.20/0.38  cnf(c_0_36, negated_conjecture, (v4_orders_2(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.20/0.38  cnf(c_0_37, negated_conjecture, (v3_orders_2(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.20/0.38  cnf(c_0_38, negated_conjecture, (l1_orders_2(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.20/0.38  cnf(c_0_39, negated_conjecture, (~v2_struct_0(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.20/0.38  fof(c_0_40, plain, ![X24]:(~l1_orders_2(X24)|l1_struct_0(X24)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_l1_orders_2])])).
% 0.20/0.38  cnf(c_0_41, plain, (v2_struct_0(X1)|v1_xboole_0(u1_struct_0(X1))|~v5_orders_2(X1)|~v4_orders_2(X1)|~v3_orders_2(X1)|~l1_orders_2(X1)|~r2_hidden(X2,a_2_1_orders_2(X1,u1_struct_0(X1)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29, c_0_30]), c_0_31])])).
% 0.20/0.38  cnf(c_0_42, plain, (r2_hidden(esk1_1(X1),X1)|X1=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.20/0.38  cnf(c_0_43, negated_conjecture, (a_2_1_orders_2(esk4_0,u1_struct_0(esk4_0))!=k1_xboole_0|~l1_struct_0(esk4_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33, c_0_34]), c_0_35]), c_0_36]), c_0_37]), c_0_38]), c_0_31])]), c_0_39])).
% 0.20/0.38  cnf(c_0_44, plain, (l1_struct_0(X1)|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_40])).
% 0.20/0.38  fof(c_0_45, plain, ![X18]:(v2_struct_0(X18)|~l1_struct_0(X18)|~v1_xboole_0(u1_struct_0(X18))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc2_struct_0])])])).
% 0.20/0.38  cnf(c_0_46, plain, (a_2_1_orders_2(X1,u1_struct_0(X1))=k1_xboole_0|v2_struct_0(X1)|v1_xboole_0(u1_struct_0(X1))|~v5_orders_2(X1)|~v4_orders_2(X1)|~v3_orders_2(X1)|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_41, c_0_42])).
% 0.20/0.38  cnf(c_0_47, negated_conjecture, (a_2_1_orders_2(esk4_0,u1_struct_0(esk4_0))!=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43, c_0_44]), c_0_38])])).
% 0.20/0.38  cnf(c_0_48, plain, (v2_struct_0(X1)|~l1_struct_0(X1)|~v1_xboole_0(u1_struct_0(X1))), inference(split_conjunct,[status(thm)],[c_0_45])).
% 0.20/0.38  cnf(c_0_49, negated_conjecture, (v1_xboole_0(u1_struct_0(esk4_0))), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_46, c_0_35]), c_0_36]), c_0_37]), c_0_38])]), c_0_47]), c_0_39])).
% 0.20/0.38  cnf(c_0_50, negated_conjecture, (~l1_struct_0(esk4_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_48, c_0_49]), c_0_39])).
% 0.20/0.38  cnf(c_0_51, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50, c_0_44]), c_0_38])]), ['proof']).
% 0.20/0.38  # SZS output end CNFRefutation
% 0.20/0.38  # Proof object total steps             : 52
% 0.20/0.38  # Proof object clause steps            : 29
% 0.20/0.38  # Proof object formula steps           : 23
% 0.20/0.38  # Proof object conjectures             : 15
% 0.20/0.38  # Proof object clause conjectures      : 12
% 0.20/0.38  # Proof object formula conjectures     : 3
% 0.20/0.38  # Proof object initial clauses used    : 17
% 0.20/0.38  # Proof object initial formulas used   : 11
% 0.20/0.38  # Proof object generating inferences   : 10
% 0.20/0.38  # Proof object simplifying inferences  : 23
% 0.20/0.38  # Training examples: 0 positive, 0 negative
% 0.20/0.38  # Parsed axioms                        : 11
% 0.20/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.20/0.38  # Initial clauses                      : 25
% 0.20/0.38  # Removed in clause preprocessing      : 1
% 0.20/0.38  # Initial clauses in saturation        : 24
% 0.20/0.38  # Processed clauses                    : 48
% 0.20/0.38  # ...of these trivial                  : 0
% 0.20/0.38  # ...subsumed                          : 2
% 0.20/0.38  # ...remaining for further processing  : 46
% 0.20/0.38  # Other redundant clauses eliminated   : 4
% 0.20/0.38  # Clauses deleted for lack of memory   : 0
% 0.20/0.38  # Backward-subsumed                    : 0
% 0.20/0.38  # Backward-rewritten                   : 0
% 0.20/0.38  # Generated clauses                    : 33
% 0.20/0.38  # ...of the previous two non-trivial   : 31
% 0.20/0.38  # Contextual simplify-reflections      : 1
% 0.20/0.38  # Paramodulations                      : 29
% 0.20/0.38  # Factorizations                       : 0
% 0.20/0.38  # Equation resolutions                 : 4
% 0.20/0.38  # Propositional unsat checks           : 0
% 0.20/0.38  #    Propositional check models        : 0
% 0.20/0.38  #    Propositional check unsatisfiable : 0
% 0.20/0.38  #    Propositional clauses             : 0
% 0.20/0.38  #    Propositional clauses after purity: 0
% 0.20/0.38  #    Propositional unsat core size     : 0
% 0.20/0.38  #    Propositional preprocessing time  : 0.000
% 0.20/0.38  #    Propositional encoding time       : 0.000
% 0.20/0.38  #    Propositional solver time         : 0.000
% 0.20/0.38  #    Success case prop preproc time    : 0.000
% 0.20/0.38  #    Success case prop encoding time   : 0.000
% 0.20/0.38  #    Success case prop solver time     : 0.000
% 0.20/0.38  # Current number of processed clauses  : 42
% 0.20/0.38  #    Positive orientable unit clauses  : 6
% 0.20/0.38  #    Positive unorientable unit clauses: 0
% 0.20/0.38  #    Negative unit clauses             : 4
% 0.20/0.38  #    Non-unit-clauses                  : 32
% 0.20/0.38  # Current number of unprocessed clauses: 7
% 0.20/0.38  # ...number of literals in the above   : 91
% 0.20/0.38  # Current number of archived formulas  : 0
% 0.20/0.38  # Current number of archived clauses   : 1
% 0.20/0.38  # Clause-clause subsumption calls (NU) : 1191
% 0.20/0.38  # Rec. Clause-clause subsumption calls : 71
% 0.20/0.38  # Non-unit clause-clause subsumptions  : 2
% 0.20/0.38  # Unit Clause-clause subsumption calls : 9
% 0.20/0.38  # Rewrite failures with RHS unbound    : 0
% 0.20/0.38  # BW rewrite match attempts            : 0
% 0.20/0.38  # BW rewrite match successes           : 0
% 0.20/0.38  # Condensation attempts                : 0
% 0.20/0.38  # Condensation successes               : 0
% 0.20/0.38  # Termbank termtop insertions          : 3377
% 0.20/0.38  
% 0.20/0.38  # -------------------------------------------------
% 0.20/0.38  # User time                : 0.035 s
% 0.20/0.38  # System time              : 0.001 s
% 0.20/0.38  # Total time               : 0.036 s
% 0.20/0.38  # Maximum resident set size: 1580 pages
%------------------------------------------------------------------------------
