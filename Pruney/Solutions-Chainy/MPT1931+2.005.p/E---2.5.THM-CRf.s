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
% DateTime   : Thu Dec  3 11:21:12 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   48 ( 159 expanded)
%              Number of clauses        :   29 (  59 expanded)
%              Number of leaves         :    9 (  39 expanded)
%              Depth                    :   14
%              Number of atoms          :  175 ( 748 expanded)
%              Number of equality atoms :    0 (   0 expanded)
%              Maximal formula depth    :   18 (   4 average)
%              Maximal clause size      :   35 (   2 average)
%              Maximal term depth       :    5 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t29_yellow_6,conjecture,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & l1_struct_0(X1) )
     => ! [X2] :
          ( ( ~ v2_struct_0(X2)
            & v4_orders_2(X2)
            & v7_waybel_0(X2)
            & l1_waybel_0(X2,X1) )
         => r1_waybel_0(X1,X2,u1_struct_0(X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t29_yellow_6)).

fof(dt_l1_waybel_0,axiom,(
    ! [X1] :
      ( l1_struct_0(X1)
     => ! [X2] :
          ( l1_waybel_0(X2,X1)
         => l1_orders_2(X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_l1_waybel_0)).

fof(fc2_struct_0,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & l1_struct_0(X1) )
     => ~ v1_xboole_0(u1_struct_0(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc2_struct_0)).

fof(d1_xboole_0,axiom,(
    ! [X1] :
      ( v1_xboole_0(X1)
    <=> ! [X2] : ~ r2_hidden(X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_xboole_0)).

fof(dt_l1_orders_2,axiom,(
    ! [X1] :
      ( l1_orders_2(X1)
     => l1_struct_0(X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_l1_orders_2)).

fof(t1_subset,axiom,(
    ! [X1,X2] :
      ( r2_hidden(X1,X2)
     => m1_subset_1(X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t1_subset)).

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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d11_waybel_0)).

fof(dt_k2_waybel_0,axiom,(
    ! [X1,X2,X3] :
      ( ( ~ v2_struct_0(X1)
        & l1_struct_0(X1)
        & ~ v2_struct_0(X2)
        & l1_waybel_0(X2,X1)
        & m1_subset_1(X3,u1_struct_0(X2)) )
     => m1_subset_1(k2_waybel_0(X1,X2,X3),u1_struct_0(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k2_waybel_0)).

fof(t2_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,X2)
     => ( v1_xboole_0(X2)
        | r2_hidden(X1,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_subset)).

fof(c_0_9,negated_conjecture,(
    ~ ! [X1] :
        ( ( ~ v2_struct_0(X1)
          & l1_struct_0(X1) )
       => ! [X2] :
            ( ( ~ v2_struct_0(X2)
              & v4_orders_2(X2)
              & v7_waybel_0(X2)
              & l1_waybel_0(X2,X1) )
           => r1_waybel_0(X1,X2,u1_struct_0(X1)) ) ) ),
    inference(assume_negation,[status(cth)],[t29_yellow_6])).

fof(c_0_10,plain,(
    ! [X27,X28] :
      ( ~ l1_struct_0(X27)
      | ~ l1_waybel_0(X28,X27)
      | l1_orders_2(X28) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_l1_waybel_0])])])).

fof(c_0_11,negated_conjecture,
    ( ~ v2_struct_0(esk4_0)
    & l1_struct_0(esk4_0)
    & ~ v2_struct_0(esk5_0)
    & v4_orders_2(esk5_0)
    & v7_waybel_0(esk5_0)
    & l1_waybel_0(esk5_0,esk4_0)
    & ~ r1_waybel_0(esk4_0,esk5_0,u1_struct_0(esk4_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_9])])])])).

fof(c_0_12,plain,(
    ! [X14] :
      ( v2_struct_0(X14)
      | ~ l1_struct_0(X14)
      | ~ v1_xboole_0(u1_struct_0(X14)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc2_struct_0])])])).

