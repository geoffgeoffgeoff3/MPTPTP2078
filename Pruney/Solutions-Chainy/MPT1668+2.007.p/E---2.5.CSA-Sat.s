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
% DateTime   : Thu Dec  3 11:16:25 EST 2020

% Result     : CounterSatisfiable 0.13s
% Output     : Saturation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   27 (  63 expanded)
%              Number of clauses        :   18 (  18 expanded)
%              Number of leaves         :    4 (  17 expanded)
%              Depth                    :    4
%              Number of atoms          :  120 ( 562 expanded)
%              Number of equality atoms :    6 (  46 expanded)
%              Maximal formula depth    :   14 (   5 average)
%              Maximal clause size      :   18 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t48_waybel_0,conjecture,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v3_orders_2(X1)
        & v4_orders_2(X1)
        & l1_orders_2(X1) )
     => ! [X2] :
          ( ( ~ v1_xboole_0(X2)
            & v1_waybel_0(X2,X1)
            & v12_waybel_0(X2,X1)
            & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) )
         => ( v14_waybel_0(X2,X1)
          <=> ? [X3] :
                ( m1_subset_1(X3,u1_struct_0(X1))
                & X2 = k5_waybel_0(X1,X3) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t48_waybel_0)).

fof(t4_subset,axiom,(
    ! [X1,X2,X3] :
      ( ( r2_hidden(X1,X2)
        & m1_subset_1(X2,k1_zfmisc_1(X3)) )
     => m1_subset_1(X1,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t4_subset)).

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

fof(t24_orders_2,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v3_orders_2(X1)
        & l1_orders_2(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,u1_struct_0(X1))
         => r1_orders_2(X1,X2,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t24_orders_2)).

fof(c_0_4,negated_conjecture,(
    ~ ! [X1] :
        ( ( ~ v2_struct_0(X1)
          & v3_orders_2(X1)
          & v4_orders_2(X1)
          & l1_orders_2(X1) )
       => ! [X2] :
            ( ( ~ v1_xboole_0(X2)
              & v1_waybel_0(X2,X1)
              & v12_waybel_0(X2,X1)
              & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) )
           => ( v14_waybel_0(X2,X1)
            <=> ? [X3] :
                  ( m1_subset_1(X3,u1_struct_0(X1))
                  & X2 = k5_waybel_0(X1,X3) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t48_waybel_0])).

fof(c_0_5,plain,(
    ! [X5,X6,X7] :
      ( ~ r2_hidden(X5,X6)
      | ~ m1_subset_1(X6,k1_zfmisc_1(X7))
      | m1_subset_1(X5,X7) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t4_subset])])).

fof(c_0_6,negated_conjecture,(
    ! [X17] :
      ( ~ v2_struct_0(esk2_0)
      & v3_orders_2(esk2_0)
      & v4_orders_2(esk2_0)
      & l1_orders_2(esk2_0)
      & ~ v1_xboole_0(esk3_0)
      & v1_waybel_0(esk3_0,esk2_0)
      & v12_waybel_0(esk3_0,esk2_0)
      & m1_subset_1(esk3_0,k1_zfmisc_1(u1_struct_0(esk2_0)))
      & ( ~ v14_waybel_0(esk3_0,esk2_0)
        | ~ m1_subset_1(X17,u1_struct_0(esk2_0))
        | esk3_0 != k5_waybel_0(esk2_0,X17) )
      & ( m1_subset_1(esk4_0,u1_struct_0(esk2_0))
        | v14_waybel_0(esk3_0,esk2_0) )
      & ( esk3_0 = k5_waybel_0(esk2_0,esk4_0)
        | v14_waybel_0(esk3_0,esk2_0) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_4])])])])])])).

cnf(c_0_7,plain,
    ( m1_subset_1(X1,X3)
    | ~ r2_hidden(X1,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_5]),
    [final]).

cnf(c_0_8,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(u1_struct_0(esk2_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_6]),
    [final]).

