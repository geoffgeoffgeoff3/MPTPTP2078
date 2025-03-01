%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n024.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:56:30 EST 2020

% Result     : Theorem 0.21s
% Output     : CNFRefutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   35 (  42 expanded)
%              Number of clauses        :   20 (  20 expanded)
%              Number of leaves         :    7 (  10 expanded)
%              Depth                    :    7
%              Number of atoms          :  106 ( 131 expanded)
%              Number of equality atoms :   12 (  12 expanded)
%              Maximal formula depth    :   17 (   4 average)
%              Maximal clause size      :   20 (   2 average)
%              Maximal term depth       :    2 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t37_ordinal1,conjecture,(
    ! [X1] :
      ~ ! [X2] :
          ( r2_hidden(X2,X1)
        <=> v3_ordinal1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t37_ordinal1)).

fof(d4_tarski,axiom,(
    ! [X1,X2] :
      ( X2 = k3_tarski(X1)
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ? [X4] :
              ( r2_hidden(X3,X4)
              & r2_hidden(X4,X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d4_tarski)).

fof(t29_ordinal1,axiom,(
    ! [X1] :
      ( v3_ordinal1(X1)
     => v3_ordinal1(k1_ordinal1(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t29_ordinal1)).

fof(d3_tarski,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
    <=> ! [X3] :
          ( r2_hidden(X3,X1)
         => r2_hidden(X3,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_tarski)).

fof(t13_ordinal1,axiom,(
    ! [X1,X2] :
      ( r2_hidden(X1,k1_ordinal1(X2))
    <=> ( r2_hidden(X1,X2)
        | X1 = X2 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t13_ordinal1)).

fof(t35_ordinal1,axiom,(
    ! [X1] :
      ( ! [X2] :
          ( r2_hidden(X2,X1)
         => v3_ordinal1(X2) )
     => v3_ordinal1(k3_tarski(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t35_ordinal1)).

fof(t7_ordinal1,axiom,(
    ! [X1,X2] :
      ~ ( r2_hidden(X1,X2)
        & r1_tarski(X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_ordinal1)).

fof(c_0_7,negated_conjecture,(
    ~ ! [X1] :
        ~ ! [X2] :
            ( r2_hidden(X2,X1)
          <=> v3_ordinal1(X2) ) ),
    inference(assume_negation,[status(cth)],[t37_ordinal1])).

fof(c_0_8,plain,(
    ! [X11,X12,X13,X15,X16,X17,X18,X20] :
      ( ( r2_hidden(X13,esk2_3(X11,X12,X13))
        | ~ r2_hidden(X13,X12)
        | X12 != k3_tarski(X11) )
      & ( r2_hidden(esk2_3(X11,X12,X13),X11)
        | ~ r2_hidden(X13,X12)
        | X12 != k3_tarski(X11) )
      & ( ~ r2_hidden(X15,X16)
        | ~ r2_hidden(X16,X11)
        | r2_hidden(X15,X12)
        | X12 != k3_tarski(X11) )
      & ( ~ r2_hidden(esk3_2(X17,X18),X18)
        | ~ r2_hidden(esk3_2(X17,X18),X20)
        | ~ r2_hidden(X20,X17)
        | X18 = k3_tarski(X17) )
      & ( r2_hidden(esk3_2(X17,X18),esk4_2(X17,X18))
        | r2_hidden(esk3_2(X17,X18),X18)
        | X18 = k3_tarski(X17) )
      & ( r2_hidden(esk4_2(X17,X18),X17)
        | r2_hidden(esk3_2(X17,X18),X18)
        | X18 = k3_tarski(X17) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d4_tarski])])])])])])).

fof(c_0_9,negated_conjecture,(
    ! [X30] :
      ( ( ~ r2_hidden(X30,esk6_0)
        | v3_ordinal1(X30) )
      & ( ~ v3_ordinal1(X30)
        | r2_hidden(X30,esk6_0) ) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_7])])])).

fof(c_0_10,plain,(
    ! [X24] :
      ( ~ v3_ordinal1(X24)
      | v3_ordinal1(k1_ordinal1(X24)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t29_ordinal1])])).

