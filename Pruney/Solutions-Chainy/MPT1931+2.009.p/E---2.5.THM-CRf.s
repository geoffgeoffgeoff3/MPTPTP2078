%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n022.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:21:12 EST 2020

% Result     : Theorem 0.20s
% Output     : CNFRefutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   34 ( 142 expanded)
%              Number of clauses        :   21 (  44 expanded)
%              Number of leaves         :    6 (  35 expanded)
%              Depth                    :   10
%              Number of atoms          :  156 ( 810 expanded)
%              Number of equality atoms :    0 (   0 expanded)
%              Maximal formula depth    :   18 (   5 average)
%              Maximal clause size      :   35 (   3 average)
%              Maximal term depth       :    4 (   1 average)

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
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t29_yellow_6)).

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
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d11_waybel_0)).

fof(dt_o_2_2_yellow_6,axiom,(
    ! [X1,X2] :
      ( ( ~ v2_struct_0(X1)
        & l1_struct_0(X1)
        & ~ v2_struct_0(X2)
        & v4_orders_2(X2)
        & v7_waybel_0(X2)
        & l1_waybel_0(X2,X1) )
     => m1_subset_1(o_2_2_yellow_6(X1,X2),u1_struct_0(X2)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_o_2_2_yellow_6)).

fof(dt_k2_waybel_0,axiom,(
    ! [X1,X2,X3] :
      ( ( ~ v2_struct_0(X1)
        & l1_struct_0(X1)
        & ~ v2_struct_0(X2)
        & l1_waybel_0(X2,X1)
        & m1_subset_1(X3,u1_struct_0(X2)) )
     => m1_subset_1(k2_waybel_0(X1,X2,X3),u1_struct_0(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k2_waybel_0)).

fof(t2_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,X2)
     => ( v1_xboole_0(X2)
        | r2_hidden(X1,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_subset)).

fof(fc2_struct_0,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & l1_struct_0(X1) )
     => ~ v1_xboole_0(u1_struct_0(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc2_struct_0)).

fof(c_0_6,negated_conjecture,(
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

fof(c_0_7,negated_conjecture,
    ( ~ v2_struct_0(esk3_0)
    & l1_struct_0(esk3_0)
    & ~ v2_struct_0(esk4_0)
    & v4_orders_2(esk4_0)
    & v7_waybel_0(esk4_0)
    & l1_waybel_0(esk4_0,esk3_0)
    & ~ r1_waybel_0(esk3_0,esk4_0,u1_struct_0(esk3_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_6])])])])).

fof(c_0_8,plain,(
    ! [X9,X10,X11,X13,X14,X15] :
      ( ( m1_subset_1(esk1_3(X9,X10,X11),u1_struct_0(X10))
        | ~ r1_waybel_0(X9,X10,X11)
        | v2_struct_0(X10)
        | ~ l1_waybel_0(X10,X9)
        | v2_struct_0(X9)
        | ~ l1_struct_0(X9) )
      & ( ~ m1_subset_1(X13,u1_struct_0(X10))
        | ~ r1_orders_2(X10,esk1_3(X9,X10,X11),X13)
        | r2_hidden(k2_waybel_0(X9,X10,X13),X11)
        | ~ r1_waybel_0(X9,X10,X11)
        | v2_struct_0(X10)
        | ~ l1_waybel_0(X10,X9)
        | v2_struct_0(X9)
        | ~ l1_struct_0(X9) )
      & ( m1_subset_1(esk2_4(X9,X10,X14,X15),u1_struct_0(X10))
        | ~ m1_subset_1(X15,u1_struct_0(X10))
        | r1_waybel_0(X9,X10,X14)
        | v2_struct_0(X10)
        | ~ l1_waybel_0(X10,X9)
        | v2_struct_0(X9)
        | ~ l1_struct_0(X9) )
      & ( r1_orders_2(X10,X15,esk2_4(X9,X10,X14,X15))
        | ~ m1_subset_1(X15,u1_struct_0(X10))
        | r1_waybel_0(X9,X10,X14)
        | v2_struct_0(X10)
        | ~ l1_waybel_0(X10,X9)
        | v2_struct_0(X9)
        | ~ l1_struct_0(X9) )
      & ( ~ r2_hidden(k2_waybel_0(X9,X10,esk2_4(X9,X10,X14,X15)),X14)
        | ~ m1_subset_1(X15,u1_struct_0(X10))
        | r1_waybel_0(X9,X10,X14)
        | v2_struct_0(X10)
        | ~ l1_waybel_0(X10,X9)
        | v2_struct_0(X9)
        | ~ l1_struct_0(X9) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d11_waybel_0])])])])])])])).