fof(c_0_9,plain,(
    ! [X10,X11,X12,X13] :
      ( ( ~ r2_lattice3(X10,X11,X12)
        | ~ m1_subset_1(X13,u1_struct_0(X10))
        | ~ r2_hidden(X13,X11)
        | r1_orders_2(X10,X13,X12)
        | ~ m1_subset_1(X12,u1_struct_0(X10))
        | ~ l1_orders_2(X10) )
      & ( m1_subset_1(esk1_3(X10,X11,X12),u1_struct_0(X10))
        | r2_lattice3(X10,X11,X12)
        | ~ m1_subset_1(X12,u1_struct_0(X10))
        | ~ l1_orders_2(X10) )
      & ( r2_hidden(esk1_3(X10,X11,X12),X11)
        | r2_lattice3(X10,X11,X12)
        | ~ m1_subset_1(X12,u1_struct_0(X10))
        | ~ l1_orders_2(X10) )
      & ( ~ r1_orders_2(X10,esk1_3(X10,X11,X12),X12)
        | r2_lattice3(X10,X11,X12)
        | ~ m1_subset_1(X12,u1_struct_0(X10))
        | ~ l1_orders_2(X10) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d9_lattice3])])])])])).

fof(c_0_10,plain,(
    ! [X8,X9] :
      ( v2_struct_0(X8)
      | ~ v3_orders_2(X8)
      | ~ l1_orders_2(X8)
      | ~ m1_subset_1(X9,u1_struct_0(X8))
      | r1_orders_2(X8,X9,X9) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t24_orders_2])])])])).

cnf(c_0_11,negated_conjecture,
    ( m1_subset_1(X1,u1_struct_0(esk2_0))
    | ~ r2_hidden(X1,esk3_0) ),
    inference(spm,[status(thm)],[c_0_7,c_0_8]),
    [final]).

cnf(c_0_12,plain,
    ( m1_subset_1(esk1_3(X1,X2,X3),u1_struct_0(X1))
    | r2_lattice3(X1,X2,X3)
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_9]),
    [final]).

cnf(c_0_13,plain,
    ( r1_orders_2(X1,X4,X3)
    | ~ r2_lattice3(X1,X2,X3)
    | ~ m1_subset_1(X4,u1_struct_0(X1))
    | ~ r2_hidden(X4,X2)
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_9]),
    [final]).

cnf(c_0_14,plain,
    ( r2_hidden(esk1_3(X1,X2,X3),X2)
    | r2_lattice3(X1,X2,X3)
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_9]),
    [final]).

cnf(c_0_15,plain,
    ( r2_lattice3(X1,X2,X3)
    | ~ r1_orders_2(X1,esk1_3(X1,X2,X3),X3)
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_9]),
    [final]).

cnf(c_0_16,plain,
    ( v2_struct_0(X1)
    | r1_orders_2(X1,X2,X2)
    | ~ v3_orders_2(X1)
    | ~ l1_orders_2(X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_10]),
    [final]).

cnf(c_0_17,negated_conjecture,
    ( ~ v14_waybel_0(esk3_0,esk2_0)
    | ~ m1_subset_1(X1,u1_struct_0(esk2_0))
    | esk3_0 != k5_waybel_0(esk2_0,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_6]),
    [final]).

cnf(c_0_18,negated_conjecture,
    ( m1_subset_1(esk4_0,u1_struct_0(esk2_0))
    | v14_waybel_0(esk3_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6]),
    [final]).

cnf(c_0_19,negated_conjecture,
    ( esk3_0 = k5_waybel_0(esk2_0,esk4_0)
    | v14_waybel_0(esk3_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6]),
    [final]).

cnf(c_0_20,negated_conjecture,
    ( ~ v1_xboole_0(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6]),
    [final]).

cnf(c_0_21,negated_conjecture,
    ( ~ v2_struct_0(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6]),
    [final]).

cnf(c_0_22,negated_conjecture,
    ( v12_waybel_0(esk3_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6]),
    [final]).

cnf(c_0_23,negated_conjecture,
    ( v1_waybel_0(esk3_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6]),
    [final]).

cnf(c_0_24,negated_conjecture,
    ( v4_orders_2(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6]),
    [final]).

cnf(c_0_25,negated_conjecture,
    ( l1_orders_2(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6]),
    [final]).