fof(c_0_13,plain,(
    ! [X6,X7,X8] :
      ( ( ~ v1_xboole_0(X6)
        | ~ r2_hidden(X7,X6) )
      & ( r2_hidden(esk1_1(X8),X8)
        | v1_xboole_0(X8) ) ) ),
    inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d1_xboole_0])])])])])])).

fof(c_0_14,plain,(
    ! [X15] :
      ( ~ l1_orders_2(X15)
      | l1_struct_0(X15) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_l1_orders_2])])).

cnf(c_0_15,plain,
    ( l1_orders_2(X2)
    | ~ l1_struct_0(X1)
    | ~ l1_waybel_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_16,negated_conjecture,
    ( l1_waybel_0(esk5_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_17,negated_conjecture,
    ( l1_struct_0(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_18,plain,
    ( v2_struct_0(X1)
    | ~ l1_struct_0(X1)
    | ~ v1_xboole_0(u1_struct_0(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_19,plain,
    ( r2_hidden(esk1_1(X1),X1)
    | v1_xboole_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_20,plain,
    ( l1_struct_0(X1)
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_21,negated_conjecture,
    ( l1_orders_2(esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_15,c_0_16]),c_0_17])])).

fof(c_0_22,plain,(
    ! [X10,X11] :
      ( ~ r2_hidden(X10,X11)
      | m1_subset_1(X10,X11) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_subset])])).

cnf(c_0_23,plain,
    ( v2_struct_0(X1)
    | r2_hidden(esk1_1(u1_struct_0(X1)),u1_struct_0(X1))
    | ~ l1_struct_0(X1) ),
    inference(spm,[status(thm)],[c_0_18,c_0_19])).

cnf(c_0_24,negated_conjecture,
    ( l1_struct_0(esk5_0) ),
    inference(spm,[status(thm)],[c_0_20,c_0_21])).

cnf(c_0_25,negated_conjecture,
    ( ~ v2_struct_0(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

fof(c_0_26,plain,(
    ! [X16,X17,X18,X20,X21,X22] :
      ( ( m1_subset_1(esk2_3(X16,X17,X18),u1_struct_0(X17))
        | ~ r1_waybel_0(X16,X17,X18)
        | v2_struct_0(X17)
        | ~ l1_waybel_0(X17,X16)
        | v2_struct_0(X16)
        | ~ l1_struct_0(X16) )
      & ( ~ m1_subset_1(X20,u1_struct_0(X17))
        | ~ r1_orders_2(X17,esk2_3(X16,X17,X18),X20)
        | r2_hidden(k2_waybel_0(X16,X17,X20),X18)
        | ~ r1_waybel_0(X16,X17,X18)
        | v2_struct_0(X17)
        | ~ l1_waybel_0(X17,X16)
        | v2_struct_0(X16)
        | ~ l1_struct_0(X16) )
      & ( m1_subset_1(esk3_4(X16,X17,X21,X22),u1_struct_0(X17))
        | ~ m1_subset_1(X22,u1_struct_0(X17))
        | r1_waybel_0(X16,X17,X21)
        | v2_struct_0(X17)
        | ~ l1_waybel_0(X17,X16)
        | v2_struct_0(X16)
        | ~ l1_struct_0(X16) )
      & ( r1_orders_2(X17,X22,esk3_4(X16,X17,X21,X22))
        | ~ m1_subset_1(X22,u1_struct_0(X17))
        | r1_waybel_0(X16,X17,X21)
        | v2_struct_0(X17)
        | ~ l1_waybel_0(X17,X16)
        | v2_struct_0(X16)
        | ~ l1_struct_0(X16) )
      & ( ~ r2_hidden(k2_waybel_0(X16,X17,esk3_4(X16,X17,X21,X22)),X21)
        | ~ m1_subset_1(X22,u1_struct_0(X17))
        | r1_waybel_0(X16,X17,X21)
        | v2_struct_0(X17)
        | ~ l1_waybel_0(X17,X16)
        | v2_struct_0(X16)
        | ~ l1_struct_0(X16) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d11_waybel_0])])])])])])])).

