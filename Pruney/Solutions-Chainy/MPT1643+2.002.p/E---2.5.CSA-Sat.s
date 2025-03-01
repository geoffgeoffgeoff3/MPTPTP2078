%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n025.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:16:15 EST 2020

% Result     : CounterSatisfiable 0.13s
% Output     : Saturation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   23 (  50 expanded)
%              Number of clauses        :   16 (  19 expanded)
%              Number of leaves         :    3 (  13 expanded)
%              Depth                    :    5
%              Number of atoms          :   84 ( 222 expanded)
%              Number of equality atoms :    0 (   0 expanded)
%              Maximal formula depth    :   10 (   5 average)
%              Maximal clause size      :   12 (   3 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(d3_tarski,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
    <=> ! [X3] :
          ( r2_hidden(X3,X1)
         => r2_hidden(X3,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_tarski)).

fof(t23_waybel_0,conjecture,(
    ! [X1] :
      ( l1_orders_2(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ( v12_waybel_0(X2,X1)
          <=> r1_tarski(k3_waybel_0(X1,X2),X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t23_waybel_0)).

fof(t7_subset_1,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => ! [X3] :
          ( m1_subset_1(X3,k1_zfmisc_1(X1))
         => ( ! [X4] :
                ( m1_subset_1(X4,X1)
               => ( r2_hidden(X4,X2)
                 => r2_hidden(X4,X3) ) )
           => r1_tarski(X2,X3) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_subset_1)).

fof(c_0_3,plain,(
    ! [X5,X6,X7,X8,X9] :
      ( ( ~ r1_tarski(X5,X6)
        | ~ r2_hidden(X7,X5)
        | r2_hidden(X7,X6) )
      & ( r2_hidden(esk1_2(X8,X9),X8)
        | r1_tarski(X8,X9) )
      & ( ~ r2_hidden(esk1_2(X8,X9),X9)
        | r1_tarski(X8,X9) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).

fof(c_0_4,negated_conjecture,(
    ~ ! [X1] :
        ( l1_orders_2(X1)
       => ! [X2] :
            ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
           => ( v12_waybel_0(X2,X1)
            <=> r1_tarski(k3_waybel_0(X1,X2),X2) ) ) ) ),
    inference(assume_negation,[status(cth)],[t23_waybel_0])).

cnf(c_0_5,plain,
    ( r2_hidden(X3,X2)
    | ~ r1_tarski(X1,X2)
    | ~ r2_hidden(X3,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_3]),
    [final]).

cnf(c_0_6,plain,
    ( r2_hidden(esk1_2(X1,X2),X1)
    | r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_3]),
    [final]).

fof(c_0_7,negated_conjecture,
    ( l1_orders_2(esk3_0)
    & m1_subset_1(esk4_0,k1_zfmisc_1(u1_struct_0(esk3_0)))
    & ( ~ v12_waybel_0(esk4_0,esk3_0)
      | ~ r1_tarski(k3_waybel_0(esk3_0,esk4_0),esk4_0) )
    & ( v12_waybel_0(esk4_0,esk3_0)
      | r1_tarski(k3_waybel_0(esk3_0,esk4_0),esk4_0) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_4])])])).

cnf(c_0_8,plain,
    ( r2_hidden(esk1_2(X1,X2),X3)
    | r1_tarski(X1,X2)
    | ~ r1_tarski(X1,X3) ),
    inference(spm,[status(thm)],[c_0_5,c_0_6]),
    [final]).

cnf(c_0_9,negated_conjecture,
    ( v12_waybel_0(esk4_0,esk3_0)
    | r1_tarski(k3_waybel_0(esk3_0,esk4_0),esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7]),
    [final]).

fof(c_0_10,plain,(
    ! [X11,X12,X13] :
      ( ( m1_subset_1(esk2_3(X11,X12,X13),X11)
        | r1_tarski(X12,X13)
        | ~ m1_subset_1(X13,k1_zfmisc_1(X11))
        | ~ m1_subset_1(X12,k1_zfmisc_1(X11)) )
      & ( r2_hidden(esk2_3(X11,X12,X13),X12)
        | r1_tarski(X12,X13)
        | ~ m1_subset_1(X13,k1_zfmisc_1(X11))
        | ~ m1_subset_1(X12,k1_zfmisc_1(X11)) )
      & ( ~ r2_hidden(esk2_3(X11,X12,X13),X13)
        | r1_tarski(X12,X13)
        | ~ m1_subset_1(X13,k1_zfmisc_1(X11))
        | ~ m1_subset_1(X12,k1_zfmisc_1(X11)) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t7_subset_1])])])])])).

