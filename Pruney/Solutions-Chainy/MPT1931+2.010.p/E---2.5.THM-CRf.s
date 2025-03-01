%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n005.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:21:12 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   31 (  92 expanded)
%              Number of clauses        :   18 (  30 expanded)
%              Number of leaves         :    6 (  23 expanded)
%              Depth                    :   10
%              Number of atoms          :  135 ( 508 expanded)
%              Number of equality atoms :    0 (   0 expanded)
%              Maximal formula depth    :   18 (   5 average)
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

fof(existence_m1_subset_1,axiom,(
    ! [X1] :
    ? [X2] : m1_subset_1(X2,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',existence_m1_subset_1)).

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

fof(fc2_struct_0,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & l1_struct_0(X1) )
     => ~ v1_xboole_0(u1_struct_0(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc2_struct_0)).

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
    ( ~ v2_struct_0(esk4_0)
    & l1_struct_0(esk4_0)
    & ~ v2_struct_0(esk5_0)
    & v4_orders_2(esk5_0)
    & v7_waybel_0(esk5_0)
    & l1_waybel_0(esk5_0,esk4_0)
    & ~ r1_waybel_0(esk4_0,esk5_0,u1_struct_0(esk4_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_6])])])])).

fof(c_0_8,plain,(
    ! [X11,X12,X13,X15,X16,X17] :
      ( ( m1_subset_1(esk2_3(X11,X12,X13),u1_struct_0(X12))
        | ~ r1_waybel_0(X11,X12,X13)
        | v2_struct_0(X12)
        | ~ l1_waybel_0(X12,X11)
        | v2_struct_0(X11)
        | ~ l1_struct_0(X11) )
      & ( ~ m1_subset_1(X15,u1_struct_0(X12))
        | ~ r1_orders_2(X12,esk2_3(X11,X12,X13),X15)
        | r2_hidden(k2_waybel_0(X11,X12,X15),X13)
        | ~ r1_waybel_0(X11,X12,X13)
        | v2_struct_0(X12)
        | ~ l1_waybel_0(X12,X11)
        | v2_struct_0(X11)
        | ~ l1_struct_0(X11) )
      & ( m1_subset_1(esk3_4(X11,X12,X16,X17),u1_struct_0(X12))
        | ~ m1_subset_1(X17,u1_struct_0(X12))
        | r1_waybel_0(X11,X12,X16)
        | v2_struct_0(X12)
        | ~ l1_waybel_0(X12,X11)
        | v2_struct_0(X11)
        | ~ l1_struct_0(X11) )
      & ( r1_orders_2(X12,X17,esk3_4(X11,X12,X16,X17))
        | ~ m1_subset_1(X17,u1_struct_0(X12))
        | r1_waybel_0(X11,X12,X16)
        | v2_struct_0(X12)
        | ~ l1_waybel_0(X12,X11)
        | v2_struct_0(X11)
        | ~ l1_struct_0(X11) )
      & ( ~ r2_hidden(k2_waybel_0(X11,X12,esk3_4(X11,X12,X16,X17)),X16)
        | ~ m1_subset_1(X17,u1_struct_0(X12))
        | r1_waybel_0(X11,X12,X16)
        | v2_struct_0(X12)
        | ~ l1_waybel_0(X12,X11)
        | v2_struct_0(X11)
        | ~ l1_struct_0(X11) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d11_waybel_0])])])])])])])).