cnf(c_0_26,negated_conjecture,
    ( v3_orders_2(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6]),
    [final]).
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
% 0.13/0.34  % DateTime   : Tue Dec  1 09:34:01 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.13/0.37  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.13/0.37  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.13/0.37  #
% 0.13/0.37  # Preprocessing time       : 0.027 s
% 0.13/0.37  # Presaturation interreduction done
% 0.13/0.37  
% 0.13/0.37  # No proof found!
% 0.13/0.37  # SZS status CounterSatisfiable
% 0.13/0.37  # SZS output start Saturation
% 0.13/0.37  fof(t48_waybel_0, conjecture, ![X1]:((((~(v2_struct_0(X1))&v3_orders_2(X1))&v4_orders_2(X1))&l1_orders_2(X1))=>![X2]:((((~(v1_xboole_0(X2))&v1_waybel_0(X2,X1))&v12_waybel_0(X2,X1))&m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))))=>(v14_waybel_0(X2,X1)<=>?[X3]:(m1_subset_1(X3,u1_struct_0(X1))&X2=k5_waybel_0(X1,X3))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t48_waybel_0)).
% 0.13/0.37  fof(t4_subset, axiom, ![X1, X2, X3]:((r2_hidden(X1,X2)&m1_subset_1(X2,k1_zfmisc_1(X3)))=>m1_subset_1(X1,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t4_subset)).
% 0.13/0.37  fof(d9_lattice3, axiom, ![X1]:(l1_orders_2(X1)=>![X2, X3]:(m1_subset_1(X3,u1_struct_0(X1))=>(r2_lattice3(X1,X2,X3)<=>![X4]:(m1_subset_1(X4,u1_struct_0(X1))=>(r2_hidden(X4,X2)=>r1_orders_2(X1,X4,X3)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d9_lattice3)).
% 0.13/0.37  fof(t24_orders_2, axiom, ![X1]:(((~(v2_struct_0(X1))&v3_orders_2(X1))&l1_orders_2(X1))=>![X2]:(m1_subset_1(X2,u1_struct_0(X1))=>r1_orders_2(X1,X2,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t24_orders_2)).
% 0.13/0.37  fof(c_0_4, negated_conjecture, ~(![X1]:((((~(v2_struct_0(X1))&v3_orders_2(X1))&v4_orders_2(X1))&l1_orders_2(X1))=>![X2]:((((~(v1_xboole_0(X2))&v1_waybel_0(X2,X1))&v12_waybel_0(X2,X1))&m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))))=>(v14_waybel_0(X2,X1)<=>?[X3]:(m1_subset_1(X3,u1_struct_0(X1))&X2=k5_waybel_0(X1,X3)))))), inference(assume_negation,[status(cth)],[t48_waybel_0])).
% 0.13/0.37  fof(c_0_5, plain, ![X5, X6, X7]:(~r2_hidden(X5,X6)|~m1_subset_1(X6,k1_zfmisc_1(X7))|m1_subset_1(X5,X7)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t4_subset])])).
% 0.13/0.37  fof(c_0_6, negated_conjecture, ![X17]:((((~v2_struct_0(esk2_0)&v3_orders_2(esk2_0))&v4_orders_2(esk2_0))&l1_orders_2(esk2_0))&((((~v1_xboole_0(esk3_0)&v1_waybel_0(esk3_0,esk2_0))&v12_waybel_0(esk3_0,esk2_0))&m1_subset_1(esk3_0,k1_zfmisc_1(u1_struct_0(esk2_0))))&((~v14_waybel_0(esk3_0,esk2_0)|(~m1_subset_1(X17,u1_struct_0(esk2_0))|esk3_0!=k5_waybel_0(esk2_0,X17)))&((m1_subset_1(esk4_0,u1_struct_0(esk2_0))|v14_waybel_0(esk3_0,esk2_0))&(esk3_0=k5_waybel_0(esk2_0,esk4_0)|v14_waybel_0(esk3_0,esk2_0)))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_4])])])])])])).
% 0.13/0.37  cnf(c_0_7, plain, (m1_subset_1(X1,X3)|~r2_hidden(X1,X2)|~m1_subset_1(X2,k1_zfmisc_1(X3))), inference(split_conjunct,[status(thm)],[c_0_5]), ['final']).
% 0.13/0.37  cnf(c_0_8, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(u1_struct_0(esk2_0)))), inference(split_conjunct,[status(thm)],[c_0_6]), ['final']).
% 0.13/0.37  fof(c_0_9, plain, ![X10, X11, X12, X13]:((~r2_lattice3(X10,X11,X12)|(~m1_subset_1(X13,u1_struct_0(X10))|(~r2_hidden(X13,X11)|r1_orders_2(X10,X13,X12)))|~m1_subset_1(X12,u1_struct_0(X10))|~l1_orders_2(X10))&((m1_subset_1(esk1_3(X10,X11,X12),u1_struct_0(X10))|r2_lattice3(X10,X11,X12)|~m1_subset_1(X12,u1_struct_0(X10))|~l1_orders_2(X10))&((r2_hidden(esk1_3(X10,X11,X12),X11)|r2_lattice3(X10,X11,X12)|~m1_subset_1(X12,u1_struct_0(X10))|~l1_orders_2(X10))&(~r1_orders_2(X10,esk1_3(X10,X11,X12),X12)|r2_lattice3(X10,X11,X12)|~m1_subset_1(X12,u1_struct_0(X10))|~l1_orders_2(X10))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d9_lattice3])])])])])).
% 0.13/0.37  fof(c_0_10, plain, ![X8, X9]:(v2_struct_0(X8)|~v3_orders_2(X8)|~l1_orders_2(X8)|(~m1_subset_1(X9,u1_struct_0(X8))|r1_orders_2(X8,X9,X9))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t24_orders_2])])])])).
% 0.13/0.37  cnf(c_0_11, negated_conjecture, (m1_subset_1(X1,u1_struct_0(esk2_0))|~r2_hidden(X1,esk3_0)), inference(spm,[status(thm)],[c_0_7, c_0_8]), ['final']).
% 0.13/0.37  cnf(c_0_12, plain, (m1_subset_1(esk1_3(X1,X2,X3),u1_struct_0(X1))|r2_lattice3(X1,X2,X3)|~m1_subset_1(X3,u1_struct_0(X1))|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_9]), ['final']).
% 0.13/0.37  cnf(c_0_13, plain, (r1_orders_2(X1,X4,X3)|~r2_lattice3(X1,X2,X3)|~m1_subset_1(X4,u1_struct_0(X1))|~r2_hidden(X4,X2)|~m1_subset_1(X3,u1_struct_0(X1))|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_9]), ['final']).
% 0.13/0.37  cnf(c_0_14, plain, (r2_hidden(esk1_3(X1,X2,X3),X2)|r2_lattice3(X1,X2,X3)|~m1_subset_1(X3,u1_struct_0(X1))|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_9]), ['final']).
% 0.13/0.37  cnf(c_0_15, plain, (r2_lattice3(X1,X2,X3)|~r1_orders_2(X1,esk1_3(X1,X2,X3),X3)|~m1_subset_1(X3,u1_struct_0(X1))|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_9]), ['final']).
% 0.13/0.37  cnf(c_0_16, plain, (v2_struct_0(X1)|r1_orders_2(X1,X2,X2)|~v3_orders_2(X1)|~l1_orders_2(X1)|~m1_subset_1(X2,u1_struct_0(X1))), inference(split_conjunct,[status(thm)],[c_0_10]), ['final']).
% 0.13/0.37  cnf(c_0_17, negated_conjecture, (~v14_waybel_0(esk3_0,esk2_0)|~m1_subset_1(X1,u1_struct_0(esk2_0))|esk3_0!=k5_waybel_0(esk2_0,X1)), inference(split_conjunct,[status(thm)],[c_0_6]), ['final']).
% 0.13/0.37  cnf(c_0_18, negated_conjecture, (m1_subset_1(esk4_0,u1_struct_0(esk2_0))|v14_waybel_0(esk3_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_6]), ['final']).
% 0.13/0.37  cnf(c_0_19, negated_conjecture, (esk3_0=k5_waybel_0(esk2_0,esk4_0)|v14_waybel_0(esk3_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_6]), ['final']).
% 0.13/0.37  cnf(c_0_20, negated_conjecture, (~v1_xboole_0(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_6]), ['final']).
% 0.13/0.37  cnf(c_0_21, negated_conjecture, (~v2_struct_0(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_6]), ['final']).
% 0.13/0.37  cnf(c_0_22, negated_conjecture, (v12_waybel_0(esk3_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_6]), ['final']).
% 0.13/0.37  cnf(c_0_23, negated_conjecture, (v1_waybel_0(esk3_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_6]), ['final']).
% 0.13/0.37  cnf(c_0_24, negated_conjecture, (v4_orders_2(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_6]), ['final']).
% 0.13/0.37  cnf(c_0_25, negated_conjecture, (l1_orders_2(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_6]), ['final']).
% 0.13/0.37  cnf(c_0_26, negated_conjecture, (v3_orders_2(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_6]), ['final']).
% 0.13/0.37  # SZS output end Saturation
% 0.13/0.37  # Proof object total steps             : 27
% 0.13/0.37  # Proof object clause steps            : 18
% 0.13/0.37  # Proof object formula steps           : 9
% 0.13/0.37  # Proof object conjectures             : 15
% 0.13/0.37  # Proof object clause conjectures      : 12
% 0.13/0.37  # Proof object formula conjectures     : 3
% 0.13/0.37  # Proof object initial clauses used    : 17
% 0.13/0.37  # Proof object initial formulas used   : 4
% 0.13/0.37  # Proof object generating inferences   : 1
% 0.13/0.37  # Proof object simplifying inferences  : 0
% 0.13/0.37  # Parsed axioms                        : 4
% 0.13/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.37  # Initial clauses                      : 17
% 0.13/0.37  # Removed in clause preprocessing      : 0
% 0.13/0.37  # Initial clauses in saturation        : 17
% 0.13/0.37  # Processed clauses                    : 35
% 0.13/0.37  # ...of these trivial                  : 0
% 0.13/0.37  # ...subsumed                          : 0
% 0.13/0.37  # ...remaining for further processing  : 35
% 0.13/0.37  # Other redundant clauses eliminated   : 0
% 0.13/0.37  # Clauses deleted for lack of memory   : 0
% 0.13/0.37  # Backward-subsumed                    : 0
% 0.13/0.37  # Backward-rewritten                   : 0
% 0.13/0.37  # Generated clauses                    : 2
% 0.13/0.37  # ...of the previous two non-trivial   : 1
% 0.13/0.37  # Contextual simplify-reflections      : 0
% 0.13/0.37  # Paramodulations                      : 2
% 0.13/0.37  # Factorizations                       : 0
% 0.13/0.37  # Equation resolutions                 : 0
% 0.13/0.37  # Propositional unsat checks           : 0
% 0.13/0.37  #    Propositional check models        : 0
% 0.13/0.37  #    Propositional check unsatisfiable : 0
% 0.13/0.37  #    Propositional clauses             : 0
% 0.13/0.37  #    Propositional clauses after purity: 0
% 0.13/0.37  #    Propositional unsat core size     : 0
% 0.13/0.37  #    Propositional preprocessing time  : 0.000
% 0.13/0.37  #    Propositional encoding time       : 0.000
% 0.13/0.37  #    Propositional solver time         : 0.000
% 0.13/0.37  #    Success case prop preproc time    : 0.000
% 0.13/0.37  #    Success case prop encoding time   : 0.000
% 0.13/0.37  #    Success case prop solver time     : 0.000
% 0.13/0.37  # Current number of processed clauses  : 18
% 0.13/0.37  #    Positive orientable unit clauses  : 6
% 0.13/0.37  #    Positive unorientable unit clauses: 0
% 0.13/0.37  #    Negative unit clauses             : 2
% 0.13/0.37  #    Non-unit-clauses                  : 10
% 0.13/0.37  # Current number of unprocessed clauses: 0
% 0.13/0.37  # ...number of literals in the above   : 0
% 0.13/0.37  # Current number of archived formulas  : 0
% 0.13/0.37  # Current number of archived clauses   : 17
% 0.13/0.37  # Clause-clause subsumption calls (NU) : 18
% 0.13/0.37  # Rec. Clause-clause subsumption calls : 0
% 0.13/0.37  # Non-unit clause-clause subsumptions  : 0
% 0.13/0.37  # Unit Clause-clause subsumption calls : 0
% 0.13/0.37  # Rewrite failures with RHS unbound    : 0
% 0.13/0.37  # BW rewrite match attempts            : 0
% 0.13/0.37  # BW rewrite match successes           : 0
% 0.13/0.37  # Condensation attempts                : 0
% 0.13/0.37  # Condensation successes               : 0
% 0.13/0.37  # Termbank termtop insertions          : 1360
% 0.13/0.38  
% 0.13/0.38  # -------------------------------------------------
% 0.13/0.38  # User time                : 0.028 s
% 0.13/0.38  # System time              : 0.003 s
% 0.13/0.38  # Total time               : 0.031 s
% 0.13/0.38  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
