%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n016.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:15:34 EST 2020

% Result     : CounterSatisfiable 0.14s
% Output     : Saturation 0.14s
% Verified   : 
% Statistics : Number of formulae       :    7 (  16 expanded)
%              Number of clauses        :    4 (   4 expanded)
%              Number of leaves         :    1 (   4 expanded)
%              Depth                    :    3
%              Number of atoms          :   20 (  65 expanded)
%              Number of equality atoms :    4 (  13 expanded)
%              Maximal formula depth    :    7 (   4 average)
%              Maximal clause size      :    5 (   1 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t51_yellow_0,conjecture,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & l1_orders_2(X1) )
     => ! [X2] :
          ( ( r1_yellow_0(X1,X2)
            | r1_yellow_0(X1,k3_xboole_0(X2,u1_struct_0(X1))) )
         => k1_yellow_0(X1,X2) = k1_yellow_0(X1,k3_xboole_0(X2,u1_struct_0(X1))) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t51_yellow_0)).

fof(c_0_1,negated_conjecture,(
    ~ ! [X1] :
        ( ( ~ v2_struct_0(X1)
          & l1_orders_2(X1) )
       => ! [X2] :
            ( ( r1_yellow_0(X1,X2)
              | r1_yellow_0(X1,k3_xboole_0(X2,u1_struct_0(X1))) )
           => k1_yellow_0(X1,X2) = k1_yellow_0(X1,k3_xboole_0(X2,u1_struct_0(X1))) ) ) ),
    inference(assume_negation,[status(cth)],[t51_yellow_0])).

fof(c_0_2,negated_conjecture,
    ( ~ v2_struct_0(esk1_0)
    & l1_orders_2(esk1_0)
    & ( r1_yellow_0(esk1_0,esk2_0)
      | r1_yellow_0(esk1_0,k3_xboole_0(esk2_0,u1_struct_0(esk1_0))) )
    & k1_yellow_0(esk1_0,esk2_0) != k1_yellow_0(esk1_0,k3_xboole_0(esk2_0,u1_struct_0(esk1_0))) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_1])])])])).

