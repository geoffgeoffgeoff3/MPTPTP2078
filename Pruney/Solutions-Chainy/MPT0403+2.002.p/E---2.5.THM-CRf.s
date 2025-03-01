%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n014.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:47:34 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   25 (  43 expanded)
%              Number of clauses        :   14 (  20 expanded)
%              Number of leaves         :    5 (  10 expanded)
%              Depth                    :    7
%              Number of atoms          :   95 ( 149 expanded)
%              Number of equality atoms :   25 (  30 expanded)
%              Maximal formula depth    :   23 (   5 average)
%              Maximal clause size      :   28 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d10_xboole_0)).

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

fof(t12_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
     => k2_xboole_0(X1,X2) = X2 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t12_xboole_1)).

fof(d2_setfam_1,axiom,(
    ! [X1,X2] :
      ( r1_setfam_1(X1,X2)
    <=> ! [X3] :
          ~ ( r2_hidden(X3,X1)
            & ! [X4] :
                ~ ( r2_hidden(X4,X2)
                  & r1_tarski(X3,X4) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d2_setfam_1)).

fof(t29_setfam_1,conjecture,(
    ! [X1] : r1_setfam_1(X1,k2_setfam_1(X1,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t29_setfam_1)).

fof(c_0_5,plain,(
    ! [X7,X8] :
      ( ( r1_tarski(X7,X8)
        | X7 != X8 )
      & ( r1_tarski(X8,X7)
        | X7 != X8 )
      & ( ~ r1_tarski(X7,X8)
        | ~ r1_tarski(X8,X7)
        | X7 = X8 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

fof(c_0_6,plain,(
    ! [X19,X20,X21,X22,X25,X26,X27,X28,X29,X30,X32,X33] :
      ( ( r2_hidden(esk3_4(X19,X20,X21,X22),X19)
        | ~ r2_hidden(X22,X21)
        | X21 != k2_setfam_1(X19,X20) )
      & ( r2_hidden(esk4_4(X19,X20,X21,X22),X20)
        | ~ r2_hidden(X22,X21)
        | X21 != k2_setfam_1(X19,X20) )
      & ( X22 = k2_xboole_0(esk3_4(X19,X20,X21,X22),esk4_4(X19,X20,X21,X22))
        | ~ r2_hidden(X22,X21)
        | X21 != k2_setfam_1(X19,X20) )
      & ( ~ r2_hidden(X26,X19)
        | ~ r2_hidden(X27,X20)
        | X25 != k2_xboole_0(X26,X27)
        | r2_hidden(X25,X21)
        | X21 != k2_setfam_1(X19,X20) )
      & ( ~ r2_hidden(esk5_3(X28,X29,X30),X30)
        | ~ r2_hidden(X32,X28)
        | ~ r2_hidden(X33,X29)
        | esk5_3(X28,X29,X30) != k2_xboole_0(X32,X33)
        | X30 = k2_setfam_1(X28,X29) )
      & ( r2_hidden(esk6_3(X28,X29,X30),X28)
        | r2_hidden(esk5_3(X28,X29,X30),X30)
        | X30 = k2_setfam_1(X28,X29) )
      & ( r2_hidden(esk7_3(X28,X29,X30),X29)
        | r2_hidden(esk5_3(X28,X29,X30),X30)
        | X30 = k2_setfam_1(X28,X29) )
      & ( esk5_3(X28,X29,X30) = k2_xboole_0(esk6_3(X28,X29,X30),esk7_3(X28,X29,X30))
        | r2_hidden(esk5_3(X28,X29,X30),X30)
        | X30 = k2_setfam_1(X28,X29) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d4_setfam_1])])])])])])).

fof(c_0_7,plain,(
    ! [X9,X10] :
      ( ~ r1_tarski(X9,X10)
      | k2_xboole_0(X9,X10) = X10 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t12_xboole_1])])).

cnf(c_0_8,plain,
    ( r1_tarski(X1,X2)
    | X2 != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

fof(c_0_9,plain,(
    ! [X11,X12,X13,X15,X16,X18] :
      ( ( r2_hidden(esk1_3(X11,X12,X13),X12)
        | ~ r2_hidden(X13,X11)
        | ~ r1_setfam_1(X11,X12) )
      & ( r1_tarski(X13,esk1_3(X11,X12,X13))
        | ~ r2_hidden(X13,X11)
        | ~ r1_setfam_1(X11,X12) )
      & ( r2_hidden(esk2_2(X15,X16),X15)
        | r1_setfam_1(X15,X16) )
      & ( ~ r2_hidden(X18,X16)
        | ~ r1_tarski(esk2_2(X15,X16),X18)
        | r1_setfam_1(X15,X16) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d2_setfam_1])])])])])])).

