%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n021.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:47:34 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   32 (  60 expanded)
%              Number of clauses        :   21 (  29 expanded)
%              Number of leaves         :    5 (  14 expanded)
%              Depth                    :    8
%              Number of atoms          :  126 ( 257 expanded)
%              Number of equality atoms :   28 (  45 expanded)
%              Maximal formula depth    :   23 (   5 average)
%              Maximal clause size      :   28 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t29_setfam_1,conjecture,(
    ! [X1] : r1_setfam_1(X1,k2_setfam_1(X1,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t29_setfam_1)).

fof(d3_xboole_0,axiom,(
    ! [X1,X2,X3] :
      ( X3 = k2_xboole_0(X1,X2)
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ( r2_hidden(X4,X1)
            | r2_hidden(X4,X2) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_xboole_0)).

fof(d2_setfam_1,axiom,(
    ! [X1,X2] :
      ( r1_setfam_1(X1,X2)
    <=> ! [X3] :
          ~ ( r2_hidden(X3,X1)
            & ! [X4] :
                ~ ( r2_hidden(X4,X2)
                  & r1_tarski(X3,X4) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d2_setfam_1)).

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

fof(reflexivity_r1_setfam_1,axiom,(
    ! [X1,X2] : r1_setfam_1(X1,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',reflexivity_r1_setfam_1)).

fof(c_0_5,negated_conjecture,(
    ~ ! [X1] : r1_setfam_1(X1,k2_setfam_1(X1,X1)) ),
    inference(assume_negation,[status(cth)],[t29_setfam_1])).

fof(c_0_6,plain,(
    ! [X7,X8,X9,X10,X11,X12,X13,X14] :
      ( ( ~ r2_hidden(X10,X9)
        | r2_hidden(X10,X7)
        | r2_hidden(X10,X8)
        | X9 != k2_xboole_0(X7,X8) )
      & ( ~ r2_hidden(X11,X7)
        | r2_hidden(X11,X9)
        | X9 != k2_xboole_0(X7,X8) )
      & ( ~ r2_hidden(X11,X8)
        | r2_hidden(X11,X9)
        | X9 != k2_xboole_0(X7,X8) )
      & ( ~ r2_hidden(esk1_3(X12,X13,X14),X12)
        | ~ r2_hidden(esk1_3(X12,X13,X14),X14)
        | X14 = k2_xboole_0(X12,X13) )
      & ( ~ r2_hidden(esk1_3(X12,X13,X14),X13)
        | ~ r2_hidden(esk1_3(X12,X13,X14),X14)
        | X14 = k2_xboole_0(X12,X13) )
      & ( r2_hidden(esk1_3(X12,X13,X14),X14)
        | r2_hidden(esk1_3(X12,X13,X14),X12)
        | r2_hidden(esk1_3(X12,X13,X14),X13)
        | X14 = k2_xboole_0(X12,X13) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_xboole_0])])])])])])).

fof(c_0_7,plain,(
    ! [X16,X17,X18,X20,X21,X23] :
      ( ( r2_hidden(esk2_3(X16,X17,X18),X17)
        | ~ r2_hidden(X18,X16)
        | ~ r1_setfam_1(X16,X17) )
      & ( r1_tarski(X18,esk2_3(X16,X17,X18))
        | ~ r2_hidden(X18,X16)
        | ~ r1_setfam_1(X16,X17) )
      & ( r2_hidden(esk3_2(X20,X21),X20)
        | r1_setfam_1(X20,X21) )
      & ( ~ r2_hidden(X23,X21)
        | ~ r1_tarski(esk3_2(X20,X21),X23)
        | r1_setfam_1(X20,X21) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d2_setfam_1])])])])])])).

fof(c_0_8,negated_conjecture,(
    ~ r1_setfam_1(esk9_0,k2_setfam_1(esk9_0,esk9_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_5])])])).

