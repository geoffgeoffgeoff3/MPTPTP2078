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
% DateTime   : Thu Dec  3 10:47:32 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   41 (  63 expanded)
%              Number of clauses        :   22 (  26 expanded)
%              Number of leaves         :    9 (  17 expanded)
%              Depth                    :    9
%              Number of atoms          :   96 ( 146 expanded)
%              Number of equality atoms :   24 (  36 expanded)
%              Maximal formula depth    :   17 (   4 average)
%              Maximal clause size      :   20 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(d4_tarski,axiom,(
    ! [X1,X2] :
      ( X2 = k3_tarski(X1)
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ? [X4] :
              ( r2_hidden(X3,X4)
              & r2_hidden(X4,X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d4_tarski)).

fof(t24_setfam_1,conjecture,(
    ! [X1,X2] :
      ( r1_setfam_1(X2,k1_tarski(X1))
     => ! [X3] :
          ( r2_hidden(X3,X2)
         => r1_tarski(X3,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t24_setfam_1)).

fof(d3_tarski,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
    <=> ! [X3] :
          ( r2_hidden(X3,X1)
         => r2_hidden(X3,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_tarski)).

fof(t18_setfam_1,axiom,(
    ! [X1,X2] :
      ( r1_setfam_1(X1,X2)
     => r1_tarski(k3_tarski(X1),k3_tarski(X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t18_setfam_1)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_enumset1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_enumset1)).

fof(t72_enumset1,axiom,(
    ! [X1,X2,X3,X4] : k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t72_enumset1)).

fof(t31_zfmisc_1,axiom,(
    ! [X1] : k3_tarski(k1_tarski(X1)) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t31_zfmisc_1)).

fof(c_0_9,plain,(
    ! [X21,X22,X23,X25,X26,X27,X28,X30] :
      ( ( r2_hidden(X23,esk2_3(X21,X22,X23))
        | ~ r2_hidden(X23,X22)
        | X22 != k3_tarski(X21) )
      & ( r2_hidden(esk2_3(X21,X22,X23),X21)
        | ~ r2_hidden(X23,X22)
        | X22 != k3_tarski(X21) )
      & ( ~ r2_hidden(X25,X26)
        | ~ r2_hidden(X26,X21)
        | r2_hidden(X25,X22)
        | X22 != k3_tarski(X21) )
      & ( ~ r2_hidden(esk3_2(X27,X28),X28)
        | ~ r2_hidden(esk3_2(X27,X28),X30)
        | ~ r2_hidden(X30,X27)
        | X28 = k3_tarski(X27) )
      & ( r2_hidden(esk3_2(X27,X28),esk4_2(X27,X28))
        | r2_hidden(esk3_2(X27,X28),X28)
        | X28 = k3_tarski(X27) )
      & ( r2_hidden(esk4_2(X27,X28),X27)
        | r2_hidden(esk3_2(X27,X28),X28)
        | X28 = k3_tarski(X27) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d4_tarski])])])])])])).

fof(c_0_10,negated_conjecture,(
    ~ ! [X1,X2] :
        ( r1_setfam_1(X2,k1_tarski(X1))
       => ! [X3] :
            ( r2_hidden(X3,X2)
           => r1_tarski(X3,X1) ) ) ),
    inference(assume_negation,[status(cth)],[t24_setfam_1])).

cnf(c_0_11,plain,
    ( r2_hidden(X1,X4)
    | ~ r2_hidden(X1,X2)
    | ~ r2_hidden(X2,X3)
    | X4 != k3_tarski(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

fof(c_0_12,negated_conjecture,
    ( r1_setfam_1(esk6_0,k1_tarski(esk5_0))
    & r2_hidden(esk7_0,esk6_0)
    & ~ r1_tarski(esk7_0,esk5_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_10])])])).