cnf(c_0_11,negated_conjecture,
    ( v12_waybel_0(esk4_0,esk3_0)
    | r2_hidden(esk1_2(k3_waybel_0(esk3_0,esk4_0),X1),esk4_0)
    | r1_tarski(k3_waybel_0(esk3_0,esk4_0),X1) ),
    inference(spm,[status(thm)],[c_0_8,c_0_9]),
    [final]).

cnf(c_0_12,plain,
    ( r2_hidden(esk2_3(X1,X2,X3),X2)
    | r1_tarski(X2,X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_10]),
    [final]).

cnf(c_0_13,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(u1_struct_0(esk3_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_7]),
    [final]).

cnf(c_0_14,plain,
    ( m1_subset_1(esk2_3(X1,X2,X3),X1)
    | r1_tarski(X2,X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_10]),
    [final]).

cnf(c_0_15,plain,
    ( r1_tarski(X1,X2)
    | ~ r2_hidden(esk1_2(X1,X2),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_3]),
    [final]).

cnf(c_0_16,negated_conjecture,
    ( v12_waybel_0(esk4_0,esk3_0)
    | r2_hidden(esk1_2(k3_waybel_0(esk3_0,esk4_0),X1),X2)
    | r1_tarski(k3_waybel_0(esk3_0,esk4_0),X1)
    | ~ r1_tarski(esk4_0,X2) ),
    inference(spm,[status(thm)],[c_0_5,c_0_11]),
    [final]).

cnf(c_0_17,negated_conjecture,
    ( r2_hidden(esk2_3(u1_struct_0(esk3_0),X1,esk4_0),X1)
    | r1_tarski(X1,esk4_0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk3_0))) ),
    inference(spm,[status(thm)],[c_0_12,c_0_13]),
    [final]).

cnf(c_0_18,negated_conjecture,
    ( m1_subset_1(esk2_3(u1_struct_0(esk3_0),X1,esk4_0),u1_struct_0(esk3_0))
    | r1_tarski(X1,esk4_0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk3_0))) ),
    inference(spm,[status(thm)],[c_0_14,c_0_13]),
    [final]).

cnf(c_0_19,plain,
    ( r1_tarski(X2,X3)
    | ~ r2_hidden(esk2_3(X1,X2,X3),X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_10]),
    [final]).

cnf(c_0_20,negated_conjecture,
    ( ~ v12_waybel_0(esk4_0,esk3_0)
    | ~ r1_tarski(k3_waybel_0(esk3_0,esk4_0),esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7]),
    [final]).

cnf(c_0_21,plain,
    ( r1_tarski(X1,X1) ),
    inference(spm,[status(thm)],[c_0_15,c_0_6]),
    [final]).