cnf(c_0_27,plain,
    ( m1_subset_1(X1,X2)
    | ~ r2_hidden(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_28,negated_conjecture,
    ( r2_hidden(esk1_1(u1_struct_0(esk5_0)),u1_struct_0(esk5_0)) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_23,c_0_24]),c_0_25])).

cnf(c_0_29,plain,
    ( m1_subset_1(esk3_4(X1,X2,X3,X4),u1_struct_0(X2))
    | r1_waybel_0(X1,X2,X3)
    | v2_struct_0(X2)
    | v2_struct_0(X1)
    | ~ m1_subset_1(X4,u1_struct_0(X2))
    | ~ l1_waybel_0(X2,X1)
    | ~ l1_struct_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_30,negated_conjecture,
    ( m1_subset_1(esk1_1(u1_struct_0(esk5_0)),u1_struct_0(esk5_0)) ),
    inference(spm,[status(thm)],[c_0_27,c_0_28])).

cnf(c_0_31,negated_conjecture,
    ( r1_waybel_0(X1,esk5_0,X2)
    | v2_struct_0(X1)
    | m1_subset_1(esk3_4(X1,esk5_0,X2,esk1_1(u1_struct_0(esk5_0))),u1_struct_0(esk5_0))
    | ~ l1_waybel_0(esk5_0,X1)
    | ~ l1_struct_0(X1) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_29,c_0_30]),c_0_25])).

cnf(c_0_32,negated_conjecture,
    ( ~ v2_struct_0(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

fof(c_0_33,plain,(
    ! [X24,X25,X26] :
      ( v2_struct_0(X24)
      | ~ l1_struct_0(X24)
      | v2_struct_0(X25)
      | ~ l1_waybel_0(X25,X24)
      | ~ m1_subset_1(X26,u1_struct_0(X25))
      | m1_subset_1(k2_waybel_0(X24,X25,X26),u1_struct_0(X24)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[dt_k2_waybel_0])])])).

cnf(c_0_34,negated_conjecture,
    ( ~ r1_waybel_0(esk4_0,esk5_0,u1_struct_0(esk4_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_35,negated_conjecture,
    ( r1_waybel_0(esk4_0,esk5_0,X1)
    | m1_subset_1(esk3_4(esk4_0,esk5_0,X1,esk1_1(u1_struct_0(esk5_0))),u1_struct_0(esk5_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_16]),c_0_17])]),c_0_32])).

cnf(c_0_36,plain,
    ( v2_struct_0(X1)
    | v2_struct_0(X2)
    | m1_subset_1(k2_waybel_0(X1,X2,X3),u1_struct_0(X1))
    | ~ l1_struct_0(X1)
    | ~ l1_waybel_0(X2,X1)
    | ~ m1_subset_1(X3,u1_struct_0(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_37,negated_conjecture,
    ( m1_subset_1(esk3_4(esk4_0,esk5_0,u1_struct_0(esk4_0),esk1_1(u1_struct_0(esk5_0))),u1_struct_0(esk5_0)) ),
    inference(spm,[status(thm)],[c_0_34,c_0_35])).

fof(c_0_38,plain,(
    ! [X12,X13] :
      ( ~ m1_subset_1(X12,X13)
      | v1_xboole_0(X13)
      | r2_hidden(X12,X13) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_subset])])).

cnf(c_0_39,negated_conjecture,
    ( v2_struct_0(X1)
    | m1_subset_1(k2_waybel_0(X1,esk5_0,esk3_4(esk4_0,esk5_0,u1_struct_0(esk4_0),esk1_1(u1_struct_0(esk5_0)))),u1_struct_0(X1))
    | ~ l1_waybel_0(esk5_0,X1)
    | ~ l1_struct_0(X1) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_36,c_0_37]),c_0_25])).

cnf(c_0_40,plain,
    ( ~ v1_xboole_0(X1)
    | ~ r2_hidden(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_41,negated_conjecture,
    ( r2_hidden(esk1_1(u1_struct_0(esk4_0)),u1_struct_0(esk4_0)) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_23,c_0_17]),c_0_32])).