fof(c_0_11,plain,(
    ! [X5,X6,X7,X8,X9] :
      ( ( ~ r1_tarski(X5,X6)
        | ~ r2_hidden(X7,X5)
        | r2_hidden(X7,X6) )
      & ( r2_hidden(esk1_2(X8,X9),X8)
        | r1_tarski(X8,X9) )
      & ( ~ r2_hidden(esk1_2(X8,X9),X9)
        | r1_tarski(X8,X9) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).

cnf(c_0_12,plain,
    ( r2_hidden(X1,X4)
    | ~ r2_hidden(X1,X2)
    | ~ r2_hidden(X2,X3)
    | X4 != k3_tarski(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_13,negated_conjecture,
    ( r2_hidden(X1,esk6_0)
    | ~ v3_ordinal1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_14,plain,
    ( v3_ordinal1(k1_ordinal1(X1))
    | ~ v3_ordinal1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

fof(c_0_15,plain,(
    ! [X22,X23] :
      ( ( ~ r2_hidden(X22,k1_ordinal1(X23))
        | r2_hidden(X22,X23)
        | X22 = X23 )
      & ( ~ r2_hidden(X22,X23)
        | r2_hidden(X22,k1_ordinal1(X23)) )
      & ( X22 != X23
        | r2_hidden(X22,k1_ordinal1(X23)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t13_ordinal1])])])).

fof(c_0_16,plain,(
    ! [X25] :
      ( ( r2_hidden(esk5_1(X25),X25)
        | v3_ordinal1(k3_tarski(X25)) )
      & ( ~ v3_ordinal1(esk5_1(X25))
        | v3_ordinal1(k3_tarski(X25)) ) ) ),
    inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t35_ordinal1])])])])).

fof(c_0_17,plain,(
    ! [X27,X28] :
      ( ~ r2_hidden(X27,X28)
      | ~ r1_tarski(X28,X27) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t7_ordinal1])])).