cnf(c_0_3,negated_conjecture,
    ( r1_yellow_0(esk1_0,esk2_0)
    | r1_yellow_0(esk1_0,k3_xboole_0(esk2_0,u1_struct_0(esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_2]),
    [final]).

cnf(c_0_4,negated_conjecture,
    ( k1_yellow_0(esk1_0,esk2_0) != k1_yellow_0(esk1_0,k3_xboole_0(esk2_0,u1_struct_0(esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_2]),
    [final]).

cnf(c_0_5,negated_conjecture,
    ( ~ v2_struct_0(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_2]),
    [final]).

cnf(c_0_6,negated_conjecture,
    ( l1_orders_2(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_2]),
    [final]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.34  % Computer   : n016.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 16:09:19 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  # Version: 2.5pre002
% 0.14/0.34  # No SInE strategy applied
% 0.14/0.34  # Trying AutoSched0 for 299 seconds
% 0.14/0.37  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S072N
% 0.14/0.37  # and selection function SelectCQArEqFirst.
% 0.14/0.37  #
% 0.14/0.37  # Preprocessing time       : 0.025 s
% 0.14/0.37  # Presaturation interreduction done
% 0.14/0.37  
% 0.14/0.37  # No proof found!
% 0.14/0.37  # SZS status CounterSatisfiable
% 0.14/0.37  # SZS output start Saturation
% 0.14/0.37  fof(t51_yellow_0, conjecture, ![X1]:((~(v2_struct_0(X1))&l1_orders_2(X1))=>![X2]:((r1_yellow_0(X1,X2)|r1_yellow_0(X1,k3_xboole_0(X2,u1_struct_0(X1))))=>k1_yellow_0(X1,X2)=k1_yellow_0(X1,k3_xboole_0(X2,u1_struct_0(X1))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t51_yellow_0)).
% 0.14/0.37  fof(c_0_1, negated_conjecture, ~(![X1]:((~(v2_struct_0(X1))&l1_orders_2(X1))=>![X2]:((r1_yellow_0(X1,X2)|r1_yellow_0(X1,k3_xboole_0(X2,u1_struct_0(X1))))=>k1_yellow_0(X1,X2)=k1_yellow_0(X1,k3_xboole_0(X2,u1_struct_0(X1)))))), inference(assume_negation,[status(cth)],[t51_yellow_0])).
% 0.14/0.37  fof(c_0_2, negated_conjecture, ((~v2_struct_0(esk1_0)&l1_orders_2(esk1_0))&((r1_yellow_0(esk1_0,esk2_0)|r1_yellow_0(esk1_0,k3_xboole_0(esk2_0,u1_struct_0(esk1_0))))&k1_yellow_0(esk1_0,esk2_0)!=k1_yellow_0(esk1_0,k3_xboole_0(esk2_0,u1_struct_0(esk1_0))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_1])])])])).
% 0.14/0.37  cnf(c_0_3, negated_conjecture, (r1_yellow_0(esk1_0,esk2_0)|r1_yellow_0(esk1_0,k3_xboole_0(esk2_0,u1_struct_0(esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_2]), ['final']).
% 0.14/0.37  cnf(c_0_4, negated_conjecture, (k1_yellow_0(esk1_0,esk2_0)!=k1_yellow_0(esk1_0,k3_xboole_0(esk2_0,u1_struct_0(esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_2]), ['final']).
% 0.14/0.37  cnf(c_0_5, negated_conjecture, (~v2_struct_0(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_2]), ['final']).
% 0.14/0.37  cnf(c_0_6, negated_conjecture, (l1_orders_2(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_2]), ['final']).
% 0.14/0.37  # SZS output end Saturation
% 0.14/0.37  # Proof object total steps             : 7
% 0.14/0.37  # Proof object clause steps            : 4
% 0.14/0.37  # Proof object formula steps           : 3
% 0.14/0.37  # Proof object conjectures             : 7
% 0.14/0.37  # Proof object clause conjectures      : 4
% 0.14/0.37  # Proof object formula conjectures     : 3
% 0.14/0.37  # Proof object initial clauses used    : 4
% 0.14/0.37  # Proof object initial formulas used   : 1
% 0.14/0.37  # Proof object generating inferences   : 0
% 0.14/0.37  # Proof object simplifying inferences  : 0
% 0.14/0.37  # Parsed axioms                        : 1
% 0.14/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.14/0.37  # Initial clauses                      : 4
% 0.14/0.37  # Removed in clause preprocessing      : 0
% 0.14/0.37  # Initial clauses in saturation        : 4
% 0.14/0.37  # Processed clauses                    : 8
% 0.14/0.37  # ...of these trivial                  : 0
% 0.14/0.37  # ...subsumed                          : 0
% 0.14/0.37  # ...remaining for further processing  : 8
% 0.14/0.37  # Other redundant clauses eliminated   : 0
% 0.14/0.37  # Clauses deleted for lack of memory   : 0
% 0.14/0.37  # Backward-subsumed                    : 0
% 0.14/0.37  # Backward-rewritten                   : 0
% 0.14/0.37  # Generated clauses                    : 0
% 0.14/0.37  # ...of the previous two non-trivial   : 0
% 0.14/0.37  # Contextual simplify-reflections      : 0
% 0.14/0.37  # Paramodulations                      : 0
% 0.14/0.37  # Factorizations                       : 0
% 0.14/0.37  # Equation resolutions                 : 0
% 0.14/0.37  # Propositional unsat checks           : 0
% 0.14/0.37  #    Propositional check models        : 0
% 0.14/0.37  #    Propositional check unsatisfiable : 0
% 0.14/0.37  #    Propositional clauses             : 0
% 0.14/0.37  #    Propositional clauses after purity: 0
% 0.14/0.37  #    Propositional unsat core size     : 0
% 0.14/0.37  #    Propositional preprocessing time  : 0.000
% 0.14/0.37  #    Propositional encoding time       : 0.000
% 0.14/0.37  #    Propositional solver time         : 0.000
% 0.14/0.37  #    Success case prop preproc time    : 0.000
% 0.14/0.37  #    Success case prop encoding time   : 0.000
% 0.14/0.37  #    Success case prop solver time     : 0.000
% 0.14/0.37  # Current number of processed clauses  : 4
% 0.14/0.37  #    Positive orientable unit clauses  : 1
% 0.14/0.37  #    Positive unorientable unit clauses: 0
% 0.14/0.37  #    Negative unit clauses             : 2
% 0.14/0.37  #    Non-unit-clauses                  : 1
% 0.14/0.37  # Current number of unprocessed clauses: 0
% 0.14/0.37  # ...number of literals in the above   : 0
% 0.14/0.37  # Current number of archived formulas  : 0
% 0.14/0.37  # Current number of archived clauses   : 4
% 0.14/0.37  # Clause-clause subsumption calls (NU) : 0
% 0.14/0.37  # Rec. Clause-clause subsumption calls : 0
% 0.14/0.37  # Non-unit clause-clause subsumptions  : 0
% 0.14/0.37  # Unit Clause-clause subsumption calls : 0
% 0.14/0.37  # Rewrite failures with RHS unbound    : 0
% 0.14/0.37  # BW rewrite match attempts            : 0
% 0.14/0.37  # BW rewrite match successes           : 0
% 0.14/0.37  # Condensation attempts                : 0
% 0.14/0.37  # Condensation successes               : 0
% 0.14/0.37  # Termbank termtop insertions          : 226
% 0.14/0.37  
% 0.14/0.37  # -------------------------------------------------
% 0.14/0.37  # User time                : 0.025 s
% 0.14/0.37  # System time              : 0.003 s
% 0.14/0.37  # Total time               : 0.028 s
% 0.14/0.37  # Maximum resident set size: 1560 pages
%------------------------------------------------------------------------------