cnf(c_0_42,plain,
    ( v1_xboole_0(X2)
    | r2_hidden(X1,X2)
    | ~ m1_subset_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_38])).

cnf(c_0_43,negated_conjecture,
    ( m1_subset_1(k2_waybel_0(esk4_0,esk5_0,esk3_4(esk4_0,esk5_0,u1_struct_0(esk4_0),esk1_1(u1_struct_0(esk5_0)))),u1_struct_0(esk4_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39,c_0_16]),c_0_17])]),c_0_32])).

cnf(c_0_44,negated_conjecture,
    ( ~ v1_xboole_0(u1_struct_0(esk4_0)) ),
    inference(spm,[status(thm)],[c_0_40,c_0_41])).

cnf(c_0_45,plain,
    ( r1_waybel_0(X1,X2,X3)
    | v2_struct_0(X2)
    | v2_struct_0(X1)
    | ~ r2_hidden(k2_waybel_0(X1,X2,esk3_4(X1,X2,X3,X4)),X3)
    | ~ m1_subset_1(X4,u1_struct_0(X2))
    | ~ l1_waybel_0(X2,X1)
    | ~ l1_struct_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_46,negated_conjecture,
    ( r2_hidden(k2_waybel_0(esk4_0,esk5_0,esk3_4(esk4_0,esk5_0,u1_struct_0(esk4_0),esk1_1(u1_struct_0(esk5_0)))),u1_struct_0(esk4_0)) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_42,c_0_43]),c_0_44])).