cnf(c_0_9,plain,
    ( r2_hidden(esk1_3(X1,X2,X3),X3)
    | r2_hidden(esk1_3(X1,X2,X3),X1)
    | r2_hidden(esk1_3(X1,X2,X3),X2)
    | X3 = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_10,plain,
    ( r1_setfam_1(X3,X2)
    | ~ r2_hidden(X1,X2)
    | ~ r1_tarski(esk3_2(X3,X2),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_11,plain,
    ( r1_tarski(X1,esk2_3(X2,X3,X1))
    | ~ r2_hidden(X1,X2)
    | ~ r1_setfam_1(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_12,negated_conjecture,
    ( ~ r1_setfam_1(esk9_0,k2_setfam_1(esk9_0,esk9_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_13,plain,
    ( r2_hidden(esk3_2(X1,X2),X1)
    | r1_setfam_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

fof(c_0_14,plain,(
    ! [X24,X25,X26,X27,X30,X31,X32,X33,X34,X35,X37,X38] :
      ( ( r2_hidden(esk4_4(X24,X25,X26,X27),X24)
        | ~ r2_hidden(X27,X26)
        | X26 != k2_setfam_1(X24,X25) )
      & ( r2_hidden(esk5_4(X24,X25,X26,X27),X25)
        | ~ r2_hidden(X27,X26)
        | X26 != k2_setfam_1(X24,X25) )
      & ( X27 = k2_xboole_0(esk4_4(X24,X25,X26,X27),esk5_4(X24,X25,X26,X27))
        | ~ r2_hidden(X27,X26)
        | X26 != k2_setfam_1(X24,X25) )
      & ( ~ r2_hidden(X31,X24)
        | ~ r2_hidden(X32,X25)
        | X30 != k2_xboole_0(X31,X32)
        | r2_hidden(X30,X26)
        | X26 != k2_setfam_1(X24,X25) )
      & ( ~ r2_hidden(esk6_3(X33,X34,X35),X35)
        | ~ r2_hidden(X37,X33)
        | ~ r2_hidden(X38,X34)
        | esk6_3(X33,X34,X35) != k2_xboole_0(X37,X38)
        | X35 = k2_setfam_1(X33,X34) )
      & ( r2_hidden(esk7_3(X33,X34,X35),X33)
        | r2_hidden(esk6_3(X33,X34,X35),X35)
        | X35 = k2_setfam_1(X33,X34) )
      & ( r2_hidden(esk8_3(X33,X34,X35),X34)
        | r2_hidden(esk6_3(X33,X34,X35),X35)
        | X35 = k2_setfam_1(X33,X34) )
      & ( esk6_3(X33,X34,X35) = k2_xboole_0(esk7_3(X33,X34,X35),esk8_3(X33,X34,X35))
        | r2_hidden(esk6_3(X33,X34,X35),X35)
        | X35 = k2_setfam_1(X33,X34) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d4_setfam_1])])])])])])).

cnf(c_0_15,plain,
    ( k2_xboole_0(X1,X2) = X2
    | r2_hidden(esk1_3(X1,X2,X2),X1)
    | r2_hidden(esk1_3(X1,X2,X2),X2) ),
    inference(ef,[status(thm)],[c_0_9])).

cnf(c_0_16,plain,
    ( r1_setfam_1(X1,X2)
    | ~ r1_setfam_1(X3,X4)
    | ~ r2_hidden(esk2_3(X3,X4,esk3_2(X1,X2)),X2)
    | ~ r2_hidden(esk3_2(X1,X2),X3) ),
    inference(spm,[status(thm)],[c_0_10,c_0_11])).

cnf(c_0_17,negated_conjecture,
    ( r2_hidden(esk3_2(esk9_0,k2_setfam_1(esk9_0,esk9_0)),esk9_0) ),
    inference(spm,[status(thm)],[c_0_12,c_0_13])).

fof(c_0_18,plain,(
    ! [X41] : r1_setfam_1(X41,X41) ),
    inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[reflexivity_r1_setfam_1])])).

cnf(c_0_19,plain,
    ( r2_hidden(X5,X6)
    | ~ r2_hidden(X1,X2)
    | ~ r2_hidden(X3,X4)
    | X5 != k2_xboole_0(X1,X3)
    | X6 != k2_setfam_1(X2,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_20,plain,
    ( X3 = k2_xboole_0(X1,X2)
    | ~ r2_hidden(esk1_3(X1,X2,X3),X2)
    | ~ r2_hidden(esk1_3(X1,X2,X3),X3) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_21,plain,
    ( k2_xboole_0(X1,X1) = X1
    | r2_hidden(esk1_3(X1,X1,X1),X1) ),
    inference(ef,[status(thm)],[c_0_15])).

cnf(c_0_22,negated_conjecture,
    ( ~ r1_setfam_1(esk9_0,X1)
    | ~ r2_hidden(esk2_3(esk9_0,X1,esk3_2(esk9_0,k2_setfam_1(esk9_0,esk9_0))),k2_setfam_1(esk9_0,esk9_0)) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_16,c_0_17]),c_0_12])).