fof(c_0_9,plain,(
    ! [X20,X21] :
      ( v2_struct_0(X20)
      | ~ l1_struct_0(X20)
      | v2_struct_0(X21)
      | ~ v4_orders_2(X21)
      | ~ v7_waybel_0(X21)
      | ~ l1_waybel_0(X21,X20)
      | m1_subset_1(o_2_2_yellow_6(X20,X21),u1_struct_0(X21)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[dt_o_2_2_yellow_6])])])).

cnf(c_0_10,negated_conjecture,
    ( ~ r1_waybel_0(esk3_0,esk4_0,u1_struct_0(esk3_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_11,plain,
    ( m1_subset_1(esk2_4(X1,X2,X3,X4),u1_struct_0(X2))
    | r1_waybel_0(X1,X2,X3)
    | v2_struct_0(X2)
    | v2_struct_0(X1)
    | ~ m1_subset_1(X4,u1_struct_0(X2))
    | ~ l1_waybel_0(X2,X1)
    | ~ l1_struct_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_12,negated_conjecture,
    ( l1_waybel_0(esk4_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_13,negated_conjecture,
    ( l1_struct_0(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_14,negated_conjecture,
    ( ~ v2_struct_0(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_15,negated_conjecture,
    ( ~ v2_struct_0(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_16,plain,
    ( v2_struct_0(X1)
    | v2_struct_0(X2)
    | m1_subset_1(o_2_2_yellow_6(X1,X2),u1_struct_0(X2))
    | ~ l1_struct_0(X1)
    | ~ v4_orders_2(X2)
    | ~ v7_waybel_0(X2)
    | ~ l1_waybel_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_17,negated_conjecture,
    ( v7_waybel_0(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_18,negated_conjecture,
    ( v4_orders_2(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

fof(c_0_19,plain,(
    ! [X17,X18,X19] :
      ( v2_struct_0(X17)
      | ~ l1_struct_0(X17)
      | v2_struct_0(X18)
      | ~ l1_waybel_0(X18,X17)
      | ~ m1_subset_1(X19,u1_struct_0(X18))
      | m1_subset_1(k2_waybel_0(X17,X18,X19),u1_struct_0(X17)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[dt_k2_waybel_0])])])).

cnf(c_0_20,negated_conjecture,
    ( m1_subset_1(esk2_4(esk3_0,esk4_0,u1_struct_0(esk3_0),X1),u1_struct_0(esk4_0))
    | ~ m1_subset_1(X1,u1_struct_0(esk4_0)) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_10,c_0_11]),c_0_12]),c_0_13])]),c_0_14]),c_0_15])).

cnf(c_0_21,negated_conjecture,
    ( m1_subset_1(o_2_2_yellow_6(esk3_0,esk4_0),u1_struct_0(esk4_0)) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_16,c_0_12]),c_0_17]),c_0_18]),c_0_13])]),c_0_14]),c_0_15])).

cnf(c_0_22,plain,
    ( v2_struct_0(X1)
    | v2_struct_0(X2)
    | m1_subset_1(k2_waybel_0(X1,X2,X3),u1_struct_0(X1))
    | ~ l1_struct_0(X1)
    | ~ l1_waybel_0(X2,X1)
    | ~ m1_subset_1(X3,u1_struct_0(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_23,negated_conjecture,
    ( m1_subset_1(esk2_4(esk3_0,esk4_0,u1_struct_0(esk3_0),o_2_2_yellow_6(esk3_0,esk4_0)),u1_struct_0(esk4_0)) ),
    inference(spm,[status(thm)],[c_0_20,c_0_21])).

fof(c_0_24,plain,(
    ! [X6,X7] :
      ( ~ m1_subset_1(X6,X7)
      | v1_xboole_0(X7)
      | r2_hidden(X6,X7) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_subset])])).

cnf(c_0_25,negated_conjecture,
    ( v2_struct_0(X1)
    | m1_subset_1(k2_waybel_0(X1,esk4_0,esk2_4(esk3_0,esk4_0,u1_struct_0(esk3_0),o_2_2_yellow_6(esk3_0,esk4_0))),u1_struct_0(X1))
    | ~ l1_waybel_0(esk4_0,X1)
    | ~ l1_struct_0(X1) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_22,c_0_23]),c_0_14])).

