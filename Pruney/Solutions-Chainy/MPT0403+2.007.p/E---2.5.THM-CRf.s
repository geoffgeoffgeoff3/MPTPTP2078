%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n018.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:47:34 EST 2020

% Result     : Theorem 0.18s
% Output     : CNFRefutation 0.18s
% Verified   : 
% Statistics : Number of formulae       :   20 (  34 expanded)
%              Number of clauses        :   11 (  15 expanded)
%              Number of leaves         :    4 (   8 expanded)
%              Depth                    :    6
%              Number of atoms          :   76 ( 117 expanded)
%              Number of equality atoms :   16 (  16 expanded)
%              Maximal formula depth    :   23 (   5 average)
%              Maximal clause size      :   28 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(d2_setfam_1,axiom,(
    ! [X1,X2] :
      ( r1_setfam_1(X1,X2)
    <=> ! [X3] :
          ~ ( r2_hidden(X3,X1)
            & ! [X4] :
                ~ ( r2_hidden(X4,X2)
                  & r1_tarski(X3,X4) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d2_setfam_1)).

fof(t7_xboole_1,axiom,(
    ! [X1,X2] : r1_tarski(X1,k2_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_xboole_1)).

fof(d4_setfam_1,axiom,(
    ! [X1,X2,X3] :
      ( X3 = k2_setfam_1(X1,X2)
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ? [X5,X6] :
              ( r2_hidden(X5,X1)
              & r2_hidden(X6,X2)
              & X4 = k2_xboole_0(X5,X6) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d4_setfam_1)).

fof(t29_setfam_1,conjecture,(
    ! [X1] : r1_setfam_1(X1,k2_setfam_1(X1,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t29_setfam_1)).

fof(c_0_4,plain,(
    ! [X9,X10,X11,X13,X14,X16] :
      ( ( r2_hidden(esk1_3(X9,X10,X11),X10)
        | ~ r2_hidden(X11,X9)
        | ~ r1_setfam_1(X9,X10) )
      & ( r1_tarski(X11,esk1_3(X9,X10,X11))
        | ~ r2_hidden(X11,X9)
        | ~ r1_setfam_1(X9,X10) )
      & ( r2_hidden(esk2_2(X13,X14),X13)
        | r1_setfam_1(X13,X14) )
      & ( ~ r2_hidden(X16,X14)
        | ~ r1_tarski(esk2_2(X13,X14),X16)
        | r1_setfam_1(X13,X14) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d2_setfam_1])])])])])])).

fof(c_0_5,plain,(
    ! [X7,X8] : r1_tarski(X7,k2_xboole_0(X7,X8)) ),
    inference(variable_rename,[status(thm)],[t7_xboole_1])).

fof(c_0_6,plain,(
    ! [X17,X18,X19,X20,X23,X24,X25,X26,X27,X28,X30,X31] :
      ( ( r2_hidden(esk3_4(X17,X18,X19,X20),X17)
        | ~ r2_hidden(X20,X19)
        | X19 != k2_setfam_1(X17,X18) )
      & ( r2_hidden(esk4_4(X17,X18,X19,X20),X18)
        | ~ r2_hidden(X20,X19)
        | X19 != k2_setfam_1(X17,X18) )
      & ( X20 = k2_xboole_0(esk3_4(X17,X18,X19,X20),esk4_4(X17,X18,X19,X20))
        | ~ r2_hidden(X20,X19)
        | X19 != k2_setfam_1(X17,X18) )
      & ( ~ r2_hidden(X24,X17)
        | ~ r2_hidden(X25,X18)
        | X23 != k2_xboole_0(X24,X25)
        | r2_hidden(X23,X19)
        | X19 != k2_setfam_1(X17,X18) )
      & ( ~ r2_hidden(esk5_3(X26,X27,X28),X28)
        | ~ r2_hidden(X30,X26)
        | ~ r2_hidden(X31,X27)
        | esk5_3(X26,X27,X28) != k2_xboole_0(X30,X31)
        | X28 = k2_setfam_1(X26,X27) )
      & ( r2_hidden(esk6_3(X26,X27,X28),X26)
        | r2_hidden(esk5_3(X26,X27,X28),X28)
        | X28 = k2_setfam_1(X26,X27) )
      & ( r2_hidden(esk7_3(X26,X27,X28),X27)
        | r2_hidden(esk5_3(X26,X27,X28),X28)
        | X28 = k2_setfam_1(X26,X27) )
      & ( esk5_3(X26,X27,X28) = k2_xboole_0(esk6_3(X26,X27,X28),esk7_3(X26,X27,X28))
        | r2_hidden(esk5_3(X26,X27,X28),X28)
        | X28 = k2_setfam_1(X26,X27) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d4_setfam_1])])])])])])).