cnf(c_0_10,plain,
    ( r2_hidden(X5,X6)
    | ~ r2_hidden(X1,X2)
    | ~ r2_hidden(X3,X4)
    | X5 != k2_xboole_0(X1,X3)
    | X6 != k2_setfam_1(X2,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_11,plain,
    ( k2_xboole_0(X1,X2) = X2
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_12,plain,
    ( r1_tarski(X1,X1) ),
    inference(er,[status(thm)],[c_0_8])).

fof(c_0_13,negated_conjecture,(
    ~ ! [X1] : r1_setfam_1(X1,k2_setfam_1(X1,X1)) ),
    inference(assume_negation,[status(cth)],[t29_setfam_1])).

cnf(c_0_14,plain,
    ( r1_setfam_1(X3,X2)
    | ~ r2_hidden(X1,X2)
    | ~ r1_tarski(esk2_2(X3,X2),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_15,plain,
    ( r2_hidden(k2_xboole_0(X1,X2),k2_setfam_1(X3,X4))
    | ~ r2_hidden(X2,X4)
    | ~ r2_hidden(X1,X3) ),
    inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_10])])).

cnf(c_0_16,plain,
    ( k2_xboole_0(X1,X1) = X1 ),
    inference(spm,[status(thm)],[c_0_11,c_0_12])).

fof(c_0_17,negated_conjecture,(
    ~ r1_setfam_1(esk8_0,k2_setfam_1(esk8_0,esk8_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_13])])])).

cnf(c_0_18,plain,
    ( r1_setfam_1(X1,X2)
    | ~ r2_hidden(esk2_2(X1,X2),X2) ),
    inference(spm,[status(thm)],[c_0_14,c_0_12])).

cnf(c_0_19,plain,
    ( r2_hidden(X1,k2_setfam_1(X2,X3))
    | ~ r2_hidden(X1,X3)
    | ~ r2_hidden(X1,X2) ),
    inference(spm,[status(thm)],[c_0_15,c_0_16])).