cnf(c_0_22,negated_conjecture,
    ( l1_orders_2(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7]),
    [final]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n025.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 14:51:50 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.13/0.38  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.13/0.38  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.13/0.38  #
% 0.13/0.38  # Preprocessing time       : 0.027 s
% 0.13/0.38  # Presaturation interreduction done
% 0.13/0.38  
% 0.13/0.38  # No proof found!
% 0.13/0.38  # SZS status CounterSatisfiable
% 0.13/0.38  # SZS output start Saturation
% 0.13/0.38  fof(d3_tarski, axiom, ![X1, X2]:(r1_tarski(X1,X2)<=>![X3]:(r2_hidden(X3,X1)=>r2_hidden(X3,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d3_tarski)).
% 0.13/0.38  fof(t23_waybel_0, conjecture, ![X1]:(l1_orders_2(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>(v12_waybel_0(X2,X1)<=>r1_tarski(k3_waybel_0(X1,X2),X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t23_waybel_0)).
% 0.13/0.38  fof(t7_subset_1, axiom, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(X1))=>(![X4]:(m1_subset_1(X4,X1)=>(r2_hidden(X4,X2)=>r2_hidden(X4,X3)))=>r1_tarski(X2,X3)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t7_subset_1)).
% 0.13/0.38  fof(c_0_3, plain, ![X5, X6, X7, X8, X9]:((~r1_tarski(X5,X6)|(~r2_hidden(X7,X5)|r2_hidden(X7,X6)))&((r2_hidden(esk1_2(X8,X9),X8)|r1_tarski(X8,X9))&(~r2_hidden(esk1_2(X8,X9),X9)|r1_tarski(X8,X9)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).
% 0.13/0.38  fof(c_0_4, negated_conjecture, ~(![X1]:(l1_orders_2(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>(v12_waybel_0(X2,X1)<=>r1_tarski(k3_waybel_0(X1,X2),X2))))), inference(assume_negation,[status(cth)],[t23_waybel_0])).
% 0.13/0.38  cnf(c_0_5, plain, (r2_hidden(X3,X2)|~r1_tarski(X1,X2)|~r2_hidden(X3,X1)), inference(split_conjunct,[status(thm)],[c_0_3]), ['final']).
% 0.13/0.38  cnf(c_0_6, plain, (r2_hidden(esk1_2(X1,X2),X1)|r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_3]), ['final']).
% 0.13/0.38  fof(c_0_7, negated_conjecture, (l1_orders_2(esk3_0)&(m1_subset_1(esk4_0,k1_zfmisc_1(u1_struct_0(esk3_0)))&((~v12_waybel_0(esk4_0,esk3_0)|~r1_tarski(k3_waybel_0(esk3_0,esk4_0),esk4_0))&(v12_waybel_0(esk4_0,esk3_0)|r1_tarski(k3_waybel_0(esk3_0,esk4_0),esk4_0))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_4])])])).
% 0.13/0.38  cnf(c_0_8, plain, (r2_hidden(esk1_2(X1,X2),X3)|r1_tarski(X1,X2)|~r1_tarski(X1,X3)), inference(spm,[status(thm)],[c_0_5, c_0_6]), ['final']).
% 0.13/0.38  cnf(c_0_9, negated_conjecture, (v12_waybel_0(esk4_0,esk3_0)|r1_tarski(k3_waybel_0(esk3_0,esk4_0),esk4_0)), inference(split_conjunct,[status(thm)],[c_0_7]), ['final']).
% 0.13/0.38  fof(c_0_10, plain, ![X11, X12, X13]:((m1_subset_1(esk2_3(X11,X12,X13),X11)|r1_tarski(X12,X13)|~m1_subset_1(X13,k1_zfmisc_1(X11))|~m1_subset_1(X12,k1_zfmisc_1(X11)))&((r2_hidden(esk2_3(X11,X12,X13),X12)|r1_tarski(X12,X13)|~m1_subset_1(X13,k1_zfmisc_1(X11))|~m1_subset_1(X12,k1_zfmisc_1(X11)))&(~r2_hidden(esk2_3(X11,X12,X13),X13)|r1_tarski(X12,X13)|~m1_subset_1(X13,k1_zfmisc_1(X11))|~m1_subset_1(X12,k1_zfmisc_1(X11))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t7_subset_1])])])])])).
% 0.13/0.38  cnf(c_0_11, negated_conjecture, (v12_waybel_0(esk4_0,esk3_0)|r2_hidden(esk1_2(k3_waybel_0(esk3_0,esk4_0),X1),esk4_0)|r1_tarski(k3_waybel_0(esk3_0,esk4_0),X1)), inference(spm,[status(thm)],[c_0_8, c_0_9]), ['final']).
% 0.13/0.38  cnf(c_0_12, plain, (r2_hidden(esk2_3(X1,X2,X3),X2)|r1_tarski(X2,X3)|~m1_subset_1(X3,k1_zfmisc_1(X1))|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_10]), ['final']).
% 0.13/0.38  cnf(c_0_13, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(u1_struct_0(esk3_0)))), inference(split_conjunct,[status(thm)],[c_0_7]), ['final']).
% 0.13/0.38  cnf(c_0_14, plain, (m1_subset_1(esk2_3(X1,X2,X3),X1)|r1_tarski(X2,X3)|~m1_subset_1(X3,k1_zfmisc_1(X1))|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_10]), ['final']).
% 0.13/0.38  cnf(c_0_15, plain, (r1_tarski(X1,X2)|~r2_hidden(esk1_2(X1,X2),X2)), inference(split_conjunct,[status(thm)],[c_0_3]), ['final']).
% 0.13/0.38  cnf(c_0_16, negated_conjecture, (v12_waybel_0(esk4_0,esk3_0)|r2_hidden(esk1_2(k3_waybel_0(esk3_0,esk4_0),X1),X2)|r1_tarski(k3_waybel_0(esk3_0,esk4_0),X1)|~r1_tarski(esk4_0,X2)), inference(spm,[status(thm)],[c_0_5, c_0_11]), ['final']).
% 0.13/0.38  cnf(c_0_17, negated_conjecture, (r2_hidden(esk2_3(u1_struct_0(esk3_0),X1,esk4_0),X1)|r1_tarski(X1,esk4_0)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk3_0)))), inference(spm,[status(thm)],[c_0_12, c_0_13]), ['final']).
% 0.13/0.38  cnf(c_0_18, negated_conjecture, (m1_subset_1(esk2_3(u1_struct_0(esk3_0),X1,esk4_0),u1_struct_0(esk3_0))|r1_tarski(X1,esk4_0)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk3_0)))), inference(spm,[status(thm)],[c_0_14, c_0_13]), ['final']).
% 0.13/0.38  cnf(c_0_19, plain, (r1_tarski(X2,X3)|~r2_hidden(esk2_3(X1,X2,X3),X3)|~m1_subset_1(X3,k1_zfmisc_1(X1))|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_10]), ['final']).
% 0.13/0.38  cnf(c_0_20, negated_conjecture, (~v12_waybel_0(esk4_0,esk3_0)|~r1_tarski(k3_waybel_0(esk3_0,esk4_0),esk4_0)), inference(split_conjunct,[status(thm)],[c_0_7]), ['final']).
% 0.13/0.38  cnf(c_0_21, plain, (r1_tarski(X1,X1)), inference(spm,[status(thm)],[c_0_15, c_0_6]), ['final']).
% 0.13/0.38  cnf(c_0_22, negated_conjecture, (l1_orders_2(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_7]), ['final']).
% 0.13/0.38  # SZS output end Saturation
% 0.13/0.38  # Proof object total steps             : 23
% 0.13/0.38  # Proof object clause steps            : 16
% 0.13/0.38  # Proof object formula steps           : 7
% 0.13/0.38  # Proof object conjectures             : 11
% 0.13/0.38  # Proof object clause conjectures      : 8
% 0.13/0.38  # Proof object formula conjectures     : 3
% 0.13/0.38  # Proof object initial clauses used    : 10
% 0.13/0.38  # Proof object initial formulas used   : 3
% 0.13/0.38  # Proof object generating inferences   : 6
% 0.13/0.38  # Proof object simplifying inferences  : 0
% 0.13/0.38  # Parsed axioms                        : 3
% 0.13/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.38  # Initial clauses                      : 10
% 0.13/0.38  # Removed in clause preprocessing      : 0
% 0.13/0.38  # Initial clauses in saturation        : 10
% 0.13/0.38  # Processed clauses                    : 29
% 0.13/0.38  # ...of these trivial                  : 0
% 0.13/0.38  # ...subsumed                          : 3
% 0.13/0.38  # ...remaining for further processing  : 26
% 0.13/0.38  # Other redundant clauses eliminated   : 0
% 0.13/0.38  # Clauses deleted for lack of memory   : 0
% 0.13/0.38  # Backward-subsumed                    : 0
% 0.13/0.38  # Backward-rewritten                   : 0
% 0.13/0.38  # Generated clauses                    : 12
% 0.13/0.38  # ...of the previous two non-trivial   : 9
% 0.13/0.38  # Contextual simplify-reflections      : 0
% 0.13/0.38  # Paramodulations                      : 12
% 0.13/0.38  # Factorizations                       : 0
% 0.13/0.38  # Equation resolutions                 : 0
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
% 0.13/0.38  # Current number of processed clauses  : 16
% 0.13/0.38  #    Positive orientable unit clauses  : 3
% 0.13/0.38  #    Positive unorientable unit clauses: 0
% 0.13/0.38  #    Negative unit clauses             : 0
% 0.13/0.38  #    Non-unit-clauses                  : 13
% 0.13/0.38  # Current number of unprocessed clauses: 0
% 0.13/0.38  # ...number of literals in the above   : 0
% 0.13/0.38  # Current number of archived formulas  : 0
% 0.13/0.38  # Current number of archived clauses   : 10
% 0.13/0.38  # Clause-clause subsumption calls (NU) : 67
% 0.13/0.38  # Rec. Clause-clause subsumption calls : 37
% 0.13/0.38  # Non-unit clause-clause subsumptions  : 3
% 0.13/0.38  # Unit Clause-clause subsumption calls : 3
% 0.13/0.38  # Rewrite failures with RHS unbound    : 0
% 0.13/0.38  # BW rewrite match attempts            : 3
% 0.13/0.38  # BW rewrite match successes           : 0
% 0.13/0.38  # Condensation attempts                : 0
% 0.13/0.38  # Condensation successes               : 0
% 0.13/0.38  # Termbank termtop insertions          : 1049
% 0.13/0.38  
% 0.13/0.38  # -------------------------------------------------
% 0.13/0.38  # User time                : 0.023 s
% 0.13/0.38  # System time              : 0.008 s
% 0.13/0.38  # Total time               : 0.031 s
% 0.13/0.38  # Maximum resident set size: 1564 pages
%------------------------------------------------------------------------------