cnf(c_0_9,negated_conjecture,
    ( ~ r1_waybel_0(esk4_0,esk5_0,u1_struct_0(esk4_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_10,plain,
    ( m1_subset_1(esk3_4(X1,X2,X3,X4),u1_struct_0(X2))
    | r1_waybel_0(X1,X2,X3)
    | v2_struct_0(X2)
    | v2_struct_0(X1)
    | ~ m1_subset_1(X4,u1_struct_0(X2))
    | ~ l1_waybel_0(X2,X1)
    | ~ l1_struct_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_11,negated_conjecture,
    ( l1_waybel_0(esk5_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_12,negated_conjecture,
    ( l1_struct_0(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_13,negated_conjecture,
    ( ~ v2_struct_0(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_14,negated_conjecture,
    ( ~ v2_struct_0(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

fof(c_0_15,plain,(
    ! [X6] : m1_subset_1(esk1_1(X6),X6) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[existence_m1_subset_1])])).

fof(c_0_16,plain,(
    ! [X19,X20,X21] :
      ( v2_struct_0(X19)
      | ~ l1_struct_0(X19)
      | v2_struct_0(X20)
      | ~ l1_waybel_0(X20,X19)
      | ~ m1_subset_1(X21,u1_struct_0(X20))
      | m1_subset_1(k2_waybel_0(X19,X20,X21),u1_struct_0(X19)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[dt_k2_waybel_0])])])).

cnf(c_0_17,negated_conjecture,
    ( m1_subset_1(esk3_4(esk4_0,esk5_0,u1_struct_0(esk4_0),X1),u1_struct_0(esk5_0))
    | ~ m1_subset_1(X1,u1_struct_0(esk5_0)) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_9,c_0_10]),c_0_11]),c_0_12])]),c_0_13]),c_0_14])).

cnf(c_0_18,plain,
    ( m1_subset_1(esk1_1(X1),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_19,plain,
    ( v2_struct_0(X1)
    | v2_struct_0(X2)
    | m1_subset_1(k2_waybel_0(X1,X2,X3),u1_struct_0(X1))
    | ~ l1_struct_0(X1)
    | ~ l1_waybel_0(X2,X1)
    | ~ m1_subset_1(X3,u1_struct_0(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_20,negated_conjecture,
    ( m1_subset_1(esk3_4(esk4_0,esk5_0,u1_struct_0(esk4_0),esk1_1(u1_struct_0(esk5_0))),u1_struct_0(esk5_0)) ),
    inference(spm,[status(thm)],[c_0_17,c_0_18])).

fof(c_0_21,plain,(
    ! [X8,X9] :
      ( ~ m1_subset_1(X8,X9)
      | v1_xboole_0(X9)
      | r2_hidden(X8,X9) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_subset])])).

cnf(c_0_22,negated_conjecture,
    ( v2_struct_0(X1)
    | m1_subset_1(k2_waybel_0(X1,esk5_0,esk3_4(esk4_0,esk5_0,u1_struct_0(esk4_0),esk1_1(u1_struct_0(esk5_0)))),u1_struct_0(X1))
    | ~ l1_waybel_0(esk5_0,X1)
    | ~ l1_struct_0(X1) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_19,c_0_20]),c_0_13])).

fof(c_0_23,plain,(
    ! [X10] :
      ( v2_struct_0(X10)
      | ~ l1_struct_0(X10)
      | ~ v1_xboole_0(u1_struct_0(X10)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc2_struct_0])])])).

cnf(c_0_24,plain,
    ( v1_xboole_0(X2)
    | r2_hidden(X1,X2)
    | ~ m1_subset_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_25,negated_conjecture,
    ( m1_subset_1(k2_waybel_0(esk4_0,esk5_0,esk3_4(esk4_0,esk5_0,u1_struct_0(esk4_0),esk1_1(u1_struct_0(esk5_0)))),u1_struct_0(esk4_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22,c_0_11]),c_0_12])]),c_0_14])).

cnf(c_0_26,plain,
    ( v2_struct_0(X1)
    | ~ l1_struct_0(X1)
    | ~ v1_xboole_0(u1_struct_0(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_27,negated_conjecture,
    ( r2_hidden(k2_waybel_0(esk4_0,esk5_0,esk3_4(esk4_0,esk5_0,u1_struct_0(esk4_0),esk1_1(u1_struct_0(esk5_0)))),u1_struct_0(esk4_0))
    | v1_xboole_0(u1_struct_0(esk4_0)) ),
    inference(spm,[status(thm)],[c_0_24,c_0_25])).

cnf(c_0_28,plain,
    ( r1_waybel_0(X1,X2,X3)
    | v2_struct_0(X2)
    | v2_struct_0(X1)
    | ~ r2_hidden(k2_waybel_0(X1,X2,esk3_4(X1,X2,X3,X4)),X3)
    | ~ m1_subset_1(X4,u1_struct_0(X2))
    | ~ l1_waybel_0(X2,X1)
    | ~ l1_struct_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_29,negated_conjecture,
    ( r2_hidden(k2_waybel_0(esk4_0,esk5_0,esk3_4(esk4_0,esk5_0,u1_struct_0(esk4_0),esk1_1(u1_struct_0(esk5_0)))),u1_struct_0(esk4_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26,c_0_27]),c_0_12])]),c_0_14])).