cnf(c_0_23,plain,
    ( r1_setfam_1(X1,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_24,plain,
    ( r2_hidden(k2_xboole_0(X1,X2),k2_setfam_1(X3,X4))
    | ~ r2_hidden(X2,X4)
    | ~ r2_hidden(X1,X3) ),
    inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_19])])).

cnf(c_0_25,plain,
    ( k2_xboole_0(X1,X1) = X1 ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_20,c_0_21]),c_0_21])).

cnf(c_0_26,negated_conjecture,
    ( ~ r2_hidden(esk2_3(esk9_0,esk9_0,esk3_2(esk9_0,k2_setfam_1(esk9_0,esk9_0))),k2_setfam_1(esk9_0,esk9_0)) ),
    inference(spm,[status(thm)],[c_0_22,c_0_23])).

cnf(c_0_27,plain,
    ( r2_hidden(X1,k2_setfam_1(X2,X3))
    | ~ r2_hidden(X1,X3)
    | ~ r2_hidden(X1,X2) ),
    inference(spm,[status(thm)],[c_0_24,c_0_25])).

cnf(c_0_28,plain,
    ( r2_hidden(esk2_3(X1,X2,X3),X2)
    | ~ r2_hidden(X3,X1)
    | ~ r1_setfam_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_29,negated_conjecture,
    ( ~ r2_hidden(esk2_3(esk9_0,esk9_0,esk3_2(esk9_0,k2_setfam_1(esk9_0,esk9_0))),esk9_0) ),
    inference(spm,[status(thm)],[c_0_26,c_0_27])).

cnf(c_0_30,plain,
    ( r2_hidden(esk2_3(X1,X1,X2),X1)
    | ~ r2_hidden(X2,X1) ),
    inference(spm,[status(thm)],[c_0_28,c_0_23])).

cnf(c_0_31,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29,c_0_30]),c_0_17])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.34  % Computer   : n021.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 16:49:19 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.19/0.38  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S080I
% 0.19/0.38  # and selection function SelectCQIArNXTEqFirst.
% 0.19/0.38  #
% 0.19/0.38  # Preprocessing time       : 0.028 s
% 0.19/0.38  # Presaturation interreduction done
% 0.19/0.38  
% 0.19/0.38  # Proof found!
% 0.19/0.38  # SZS status Theorem
% 0.19/0.38  # SZS output start CNFRefutation
% 0.19/0.38  fof(t29_setfam_1, conjecture, ![X1]:r1_setfam_1(X1,k2_setfam_1(X1,X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t29_setfam_1)).
% 0.19/0.38  fof(d3_xboole_0, axiom, ![X1, X2, X3]:(X3=k2_xboole_0(X1,X2)<=>![X4]:(r2_hidden(X4,X3)<=>(r2_hidden(X4,X1)|r2_hidden(X4,X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d3_xboole_0)).
% 0.19/0.38  fof(d2_setfam_1, axiom, ![X1, X2]:(r1_setfam_1(X1,X2)<=>![X3]:~((r2_hidden(X3,X1)&![X4]:~((r2_hidden(X4,X2)&r1_tarski(X3,X4)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d2_setfam_1)).
% 0.19/0.38  fof(d4_setfam_1, axiom, ![X1, X2, X3]:(X3=k2_setfam_1(X1,X2)<=>![X4]:(r2_hidden(X4,X3)<=>?[X5, X6]:((r2_hidden(X5,X1)&r2_hidden(X6,X2))&X4=k2_xboole_0(X5,X6)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d4_setfam_1)).
% 0.19/0.38  fof(reflexivity_r1_setfam_1, axiom, ![X1, X2]:r1_setfam_1(X1,X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', reflexivity_r1_setfam_1)).
% 0.19/0.38  fof(c_0_5, negated_conjecture, ~(![X1]:r1_setfam_1(X1,k2_setfam_1(X1,X1))), inference(assume_negation,[status(cth)],[t29_setfam_1])).
% 0.19/0.38  fof(c_0_6, plain, ![X7, X8, X9, X10, X11, X12, X13, X14]:(((~r2_hidden(X10,X9)|(r2_hidden(X10,X7)|r2_hidden(X10,X8))|X9!=k2_xboole_0(X7,X8))&((~r2_hidden(X11,X7)|r2_hidden(X11,X9)|X9!=k2_xboole_0(X7,X8))&(~r2_hidden(X11,X8)|r2_hidden(X11,X9)|X9!=k2_xboole_0(X7,X8))))&(((~r2_hidden(esk1_3(X12,X13,X14),X12)|~r2_hidden(esk1_3(X12,X13,X14),X14)|X14=k2_xboole_0(X12,X13))&(~r2_hidden(esk1_3(X12,X13,X14),X13)|~r2_hidden(esk1_3(X12,X13,X14),X14)|X14=k2_xboole_0(X12,X13)))&(r2_hidden(esk1_3(X12,X13,X14),X14)|(r2_hidden(esk1_3(X12,X13,X14),X12)|r2_hidden(esk1_3(X12,X13,X14),X13))|X14=k2_xboole_0(X12,X13)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_xboole_0])])])])])])).
% 0.19/0.38  fof(c_0_7, plain, ![X16, X17, X18, X20, X21, X23]:(((r2_hidden(esk2_3(X16,X17,X18),X17)|~r2_hidden(X18,X16)|~r1_setfam_1(X16,X17))&(r1_tarski(X18,esk2_3(X16,X17,X18))|~r2_hidden(X18,X16)|~r1_setfam_1(X16,X17)))&((r2_hidden(esk3_2(X20,X21),X20)|r1_setfam_1(X20,X21))&(~r2_hidden(X23,X21)|~r1_tarski(esk3_2(X20,X21),X23)|r1_setfam_1(X20,X21)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d2_setfam_1])])])])])])).
% 0.19/0.38  fof(c_0_8, negated_conjecture, ~r1_setfam_1(esk9_0,k2_setfam_1(esk9_0,esk9_0)), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_5])])])).
% 0.19/0.38  cnf(c_0_9, plain, (r2_hidden(esk1_3(X1,X2,X3),X3)|r2_hidden(esk1_3(X1,X2,X3),X1)|r2_hidden(esk1_3(X1,X2,X3),X2)|X3=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.19/0.38  cnf(c_0_10, plain, (r1_setfam_1(X3,X2)|~r2_hidden(X1,X2)|~r1_tarski(esk3_2(X3,X2),X1)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.19/0.38  cnf(c_0_11, plain, (r1_tarski(X1,esk2_3(X2,X3,X1))|~r2_hidden(X1,X2)|~r1_setfam_1(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.19/0.38  cnf(c_0_12, negated_conjecture, (~r1_setfam_1(esk9_0,k2_setfam_1(esk9_0,esk9_0))), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.19/0.38  cnf(c_0_13, plain, (r2_hidden(esk3_2(X1,X2),X1)|r1_setfam_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.19/0.38  fof(c_0_14, plain, ![X24, X25, X26, X27, X30, X31, X32, X33, X34, X35, X37, X38]:(((((r2_hidden(esk4_4(X24,X25,X26,X27),X24)|~r2_hidden(X27,X26)|X26!=k2_setfam_1(X24,X25))&(r2_hidden(esk5_4(X24,X25,X26,X27),X25)|~r2_hidden(X27,X26)|X26!=k2_setfam_1(X24,X25)))&(X27=k2_xboole_0(esk4_4(X24,X25,X26,X27),esk5_4(X24,X25,X26,X27))|~r2_hidden(X27,X26)|X26!=k2_setfam_1(X24,X25)))&(~r2_hidden(X31,X24)|~r2_hidden(X32,X25)|X30!=k2_xboole_0(X31,X32)|r2_hidden(X30,X26)|X26!=k2_setfam_1(X24,X25)))&((~r2_hidden(esk6_3(X33,X34,X35),X35)|(~r2_hidden(X37,X33)|~r2_hidden(X38,X34)|esk6_3(X33,X34,X35)!=k2_xboole_0(X37,X38))|X35=k2_setfam_1(X33,X34))&(((r2_hidden(esk7_3(X33,X34,X35),X33)|r2_hidden(esk6_3(X33,X34,X35),X35)|X35=k2_setfam_1(X33,X34))&(r2_hidden(esk8_3(X33,X34,X35),X34)|r2_hidden(esk6_3(X33,X34,X35),X35)|X35=k2_setfam_1(X33,X34)))&(esk6_3(X33,X34,X35)=k2_xboole_0(esk7_3(X33,X34,X35),esk8_3(X33,X34,X35))|r2_hidden(esk6_3(X33,X34,X35),X35)|X35=k2_setfam_1(X33,X34))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d4_setfam_1])])])])])])).
% 0.19/0.38  cnf(c_0_15, plain, (k2_xboole_0(X1,X2)=X2|r2_hidden(esk1_3(X1,X2,X2),X1)|r2_hidden(esk1_3(X1,X2,X2),X2)), inference(ef,[status(thm)],[c_0_9])).
% 0.19/0.38  cnf(c_0_16, plain, (r1_setfam_1(X1,X2)|~r1_setfam_1(X3,X4)|~r2_hidden(esk2_3(X3,X4,esk3_2(X1,X2)),X2)|~r2_hidden(esk3_2(X1,X2),X3)), inference(spm,[status(thm)],[c_0_10, c_0_11])).
% 0.19/0.38  cnf(c_0_17, negated_conjecture, (r2_hidden(esk3_2(esk9_0,k2_setfam_1(esk9_0,esk9_0)),esk9_0)), inference(spm,[status(thm)],[c_0_12, c_0_13])).
% 0.19/0.38  fof(c_0_18, plain, ![X41]:r1_setfam_1(X41,X41), inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[reflexivity_r1_setfam_1])])).
% 0.19/0.38  cnf(c_0_19, plain, (r2_hidden(X5,X6)|~r2_hidden(X1,X2)|~r2_hidden(X3,X4)|X5!=k2_xboole_0(X1,X3)|X6!=k2_setfam_1(X2,X4)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.19/0.38  cnf(c_0_20, plain, (X3=k2_xboole_0(X1,X2)|~r2_hidden(esk1_3(X1,X2,X3),X2)|~r2_hidden(esk1_3(X1,X2,X3),X3)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.19/0.38  cnf(c_0_21, plain, (k2_xboole_0(X1,X1)=X1|r2_hidden(esk1_3(X1,X1,X1),X1)), inference(ef,[status(thm)],[c_0_15])).
% 0.19/0.38  cnf(c_0_22, negated_conjecture, (~r1_setfam_1(esk9_0,X1)|~r2_hidden(esk2_3(esk9_0,X1,esk3_2(esk9_0,k2_setfam_1(esk9_0,esk9_0))),k2_setfam_1(esk9_0,esk9_0))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_16, c_0_17]), c_0_12])).
% 0.19/0.38  cnf(c_0_23, plain, (r1_setfam_1(X1,X1)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.19/0.38  cnf(c_0_24, plain, (r2_hidden(k2_xboole_0(X1,X2),k2_setfam_1(X3,X4))|~r2_hidden(X2,X4)|~r2_hidden(X1,X3)), inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_19])])).
% 0.19/0.38  cnf(c_0_25, plain, (k2_xboole_0(X1,X1)=X1), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_20, c_0_21]), c_0_21])).
% 0.19/0.38  cnf(c_0_26, negated_conjecture, (~r2_hidden(esk2_3(esk9_0,esk9_0,esk3_2(esk9_0,k2_setfam_1(esk9_0,esk9_0))),k2_setfam_1(esk9_0,esk9_0))), inference(spm,[status(thm)],[c_0_22, c_0_23])).
% 0.19/0.38  cnf(c_0_27, plain, (r2_hidden(X1,k2_setfam_1(X2,X3))|~r2_hidden(X1,X3)|~r2_hidden(X1,X2)), inference(spm,[status(thm)],[c_0_24, c_0_25])).
% 0.19/0.38  cnf(c_0_28, plain, (r2_hidden(esk2_3(X1,X2,X3),X2)|~r2_hidden(X3,X1)|~r1_setfam_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.19/0.38  cnf(c_0_29, negated_conjecture, (~r2_hidden(esk2_3(esk9_0,esk9_0,esk3_2(esk9_0,k2_setfam_1(esk9_0,esk9_0))),esk9_0)), inference(spm,[status(thm)],[c_0_26, c_0_27])).
% 0.19/0.38  cnf(c_0_30, plain, (r2_hidden(esk2_3(X1,X1,X2),X1)|~r2_hidden(X2,X1)), inference(spm,[status(thm)],[c_0_28, c_0_23])).
% 0.19/0.38  cnf(c_0_31, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29, c_0_30]), c_0_17])]), ['proof']).
% 0.19/0.38  # SZS output end CNFRefutation
% 0.19/0.38  # Proof object total steps             : 32
% 0.19/0.38  # Proof object clause steps            : 21
% 0.19/0.38  # Proof object formula steps           : 11
% 0.19/0.38  # Proof object conjectures             : 9
% 0.19/0.38  # Proof object clause conjectures      : 6
% 0.19/0.38  # Proof object formula conjectures     : 3
% 0.19/0.38  # Proof object initial clauses used    : 9
% 0.19/0.38  # Proof object initial formulas used   : 5
% 0.19/0.38  # Proof object generating inferences   : 11
% 0.19/0.38  # Proof object simplifying inferences  : 6
% 0.19/0.38  # Training examples: 0 positive, 0 negative
% 0.19/0.38  # Parsed axioms                        : 5
% 0.19/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.38  # Initial clauses                      : 20
% 0.19/0.38  # Removed in clause preprocessing      : 0
% 0.19/0.38  # Initial clauses in saturation        : 20
% 0.19/0.38  # Processed clauses                    : 89
% 0.19/0.38  # ...of these trivial                  : 0
% 0.19/0.38  # ...subsumed                          : 11
% 0.19/0.38  # ...remaining for further processing  : 78
% 0.19/0.38  # Other redundant clauses eliminated   : 9
% 0.19/0.38  # Clauses deleted for lack of memory   : 0
% 0.19/0.38  # Backward-subsumed                    : 0
% 0.19/0.38  # Backward-rewritten                   : 1
% 0.19/0.38  # Generated clauses                    : 228
% 0.19/0.38  # ...of the previous two non-trivial   : 216
% 0.19/0.38  # Contextual simplify-reflections      : 1
% 0.19/0.38  # Paramodulations                      : 212
% 0.19/0.38  # Factorizations                       : 8
% 0.19/0.38  # Equation resolutions                 : 9
% 0.19/0.38  # Propositional unsat checks           : 0
% 0.19/0.38  #    Propositional check models        : 0
% 0.19/0.38  #    Propositional check unsatisfiable : 0
% 0.19/0.38  #    Propositional clauses             : 0
% 0.19/0.38  #    Propositional clauses after purity: 0
% 0.19/0.38  #    Propositional unsat core size     : 0
% 0.19/0.38  #    Propositional preprocessing time  : 0.000
% 0.19/0.38  #    Propositional encoding time       : 0.000
% 0.19/0.38  #    Propositional solver time         : 0.000
% 0.19/0.38  #    Success case prop preproc time    : 0.000
% 0.19/0.38  #    Success case prop encoding time   : 0.000
% 0.19/0.38  #    Success case prop solver time     : 0.000
% 0.19/0.38  # Current number of processed clauses  : 50
% 0.19/0.38  #    Positive orientable unit clauses  : 3
% 0.19/0.38  #    Positive unorientable unit clauses: 0
% 0.19/0.38  #    Negative unit clauses             : 9
% 0.19/0.38  #    Non-unit-clauses                  : 38
% 0.19/0.38  # Current number of unprocessed clauses: 166
% 0.19/0.38  # ...number of literals in the above   : 548
% 0.19/0.38  # Current number of archived formulas  : 0
% 0.19/0.38  # Current number of archived clauses   : 21
% 0.19/0.38  # Clause-clause subsumption calls (NU) : 213
% 0.19/0.38  # Rec. Clause-clause subsumption calls : 181
% 0.19/0.38  # Non-unit clause-clause subsumptions  : 2
% 0.19/0.38  # Unit Clause-clause subsumption calls : 28
% 0.19/0.38  # Rewrite failures with RHS unbound    : 0
% 0.19/0.38  # BW rewrite match attempts            : 17
% 0.19/0.38  # BW rewrite match successes           : 1
% 0.19/0.38  # Condensation attempts                : 0
% 0.19/0.38  # Condensation successes               : 0
% 0.19/0.38  # Termbank termtop insertions          : 5491
% 0.19/0.38  
% 0.19/0.38  # -------------------------------------------------
% 0.19/0.38  # User time                : 0.031 s
% 0.19/0.38  # System time              : 0.007 s
% 0.19/0.38  # Total time               : 0.038 s
% 0.19/0.38  # Maximum resident set size: 1564 pages
%------------------------------------------------------------------------------