cnf(c_0_20,negated_conjecture,
    ( ~ r1_setfam_1(esk8_0,k2_setfam_1(esk8_0,esk8_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_21,plain,
    ( r2_hidden(esk2_2(X1,X2),X1)
    | r1_setfam_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_22,plain,
    ( r1_setfam_1(X1,k2_setfam_1(X2,X3))
    | ~ r2_hidden(esk2_2(X1,k2_setfam_1(X2,X3)),X3)
    | ~ r2_hidden(esk2_2(X1,k2_setfam_1(X2,X3)),X2) ),
    inference(spm,[status(thm)],[c_0_18,c_0_19])).

cnf(c_0_23,negated_conjecture,
    ( r2_hidden(esk2_2(esk8_0,k2_setfam_1(esk8_0,esk8_0)),esk8_0) ),
    inference(spm,[status(thm)],[c_0_20,c_0_21])).

cnf(c_0_24,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22,c_0_23]),c_0_23])]),c_0_20]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n014.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 10:37:07 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.13/0.37  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S080I
% 0.13/0.37  # and selection function SelectCQIArNXTEqFirst.
% 0.13/0.37  #
% 0.13/0.37  # Preprocessing time       : 0.028 s
% 0.13/0.37  # Presaturation interreduction done
% 0.13/0.37  
% 0.13/0.37  # Proof found!
% 0.13/0.37  # SZS status Theorem
% 0.13/0.37  # SZS output start CNFRefutation
% 0.13/0.37  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.13/0.37  fof(d4_setfam_1, axiom, ![X1, X2, X3]:(X3=k2_setfam_1(X1,X2)<=>![X4]:(r2_hidden(X4,X3)<=>?[X5, X6]:((r2_hidden(X5,X1)&r2_hidden(X6,X2))&X4=k2_xboole_0(X5,X6)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d4_setfam_1)).
% 0.13/0.37  fof(t12_xboole_1, axiom, ![X1, X2]:(r1_tarski(X1,X2)=>k2_xboole_0(X1,X2)=X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t12_xboole_1)).
% 0.13/0.37  fof(d2_setfam_1, axiom, ![X1, X2]:(r1_setfam_1(X1,X2)<=>![X3]:~((r2_hidden(X3,X1)&![X4]:~((r2_hidden(X4,X2)&r1_tarski(X3,X4)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d2_setfam_1)).
% 0.13/0.37  fof(t29_setfam_1, conjecture, ![X1]:r1_setfam_1(X1,k2_setfam_1(X1,X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t29_setfam_1)).
% 0.13/0.37  fof(c_0_5, plain, ![X7, X8]:(((r1_tarski(X7,X8)|X7!=X8)&(r1_tarski(X8,X7)|X7!=X8))&(~r1_tarski(X7,X8)|~r1_tarski(X8,X7)|X7=X8)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.13/0.37  fof(c_0_6, plain, ![X19, X20, X21, X22, X25, X26, X27, X28, X29, X30, X32, X33]:(((((r2_hidden(esk3_4(X19,X20,X21,X22),X19)|~r2_hidden(X22,X21)|X21!=k2_setfam_1(X19,X20))&(r2_hidden(esk4_4(X19,X20,X21,X22),X20)|~r2_hidden(X22,X21)|X21!=k2_setfam_1(X19,X20)))&(X22=k2_xboole_0(esk3_4(X19,X20,X21,X22),esk4_4(X19,X20,X21,X22))|~r2_hidden(X22,X21)|X21!=k2_setfam_1(X19,X20)))&(~r2_hidden(X26,X19)|~r2_hidden(X27,X20)|X25!=k2_xboole_0(X26,X27)|r2_hidden(X25,X21)|X21!=k2_setfam_1(X19,X20)))&((~r2_hidden(esk5_3(X28,X29,X30),X30)|(~r2_hidden(X32,X28)|~r2_hidden(X33,X29)|esk5_3(X28,X29,X30)!=k2_xboole_0(X32,X33))|X30=k2_setfam_1(X28,X29))&(((r2_hidden(esk6_3(X28,X29,X30),X28)|r2_hidden(esk5_3(X28,X29,X30),X30)|X30=k2_setfam_1(X28,X29))&(r2_hidden(esk7_3(X28,X29,X30),X29)|r2_hidden(esk5_3(X28,X29,X30),X30)|X30=k2_setfam_1(X28,X29)))&(esk5_3(X28,X29,X30)=k2_xboole_0(esk6_3(X28,X29,X30),esk7_3(X28,X29,X30))|r2_hidden(esk5_3(X28,X29,X30),X30)|X30=k2_setfam_1(X28,X29))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d4_setfam_1])])])])])])).
% 0.13/0.37  fof(c_0_7, plain, ![X9, X10]:(~r1_tarski(X9,X10)|k2_xboole_0(X9,X10)=X10), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t12_xboole_1])])).
% 0.13/0.37  cnf(c_0_8, plain, (r1_tarski(X1,X2)|X2!=X1), inference(split_conjunct,[status(thm)],[c_0_5])).
% 0.13/0.37  fof(c_0_9, plain, ![X11, X12, X13, X15, X16, X18]:(((r2_hidden(esk1_3(X11,X12,X13),X12)|~r2_hidden(X13,X11)|~r1_setfam_1(X11,X12))&(r1_tarski(X13,esk1_3(X11,X12,X13))|~r2_hidden(X13,X11)|~r1_setfam_1(X11,X12)))&((r2_hidden(esk2_2(X15,X16),X15)|r1_setfam_1(X15,X16))&(~r2_hidden(X18,X16)|~r1_tarski(esk2_2(X15,X16),X18)|r1_setfam_1(X15,X16)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d2_setfam_1])])])])])])).
% 0.13/0.37  cnf(c_0_10, plain, (r2_hidden(X5,X6)|~r2_hidden(X1,X2)|~r2_hidden(X3,X4)|X5!=k2_xboole_0(X1,X3)|X6!=k2_setfam_1(X2,X4)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.13/0.37  cnf(c_0_11, plain, (k2_xboole_0(X1,X2)=X2|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.13/0.37  cnf(c_0_12, plain, (r1_tarski(X1,X1)), inference(er,[status(thm)],[c_0_8])).
% 0.13/0.37  fof(c_0_13, negated_conjecture, ~(![X1]:r1_setfam_1(X1,k2_setfam_1(X1,X1))), inference(assume_negation,[status(cth)],[t29_setfam_1])).
% 0.13/0.37  cnf(c_0_14, plain, (r1_setfam_1(X3,X2)|~r2_hidden(X1,X2)|~r1_tarski(esk2_2(X3,X2),X1)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.37  cnf(c_0_15, plain, (r2_hidden(k2_xboole_0(X1,X2),k2_setfam_1(X3,X4))|~r2_hidden(X2,X4)|~r2_hidden(X1,X3)), inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_10])])).
% 0.13/0.37  cnf(c_0_16, plain, (k2_xboole_0(X1,X1)=X1), inference(spm,[status(thm)],[c_0_11, c_0_12])).
% 0.13/0.37  fof(c_0_17, negated_conjecture, ~r1_setfam_1(esk8_0,k2_setfam_1(esk8_0,esk8_0)), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_13])])])).
% 0.13/0.37  cnf(c_0_18, plain, (r1_setfam_1(X1,X2)|~r2_hidden(esk2_2(X1,X2),X2)), inference(spm,[status(thm)],[c_0_14, c_0_12])).
% 0.13/0.37  cnf(c_0_19, plain, (r2_hidden(X1,k2_setfam_1(X2,X3))|~r2_hidden(X1,X3)|~r2_hidden(X1,X2)), inference(spm,[status(thm)],[c_0_15, c_0_16])).
% 0.13/0.37  cnf(c_0_20, negated_conjecture, (~r1_setfam_1(esk8_0,k2_setfam_1(esk8_0,esk8_0))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.13/0.37  cnf(c_0_21, plain, (r2_hidden(esk2_2(X1,X2),X1)|r1_setfam_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.37  cnf(c_0_22, plain, (r1_setfam_1(X1,k2_setfam_1(X2,X3))|~r2_hidden(esk2_2(X1,k2_setfam_1(X2,X3)),X3)|~r2_hidden(esk2_2(X1,k2_setfam_1(X2,X3)),X2)), inference(spm,[status(thm)],[c_0_18, c_0_19])).
% 0.13/0.37  cnf(c_0_23, negated_conjecture, (r2_hidden(esk2_2(esk8_0,k2_setfam_1(esk8_0,esk8_0)),esk8_0)), inference(spm,[status(thm)],[c_0_20, c_0_21])).
% 0.13/0.37  cnf(c_0_24, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22, c_0_23]), c_0_23])]), c_0_20]), ['proof']).
% 0.13/0.37  # SZS output end CNFRefutation
% 0.13/0.37  # Proof object total steps             : 25
% 0.13/0.37  # Proof object clause steps            : 14
% 0.13/0.37  # Proof object formula steps           : 11
% 0.13/0.37  # Proof object conjectures             : 6
% 0.13/0.37  # Proof object clause conjectures      : 3
% 0.13/0.37  # Proof object formula conjectures     : 3
% 0.13/0.37  # Proof object initial clauses used    : 6
% 0.13/0.37  # Proof object initial formulas used   : 5
% 0.13/0.37  # Proof object generating inferences   : 6
% 0.13/0.37  # Proof object simplifying inferences  : 6
% 0.13/0.37  # Training examples: 0 positive, 0 negative
% 0.13/0.37  # Parsed axioms                        : 5
% 0.13/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.37  # Initial clauses                      : 17
% 0.13/0.37  # Removed in clause preprocessing      : 0
% 0.13/0.37  # Initial clauses in saturation        : 17
% 0.13/0.37  # Processed clauses                    : 37
% 0.13/0.37  # ...of these trivial                  : 0
% 0.13/0.37  # ...subsumed                          : 0
% 0.13/0.37  # ...remaining for further processing  : 37
% 0.13/0.37  # Other redundant clauses eliminated   : 7
% 0.13/0.37  # Clauses deleted for lack of memory   : 0
% 0.13/0.37  # Backward-subsumed                    : 0
% 0.13/0.37  # Backward-rewritten                   : 0
% 0.13/0.37  # Generated clauses                    : 17
% 0.13/0.37  # ...of the previous two non-trivial   : 15
% 0.13/0.37  # Contextual simplify-reflections      : 0
% 0.13/0.37  # Paramodulations                      : 11
% 0.13/0.37  # Factorizations                       : 0
% 0.13/0.37  # Equation resolutions                 : 7
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
% 0.13/0.37  # Current number of processed clauses  : 15
% 0.13/0.37  #    Positive orientable unit clauses  : 3
% 0.13/0.37  #    Positive unorientable unit clauses: 0
% 0.13/0.37  #    Negative unit clauses             : 1
% 0.13/0.37  #    Non-unit-clauses                  : 11
% 0.13/0.37  # Current number of unprocessed clauses: 10
% 0.13/0.37  # ...number of literals in the above   : 30
% 0.13/0.37  # Current number of archived formulas  : 0
% 0.13/0.37  # Current number of archived clauses   : 16
% 0.13/0.37  # Clause-clause subsumption calls (NU) : 23
% 0.13/0.37  # Rec. Clause-clause subsumption calls : 21
% 0.13/0.37  # Non-unit clause-clause subsumptions  : 0
% 0.13/0.37  # Unit Clause-clause subsumption calls : 1
% 0.13/0.37  # Rewrite failures with RHS unbound    : 0
% 0.13/0.37  # BW rewrite match attempts            : 1
% 0.13/0.37  # BW rewrite match successes           : 0
% 0.13/0.37  # Condensation attempts                : 0
% 0.13/0.37  # Condensation successes               : 0
% 0.13/0.37  # Termbank termtop insertions          : 1415
% 0.13/0.37  
% 0.13/0.37  # -------------------------------------------------
% 0.13/0.37  # User time                : 0.024 s
% 0.13/0.37  # System time              : 0.009 s
% 0.13/0.37  # Total time               : 0.033 s
% 0.13/0.37  # Maximum resident set size: 1568 pages
%------------------------------------------------------------------------------