fof(c_0_7,negated_conjecture,(
    ~ ! [X1] : r1_setfam_1(X1,k2_setfam_1(X1,X1)) ),
    inference(assume_negation,[status(cth)],[t29_setfam_1])).

cnf(c_0_8,plain,
    ( r1_setfam_1(X3,X2)
    | ~ r2_hidden(X1,X2)
    | ~ r1_tarski(esk2_2(X3,X2),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_4])).

cnf(c_0_9,plain,
    ( r1_tarski(X1,k2_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_10,plain,
    ( r2_hidden(X5,X6)
    | ~ r2_hidden(X1,X2)
    | ~ r2_hidden(X3,X4)
    | X5 != k2_xboole_0(X1,X3)
    | X6 != k2_setfam_1(X2,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

fof(c_0_11,negated_conjecture,(
    ~ r1_setfam_1(esk8_0,k2_setfam_1(esk8_0,esk8_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_7])])])).

cnf(c_0_12,plain,
    ( r1_setfam_1(X1,X2)
    | ~ r2_hidden(k2_xboole_0(esk2_2(X1,X2),X3),X2) ),
    inference(spm,[status(thm)],[c_0_8,c_0_9])).

cnf(c_0_13,plain,
    ( r2_hidden(k2_xboole_0(X1,X2),k2_setfam_1(X3,X4))
    | ~ r2_hidden(X2,X4)
    | ~ r2_hidden(X1,X3) ),
    inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_10])])).

cnf(c_0_14,negated_conjecture,
    ( ~ r1_setfam_1(esk8_0,k2_setfam_1(esk8_0,esk8_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_15,plain,
    ( r2_hidden(esk2_2(X1,X2),X1)
    | r1_setfam_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_4])).

cnf(c_0_16,plain,
    ( r1_setfam_1(X1,k2_setfam_1(X2,X3))
    | ~ r2_hidden(esk2_2(X1,k2_setfam_1(X2,X3)),X2)
    | ~ r2_hidden(X4,X3) ),
    inference(spm,[status(thm)],[c_0_12,c_0_13])).

cnf(c_0_17,negated_conjecture,
    ( r2_hidden(esk2_2(esk8_0,k2_setfam_1(esk8_0,esk8_0)),esk8_0) ),
    inference(spm,[status(thm)],[c_0_14,c_0_15])).

cnf(c_0_18,negated_conjecture,
    ( ~ r2_hidden(X1,esk8_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_16,c_0_17]),c_0_14])).