fof(c_0_26,plain,(
    ! [X8] :
      ( v2_struct_0(X8)
      | ~ l1_struct_0(X8)
      | ~ v1_xboole_0(u1_struct_0(X8)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc2_struct_0])])])).

cnf(c_0_27,plain,
    ( v1_xboole_0(X2)
    | r2_hidden(X1,X2)
    | ~ m1_subset_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_28,negated_conjecture,
    ( m1_subset_1(k2_waybel_0(esk3_0,esk4_0,esk2_4(esk3_0,esk4_0,u1_struct_0(esk3_0),o_2_2_yellow_6(esk3_0,esk4_0))),u1_struct_0(esk3_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25,c_0_12]),c_0_13])]),c_0_15])).

cnf(c_0_29,plain,
    ( v2_struct_0(X1)
    | ~ l1_struct_0(X1)
    | ~ v1_xboole_0(u1_struct_0(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_30,negated_conjecture,
    ( r2_hidden(k2_waybel_0(esk3_0,esk4_0,esk2_4(esk3_0,esk4_0,u1_struct_0(esk3_0),o_2_2_yellow_6(esk3_0,esk4_0))),u1_struct_0(esk3_0))
    | v1_xboole_0(u1_struct_0(esk3_0)) ),
    inference(spm,[status(thm)],[c_0_27,c_0_28])).

cnf(c_0_31,plain,
    ( r1_waybel_0(X1,X2,X3)
    | v2_struct_0(X2)
    | v2_struct_0(X1)
    | ~ r2_hidden(k2_waybel_0(X1,X2,esk2_4(X1,X2,X3,X4)),X3)
    | ~ m1_subset_1(X4,u1_struct_0(X2))
    | ~ l1_waybel_0(X2,X1)
    | ~ l1_struct_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_32,negated_conjecture,
    ( r2_hidden(k2_waybel_0(esk3_0,esk4_0,esk2_4(esk3_0,esk4_0,u1_struct_0(esk3_0),o_2_2_yellow_6(esk3_0,esk4_0))),u1_struct_0(esk3_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29,c_0_30]),c_0_13])]),c_0_15])).