cnf(c_0_18,plain,
    ( r1_tarski(X1,X2)
    | ~ r2_hidden(esk1_2(X1,X2),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_19,plain,
    ( r2_hidden(esk1_2(X1,X2),X1)
    | r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_20,plain,
    ( r2_hidden(X1,k3_tarski(X2))
    | ~ r2_hidden(X3,X2)
    | ~ r2_hidden(X1,X3) ),
    inference(er,[status(thm)],[c_0_12])).

cnf(c_0_21,negated_conjecture,
    ( r2_hidden(k1_ordinal1(X1),esk6_0)
    | ~ v3_ordinal1(X1) ),
    inference(spm,[status(thm)],[c_0_13,c_0_14])).

cnf(c_0_22,plain,
    ( r2_hidden(X1,k1_ordinal1(X2))
    | X1 != X2 ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_23,plain,
    ( v3_ordinal1(k3_tarski(X1))
    | ~ v3_ordinal1(esk5_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_24,negated_conjecture,
    ( v3_ordinal1(X1)
    | ~ r2_hidden(X1,esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_25,plain,
    ( ~ r2_hidden(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_26,plain,
    ( r1_tarski(X1,X1) ),
    inference(spm,[status(thm)],[c_0_18,c_0_19])).

cnf(c_0_27,negated_conjecture,
    ( r2_hidden(X1,k3_tarski(esk6_0))
    | ~ v3_ordinal1(X2)
    | ~ r2_hidden(X1,k1_ordinal1(X2)) ),
    inference(spm,[status(thm)],[c_0_20,c_0_21])).

cnf(c_0_28,plain,
    ( r2_hidden(X1,k1_ordinal1(X1)) ),
    inference(er,[status(thm)],[c_0_22])).

cnf(c_0_29,negated_conjecture,
    ( v3_ordinal1(k3_tarski(X1))
    | ~ r2_hidden(esk5_1(X1),esk6_0) ),
    inference(spm,[status(thm)],[c_0_23,c_0_24])).

cnf(c_0_30,plain,
    ( r2_hidden(esk5_1(X1),X1)
    | v3_ordinal1(k3_tarski(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_31,plain,
    ( ~ r2_hidden(X1,X1) ),
    inference(spm,[status(thm)],[c_0_25,c_0_26])).

cnf(c_0_32,negated_conjecture,
    ( r2_hidden(X1,k3_tarski(esk6_0))
    | ~ v3_ordinal1(X1) ),
    inference(spm,[status(thm)],[c_0_27,c_0_28])).

cnf(c_0_33,negated_conjecture,
    ( v3_ordinal1(k3_tarski(esk6_0)) ),
    inference(spm,[status(thm)],[c_0_29,c_0_30])).

cnf(c_0_34,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_32]),c_0_33])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.34  % Computer   : n024.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 16:57:06 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.35  # Version: 2.5pre002
% 0.14/0.35  # No SInE strategy applied
% 0.14/0.35  # Trying AutoSched0 for 299 seconds
% 0.21/0.38  # AutoSched0-Mode selected heuristic G_E___300_C18_F1_SE_CS_SP_S0Y
% 0.21/0.38  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.21/0.38  #
% 0.21/0.38  # Preprocessing time       : 0.028 s
% 0.21/0.38  
% 0.21/0.38  # Proof found!
% 0.21/0.38  # SZS status Theorem
% 0.21/0.38  # SZS output start CNFRefutation
% 0.21/0.38  fof(t37_ordinal1, conjecture, ![X1]:~(![X2]:(r2_hidden(X2,X1)<=>v3_ordinal1(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t37_ordinal1)).
% 0.21/0.38  fof(d4_tarski, axiom, ![X1, X2]:(X2=k3_tarski(X1)<=>![X3]:(r2_hidden(X3,X2)<=>?[X4]:(r2_hidden(X3,X4)&r2_hidden(X4,X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d4_tarski)).
% 0.21/0.38  fof(t29_ordinal1, axiom, ![X1]:(v3_ordinal1(X1)=>v3_ordinal1(k1_ordinal1(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t29_ordinal1)).
% 0.21/0.38  fof(d3_tarski, axiom, ![X1, X2]:(r1_tarski(X1,X2)<=>![X3]:(r2_hidden(X3,X1)=>r2_hidden(X3,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d3_tarski)).
% 0.21/0.38  fof(t13_ordinal1, axiom, ![X1, X2]:(r2_hidden(X1,k1_ordinal1(X2))<=>(r2_hidden(X1,X2)|X1=X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t13_ordinal1)).
% 0.21/0.38  fof(t35_ordinal1, axiom, ![X1]:(![X2]:(r2_hidden(X2,X1)=>v3_ordinal1(X2))=>v3_ordinal1(k3_tarski(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t35_ordinal1)).
% 0.21/0.38  fof(t7_ordinal1, axiom, ![X1, X2]:~((r2_hidden(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t7_ordinal1)).
% 0.21/0.38  fof(c_0_7, negated_conjecture, ~(![X1]:~(![X2]:(r2_hidden(X2,X1)<=>v3_ordinal1(X2)))), inference(assume_negation,[status(cth)],[t37_ordinal1])).
% 0.21/0.38  fof(c_0_8, plain, ![X11, X12, X13, X15, X16, X17, X18, X20]:((((r2_hidden(X13,esk2_3(X11,X12,X13))|~r2_hidden(X13,X12)|X12!=k3_tarski(X11))&(r2_hidden(esk2_3(X11,X12,X13),X11)|~r2_hidden(X13,X12)|X12!=k3_tarski(X11)))&(~r2_hidden(X15,X16)|~r2_hidden(X16,X11)|r2_hidden(X15,X12)|X12!=k3_tarski(X11)))&((~r2_hidden(esk3_2(X17,X18),X18)|(~r2_hidden(esk3_2(X17,X18),X20)|~r2_hidden(X20,X17))|X18=k3_tarski(X17))&((r2_hidden(esk3_2(X17,X18),esk4_2(X17,X18))|r2_hidden(esk3_2(X17,X18),X18)|X18=k3_tarski(X17))&(r2_hidden(esk4_2(X17,X18),X17)|r2_hidden(esk3_2(X17,X18),X18)|X18=k3_tarski(X17))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d4_tarski])])])])])])).
% 0.21/0.38  fof(c_0_9, negated_conjecture, ![X30]:((~r2_hidden(X30,esk6_0)|v3_ordinal1(X30))&(~v3_ordinal1(X30)|r2_hidden(X30,esk6_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_7])])])).
% 0.21/0.38  fof(c_0_10, plain, ![X24]:(~v3_ordinal1(X24)|v3_ordinal1(k1_ordinal1(X24))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t29_ordinal1])])).
% 0.21/0.38  fof(c_0_11, plain, ![X5, X6, X7, X8, X9]:((~r1_tarski(X5,X6)|(~r2_hidden(X7,X5)|r2_hidden(X7,X6)))&((r2_hidden(esk1_2(X8,X9),X8)|r1_tarski(X8,X9))&(~r2_hidden(esk1_2(X8,X9),X9)|r1_tarski(X8,X9)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).
% 0.21/0.38  cnf(c_0_12, plain, (r2_hidden(X1,X4)|~r2_hidden(X1,X2)|~r2_hidden(X2,X3)|X4!=k3_tarski(X3)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.21/0.38  cnf(c_0_13, negated_conjecture, (r2_hidden(X1,esk6_0)|~v3_ordinal1(X1)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.21/0.38  cnf(c_0_14, plain, (v3_ordinal1(k1_ordinal1(X1))|~v3_ordinal1(X1)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.21/0.38  fof(c_0_15, plain, ![X22, X23]:((~r2_hidden(X22,k1_ordinal1(X23))|(r2_hidden(X22,X23)|X22=X23))&((~r2_hidden(X22,X23)|r2_hidden(X22,k1_ordinal1(X23)))&(X22!=X23|r2_hidden(X22,k1_ordinal1(X23))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t13_ordinal1])])])).
% 0.21/0.38  fof(c_0_16, plain, ![X25]:((r2_hidden(esk5_1(X25),X25)|v3_ordinal1(k3_tarski(X25)))&(~v3_ordinal1(esk5_1(X25))|v3_ordinal1(k3_tarski(X25)))), inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t35_ordinal1])])])])).
% 0.21/0.38  fof(c_0_17, plain, ![X27, X28]:(~r2_hidden(X27,X28)|~r1_tarski(X28,X27)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t7_ordinal1])])).
% 0.21/0.38  cnf(c_0_18, plain, (r1_tarski(X1,X2)|~r2_hidden(esk1_2(X1,X2),X2)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.21/0.38  cnf(c_0_19, plain, (r2_hidden(esk1_2(X1,X2),X1)|r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.21/0.38  cnf(c_0_20, plain, (r2_hidden(X1,k3_tarski(X2))|~r2_hidden(X3,X2)|~r2_hidden(X1,X3)), inference(er,[status(thm)],[c_0_12])).
% 0.21/0.38  cnf(c_0_21, negated_conjecture, (r2_hidden(k1_ordinal1(X1),esk6_0)|~v3_ordinal1(X1)), inference(spm,[status(thm)],[c_0_13, c_0_14])).
% 0.21/0.38  cnf(c_0_22, plain, (r2_hidden(X1,k1_ordinal1(X2))|X1!=X2), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.21/0.38  cnf(c_0_23, plain, (v3_ordinal1(k3_tarski(X1))|~v3_ordinal1(esk5_1(X1))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.21/0.38  cnf(c_0_24, negated_conjecture, (v3_ordinal1(X1)|~r2_hidden(X1,esk6_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.21/0.38  cnf(c_0_25, plain, (~r2_hidden(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.21/0.38  cnf(c_0_26, plain, (r1_tarski(X1,X1)), inference(spm,[status(thm)],[c_0_18, c_0_19])).
% 0.21/0.38  cnf(c_0_27, negated_conjecture, (r2_hidden(X1,k3_tarski(esk6_0))|~v3_ordinal1(X2)|~r2_hidden(X1,k1_ordinal1(X2))), inference(spm,[status(thm)],[c_0_20, c_0_21])).
% 0.21/0.38  cnf(c_0_28, plain, (r2_hidden(X1,k1_ordinal1(X1))), inference(er,[status(thm)],[c_0_22])).
% 0.21/0.38  cnf(c_0_29, negated_conjecture, (v3_ordinal1(k3_tarski(X1))|~r2_hidden(esk5_1(X1),esk6_0)), inference(spm,[status(thm)],[c_0_23, c_0_24])).
% 0.21/0.38  cnf(c_0_30, plain, (r2_hidden(esk5_1(X1),X1)|v3_ordinal1(k3_tarski(X1))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.21/0.38  cnf(c_0_31, plain, (~r2_hidden(X1,X1)), inference(spm,[status(thm)],[c_0_25, c_0_26])).
% 0.21/0.38  cnf(c_0_32, negated_conjecture, (r2_hidden(X1,k3_tarski(esk6_0))|~v3_ordinal1(X1)), inference(spm,[status(thm)],[c_0_27, c_0_28])).
% 0.21/0.38  cnf(c_0_33, negated_conjecture, (v3_ordinal1(k3_tarski(esk6_0))), inference(spm,[status(thm)],[c_0_29, c_0_30])).
% 0.21/0.38  cnf(c_0_34, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_32]), c_0_33])]), ['proof']).
% 0.21/0.38  # SZS output end CNFRefutation
% 0.21/0.38  # Proof object total steps             : 35
% 0.21/0.38  # Proof object clause steps            : 20
% 0.21/0.38  # Proof object formula steps           : 15
% 0.21/0.38  # Proof object conjectures             : 11
% 0.21/0.38  # Proof object clause conjectures      : 8
% 0.21/0.38  # Proof object formula conjectures     : 3
% 0.21/0.38  # Proof object initial clauses used    : 10
% 0.21/0.38  # Proof object initial formulas used   : 7
% 0.21/0.38  # Proof object generating inferences   : 8
% 0.21/0.38  # Proof object simplifying inferences  : 4
% 0.21/0.38  # Training examples: 0 positive, 0 negative
% 0.21/0.38  # Parsed axioms                        : 7
% 0.21/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.21/0.38  # Initial clauses                      : 18
% 0.21/0.38  # Removed in clause preprocessing      : 0
% 0.21/0.38  # Initial clauses in saturation        : 18
% 0.21/0.38  # Processed clauses                    : 65
% 0.21/0.38  # ...of these trivial                  : 0
% 0.21/0.38  # ...subsumed                          : 16
% 0.21/0.38  # ...remaining for further processing  : 49
% 0.21/0.38  # Other redundant clauses eliminated   : 3
% 0.21/0.38  # Clauses deleted for lack of memory   : 0
% 0.21/0.38  # Backward-subsumed                    : 0
% 0.21/0.38  # Backward-rewritten                   : 0
% 0.21/0.38  # Generated clauses                    : 123
% 0.21/0.38  # ...of the previous two non-trivial   : 116
% 0.21/0.38  # Contextual simplify-reflections      : 0
% 0.21/0.38  # Paramodulations                      : 119
% 0.21/0.38  # Factorizations                       : 0
% 0.21/0.38  # Equation resolutions                 : 3
% 0.21/0.38  # Propositional unsat checks           : 0
% 0.21/0.38  #    Propositional check models        : 0
% 0.21/0.38  #    Propositional check unsatisfiable : 0
% 0.21/0.38  #    Propositional clauses             : 0
% 0.21/0.38  #    Propositional clauses after purity: 0
% 0.21/0.38  #    Propositional unsat core size     : 0
% 0.21/0.38  #    Propositional preprocessing time  : 0.000
% 0.21/0.38  #    Propositional encoding time       : 0.000
% 0.21/0.38  #    Propositional solver time         : 0.000
% 0.21/0.38  #    Success case prop preproc time    : 0.000
% 0.21/0.38  #    Success case prop encoding time   : 0.000
% 0.21/0.38  #    Success case prop solver time     : 0.000
% 0.21/0.38  # Current number of processed clauses  : 45
% 0.21/0.38  #    Positive orientable unit clauses  : 5
% 0.21/0.38  #    Positive unorientable unit clauses: 0
% 0.21/0.38  #    Negative unit clauses             : 17
% 0.21/0.38  #    Non-unit-clauses                  : 23
% 0.21/0.38  # Current number of unprocessed clauses: 56
% 0.21/0.38  # ...number of literals in the above   : 159
% 0.21/0.38  # Current number of archived formulas  : 0
% 0.21/0.38  # Current number of archived clauses   : 1
% 0.21/0.38  # Clause-clause subsumption calls (NU) : 59
% 0.21/0.38  # Rec. Clause-clause subsumption calls : 56
% 0.21/0.38  # Non-unit clause-clause subsumptions  : 0
% 0.21/0.38  # Unit Clause-clause subsumption calls : 102
% 0.21/0.38  # Rewrite failures with RHS unbound    : 0
% 0.21/0.38  # BW rewrite match attempts            : 3
% 0.21/0.38  # BW rewrite match successes           : 0
% 0.21/0.38  # Condensation attempts                : 0
% 0.21/0.38  # Condensation successes               : 0
% 0.21/0.38  # Termbank termtop insertions          : 2412
% 0.21/0.38  
% 0.21/0.38  # -------------------------------------------------
% 0.21/0.38  # User time                : 0.030 s
% 0.21/0.38  # System time              : 0.004 s
% 0.21/0.38  # Total time               : 0.035 s
% 0.21/0.38  # Maximum resident set size: 1568 pages
%------------------------------------------------------------------------------