cnf(c_0_30,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28,c_0_29]),c_0_11]),c_0_12]),c_0_18])]),c_0_9]),c_0_13]),c_0_14]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n005.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 20:58:17 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.13/0.39  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S02CA
% 0.13/0.39  # and selection function SelectAntiRROptimalLit.
% 0.13/0.39  #
% 0.13/0.39  # Preprocessing time       : 0.041 s
% 0.13/0.39  # Presaturation interreduction done
% 0.13/0.39  
% 0.13/0.39  # Proof found!
% 0.13/0.39  # SZS status Theorem
% 0.13/0.39  # SZS output start CNFRefutation
% 0.13/0.39  fof(t29_yellow_6, conjecture, ![X1]:((~(v2_struct_0(X1))&l1_struct_0(X1))=>![X2]:((((~(v2_struct_0(X2))&v4_orders_2(X2))&v7_waybel_0(X2))&l1_waybel_0(X2,X1))=>r1_waybel_0(X1,X2,u1_struct_0(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t29_yellow_6)).
% 0.13/0.39  fof(d11_waybel_0, axiom, ![X1]:((~(v2_struct_0(X1))&l1_struct_0(X1))=>![X2]:((~(v2_struct_0(X2))&l1_waybel_0(X2,X1))=>![X3]:(r1_waybel_0(X1,X2,X3)<=>?[X4]:(m1_subset_1(X4,u1_struct_0(X2))&![X5]:(m1_subset_1(X5,u1_struct_0(X2))=>(r1_orders_2(X2,X4,X5)=>r2_hidden(k2_waybel_0(X1,X2,X5),X3))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d11_waybel_0)).
% 0.13/0.39  fof(existence_m1_subset_1, axiom, ![X1]:?[X2]:m1_subset_1(X2,X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', existence_m1_subset_1)).
% 0.13/0.39  fof(dt_k2_waybel_0, axiom, ![X1, X2, X3]:(((((~(v2_struct_0(X1))&l1_struct_0(X1))&~(v2_struct_0(X2)))&l1_waybel_0(X2,X1))&m1_subset_1(X3,u1_struct_0(X2)))=>m1_subset_1(k2_waybel_0(X1,X2,X3),u1_struct_0(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k2_waybel_0)).
% 0.13/0.39  fof(t2_subset, axiom, ![X1, X2]:(m1_subset_1(X1,X2)=>(v1_xboole_0(X2)|r2_hidden(X1,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t2_subset)).
% 0.13/0.39  fof(fc2_struct_0, axiom, ![X1]:((~(v2_struct_0(X1))&l1_struct_0(X1))=>~(v1_xboole_0(u1_struct_0(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc2_struct_0)).
% 0.13/0.39  fof(c_0_6, negated_conjecture, ~(![X1]:((~(v2_struct_0(X1))&l1_struct_0(X1))=>![X2]:((((~(v2_struct_0(X2))&v4_orders_2(X2))&v7_waybel_0(X2))&l1_waybel_0(X2,X1))=>r1_waybel_0(X1,X2,u1_struct_0(X1))))), inference(assume_negation,[status(cth)],[t29_yellow_6])).
% 0.13/0.39  fof(c_0_7, negated_conjecture, ((~v2_struct_0(esk4_0)&l1_struct_0(esk4_0))&((((~v2_struct_0(esk5_0)&v4_orders_2(esk5_0))&v7_waybel_0(esk5_0))&l1_waybel_0(esk5_0,esk4_0))&~r1_waybel_0(esk4_0,esk5_0,u1_struct_0(esk4_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_6])])])])).
% 0.13/0.39  fof(c_0_8, plain, ![X11, X12, X13, X15, X16, X17]:(((m1_subset_1(esk2_3(X11,X12,X13),u1_struct_0(X12))|~r1_waybel_0(X11,X12,X13)|(v2_struct_0(X12)|~l1_waybel_0(X12,X11))|(v2_struct_0(X11)|~l1_struct_0(X11)))&(~m1_subset_1(X15,u1_struct_0(X12))|(~r1_orders_2(X12,esk2_3(X11,X12,X13),X15)|r2_hidden(k2_waybel_0(X11,X12,X15),X13))|~r1_waybel_0(X11,X12,X13)|(v2_struct_0(X12)|~l1_waybel_0(X12,X11))|(v2_struct_0(X11)|~l1_struct_0(X11))))&((m1_subset_1(esk3_4(X11,X12,X16,X17),u1_struct_0(X12))|~m1_subset_1(X17,u1_struct_0(X12))|r1_waybel_0(X11,X12,X16)|(v2_struct_0(X12)|~l1_waybel_0(X12,X11))|(v2_struct_0(X11)|~l1_struct_0(X11)))&((r1_orders_2(X12,X17,esk3_4(X11,X12,X16,X17))|~m1_subset_1(X17,u1_struct_0(X12))|r1_waybel_0(X11,X12,X16)|(v2_struct_0(X12)|~l1_waybel_0(X12,X11))|(v2_struct_0(X11)|~l1_struct_0(X11)))&(~r2_hidden(k2_waybel_0(X11,X12,esk3_4(X11,X12,X16,X17)),X16)|~m1_subset_1(X17,u1_struct_0(X12))|r1_waybel_0(X11,X12,X16)|(v2_struct_0(X12)|~l1_waybel_0(X12,X11))|(v2_struct_0(X11)|~l1_struct_0(X11)))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d11_waybel_0])])])])])])])).
% 0.13/0.39  cnf(c_0_9, negated_conjecture, (~r1_waybel_0(esk4_0,esk5_0,u1_struct_0(esk4_0))), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.13/0.39  cnf(c_0_10, plain, (m1_subset_1(esk3_4(X1,X2,X3,X4),u1_struct_0(X2))|r1_waybel_0(X1,X2,X3)|v2_struct_0(X2)|v2_struct_0(X1)|~m1_subset_1(X4,u1_struct_0(X2))|~l1_waybel_0(X2,X1)|~l1_struct_0(X1)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.13/0.39  cnf(c_0_11, negated_conjecture, (l1_waybel_0(esk5_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.13/0.39  cnf(c_0_12, negated_conjecture, (l1_struct_0(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.13/0.39  cnf(c_0_13, negated_conjecture, (~v2_struct_0(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.13/0.39  cnf(c_0_14, negated_conjecture, (~v2_struct_0(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.13/0.39  fof(c_0_15, plain, ![X6]:m1_subset_1(esk1_1(X6),X6), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[existence_m1_subset_1])])).
% 0.13/0.39  fof(c_0_16, plain, ![X19, X20, X21]:(v2_struct_0(X19)|~l1_struct_0(X19)|v2_struct_0(X20)|~l1_waybel_0(X20,X19)|~m1_subset_1(X21,u1_struct_0(X20))|m1_subset_1(k2_waybel_0(X19,X20,X21),u1_struct_0(X19))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[dt_k2_waybel_0])])])).
% 0.13/0.39  cnf(c_0_17, negated_conjecture, (m1_subset_1(esk3_4(esk4_0,esk5_0,u1_struct_0(esk4_0),X1),u1_struct_0(esk5_0))|~m1_subset_1(X1,u1_struct_0(esk5_0))), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_9, c_0_10]), c_0_11]), c_0_12])]), c_0_13]), c_0_14])).
% 0.13/0.39  cnf(c_0_18, plain, (m1_subset_1(esk1_1(X1),X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.13/0.39  cnf(c_0_19, plain, (v2_struct_0(X1)|v2_struct_0(X2)|m1_subset_1(k2_waybel_0(X1,X2,X3),u1_struct_0(X1))|~l1_struct_0(X1)|~l1_waybel_0(X2,X1)|~m1_subset_1(X3,u1_struct_0(X2))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.13/0.39  cnf(c_0_20, negated_conjecture, (m1_subset_1(esk3_4(esk4_0,esk5_0,u1_struct_0(esk4_0),esk1_1(u1_struct_0(esk5_0))),u1_struct_0(esk5_0))), inference(spm,[status(thm)],[c_0_17, c_0_18])).
% 0.13/0.39  fof(c_0_21, plain, ![X8, X9]:(~m1_subset_1(X8,X9)|(v1_xboole_0(X9)|r2_hidden(X8,X9))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_subset])])).
% 0.13/0.39  cnf(c_0_22, negated_conjecture, (v2_struct_0(X1)|m1_subset_1(k2_waybel_0(X1,esk5_0,esk3_4(esk4_0,esk5_0,u1_struct_0(esk4_0),esk1_1(u1_struct_0(esk5_0)))),u1_struct_0(X1))|~l1_waybel_0(esk5_0,X1)|~l1_struct_0(X1)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_19, c_0_20]), c_0_13])).
% 0.13/0.39  fof(c_0_23, plain, ![X10]:(v2_struct_0(X10)|~l1_struct_0(X10)|~v1_xboole_0(u1_struct_0(X10))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc2_struct_0])])])).
% 0.13/0.39  cnf(c_0_24, plain, (v1_xboole_0(X2)|r2_hidden(X1,X2)|~m1_subset_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.13/0.39  cnf(c_0_25, negated_conjecture, (m1_subset_1(k2_waybel_0(esk4_0,esk5_0,esk3_4(esk4_0,esk5_0,u1_struct_0(esk4_0),esk1_1(u1_struct_0(esk5_0)))),u1_struct_0(esk4_0))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22, c_0_11]), c_0_12])]), c_0_14])).
% 0.13/0.39  cnf(c_0_26, plain, (v2_struct_0(X1)|~l1_struct_0(X1)|~v1_xboole_0(u1_struct_0(X1))), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.13/0.39  cnf(c_0_27, negated_conjecture, (r2_hidden(k2_waybel_0(esk4_0,esk5_0,esk3_4(esk4_0,esk5_0,u1_struct_0(esk4_0),esk1_1(u1_struct_0(esk5_0)))),u1_struct_0(esk4_0))|v1_xboole_0(u1_struct_0(esk4_0))), inference(spm,[status(thm)],[c_0_24, c_0_25])).
% 0.13/0.39  cnf(c_0_28, plain, (r1_waybel_0(X1,X2,X3)|v2_struct_0(X2)|v2_struct_0(X1)|~r2_hidden(k2_waybel_0(X1,X2,esk3_4(X1,X2,X3,X4)),X3)|~m1_subset_1(X4,u1_struct_0(X2))|~l1_waybel_0(X2,X1)|~l1_struct_0(X1)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.13/0.39  cnf(c_0_29, negated_conjecture, (r2_hidden(k2_waybel_0(esk4_0,esk5_0,esk3_4(esk4_0,esk5_0,u1_struct_0(esk4_0),esk1_1(u1_struct_0(esk5_0)))),u1_struct_0(esk4_0))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26, c_0_27]), c_0_12])]), c_0_14])).
% 0.13/0.39  cnf(c_0_30, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28, c_0_29]), c_0_11]), c_0_12]), c_0_18])]), c_0_9]), c_0_13]), c_0_14]), ['proof']).
% 0.13/0.39  # SZS output end CNFRefutation
% 0.13/0.39  # Proof object total steps             : 31
% 0.13/0.39  # Proof object clause steps            : 18
% 0.13/0.39  # Proof object formula steps           : 13
% 0.13/0.39  # Proof object conjectures             : 15
% 0.13/0.39  # Proof object clause conjectures      : 12
% 0.13/0.39  # Proof object formula conjectures     : 3
% 0.13/0.39  # Proof object initial clauses used    : 11
% 0.13/0.39  # Proof object initial formulas used   : 6
% 0.13/0.39  # Proof object generating inferences   : 7
% 0.13/0.39  # Proof object simplifying inferences  : 19
% 0.13/0.39  # Training examples: 0 positive, 0 negative
% 0.13/0.39  # Parsed axioms                        : 6
% 0.13/0.39  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.39  # Initial clauses                      : 16
% 0.13/0.39  # Removed in clause preprocessing      : 0
% 0.13/0.39  # Initial clauses in saturation        : 16
% 0.13/0.39  # Processed clauses                    : 46
% 0.13/0.39  # ...of these trivial                  : 0
% 0.13/0.39  # ...subsumed                          : 0
% 0.13/0.39  # ...remaining for further processing  : 46
% 0.13/0.39  # Other redundant clauses eliminated   : 0
% 0.13/0.39  # Clauses deleted for lack of memory   : 0
% 0.13/0.39  # Backward-subsumed                    : 0
% 0.13/0.39  # Backward-rewritten                   : 1
% 0.13/0.39  # Generated clauses                    : 21
% 0.13/0.39  # ...of the previous two non-trivial   : 20
% 0.13/0.39  # Contextual simplify-reflections      : 0
% 0.13/0.39  # Paramodulations                      : 21
% 0.13/0.39  # Factorizations                       : 0
% 0.13/0.39  # Equation resolutions                 : 0
% 0.13/0.39  # Propositional unsat checks           : 0
% 0.13/0.39  #    Propositional check models        : 0
% 0.13/0.39  #    Propositional check unsatisfiable : 0
% 0.13/0.39  #    Propositional clauses             : 0
% 0.13/0.39  #    Propositional clauses after purity: 0
% 0.13/0.39  #    Propositional unsat core size     : 0
% 0.13/0.39  #    Propositional preprocessing time  : 0.000
% 0.13/0.39  #    Propositional encoding time       : 0.000
% 0.13/0.39  #    Propositional solver time         : 0.000
% 0.13/0.39  #    Success case prop preproc time    : 0.000
% 0.13/0.39  #    Success case prop encoding time   : 0.000
% 0.13/0.39  #    Success case prop solver time     : 0.000
% 0.13/0.39  # Current number of processed clauses  : 29
% 0.13/0.39  #    Positive orientable unit clauses  : 10
% 0.13/0.39  #    Positive unorientable unit clauses: 0
% 0.13/0.39  #    Negative unit clauses             : 3
% 0.13/0.39  #    Non-unit-clauses                  : 16
% 0.13/0.39  # Current number of unprocessed clauses: 6
% 0.13/0.39  # ...number of literals in the above   : 33
% 0.13/0.39  # Current number of archived formulas  : 0
% 0.13/0.39  # Current number of archived clauses   : 17
% 0.13/0.39  # Clause-clause subsumption calls (NU) : 94
% 0.13/0.39  # Rec. Clause-clause subsumption calls : 6
% 0.13/0.39  # Non-unit clause-clause subsumptions  : 0
% 0.13/0.39  # Unit Clause-clause subsumption calls : 4
% 0.13/0.39  # Rewrite failures with RHS unbound    : 0
% 0.13/0.39  # BW rewrite match attempts            : 4
% 0.13/0.39  # BW rewrite match successes           : 1
% 0.13/0.39  # Condensation attempts                : 0
% 0.13/0.39  # Condensation successes               : 0
% 0.13/0.39  # Termbank termtop insertions          : 2015
% 0.13/0.39  
% 0.13/0.39  # -------------------------------------------------
% 0.13/0.39  # User time                : 0.044 s
% 0.13/0.39  # System time              : 0.005 s
% 0.13/0.39  # Total time               : 0.049 s
% 0.13/0.39  # Maximum resident set size: 1568 pages
%------------------------------------------------------------------------------