cnf(c_0_33,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_32]),c_0_12]),c_0_13]),c_0_21])]),c_0_10]),c_0_14]),c_0_15]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n022.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 18:24:55 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.20/0.38  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S02CA
% 0.20/0.38  # and selection function SelectAntiRROptimalLit.
% 0.20/0.38  #
% 0.20/0.38  # Preprocessing time       : 0.027 s
% 0.20/0.38  # Presaturation interreduction done
% 0.20/0.38  
% 0.20/0.38  # Proof found!
% 0.20/0.38  # SZS status Theorem
% 0.20/0.38  # SZS output start CNFRefutation
% 0.20/0.38  fof(t29_yellow_6, conjecture, ![X1]:((~(v2_struct_0(X1))&l1_struct_0(X1))=>![X2]:((((~(v2_struct_0(X2))&v4_orders_2(X2))&v7_waybel_0(X2))&l1_waybel_0(X2,X1))=>r1_waybel_0(X1,X2,u1_struct_0(X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t29_yellow_6)).
% 0.20/0.38  fof(d11_waybel_0, axiom, ![X1]:((~(v2_struct_0(X1))&l1_struct_0(X1))=>![X2]:((~(v2_struct_0(X2))&l1_waybel_0(X2,X1))=>![X3]:(r1_waybel_0(X1,X2,X3)<=>?[X4]:(m1_subset_1(X4,u1_struct_0(X2))&![X5]:(m1_subset_1(X5,u1_struct_0(X2))=>(r1_orders_2(X2,X4,X5)=>r2_hidden(k2_waybel_0(X1,X2,X5),X3))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d11_waybel_0)).
% 0.20/0.38  fof(dt_o_2_2_yellow_6, axiom, ![X1, X2]:((((((~(v2_struct_0(X1))&l1_struct_0(X1))&~(v2_struct_0(X2)))&v4_orders_2(X2))&v7_waybel_0(X2))&l1_waybel_0(X2,X1))=>m1_subset_1(o_2_2_yellow_6(X1,X2),u1_struct_0(X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_o_2_2_yellow_6)).
% 0.20/0.38  fof(dt_k2_waybel_0, axiom, ![X1, X2, X3]:(((((~(v2_struct_0(X1))&l1_struct_0(X1))&~(v2_struct_0(X2)))&l1_waybel_0(X2,X1))&m1_subset_1(X3,u1_struct_0(X2)))=>m1_subset_1(k2_waybel_0(X1,X2,X3),u1_struct_0(X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k2_waybel_0)).
% 0.20/0.38  fof(t2_subset, axiom, ![X1, X2]:(m1_subset_1(X1,X2)=>(v1_xboole_0(X2)|r2_hidden(X1,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t2_subset)).
% 0.20/0.38  fof(fc2_struct_0, axiom, ![X1]:((~(v2_struct_0(X1))&l1_struct_0(X1))=>~(v1_xboole_0(u1_struct_0(X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc2_struct_0)).
% 0.20/0.38  fof(c_0_6, negated_conjecture, ~(![X1]:((~(v2_struct_0(X1))&l1_struct_0(X1))=>![X2]:((((~(v2_struct_0(X2))&v4_orders_2(X2))&v7_waybel_0(X2))&l1_waybel_0(X2,X1))=>r1_waybel_0(X1,X2,u1_struct_0(X1))))), inference(assume_negation,[status(cth)],[t29_yellow_6])).
% 0.20/0.38  fof(c_0_7, negated_conjecture, ((~v2_struct_0(esk3_0)&l1_struct_0(esk3_0))&((((~v2_struct_0(esk4_0)&v4_orders_2(esk4_0))&v7_waybel_0(esk4_0))&l1_waybel_0(esk4_0,esk3_0))&~r1_waybel_0(esk3_0,esk4_0,u1_struct_0(esk3_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_6])])])])).
% 0.20/0.38  fof(c_0_8, plain, ![X9, X10, X11, X13, X14, X15]:(((m1_subset_1(esk1_3(X9,X10,X11),u1_struct_0(X10))|~r1_waybel_0(X9,X10,X11)|(v2_struct_0(X10)|~l1_waybel_0(X10,X9))|(v2_struct_0(X9)|~l1_struct_0(X9)))&(~m1_subset_1(X13,u1_struct_0(X10))|(~r1_orders_2(X10,esk1_3(X9,X10,X11),X13)|r2_hidden(k2_waybel_0(X9,X10,X13),X11))|~r1_waybel_0(X9,X10,X11)|(v2_struct_0(X10)|~l1_waybel_0(X10,X9))|(v2_struct_0(X9)|~l1_struct_0(X9))))&((m1_subset_1(esk2_4(X9,X10,X14,X15),u1_struct_0(X10))|~m1_subset_1(X15,u1_struct_0(X10))|r1_waybel_0(X9,X10,X14)|(v2_struct_0(X10)|~l1_waybel_0(X10,X9))|(v2_struct_0(X9)|~l1_struct_0(X9)))&((r1_orders_2(X10,X15,esk2_4(X9,X10,X14,X15))|~m1_subset_1(X15,u1_struct_0(X10))|r1_waybel_0(X9,X10,X14)|(v2_struct_0(X10)|~l1_waybel_0(X10,X9))|(v2_struct_0(X9)|~l1_struct_0(X9)))&(~r2_hidden(k2_waybel_0(X9,X10,esk2_4(X9,X10,X14,X15)),X14)|~m1_subset_1(X15,u1_struct_0(X10))|r1_waybel_0(X9,X10,X14)|(v2_struct_0(X10)|~l1_waybel_0(X10,X9))|(v2_struct_0(X9)|~l1_struct_0(X9)))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d11_waybel_0])])])])])])])).
% 0.20/0.38  fof(c_0_9, plain, ![X20, X21]:(v2_struct_0(X20)|~l1_struct_0(X20)|v2_struct_0(X21)|~v4_orders_2(X21)|~v7_waybel_0(X21)|~l1_waybel_0(X21,X20)|m1_subset_1(o_2_2_yellow_6(X20,X21),u1_struct_0(X21))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[dt_o_2_2_yellow_6])])])).
% 0.20/0.38  cnf(c_0_10, negated_conjecture, (~r1_waybel_0(esk3_0,esk4_0,u1_struct_0(esk3_0))), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.20/0.38  cnf(c_0_11, plain, (m1_subset_1(esk2_4(X1,X2,X3,X4),u1_struct_0(X2))|r1_waybel_0(X1,X2,X3)|v2_struct_0(X2)|v2_struct_0(X1)|~m1_subset_1(X4,u1_struct_0(X2))|~l1_waybel_0(X2,X1)|~l1_struct_0(X1)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.20/0.38  cnf(c_0_12, negated_conjecture, (l1_waybel_0(esk4_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.20/0.38  cnf(c_0_13, negated_conjecture, (l1_struct_0(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.20/0.38  cnf(c_0_14, negated_conjecture, (~v2_struct_0(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.20/0.38  cnf(c_0_15, negated_conjecture, (~v2_struct_0(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.20/0.38  cnf(c_0_16, plain, (v2_struct_0(X1)|v2_struct_0(X2)|m1_subset_1(o_2_2_yellow_6(X1,X2),u1_struct_0(X2))|~l1_struct_0(X1)|~v4_orders_2(X2)|~v7_waybel_0(X2)|~l1_waybel_0(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.20/0.38  cnf(c_0_17, negated_conjecture, (v7_waybel_0(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.20/0.38  cnf(c_0_18, negated_conjecture, (v4_orders_2(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.20/0.38  fof(c_0_19, plain, ![X17, X18, X19]:(v2_struct_0(X17)|~l1_struct_0(X17)|v2_struct_0(X18)|~l1_waybel_0(X18,X17)|~m1_subset_1(X19,u1_struct_0(X18))|m1_subset_1(k2_waybel_0(X17,X18,X19),u1_struct_0(X17))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[dt_k2_waybel_0])])])).
% 0.20/0.38  cnf(c_0_20, negated_conjecture, (m1_subset_1(esk2_4(esk3_0,esk4_0,u1_struct_0(esk3_0),X1),u1_struct_0(esk4_0))|~m1_subset_1(X1,u1_struct_0(esk4_0))), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_10, c_0_11]), c_0_12]), c_0_13])]), c_0_14]), c_0_15])).
% 0.20/0.38  cnf(c_0_21, negated_conjecture, (m1_subset_1(o_2_2_yellow_6(esk3_0,esk4_0),u1_struct_0(esk4_0))), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_16, c_0_12]), c_0_17]), c_0_18]), c_0_13])]), c_0_14]), c_0_15])).
% 0.20/0.38  cnf(c_0_22, plain, (v2_struct_0(X1)|v2_struct_0(X2)|m1_subset_1(k2_waybel_0(X1,X2,X3),u1_struct_0(X1))|~l1_struct_0(X1)|~l1_waybel_0(X2,X1)|~m1_subset_1(X3,u1_struct_0(X2))), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.20/0.38  cnf(c_0_23, negated_conjecture, (m1_subset_1(esk2_4(esk3_0,esk4_0,u1_struct_0(esk3_0),o_2_2_yellow_6(esk3_0,esk4_0)),u1_struct_0(esk4_0))), inference(spm,[status(thm)],[c_0_20, c_0_21])).
% 0.20/0.38  fof(c_0_24, plain, ![X6, X7]:(~m1_subset_1(X6,X7)|(v1_xboole_0(X7)|r2_hidden(X6,X7))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_subset])])).
% 0.20/0.38  cnf(c_0_25, negated_conjecture, (v2_struct_0(X1)|m1_subset_1(k2_waybel_0(X1,esk4_0,esk2_4(esk3_0,esk4_0,u1_struct_0(esk3_0),o_2_2_yellow_6(esk3_0,esk4_0))),u1_struct_0(X1))|~l1_waybel_0(esk4_0,X1)|~l1_struct_0(X1)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_22, c_0_23]), c_0_14])).
% 0.20/0.38  fof(c_0_26, plain, ![X8]:(v2_struct_0(X8)|~l1_struct_0(X8)|~v1_xboole_0(u1_struct_0(X8))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc2_struct_0])])])).
% 0.20/0.38  cnf(c_0_27, plain, (v1_xboole_0(X2)|r2_hidden(X1,X2)|~m1_subset_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.20/0.38  cnf(c_0_28, negated_conjecture, (m1_subset_1(k2_waybel_0(esk3_0,esk4_0,esk2_4(esk3_0,esk4_0,u1_struct_0(esk3_0),o_2_2_yellow_6(esk3_0,esk4_0))),u1_struct_0(esk3_0))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25, c_0_12]), c_0_13])]), c_0_15])).
% 0.20/0.38  cnf(c_0_29, plain, (v2_struct_0(X1)|~l1_struct_0(X1)|~v1_xboole_0(u1_struct_0(X1))), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.20/0.38  cnf(c_0_30, negated_conjecture, (r2_hidden(k2_waybel_0(esk3_0,esk4_0,esk2_4(esk3_0,esk4_0,u1_struct_0(esk3_0),o_2_2_yellow_6(esk3_0,esk4_0))),u1_struct_0(esk3_0))|v1_xboole_0(u1_struct_0(esk3_0))), inference(spm,[status(thm)],[c_0_27, c_0_28])).
% 0.20/0.38  cnf(c_0_31, plain, (r1_waybel_0(X1,X2,X3)|v2_struct_0(X2)|v2_struct_0(X1)|~r2_hidden(k2_waybel_0(X1,X2,esk2_4(X1,X2,X3,X4)),X3)|~m1_subset_1(X4,u1_struct_0(X2))|~l1_waybel_0(X2,X1)|~l1_struct_0(X1)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.20/0.38  cnf(c_0_32, negated_conjecture, (r2_hidden(k2_waybel_0(esk3_0,esk4_0,esk2_4(esk3_0,esk4_0,u1_struct_0(esk3_0),o_2_2_yellow_6(esk3_0,esk4_0))),u1_struct_0(esk3_0))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29, c_0_30]), c_0_13])]), c_0_15])).
% 0.20/0.38  cnf(c_0_33, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_32]), c_0_12]), c_0_13]), c_0_21])]), c_0_10]), c_0_14]), c_0_15]), ['proof']).
% 0.20/0.38  # SZS output end CNFRefutation
% 0.20/0.38  # Proof object total steps             : 34
% 0.20/0.38  # Proof object clause steps            : 21
% 0.20/0.38  # Proof object formula steps           : 13
% 0.20/0.38  # Proof object conjectures             : 18
% 0.20/0.38  # Proof object clause conjectures      : 15
% 0.20/0.38  # Proof object formula conjectures     : 3
% 0.20/0.38  # Proof object initial clauses used    : 13
% 0.20/0.38  # Proof object initial formulas used   : 6
% 0.20/0.38  # Proof object generating inferences   : 8
% 0.20/0.38  # Proof object simplifying inferences  : 25
% 0.20/0.38  # Training examples: 0 positive, 0 negative
% 0.20/0.38  # Parsed axioms                        : 6
% 0.20/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.20/0.38  # Initial clauses                      : 16
% 0.20/0.38  # Removed in clause preprocessing      : 0
% 0.20/0.38  # Initial clauses in saturation        : 16
% 0.20/0.38  # Processed clauses                    : 47
% 0.20/0.38  # ...of these trivial                  : 0
% 0.20/0.38  # ...subsumed                          : 0
% 0.20/0.38  # ...remaining for further processing  : 47
% 0.20/0.38  # Other redundant clauses eliminated   : 0
% 0.20/0.38  # Clauses deleted for lack of memory   : 0
% 0.20/0.38  # Backward-subsumed                    : 0
% 0.20/0.38  # Backward-rewritten                   : 2
% 0.20/0.38  # Generated clauses                    : 20
% 0.20/0.38  # ...of the previous two non-trivial   : 19
% 0.20/0.38  # Contextual simplify-reflections      : 0
% 0.20/0.38  # Paramodulations                      : 20
% 0.20/0.38  # Factorizations                       : 0
% 0.20/0.38  # Equation resolutions                 : 0
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
% 0.20/0.38  # Current number of processed clauses  : 29
% 0.20/0.38  #    Positive orientable unit clauses  : 10
% 0.20/0.38  #    Positive unorientable unit clauses: 0
% 0.20/0.38  #    Negative unit clauses             : 3
% 0.20/0.38  #    Non-unit-clauses                  : 16
% 0.20/0.38  # Current number of unprocessed clauses: 4
% 0.20/0.38  # ...number of literals in the above   : 19
% 0.20/0.38  # Current number of archived formulas  : 0
% 0.20/0.38  # Current number of archived clauses   : 18
% 0.20/0.38  # Clause-clause subsumption calls (NU) : 85
% 0.20/0.38  # Rec. Clause-clause subsumption calls : 5
% 0.20/0.38  # Non-unit clause-clause subsumptions  : 0
% 0.20/0.38  # Unit Clause-clause subsumption calls : 4
% 0.20/0.38  # Rewrite failures with RHS unbound    : 0
% 0.20/0.38  # BW rewrite match attempts            : 5
% 0.20/0.38  # BW rewrite match successes           : 2
% 0.20/0.38  # Condensation attempts                : 0
% 0.20/0.38  # Condensation successes               : 0
% 0.20/0.38  # Termbank termtop insertions          : 2193
% 0.20/0.38  
% 0.20/0.38  # -------------------------------------------------
% 0.20/0.38  # User time                : 0.029 s
% 0.20/0.38  # System time              : 0.004 s
% 0.20/0.38  # Total time               : 0.033 s
% 0.20/0.38  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