fof(c_0_13,plain,(
    ! [X5,X6,X7,X8,X9] :
      ( ( ~ r1_tarski(X5,X6)
        | ~ r2_hidden(X7,X5)
        | r2_hidden(X7,X6) )
      & ( r2_hidden(esk1_2(X8,X9),X8)
        | r1_tarski(X8,X9) )
      & ( ~ r2_hidden(esk1_2(X8,X9),X9)
        | r1_tarski(X8,X9) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).

cnf(c_0_14,plain,
    ( r2_hidden(X1,k3_tarski(X2))
    | ~ r2_hidden(X3,X2)
    | ~ r2_hidden(X1,X3) ),
    inference(er,[status(thm)],[c_0_11])).

cnf(c_0_15,negated_conjecture,
    ( r2_hidden(esk7_0,esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_16,plain,
    ( r2_hidden(X3,X2)
    | ~ r1_tarski(X1,X2)
    | ~ r2_hidden(X3,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_17,negated_conjecture,
    ( r2_hidden(X1,k3_tarski(esk6_0))
    | ~ r2_hidden(X1,esk7_0) ),
    inference(spm,[status(thm)],[c_0_14,c_0_15])).

fof(c_0_18,plain,(
    ! [X33,X34] :
      ( ~ r1_setfam_1(X33,X34)
      | r1_tarski(k3_tarski(X33),k3_tarski(X34)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t18_setfam_1])])).

fof(c_0_19,plain,(
    ! [X11] : k2_tarski(X11,X11) = k1_tarski(X11) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_20,plain,(
    ! [X12,X13] : k1_enumset1(X12,X12,X13) = k2_tarski(X12,X13) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_21,plain,(
    ! [X14,X15,X16] : k2_enumset1(X14,X14,X15,X16) = k1_enumset1(X14,X15,X16) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_22,plain,(
    ! [X17,X18,X19,X20] : k3_enumset1(X17,X17,X18,X19,X20) = k2_enumset1(X17,X18,X19,X20) ),
    inference(variable_rename,[status(thm)],[t72_enumset1])).

fof(c_0_23,plain,(
    ! [X32] : k3_tarski(k1_tarski(X32)) = X32 ),
    inference(variable_rename,[status(thm)],[t31_zfmisc_1])).

cnf(c_0_24,negated_conjecture,
    ( r2_hidden(X1,X2)
    | ~ r2_hidden(X1,esk7_0)
    | ~ r1_tarski(k3_tarski(esk6_0),X2) ),
    inference(spm,[status(thm)],[c_0_16,c_0_17])).

cnf(c_0_25,plain,
    ( r1_tarski(k3_tarski(X1),k3_tarski(X2))
    | ~ r1_setfam_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_26,negated_conjecture,
    ( r1_setfam_1(esk6_0,k1_tarski(esk5_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_27,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_28,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_29,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_30,plain,
    ( k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_31,plain,
    ( k3_tarski(k1_tarski(X1)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_32,negated_conjecture,
    ( r2_hidden(X1,k3_tarski(X2))
    | ~ r1_setfam_1(esk6_0,X2)
    | ~ r2_hidden(X1,esk7_0) ),
    inference(spm,[status(thm)],[c_0_24,c_0_25])).

cnf(c_0_33,negated_conjecture,
    ( r1_setfam_1(esk6_0,k3_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_26,c_0_27]),c_0_28]),c_0_29]),c_0_30])).

cnf(c_0_34,plain,
    ( k3_tarski(k3_enumset1(X1,X1,X1,X1,X1)) = X1 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_31,c_0_27]),c_0_28]),c_0_29]),c_0_30])).

cnf(c_0_35,plain,
    ( r1_tarski(X1,X2)
    | ~ r2_hidden(esk1_2(X1,X2),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_36,negated_conjecture,
    ( r2_hidden(X1,esk5_0)
    | ~ r2_hidden(X1,esk7_0) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32,c_0_33]),c_0_34])).

cnf(c_0_37,negated_conjecture,
    ( r1_tarski(X1,esk5_0)
    | ~ r2_hidden(esk1_2(X1,esk5_0),esk7_0) ),
    inference(spm,[status(thm)],[c_0_35,c_0_36])).

cnf(c_0_38,plain,
    ( r2_hidden(esk1_2(X1,X2),X1)
    | r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_39,negated_conjecture,
    ( ~ r1_tarski(esk7_0,esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_40,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_38]),c_0_39]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n019.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 15:02:52 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.13/0.37  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.13/0.37  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.13/0.37  #
% 0.13/0.37  # Preprocessing time       : 0.028 s
% 0.13/0.37  # Presaturation interreduction done
% 0.13/0.37  
% 0.13/0.37  # Proof found!
% 0.13/0.37  # SZS status Theorem
% 0.13/0.37  # SZS output start CNFRefutation
% 0.13/0.37  fof(d4_tarski, axiom, ![X1, X2]:(X2=k3_tarski(X1)<=>![X3]:(r2_hidden(X3,X2)<=>?[X4]:(r2_hidden(X3,X4)&r2_hidden(X4,X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d4_tarski)).
% 0.13/0.37  fof(t24_setfam_1, conjecture, ![X1, X2]:(r1_setfam_1(X2,k1_tarski(X1))=>![X3]:(r2_hidden(X3,X2)=>r1_tarski(X3,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t24_setfam_1)).
% 0.13/0.37  fof(d3_tarski, axiom, ![X1, X2]:(r1_tarski(X1,X2)<=>![X3]:(r2_hidden(X3,X1)=>r2_hidden(X3,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d3_tarski)).
% 0.13/0.37  fof(t18_setfam_1, axiom, ![X1, X2]:(r1_setfam_1(X1,X2)=>r1_tarski(k3_tarski(X1),k3_tarski(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t18_setfam_1)).
% 0.13/0.37  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t69_enumset1)).
% 0.13/0.37  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t70_enumset1)).
% 0.13/0.37  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t71_enumset1)).
% 0.13/0.37  fof(t72_enumset1, axiom, ![X1, X2, X3, X4]:k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t72_enumset1)).
% 0.13/0.37  fof(t31_zfmisc_1, axiom, ![X1]:k3_tarski(k1_tarski(X1))=X1, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t31_zfmisc_1)).
% 0.13/0.37  fof(c_0_9, plain, ![X21, X22, X23, X25, X26, X27, X28, X30]:((((r2_hidden(X23,esk2_3(X21,X22,X23))|~r2_hidden(X23,X22)|X22!=k3_tarski(X21))&(r2_hidden(esk2_3(X21,X22,X23),X21)|~r2_hidden(X23,X22)|X22!=k3_tarski(X21)))&(~r2_hidden(X25,X26)|~r2_hidden(X26,X21)|r2_hidden(X25,X22)|X22!=k3_tarski(X21)))&((~r2_hidden(esk3_2(X27,X28),X28)|(~r2_hidden(esk3_2(X27,X28),X30)|~r2_hidden(X30,X27))|X28=k3_tarski(X27))&((r2_hidden(esk3_2(X27,X28),esk4_2(X27,X28))|r2_hidden(esk3_2(X27,X28),X28)|X28=k3_tarski(X27))&(r2_hidden(esk4_2(X27,X28),X27)|r2_hidden(esk3_2(X27,X28),X28)|X28=k3_tarski(X27))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d4_tarski])])])])])])).
% 0.13/0.37  fof(c_0_10, negated_conjecture, ~(![X1, X2]:(r1_setfam_1(X2,k1_tarski(X1))=>![X3]:(r2_hidden(X3,X2)=>r1_tarski(X3,X1)))), inference(assume_negation,[status(cth)],[t24_setfam_1])).
% 0.13/0.37  cnf(c_0_11, plain, (r2_hidden(X1,X4)|~r2_hidden(X1,X2)|~r2_hidden(X2,X3)|X4!=k3_tarski(X3)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.37  fof(c_0_12, negated_conjecture, (r1_setfam_1(esk6_0,k1_tarski(esk5_0))&(r2_hidden(esk7_0,esk6_0)&~r1_tarski(esk7_0,esk5_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_10])])])).
% 0.13/0.37  fof(c_0_13, plain, ![X5, X6, X7, X8, X9]:((~r1_tarski(X5,X6)|(~r2_hidden(X7,X5)|r2_hidden(X7,X6)))&((r2_hidden(esk1_2(X8,X9),X8)|r1_tarski(X8,X9))&(~r2_hidden(esk1_2(X8,X9),X9)|r1_tarski(X8,X9)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).
% 0.13/0.37  cnf(c_0_14, plain, (r2_hidden(X1,k3_tarski(X2))|~r2_hidden(X3,X2)|~r2_hidden(X1,X3)), inference(er,[status(thm)],[c_0_11])).
% 0.13/0.37  cnf(c_0_15, negated_conjecture, (r2_hidden(esk7_0,esk6_0)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.13/0.37  cnf(c_0_16, plain, (r2_hidden(X3,X2)|~r1_tarski(X1,X2)|~r2_hidden(X3,X1)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.13/0.37  cnf(c_0_17, negated_conjecture, (r2_hidden(X1,k3_tarski(esk6_0))|~r2_hidden(X1,esk7_0)), inference(spm,[status(thm)],[c_0_14, c_0_15])).
% 0.13/0.37  fof(c_0_18, plain, ![X33, X34]:(~r1_setfam_1(X33,X34)|r1_tarski(k3_tarski(X33),k3_tarski(X34))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t18_setfam_1])])).
% 0.13/0.37  fof(c_0_19, plain, ![X11]:k2_tarski(X11,X11)=k1_tarski(X11), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.13/0.37  fof(c_0_20, plain, ![X12, X13]:k1_enumset1(X12,X12,X13)=k2_tarski(X12,X13), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.13/0.37  fof(c_0_21, plain, ![X14, X15, X16]:k2_enumset1(X14,X14,X15,X16)=k1_enumset1(X14,X15,X16), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.13/0.37  fof(c_0_22, plain, ![X17, X18, X19, X20]:k3_enumset1(X17,X17,X18,X19,X20)=k2_enumset1(X17,X18,X19,X20), inference(variable_rename,[status(thm)],[t72_enumset1])).
% 0.13/0.37  fof(c_0_23, plain, ![X32]:k3_tarski(k1_tarski(X32))=X32, inference(variable_rename,[status(thm)],[t31_zfmisc_1])).
% 0.13/0.37  cnf(c_0_24, negated_conjecture, (r2_hidden(X1,X2)|~r2_hidden(X1,esk7_0)|~r1_tarski(k3_tarski(esk6_0),X2)), inference(spm,[status(thm)],[c_0_16, c_0_17])).
% 0.13/0.37  cnf(c_0_25, plain, (r1_tarski(k3_tarski(X1),k3_tarski(X2))|~r1_setfam_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.13/0.37  cnf(c_0_26, negated_conjecture, (r1_setfam_1(esk6_0,k1_tarski(esk5_0))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.13/0.37  cnf(c_0_27, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.13/0.37  cnf(c_0_28, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.13/0.37  cnf(c_0_29, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.13/0.37  cnf(c_0_30, plain, (k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.13/0.37  cnf(c_0_31, plain, (k3_tarski(k1_tarski(X1))=X1), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.13/0.37  cnf(c_0_32, negated_conjecture, (r2_hidden(X1,k3_tarski(X2))|~r1_setfam_1(esk6_0,X2)|~r2_hidden(X1,esk7_0)), inference(spm,[status(thm)],[c_0_24, c_0_25])).
% 0.13/0.37  cnf(c_0_33, negated_conjecture, (r1_setfam_1(esk6_0,k3_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_26, c_0_27]), c_0_28]), c_0_29]), c_0_30])).
% 0.13/0.37  cnf(c_0_34, plain, (k3_tarski(k3_enumset1(X1,X1,X1,X1,X1))=X1), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_31, c_0_27]), c_0_28]), c_0_29]), c_0_30])).
% 0.13/0.37  cnf(c_0_35, plain, (r1_tarski(X1,X2)|~r2_hidden(esk1_2(X1,X2),X2)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.13/0.37  cnf(c_0_36, negated_conjecture, (r2_hidden(X1,esk5_0)|~r2_hidden(X1,esk7_0)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32, c_0_33]), c_0_34])).
% 0.13/0.37  cnf(c_0_37, negated_conjecture, (r1_tarski(X1,esk5_0)|~r2_hidden(esk1_2(X1,esk5_0),esk7_0)), inference(spm,[status(thm)],[c_0_35, c_0_36])).
% 0.13/0.37  cnf(c_0_38, plain, (r2_hidden(esk1_2(X1,X2),X1)|r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.13/0.37  cnf(c_0_39, negated_conjecture, (~r1_tarski(esk7_0,esk5_0)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.13/0.37  cnf(c_0_40, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_38]), c_0_39]), ['proof']).
% 0.13/0.37  # SZS output end CNFRefutation
% 0.13/0.37  # Proof object total steps             : 41
% 0.13/0.37  # Proof object clause steps            : 22
% 0.13/0.37  # Proof object formula steps           : 19
% 0.13/0.37  # Proof object conjectures             : 13
% 0.13/0.37  # Proof object clause conjectures      : 10
% 0.13/0.37  # Proof object formula conjectures     : 3
% 0.13/0.37  # Proof object initial clauses used    : 13
% 0.13/0.37  # Proof object initial formulas used   : 9
% 0.13/0.37  # Proof object generating inferences   : 6
% 0.13/0.37  # Proof object simplifying inferences  : 11
% 0.13/0.37  # Training examples: 0 positive, 0 negative
% 0.13/0.37  # Parsed axioms                        : 9
% 0.13/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.37  # Initial clauses                      : 18
% 0.13/0.37  # Removed in clause preprocessing      : 4
% 0.13/0.37  # Initial clauses in saturation        : 14
% 0.13/0.37  # Processed clauses                    : 42
% 0.13/0.37  # ...of these trivial                  : 0
% 0.13/0.37  # ...subsumed                          : 2
% 0.13/0.37  # ...remaining for further processing  : 40
% 0.13/0.37  # Other redundant clauses eliminated   : 3
% 0.13/0.37  # Clauses deleted for lack of memory   : 0
% 0.13/0.37  # Backward-subsumed                    : 0
% 0.13/0.37  # Backward-rewritten                   : 0
% 0.13/0.37  # Generated clauses                    : 43
% 0.13/0.37  # ...of the previous two non-trivial   : 40
% 0.13/0.37  # Contextual simplify-reflections      : 0
% 0.13/0.37  # Paramodulations                      : 40
% 0.13/0.37  # Factorizations                       : 0
% 0.13/0.37  # Equation resolutions                 : 3
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
% 0.13/0.37  # Current number of processed clauses  : 23
% 0.13/0.37  #    Positive orientable unit clauses  : 4
% 0.13/0.37  #    Positive unorientable unit clauses: 0
% 0.13/0.37  #    Negative unit clauses             : 1
% 0.13/0.37  #    Non-unit-clauses                  : 18
% 0.13/0.37  # Current number of unprocessed clauses: 26
% 0.13/0.37  # ...number of literals in the above   : 84
% 0.13/0.37  # Current number of archived formulas  : 0
% 0.13/0.37  # Current number of archived clauses   : 18
% 0.13/0.37  # Clause-clause subsumption calls (NU) : 41
% 0.13/0.37  # Rec. Clause-clause subsumption calls : 36
% 0.13/0.37  # Non-unit clause-clause subsumptions  : 2
% 0.13/0.37  # Unit Clause-clause subsumption calls : 3
% 0.13/0.37  # Rewrite failures with RHS unbound    : 0
% 0.13/0.37  # BW rewrite match attempts            : 5
% 0.13/0.37  # BW rewrite match successes           : 0
% 0.13/0.37  # Condensation attempts                : 0
% 0.13/0.37  # Condensation successes               : 0
% 0.13/0.37  # Termbank termtop insertions          : 1645
% 0.13/0.37  
% 0.13/0.37  # -------------------------------------------------
% 0.13/0.37  # User time                : 0.028 s
% 0.13/0.37  # System time              : 0.005 s
% 0.13/0.37  # Total time               : 0.033 s
% 0.13/0.37  # Maximum resident set size: 1568 pages
%------------------------------------------------------------------------------