cnf(c_0_47,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45,c_0_46]),c_0_16]),c_0_17]),c_0_30])]),c_0_34]),c_0_25]),c_0_32]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n019.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 13:26:37 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.13/0.36  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S03EA
% 0.13/0.36  # and selection function SelectLComplex.
% 0.13/0.36  #
% 0.13/0.36  # Preprocessing time       : 0.017 s
% 0.13/0.36  # Presaturation interreduction done
% 0.13/0.36  
% 0.13/0.36  # Proof found!
% 0.13/0.36  # SZS status Theorem
% 0.13/0.36  # SZS output start CNFRefutation
% 0.13/0.36  fof(t29_yellow_6, conjecture, ![X1]:((~(v2_struct_0(X1))&l1_struct_0(X1))=>![X2]:((((~(v2_struct_0(X2))&v4_orders_2(X2))&v7_waybel_0(X2))&l1_waybel_0(X2,X1))=>r1_waybel_0(X1,X2,u1_struct_0(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t29_yellow_6)).
% 0.13/0.36  fof(dt_l1_waybel_0, axiom, ![X1]:(l1_struct_0(X1)=>![X2]:(l1_waybel_0(X2,X1)=>l1_orders_2(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_l1_waybel_0)).
% 0.13/0.36  fof(fc2_struct_0, axiom, ![X1]:((~(v2_struct_0(X1))&l1_struct_0(X1))=>~(v1_xboole_0(u1_struct_0(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc2_struct_0)).
% 0.13/0.36  fof(d1_xboole_0, axiom, ![X1]:(v1_xboole_0(X1)<=>![X2]:~(r2_hidden(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d1_xboole_0)).
% 0.13/0.36  fof(dt_l1_orders_2, axiom, ![X1]:(l1_orders_2(X1)=>l1_struct_0(X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_l1_orders_2)).
% 0.13/0.36  fof(t1_subset, axiom, ![X1, X2]:(r2_hidden(X1,X2)=>m1_subset_1(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t1_subset)).
% 0.13/0.36  fof(d11_waybel_0, axiom, ![X1]:((~(v2_struct_0(X1))&l1_struct_0(X1))=>![X2]:((~(v2_struct_0(X2))&l1_waybel_0(X2,X1))=>![X3]:(r1_waybel_0(X1,X2,X3)<=>?[X4]:(m1_subset_1(X4,u1_struct_0(X2))&![X5]:(m1_subset_1(X5,u1_struct_0(X2))=>(r1_orders_2(X2,X4,X5)=>r2_hidden(k2_waybel_0(X1,X2,X5),X3))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d11_waybel_0)).
% 0.13/0.36  fof(dt_k2_waybel_0, axiom, ![X1, X2, X3]:(((((~(v2_struct_0(X1))&l1_struct_0(X1))&~(v2_struct_0(X2)))&l1_waybel_0(X2,X1))&m1_subset_1(X3,u1_struct_0(X2)))=>m1_subset_1(k2_waybel_0(X1,X2,X3),u1_struct_0(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k2_waybel_0)).
% 0.13/0.36  fof(t2_subset, axiom, ![X1, X2]:(m1_subset_1(X1,X2)=>(v1_xboole_0(X2)|r2_hidden(X1,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t2_subset)).
% 0.13/0.36  fof(c_0_9, negated_conjecture, ~(![X1]:((~(v2_struct_0(X1))&l1_struct_0(X1))=>![X2]:((((~(v2_struct_0(X2))&v4_orders_2(X2))&v7_waybel_0(X2))&l1_waybel_0(X2,X1))=>r1_waybel_0(X1,X2,u1_struct_0(X1))))), inference(assume_negation,[status(cth)],[t29_yellow_6])).
% 0.13/0.36  fof(c_0_10, plain, ![X27, X28]:(~l1_struct_0(X27)|(~l1_waybel_0(X28,X27)|l1_orders_2(X28))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_l1_waybel_0])])])).
% 0.13/0.36  fof(c_0_11, negated_conjecture, ((~v2_struct_0(esk4_0)&l1_struct_0(esk4_0))&((((~v2_struct_0(esk5_0)&v4_orders_2(esk5_0))&v7_waybel_0(esk5_0))&l1_waybel_0(esk5_0,esk4_0))&~r1_waybel_0(esk4_0,esk5_0,u1_struct_0(esk4_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_9])])])])).
% 0.13/0.36  fof(c_0_12, plain, ![X14]:(v2_struct_0(X14)|~l1_struct_0(X14)|~v1_xboole_0(u1_struct_0(X14))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc2_struct_0])])])).
% 0.13/0.36  fof(c_0_13, plain, ![X6, X7, X8]:((~v1_xboole_0(X6)|~r2_hidden(X7,X6))&(r2_hidden(esk1_1(X8),X8)|v1_xboole_0(X8))), inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d1_xboole_0])])])])])])).
% 0.13/0.36  fof(c_0_14, plain, ![X15]:(~l1_orders_2(X15)|l1_struct_0(X15)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_l1_orders_2])])).
% 0.13/0.36  cnf(c_0_15, plain, (l1_orders_2(X2)|~l1_struct_0(X1)|~l1_waybel_0(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.36  cnf(c_0_16, negated_conjecture, (l1_waybel_0(esk5_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.13/0.36  cnf(c_0_17, negated_conjecture, (l1_struct_0(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.13/0.36  cnf(c_0_18, plain, (v2_struct_0(X1)|~l1_struct_0(X1)|~v1_xboole_0(u1_struct_0(X1))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.13/0.36  cnf(c_0_19, plain, (r2_hidden(esk1_1(X1),X1)|v1_xboole_0(X1)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.13/0.36  cnf(c_0_20, plain, (l1_struct_0(X1)|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.13/0.36  cnf(c_0_21, negated_conjecture, (l1_orders_2(esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_15, c_0_16]), c_0_17])])).
% 0.13/0.36  fof(c_0_22, plain, ![X10, X11]:(~r2_hidden(X10,X11)|m1_subset_1(X10,X11)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_subset])])).
% 0.13/0.36  cnf(c_0_23, plain, (v2_struct_0(X1)|r2_hidden(esk1_1(u1_struct_0(X1)),u1_struct_0(X1))|~l1_struct_0(X1)), inference(spm,[status(thm)],[c_0_18, c_0_19])).
% 0.13/0.36  cnf(c_0_24, negated_conjecture, (l1_struct_0(esk5_0)), inference(spm,[status(thm)],[c_0_20, c_0_21])).
% 0.13/0.36  cnf(c_0_25, negated_conjecture, (~v2_struct_0(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.13/0.36  fof(c_0_26, plain, ![X16, X17, X18, X20, X21, X22]:(((m1_subset_1(esk2_3(X16,X17,X18),u1_struct_0(X17))|~r1_waybel_0(X16,X17,X18)|(v2_struct_0(X17)|~l1_waybel_0(X17,X16))|(v2_struct_0(X16)|~l1_struct_0(X16)))&(~m1_subset_1(X20,u1_struct_0(X17))|(~r1_orders_2(X17,esk2_3(X16,X17,X18),X20)|r2_hidden(k2_waybel_0(X16,X17,X20),X18))|~r1_waybel_0(X16,X17,X18)|(v2_struct_0(X17)|~l1_waybel_0(X17,X16))|(v2_struct_0(X16)|~l1_struct_0(X16))))&((m1_subset_1(esk3_4(X16,X17,X21,X22),u1_struct_0(X17))|~m1_subset_1(X22,u1_struct_0(X17))|r1_waybel_0(X16,X17,X21)|(v2_struct_0(X17)|~l1_waybel_0(X17,X16))|(v2_struct_0(X16)|~l1_struct_0(X16)))&((r1_orders_2(X17,X22,esk3_4(X16,X17,X21,X22))|~m1_subset_1(X22,u1_struct_0(X17))|r1_waybel_0(X16,X17,X21)|(v2_struct_0(X17)|~l1_waybel_0(X17,X16))|(v2_struct_0(X16)|~l1_struct_0(X16)))&(~r2_hidden(k2_waybel_0(X16,X17,esk3_4(X16,X17,X21,X22)),X21)|~m1_subset_1(X22,u1_struct_0(X17))|r1_waybel_0(X16,X17,X21)|(v2_struct_0(X17)|~l1_waybel_0(X17,X16))|(v2_struct_0(X16)|~l1_struct_0(X16)))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d11_waybel_0])])])])])])])).
% 0.13/0.36  cnf(c_0_27, plain, (m1_subset_1(X1,X2)|~r2_hidden(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.13/0.36  cnf(c_0_28, negated_conjecture, (r2_hidden(esk1_1(u1_struct_0(esk5_0)),u1_struct_0(esk5_0))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_23, c_0_24]), c_0_25])).
% 0.13/0.36  cnf(c_0_29, plain, (m1_subset_1(esk3_4(X1,X2,X3,X4),u1_struct_0(X2))|r1_waybel_0(X1,X2,X3)|v2_struct_0(X2)|v2_struct_0(X1)|~m1_subset_1(X4,u1_struct_0(X2))|~l1_waybel_0(X2,X1)|~l1_struct_0(X1)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.13/0.36  cnf(c_0_30, negated_conjecture, (m1_subset_1(esk1_1(u1_struct_0(esk5_0)),u1_struct_0(esk5_0))), inference(spm,[status(thm)],[c_0_27, c_0_28])).
% 0.13/0.36  cnf(c_0_31, negated_conjecture, (r1_waybel_0(X1,esk5_0,X2)|v2_struct_0(X1)|m1_subset_1(esk3_4(X1,esk5_0,X2,esk1_1(u1_struct_0(esk5_0))),u1_struct_0(esk5_0))|~l1_waybel_0(esk5_0,X1)|~l1_struct_0(X1)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_29, c_0_30]), c_0_25])).
% 0.13/0.36  cnf(c_0_32, negated_conjecture, (~v2_struct_0(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.13/0.36  fof(c_0_33, plain, ![X24, X25, X26]:(v2_struct_0(X24)|~l1_struct_0(X24)|v2_struct_0(X25)|~l1_waybel_0(X25,X24)|~m1_subset_1(X26,u1_struct_0(X25))|m1_subset_1(k2_waybel_0(X24,X25,X26),u1_struct_0(X24))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[dt_k2_waybel_0])])])).
% 0.13/0.36  cnf(c_0_34, negated_conjecture, (~r1_waybel_0(esk4_0,esk5_0,u1_struct_0(esk4_0))), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.13/0.36  cnf(c_0_35, negated_conjecture, (r1_waybel_0(esk4_0,esk5_0,X1)|m1_subset_1(esk3_4(esk4_0,esk5_0,X1,esk1_1(u1_struct_0(esk5_0))),u1_struct_0(esk5_0))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_16]), c_0_17])]), c_0_32])).
% 0.13/0.36  cnf(c_0_36, plain, (v2_struct_0(X1)|v2_struct_0(X2)|m1_subset_1(k2_waybel_0(X1,X2,X3),u1_struct_0(X1))|~l1_struct_0(X1)|~l1_waybel_0(X2,X1)|~m1_subset_1(X3,u1_struct_0(X2))), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.13/0.36  cnf(c_0_37, negated_conjecture, (m1_subset_1(esk3_4(esk4_0,esk5_0,u1_struct_0(esk4_0),esk1_1(u1_struct_0(esk5_0))),u1_struct_0(esk5_0))), inference(spm,[status(thm)],[c_0_34, c_0_35])).
% 0.13/0.36  fof(c_0_38, plain, ![X12, X13]:(~m1_subset_1(X12,X13)|(v1_xboole_0(X13)|r2_hidden(X12,X13))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_subset])])).
% 0.13/0.36  cnf(c_0_39, negated_conjecture, (v2_struct_0(X1)|m1_subset_1(k2_waybel_0(X1,esk5_0,esk3_4(esk4_0,esk5_0,u1_struct_0(esk4_0),esk1_1(u1_struct_0(esk5_0)))),u1_struct_0(X1))|~l1_waybel_0(esk5_0,X1)|~l1_struct_0(X1)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_36, c_0_37]), c_0_25])).
% 0.13/0.36  cnf(c_0_40, plain, (~v1_xboole_0(X1)|~r2_hidden(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.13/0.36  cnf(c_0_41, negated_conjecture, (r2_hidden(esk1_1(u1_struct_0(esk4_0)),u1_struct_0(esk4_0))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_23, c_0_17]), c_0_32])).
% 0.13/0.36  cnf(c_0_42, plain, (v1_xboole_0(X2)|r2_hidden(X1,X2)|~m1_subset_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_38])).
% 0.13/0.36  cnf(c_0_43, negated_conjecture, (m1_subset_1(k2_waybel_0(esk4_0,esk5_0,esk3_4(esk4_0,esk5_0,u1_struct_0(esk4_0),esk1_1(u1_struct_0(esk5_0)))),u1_struct_0(esk4_0))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39, c_0_16]), c_0_17])]), c_0_32])).
% 0.13/0.36  cnf(c_0_44, negated_conjecture, (~v1_xboole_0(u1_struct_0(esk4_0))), inference(spm,[status(thm)],[c_0_40, c_0_41])).
% 0.13/0.36  cnf(c_0_45, plain, (r1_waybel_0(X1,X2,X3)|v2_struct_0(X2)|v2_struct_0(X1)|~r2_hidden(k2_waybel_0(X1,X2,esk3_4(X1,X2,X3,X4)),X3)|~m1_subset_1(X4,u1_struct_0(X2))|~l1_waybel_0(X2,X1)|~l1_struct_0(X1)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.13/0.36  cnf(c_0_46, negated_conjecture, (r2_hidden(k2_waybel_0(esk4_0,esk5_0,esk3_4(esk4_0,esk5_0,u1_struct_0(esk4_0),esk1_1(u1_struct_0(esk5_0)))),u1_struct_0(esk4_0))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_42, c_0_43]), c_0_44])).
% 0.13/0.36  cnf(c_0_47, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45, c_0_46]), c_0_16]), c_0_17]), c_0_30])]), c_0_34]), c_0_25]), c_0_32]), ['proof']).
% 0.13/0.36  # SZS output end CNFRefutation
% 0.13/0.36  # Proof object total steps             : 48
% 0.13/0.36  # Proof object clause steps            : 29
% 0.13/0.36  # Proof object formula steps           : 19
% 0.13/0.36  # Proof object conjectures             : 21
% 0.13/0.36  # Proof object clause conjectures      : 18
% 0.13/0.36  # Proof object formula conjectures     : 3
% 0.13/0.36  # Proof object initial clauses used    : 15
% 0.13/0.36  # Proof object initial formulas used   : 9
% 0.13/0.36  # Proof object generating inferences   : 14
% 0.13/0.36  # Proof object simplifying inferences  : 20
% 0.13/0.36  # Training examples: 0 positive, 0 negative
% 0.13/0.36  # Parsed axioms                        : 9
% 0.13/0.36  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.36  # Initial clauses                      : 20
% 0.13/0.36  # Removed in clause preprocessing      : 0
% 0.13/0.36  # Initial clauses in saturation        : 20
% 0.13/0.36  # Processed clauses                    : 67
% 0.13/0.36  # ...of these trivial                  : 0
% 0.13/0.36  # ...subsumed                          : 2
% 0.13/0.36  # ...remaining for further processing  : 65
% 0.13/0.36  # Other redundant clauses eliminated   : 0
% 0.13/0.36  # Clauses deleted for lack of memory   : 0
% 0.13/0.36  # Backward-subsumed                    : 0
% 0.13/0.36  # Backward-rewritten                   : 0
% 0.13/0.36  # Generated clauses                    : 44
% 0.13/0.36  # ...of the previous two non-trivial   : 36
% 0.13/0.36  # Contextual simplify-reflections      : 0
% 0.13/0.36  # Paramodulations                      : 44
% 0.13/0.36  # Factorizations                       : 0
% 0.13/0.36  # Equation resolutions                 : 0
% 0.13/0.36  # Propositional unsat checks           : 0
% 0.13/0.36  #    Propositional check models        : 0
% 0.13/0.36  #    Propositional check unsatisfiable : 0
% 0.13/0.36  #    Propositional clauses             : 0
% 0.13/0.36  #    Propositional clauses after purity: 0
% 0.13/0.36  #    Propositional unsat core size     : 0
% 0.13/0.36  #    Propositional preprocessing time  : 0.000
% 0.13/0.36  #    Propositional encoding time       : 0.000
% 0.13/0.36  #    Propositional solver time         : 0.000
% 0.13/0.36  #    Success case prop preproc time    : 0.000
% 0.13/0.36  #    Success case prop encoding time   : 0.000
% 0.13/0.36  #    Success case prop solver time     : 0.000
% 0.13/0.36  # Current number of processed clauses  : 45
% 0.13/0.36  #    Positive orientable unit clauses  : 16
% 0.13/0.36  #    Positive unorientable unit clauses: 0
% 0.13/0.36  #    Negative unit clauses             : 5
% 0.13/0.36  #    Non-unit-clauses                  : 24
% 0.13/0.36  # Current number of unprocessed clauses: 8
% 0.13/0.36  # ...number of literals in the above   : 33
% 0.13/0.36  # Current number of archived formulas  : 0
% 0.13/0.36  # Current number of archived clauses   : 20
% 0.13/0.36  # Clause-clause subsumption calls (NU) : 267
% 0.13/0.36  # Rec. Clause-clause subsumption calls : 18
% 0.13/0.36  # Non-unit clause-clause subsumptions  : 0
% 0.13/0.36  # Unit Clause-clause subsumption calls : 8
% 0.13/0.36  # Rewrite failures with RHS unbound    : 0
% 0.13/0.36  # BW rewrite match attempts            : 3
% 0.13/0.36  # BW rewrite match successes           : 0
% 0.13/0.36  # Condensation attempts                : 0
% 0.13/0.36  # Condensation successes               : 0
% 0.13/0.36  # Termbank termtop insertions          : 2914
% 0.13/0.36  
% 0.13/0.36  # -------------------------------------------------
% 0.13/0.36  # User time                : 0.020 s
% 0.13/0.36  # System time              : 0.003 s
% 0.13/0.36  # Total time               : 0.023 s
% 0.13/0.36  # Maximum resident set size: 1576 pages
%------------------------------------------------------------------------------