cnf(c_0_19,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[c_0_17,c_0_18]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.32  % Computer   : n018.cluster.edu
% 0.13/0.32  % Model      : x86_64 x86_64
% 0.13/0.32  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.32  % Memory     : 8042.1875MB
% 0.13/0.32  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.32  % CPULimit   : 60
% 0.13/0.32  % WCLimit    : 600
% 0.13/0.32  % DateTime   : Tue Dec  1 11:11:41 EST 2020
% 0.13/0.32  % CPUTime    : 
% 0.13/0.32  # Version: 2.5pre002
% 0.13/0.33  # No SInE strategy applied
% 0.13/0.33  # Trying AutoSched0 for 299 seconds
% 0.18/0.35  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S080I
% 0.18/0.35  # and selection function SelectCQIArNXTEqFirst.
% 0.18/0.35  #
% 0.18/0.35  # Preprocessing time       : 0.027 s
% 0.18/0.35  # Presaturation interreduction done
% 0.18/0.35  
% 0.18/0.35  # Proof found!
% 0.18/0.35  # SZS status Theorem
% 0.18/0.35  # SZS output start CNFRefutation
% 0.18/0.35  fof(d2_setfam_1, axiom, ![X1, X2]:(r1_setfam_1(X1,X2)<=>![X3]:~((r2_hidden(X3,X1)&![X4]:~((r2_hidden(X4,X2)&r1_tarski(X3,X4)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d2_setfam_1)).
% 0.18/0.35  fof(t7_xboole_1, axiom, ![X1, X2]:r1_tarski(X1,k2_xboole_0(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t7_xboole_1)).
% 0.18/0.35  fof(d4_setfam_1, axiom, ![X1, X2, X3]:(X3=k2_setfam_1(X1,X2)<=>![X4]:(r2_hidden(X4,X3)<=>?[X5, X6]:((r2_hidden(X5,X1)&r2_hidden(X6,X2))&X4=k2_xboole_0(X5,X6)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d4_setfam_1)).
% 0.18/0.35  fof(t29_setfam_1, conjecture, ![X1]:r1_setfam_1(X1,k2_setfam_1(X1,X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t29_setfam_1)).
% 0.18/0.35  fof(c_0_4, plain, ![X9, X10, X11, X13, X14, X16]:(((r2_hidden(esk1_3(X9,X10,X11),X10)|~r2_hidden(X11,X9)|~r1_setfam_1(X9,X10))&(r1_tarski(X11,esk1_3(X9,X10,X11))|~r2_hidden(X11,X9)|~r1_setfam_1(X9,X10)))&((r2_hidden(esk2_2(X13,X14),X13)|r1_setfam_1(X13,X14))&(~r2_hidden(X16,X14)|~r1_tarski(esk2_2(X13,X14),X16)|r1_setfam_1(X13,X14)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d2_setfam_1])])])])])])).
% 0.18/0.35  fof(c_0_5, plain, ![X7, X8]:r1_tarski(X7,k2_xboole_0(X7,X8)), inference(variable_rename,[status(thm)],[t7_xboole_1])).
% 0.18/0.35  fof(c_0_6, plain, ![X17, X18, X19, X20, X23, X24, X25, X26, X27, X28, X30, X31]:(((((r2_hidden(esk3_4(X17,X18,X19,X20),X17)|~r2_hidden(X20,X19)|X19!=k2_setfam_1(X17,X18))&(r2_hidden(esk4_4(X17,X18,X19,X20),X18)|~r2_hidden(X20,X19)|X19!=k2_setfam_1(X17,X18)))&(X20=k2_xboole_0(esk3_4(X17,X18,X19,X20),esk4_4(X17,X18,X19,X20))|~r2_hidden(X20,X19)|X19!=k2_setfam_1(X17,X18)))&(~r2_hidden(X24,X17)|~r2_hidden(X25,X18)|X23!=k2_xboole_0(X24,X25)|r2_hidden(X23,X19)|X19!=k2_setfam_1(X17,X18)))&((~r2_hidden(esk5_3(X26,X27,X28),X28)|(~r2_hidden(X30,X26)|~r2_hidden(X31,X27)|esk5_3(X26,X27,X28)!=k2_xboole_0(X30,X31))|X28=k2_setfam_1(X26,X27))&(((r2_hidden(esk6_3(X26,X27,X28),X26)|r2_hidden(esk5_3(X26,X27,X28),X28)|X28=k2_setfam_1(X26,X27))&(r2_hidden(esk7_3(X26,X27,X28),X27)|r2_hidden(esk5_3(X26,X27,X28),X28)|X28=k2_setfam_1(X26,X27)))&(esk5_3(X26,X27,X28)=k2_xboole_0(esk6_3(X26,X27,X28),esk7_3(X26,X27,X28))|r2_hidden(esk5_3(X26,X27,X28),X28)|X28=k2_setfam_1(X26,X27))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d4_setfam_1])])])])])])).
% 0.18/0.35  fof(c_0_7, negated_conjecture, ~(![X1]:r1_setfam_1(X1,k2_setfam_1(X1,X1))), inference(assume_negation,[status(cth)],[t29_setfam_1])).
% 0.18/0.35  cnf(c_0_8, plain, (r1_setfam_1(X3,X2)|~r2_hidden(X1,X2)|~r1_tarski(esk2_2(X3,X2),X1)), inference(split_conjunct,[status(thm)],[c_0_4])).
% 0.18/0.35  cnf(c_0_9, plain, (r1_tarski(X1,k2_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_5])).
% 0.18/0.35  cnf(c_0_10, plain, (r2_hidden(X5,X6)|~r2_hidden(X1,X2)|~r2_hidden(X3,X4)|X5!=k2_xboole_0(X1,X3)|X6!=k2_setfam_1(X2,X4)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.18/0.35  fof(c_0_11, negated_conjecture, ~r1_setfam_1(esk8_0,k2_setfam_1(esk8_0,esk8_0)), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_7])])])).
% 0.18/0.35  cnf(c_0_12, plain, (r1_setfam_1(X1,X2)|~r2_hidden(k2_xboole_0(esk2_2(X1,X2),X3),X2)), inference(spm,[status(thm)],[c_0_8, c_0_9])).
% 0.18/0.35  cnf(c_0_13, plain, (r2_hidden(k2_xboole_0(X1,X2),k2_setfam_1(X3,X4))|~r2_hidden(X2,X4)|~r2_hidden(X1,X3)), inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_10])])).
% 0.18/0.35  cnf(c_0_14, negated_conjecture, (~r1_setfam_1(esk8_0,k2_setfam_1(esk8_0,esk8_0))), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.18/0.35  cnf(c_0_15, plain, (r2_hidden(esk2_2(X1,X2),X1)|r1_setfam_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_4])).
% 0.18/0.35  cnf(c_0_16, plain, (r1_setfam_1(X1,k2_setfam_1(X2,X3))|~r2_hidden(esk2_2(X1,k2_setfam_1(X2,X3)),X2)|~r2_hidden(X4,X3)), inference(spm,[status(thm)],[c_0_12, c_0_13])).
% 0.18/0.35  cnf(c_0_17, negated_conjecture, (r2_hidden(esk2_2(esk8_0,k2_setfam_1(esk8_0,esk8_0)),esk8_0)), inference(spm,[status(thm)],[c_0_14, c_0_15])).
% 0.18/0.35  cnf(c_0_18, negated_conjecture, (~r2_hidden(X1,esk8_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_16, c_0_17]), c_0_14])).
% 0.18/0.35  cnf(c_0_19, negated_conjecture, ($false), inference(sr,[status(thm)],[c_0_17, c_0_18]), ['proof']).
% 0.18/0.35  # SZS output end CNFRefutation
% 0.18/0.35  # Proof object total steps             : 20
% 0.18/0.35  # Proof object clause steps            : 11
% 0.18/0.35  # Proof object formula steps           : 9
% 0.18/0.35  # Proof object conjectures             : 7
% 0.18/0.35  # Proof object clause conjectures      : 4
% 0.18/0.35  # Proof object formula conjectures     : 3
% 0.18/0.35  # Proof object initial clauses used    : 5
% 0.18/0.35  # Proof object initial formulas used   : 4
% 0.18/0.35  # Proof object generating inferences   : 4
% 0.18/0.35  # Proof object simplifying inferences  : 4
% 0.18/0.35  # Training examples: 0 positive, 0 negative
% 0.18/0.35  # Parsed axioms                        : 4
% 0.18/0.35  # Removed by relevancy pruning/SinE    : 0
% 0.18/0.35  # Initial clauses                      : 14
% 0.18/0.35  # Removed in clause preprocessing      : 0
% 0.18/0.35  # Initial clauses in saturation        : 14
% 0.18/0.35  # Processed clauses                    : 30
% 0.18/0.35  # ...of these trivial                  : 0
% 0.18/0.35  # ...subsumed                          : 0
% 0.18/0.35  # ...remaining for further processing  : 30
% 0.18/0.35  # Other redundant clauses eliminated   : 5
% 0.18/0.35  # Clauses deleted for lack of memory   : 0
% 0.18/0.35  # Backward-subsumed                    : 0
% 0.18/0.35  # Backward-rewritten                   : 0
% 0.18/0.35  # Generated clauses                    : 12
% 0.18/0.35  # ...of the previous two non-trivial   : 11
% 0.18/0.35  # Contextual simplify-reflections      : 0
% 0.18/0.35  # Paramodulations                      : 7
% 0.18/0.35  # Factorizations                       : 0
% 0.18/0.35  # Equation resolutions                 : 5
% 0.18/0.35  # Propositional unsat checks           : 0
% 0.18/0.35  #    Propositional check models        : 0
% 0.18/0.35  #    Propositional check unsatisfiable : 0
% 0.18/0.35  #    Propositional clauses             : 0
% 0.18/0.35  #    Propositional clauses after purity: 0
% 0.18/0.35  #    Propositional unsat core size     : 0
% 0.18/0.35  #    Propositional preprocessing time  : 0.000
% 0.18/0.35  #    Propositional encoding time       : 0.000
% 0.18/0.35  #    Propositional solver time         : 0.000
% 0.18/0.35  #    Success case prop preproc time    : 0.000
% 0.18/0.35  #    Success case prop encoding time   : 0.000
% 0.18/0.35  #    Success case prop solver time     : 0.000
% 0.18/0.35  # Current number of processed clauses  : 11
% 0.18/0.35  #    Positive orientable unit clauses  : 1
% 0.18/0.35  #    Positive unorientable unit clauses: 0
% 0.18/0.35  #    Negative unit clauses             : 2
% 0.18/0.35  #    Non-unit-clauses                  : 8
% 0.18/0.35  # Current number of unprocessed clauses: 9
% 0.18/0.35  # ...number of literals in the above   : 28
% 0.18/0.35  # Current number of archived formulas  : 0
% 0.18/0.35  # Current number of archived clauses   : 15
% 0.18/0.35  # Clause-clause subsumption calls (NU) : 14
% 0.18/0.35  # Rec. Clause-clause subsumption calls : 12
% 0.18/0.35  # Non-unit clause-clause subsumptions  : 0
% 0.18/0.35  # Unit Clause-clause subsumption calls : 0
% 0.18/0.35  # Rewrite failures with RHS unbound    : 0
% 0.18/0.35  # BW rewrite match attempts            : 0
% 0.18/0.35  # BW rewrite match successes           : 0
% 0.18/0.35  # Condensation attempts                : 0
% 0.18/0.35  # Condensation successes               : 0
% 0.18/0.35  # Termbank termtop insertions          : 1217
% 0.18/0.36  
% 0.18/0.36  # -------------------------------------------------
% 0.18/0.36  # User time                : 0.031 s
% 0.18/0.36  # System time              : 0.001 s
% 0.18/0.36  # Total time               : 0.032 s
% 0.18/0.36  # Maximum resident set size: 1568 pages
%------------------------------------------------------------------------------
