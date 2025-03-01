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
% DateTime   : Thu Dec  3 10:56:06 EST 2020

% Result     : Theorem 0.20s
% Output     : CNFRefutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   46 ( 212 expanded)
%              Number of clauses        :   25 (  90 expanded)
%              Number of leaves         :   10 (  59 expanded)
%              Depth                    :   10
%              Number of atoms          :  134 ( 388 expanded)
%              Number of equality atoms :   75 ( 286 expanded)
%              Maximal formula depth    :   27 (   4 average)
%              Maximal clause size      :   36 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(l51_zfmisc_1,axiom,(
    ! [X1,X2] : k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l51_zfmisc_1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(d1_ordinal1,axiom,(
    ! [X1] : k1_ordinal1(X1) = k2_xboole_0(X1,k1_tarski(X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_ordinal1)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

fof(t12_ordinal1,conjecture,(
    ! [X1,X2] :
      ( k1_ordinal1(X1) = k1_ordinal1(X2)
     => X1 = X2 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_ordinal1)).

fof(d3_xboole_0,axiom,(
    ! [X1,X2,X3] :
      ( X3 = k2_xboole_0(X1,X2)
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ( r2_hidden(X4,X1)
            | r2_hidden(X4,X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_xboole_0)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).

fof(t10_ordinal1,axiom,(
    ! [X1] : r2_hidden(X1,k1_ordinal1(X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t10_ordinal1)).

fof(d2_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5] :
      ( X5 = k2_enumset1(X1,X2,X3,X4)
    <=> ! [X6] :
          ( r2_hidden(X6,X5)
        <=> ~ ( X6 != X1
              & X6 != X2
              & X6 != X3
              & X6 != X4 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d2_enumset1)).

fof(antisymmetry_r2_hidden,axiom,(
    ! [X1,X2] :
      ( r2_hidden(X1,X2)
     => ~ r2_hidden(X2,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',antisymmetry_r2_hidden)).

fof(c_0_10,plain,(
    ! [X24,X25] : k3_tarski(k2_tarski(X24,X25)) = k2_xboole_0(X24,X25) ),
    inference(variable_rename,[status(thm)],[l51_zfmisc_1])).

fof(c_0_11,plain,(
    ! [X19,X20] : k1_enumset1(X19,X19,X20) = k2_tarski(X19,X20) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_12,plain,(
    ! [X39] : k1_ordinal1(X39) = k2_xboole_0(X39,k1_tarski(X39)) ),
    inference(variable_rename,[status(thm)],[d1_ordinal1])).

fof(c_0_13,plain,(
    ! [X18] : k2_tarski(X18,X18) = k1_tarski(X18) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_14,negated_conjecture,(
    ~ ! [X1,X2] :
        ( k1_ordinal1(X1) = k1_ordinal1(X2)
       => X1 = X2 ) ),
    inference(assume_negation,[status(cth)],[t12_ordinal1])).

fof(c_0_15,plain,(
    ! [X9,X10,X11,X12,X13,X14,X15,X16] :
      ( ( ~ r2_hidden(X12,X11)
        | r2_hidden(X12,X9)
        | r2_hidden(X12,X10)
        | X11 != k2_xboole_0(X9,X10) )
      & ( ~ r2_hidden(X13,X9)
        | r2_hidden(X13,X11)
        | X11 != k2_xboole_0(X9,X10) )
      & ( ~ r2_hidden(X13,X10)
        | r2_hidden(X13,X11)
        | X11 != k2_xboole_0(X9,X10) )
      & ( ~ r2_hidden(esk1_3(X14,X15,X16),X14)
        | ~ r2_hidden(esk1_3(X14,X15,X16),X16)
        | X16 = k2_xboole_0(X14,X15) )
      & ( ~ r2_hidden(esk1_3(X14,X15,X16),X15)
        | ~ r2_hidden(esk1_3(X14,X15,X16),X16)
        | X16 = k2_xboole_0(X14,X15) )
      & ( r2_hidden(esk1_3(X14,X15,X16),X16)
        | r2_hidden(esk1_3(X14,X15,X16),X14)
        | r2_hidden(esk1_3(X14,X15,X16),X15)
        | X16 = k2_xboole_0(X14,X15) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_xboole_0])])])])])])).

cnf(c_0_16,plain,
    ( k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_17,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

fof(c_0_18,plain,(
    ! [X21,X22,X23] : k2_enumset1(X21,X21,X22,X23) = k1_enumset1(X21,X22,X23) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_19,plain,(
    ! [X40] : r2_hidden(X40,k1_ordinal1(X40)) ),
    inference(variable_rename,[status(thm)],[t10_ordinal1])).

cnf(c_0_20,plain,
    ( k1_ordinal1(X1) = k2_xboole_0(X1,k1_tarski(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_21,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

fof(c_0_22,negated_conjecture,
    ( k1_ordinal1(esk3_0) = k1_ordinal1(esk4_0)
    & esk3_0 != esk4_0 ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_14])])])).

cnf(c_0_23,plain,
    ( r2_hidden(X1,X3)
    | r2_hidden(X1,X4)
    | ~ r2_hidden(X1,X2)
    | X2 != k2_xboole_0(X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_24,plain,
    ( k3_tarski(k1_enumset1(X1,X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_16,c_0_17])).

cnf(c_0_25,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_26,plain,
    ( r2_hidden(X1,k1_ordinal1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_27,plain,
    ( k1_ordinal1(X1) = k2_xboole_0(X1,k2_tarski(X1,X1)) ),
    inference(rw,[status(thm)],[c_0_20,c_0_21])).

cnf(c_0_28,negated_conjecture,
    ( k1_ordinal1(esk3_0) = k1_ordinal1(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

fof(c_0_29,plain,(
    ! [X26,X27,X28,X29,X30,X31,X32,X33,X34,X35,X36,X37] :
      ( ( ~ r2_hidden(X31,X30)
        | X31 = X26
        | X31 = X27
        | X31 = X28
        | X31 = X29
        | X30 != k2_enumset1(X26,X27,X28,X29) )
      & ( X32 != X26
        | r2_hidden(X32,X30)
        | X30 != k2_enumset1(X26,X27,X28,X29) )
      & ( X32 != X27
        | r2_hidden(X32,X30)
        | X30 != k2_enumset1(X26,X27,X28,X29) )
      & ( X32 != X28
        | r2_hidden(X32,X30)
        | X30 != k2_enumset1(X26,X27,X28,X29) )
      & ( X32 != X29
        | r2_hidden(X32,X30)
        | X30 != k2_enumset1(X26,X27,X28,X29) )
      & ( esk2_5(X33,X34,X35,X36,X37) != X33
        | ~ r2_hidden(esk2_5(X33,X34,X35,X36,X37),X37)
        | X37 = k2_enumset1(X33,X34,X35,X36) )
      & ( esk2_5(X33,X34,X35,X36,X37) != X34
        | ~ r2_hidden(esk2_5(X33,X34,X35,X36,X37),X37)
        | X37 = k2_enumset1(X33,X34,X35,X36) )
      & ( esk2_5(X33,X34,X35,X36,X37) != X35
        | ~ r2_hidden(esk2_5(X33,X34,X35,X36,X37),X37)
        | X37 = k2_enumset1(X33,X34,X35,X36) )
      & ( esk2_5(X33,X34,X35,X36,X37) != X36
        | ~ r2_hidden(esk2_5(X33,X34,X35,X36,X37),X37)
        | X37 = k2_enumset1(X33,X34,X35,X36) )
      & ( r2_hidden(esk2_5(X33,X34,X35,X36,X37),X37)
        | esk2_5(X33,X34,X35,X36,X37) = X33
        | esk2_5(X33,X34,X35,X36,X37) = X34
        | esk2_5(X33,X34,X35,X36,X37) = X35
        | esk2_5(X33,X34,X35,X36,X37) = X36
        | X37 = k2_enumset1(X33,X34,X35,X36) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d2_enumset1])])])])])])).

cnf(c_0_30,plain,
    ( r2_hidden(X1,X4)
    | r2_hidden(X1,X3)
    | X2 != k3_tarski(k2_enumset1(X3,X3,X3,X4))
    | ~ r2_hidden(X1,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_23,c_0_24]),c_0_25])).

cnf(c_0_31,plain,
    ( r2_hidden(X1,k3_tarski(k2_enumset1(X1,X1,X1,k2_enumset1(X1,X1,X1,X1)))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_26,c_0_27]),c_0_17]),c_0_24]),c_0_25]),c_0_25])).

cnf(c_0_32,negated_conjecture,
    ( k3_tarski(k2_enumset1(esk4_0,esk4_0,esk4_0,k2_enumset1(esk4_0,esk4_0,esk4_0,esk4_0))) = k3_tarski(k2_enumset1(esk3_0,esk3_0,esk3_0,k2_enumset1(esk3_0,esk3_0,esk3_0,esk3_0))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_28,c_0_27]),c_0_27]),c_0_17]),c_0_17]),c_0_24]),c_0_24]),c_0_25]),c_0_25]),c_0_25]),c_0_25])).

cnf(c_0_33,plain,
    ( X1 = X3
    | X1 = X4
    | X1 = X5
    | X1 = X6
    | ~ r2_hidden(X1,X2)
    | X2 != k2_enumset1(X3,X4,X5,X6) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_34,plain,
    ( r2_hidden(X1,X2)
    | r2_hidden(X1,X3)
    | ~ r2_hidden(X1,k3_tarski(k2_enumset1(X3,X3,X3,X2))) ),
    inference(er,[status(thm)],[c_0_30])).

cnf(c_0_35,negated_conjecture,
    ( r2_hidden(esk3_0,k3_tarski(k2_enumset1(esk4_0,esk4_0,esk4_0,k2_enumset1(esk4_0,esk4_0,esk4_0,esk4_0)))) ),
    inference(spm,[status(thm)],[c_0_31,c_0_32])).

fof(c_0_36,plain,(
    ! [X7,X8] :
      ( ~ r2_hidden(X7,X8)
      | ~ r2_hidden(X8,X7) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[antisymmetry_r2_hidden])])])).

cnf(c_0_37,plain,
    ( X1 = X2
    | X1 = X3
    | X1 = X4
    | X1 = X5
    | ~ r2_hidden(X1,k2_enumset1(X5,X4,X3,X2)) ),
    inference(er,[status(thm)],[c_0_33])).

cnf(c_0_38,negated_conjecture,
    ( r2_hidden(esk3_0,k2_enumset1(esk4_0,esk4_0,esk4_0,esk4_0))
    | r2_hidden(esk3_0,esk4_0) ),
    inference(spm,[status(thm)],[c_0_34,c_0_35])).

cnf(c_0_39,negated_conjecture,
    ( esk3_0 != esk4_0 ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_40,plain,
    ( ~ r2_hidden(X1,X2)
    | ~ r2_hidden(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

cnf(c_0_41,negated_conjecture,
    ( r2_hidden(esk3_0,esk4_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_38]),c_0_39])).

cnf(c_0_42,negated_conjecture,
    ( r2_hidden(X1,k2_enumset1(esk3_0,esk3_0,esk3_0,esk3_0))
    | r2_hidden(X1,esk3_0)
    | ~ r2_hidden(X1,k3_tarski(k2_enumset1(esk4_0,esk4_0,esk4_0,k2_enumset1(esk4_0,esk4_0,esk4_0,esk4_0)))) ),
    inference(spm,[status(thm)],[c_0_34,c_0_32])).

cnf(c_0_43,negated_conjecture,
    ( ~ r2_hidden(esk4_0,esk3_0) ),
    inference(spm,[status(thm)],[c_0_40,c_0_41])).

cnf(c_0_44,negated_conjecture,
    ( r2_hidden(esk4_0,k2_enumset1(esk3_0,esk3_0,esk3_0,esk3_0)) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_42,c_0_31]),c_0_43])).

cnf(c_0_45,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_44]),c_0_39]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.34  % Computer   : n018.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 19:55:57 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  # Version: 2.5pre002
% 0.14/0.34  # No SInE strategy applied
% 0.14/0.34  # Trying AutoSched0 for 299 seconds
% 0.20/0.37  # AutoSched0-Mode selected heuristic h208_C18_F1_SE_CS_SP_PS_S002A
% 0.20/0.37  # and selection function SelectNegativeLiterals.
% 0.20/0.37  #
% 0.20/0.37  # Preprocessing time       : 0.027 s
% 0.20/0.37  # Presaturation interreduction done
% 0.20/0.37  
% 0.20/0.37  # Proof found!
% 0.20/0.37  # SZS status Theorem
% 0.20/0.37  # SZS output start CNFRefutation
% 0.20/0.37  fof(l51_zfmisc_1, axiom, ![X1, X2]:k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l51_zfmisc_1)).
% 0.20/0.37  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t70_enumset1)).
% 0.20/0.37  fof(d1_ordinal1, axiom, ![X1]:k1_ordinal1(X1)=k2_xboole_0(X1,k1_tarski(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_ordinal1)).
% 0.20/0.37  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t69_enumset1)).
% 0.20/0.37  fof(t12_ordinal1, conjecture, ![X1, X2]:(k1_ordinal1(X1)=k1_ordinal1(X2)=>X1=X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t12_ordinal1)).
% 0.20/0.37  fof(d3_xboole_0, axiom, ![X1, X2, X3]:(X3=k2_xboole_0(X1,X2)<=>![X4]:(r2_hidden(X4,X3)<=>(r2_hidden(X4,X1)|r2_hidden(X4,X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d3_xboole_0)).
% 0.20/0.37  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t71_enumset1)).
% 0.20/0.37  fof(t10_ordinal1, axiom, ![X1]:r2_hidden(X1,k1_ordinal1(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t10_ordinal1)).
% 0.20/0.37  fof(d2_enumset1, axiom, ![X1, X2, X3, X4, X5]:(X5=k2_enumset1(X1,X2,X3,X4)<=>![X6]:(r2_hidden(X6,X5)<=>~((((X6!=X1&X6!=X2)&X6!=X3)&X6!=X4)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d2_enumset1)).
% 0.20/0.37  fof(antisymmetry_r2_hidden, axiom, ![X1, X2]:(r2_hidden(X1,X2)=>~(r2_hidden(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', antisymmetry_r2_hidden)).
% 0.20/0.37  fof(c_0_10, plain, ![X24, X25]:k3_tarski(k2_tarski(X24,X25))=k2_xboole_0(X24,X25), inference(variable_rename,[status(thm)],[l51_zfmisc_1])).
% 0.20/0.37  fof(c_0_11, plain, ![X19, X20]:k1_enumset1(X19,X19,X20)=k2_tarski(X19,X20), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.20/0.37  fof(c_0_12, plain, ![X39]:k1_ordinal1(X39)=k2_xboole_0(X39,k1_tarski(X39)), inference(variable_rename,[status(thm)],[d1_ordinal1])).
% 0.20/0.37  fof(c_0_13, plain, ![X18]:k2_tarski(X18,X18)=k1_tarski(X18), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.20/0.37  fof(c_0_14, negated_conjecture, ~(![X1, X2]:(k1_ordinal1(X1)=k1_ordinal1(X2)=>X1=X2)), inference(assume_negation,[status(cth)],[t12_ordinal1])).
% 0.20/0.37  fof(c_0_15, plain, ![X9, X10, X11, X12, X13, X14, X15, X16]:(((~r2_hidden(X12,X11)|(r2_hidden(X12,X9)|r2_hidden(X12,X10))|X11!=k2_xboole_0(X9,X10))&((~r2_hidden(X13,X9)|r2_hidden(X13,X11)|X11!=k2_xboole_0(X9,X10))&(~r2_hidden(X13,X10)|r2_hidden(X13,X11)|X11!=k2_xboole_0(X9,X10))))&(((~r2_hidden(esk1_3(X14,X15,X16),X14)|~r2_hidden(esk1_3(X14,X15,X16),X16)|X16=k2_xboole_0(X14,X15))&(~r2_hidden(esk1_3(X14,X15,X16),X15)|~r2_hidden(esk1_3(X14,X15,X16),X16)|X16=k2_xboole_0(X14,X15)))&(r2_hidden(esk1_3(X14,X15,X16),X16)|(r2_hidden(esk1_3(X14,X15,X16),X14)|r2_hidden(esk1_3(X14,X15,X16),X15))|X16=k2_xboole_0(X14,X15)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_xboole_0])])])])])])).
% 0.20/0.37  cnf(c_0_16, plain, (k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.20/0.37  cnf(c_0_17, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.20/0.37  fof(c_0_18, plain, ![X21, X22, X23]:k2_enumset1(X21,X21,X22,X23)=k1_enumset1(X21,X22,X23), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.20/0.37  fof(c_0_19, plain, ![X40]:r2_hidden(X40,k1_ordinal1(X40)), inference(variable_rename,[status(thm)],[t10_ordinal1])).
% 0.20/0.37  cnf(c_0_20, plain, (k1_ordinal1(X1)=k2_xboole_0(X1,k1_tarski(X1))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.20/0.37  cnf(c_0_21, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.20/0.37  fof(c_0_22, negated_conjecture, (k1_ordinal1(esk3_0)=k1_ordinal1(esk4_0)&esk3_0!=esk4_0), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_14])])])).
% 0.20/0.37  cnf(c_0_23, plain, (r2_hidden(X1,X3)|r2_hidden(X1,X4)|~r2_hidden(X1,X2)|X2!=k2_xboole_0(X3,X4)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.37  cnf(c_0_24, plain, (k3_tarski(k1_enumset1(X1,X1,X2))=k2_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_16, c_0_17])).
% 0.20/0.37  cnf(c_0_25, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.20/0.37  cnf(c_0_26, plain, (r2_hidden(X1,k1_ordinal1(X1))), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.20/0.37  cnf(c_0_27, plain, (k1_ordinal1(X1)=k2_xboole_0(X1,k2_tarski(X1,X1))), inference(rw,[status(thm)],[c_0_20, c_0_21])).
% 0.20/0.37  cnf(c_0_28, negated_conjecture, (k1_ordinal1(esk3_0)=k1_ordinal1(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.20/0.37  fof(c_0_29, plain, ![X26, X27, X28, X29, X30, X31, X32, X33, X34, X35, X36, X37]:(((~r2_hidden(X31,X30)|(X31=X26|X31=X27|X31=X28|X31=X29)|X30!=k2_enumset1(X26,X27,X28,X29))&((((X32!=X26|r2_hidden(X32,X30)|X30!=k2_enumset1(X26,X27,X28,X29))&(X32!=X27|r2_hidden(X32,X30)|X30!=k2_enumset1(X26,X27,X28,X29)))&(X32!=X28|r2_hidden(X32,X30)|X30!=k2_enumset1(X26,X27,X28,X29)))&(X32!=X29|r2_hidden(X32,X30)|X30!=k2_enumset1(X26,X27,X28,X29))))&(((((esk2_5(X33,X34,X35,X36,X37)!=X33|~r2_hidden(esk2_5(X33,X34,X35,X36,X37),X37)|X37=k2_enumset1(X33,X34,X35,X36))&(esk2_5(X33,X34,X35,X36,X37)!=X34|~r2_hidden(esk2_5(X33,X34,X35,X36,X37),X37)|X37=k2_enumset1(X33,X34,X35,X36)))&(esk2_5(X33,X34,X35,X36,X37)!=X35|~r2_hidden(esk2_5(X33,X34,X35,X36,X37),X37)|X37=k2_enumset1(X33,X34,X35,X36)))&(esk2_5(X33,X34,X35,X36,X37)!=X36|~r2_hidden(esk2_5(X33,X34,X35,X36,X37),X37)|X37=k2_enumset1(X33,X34,X35,X36)))&(r2_hidden(esk2_5(X33,X34,X35,X36,X37),X37)|(esk2_5(X33,X34,X35,X36,X37)=X33|esk2_5(X33,X34,X35,X36,X37)=X34|esk2_5(X33,X34,X35,X36,X37)=X35|esk2_5(X33,X34,X35,X36,X37)=X36)|X37=k2_enumset1(X33,X34,X35,X36)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d2_enumset1])])])])])])).
% 0.20/0.37  cnf(c_0_30, plain, (r2_hidden(X1,X4)|r2_hidden(X1,X3)|X2!=k3_tarski(k2_enumset1(X3,X3,X3,X4))|~r2_hidden(X1,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_23, c_0_24]), c_0_25])).
% 0.20/0.37  cnf(c_0_31, plain, (r2_hidden(X1,k3_tarski(k2_enumset1(X1,X1,X1,k2_enumset1(X1,X1,X1,X1))))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_26, c_0_27]), c_0_17]), c_0_24]), c_0_25]), c_0_25])).
% 0.20/0.37  cnf(c_0_32, negated_conjecture, (k3_tarski(k2_enumset1(esk4_0,esk4_0,esk4_0,k2_enumset1(esk4_0,esk4_0,esk4_0,esk4_0)))=k3_tarski(k2_enumset1(esk3_0,esk3_0,esk3_0,k2_enumset1(esk3_0,esk3_0,esk3_0,esk3_0)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_28, c_0_27]), c_0_27]), c_0_17]), c_0_17]), c_0_24]), c_0_24]), c_0_25]), c_0_25]), c_0_25]), c_0_25])).
% 0.20/0.37  cnf(c_0_33, plain, (X1=X3|X1=X4|X1=X5|X1=X6|~r2_hidden(X1,X2)|X2!=k2_enumset1(X3,X4,X5,X6)), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.20/0.37  cnf(c_0_34, plain, (r2_hidden(X1,X2)|r2_hidden(X1,X3)|~r2_hidden(X1,k3_tarski(k2_enumset1(X3,X3,X3,X2)))), inference(er,[status(thm)],[c_0_30])).
% 0.20/0.37  cnf(c_0_35, negated_conjecture, (r2_hidden(esk3_0,k3_tarski(k2_enumset1(esk4_0,esk4_0,esk4_0,k2_enumset1(esk4_0,esk4_0,esk4_0,esk4_0))))), inference(spm,[status(thm)],[c_0_31, c_0_32])).
% 0.20/0.37  fof(c_0_36, plain, ![X7, X8]:(~r2_hidden(X7,X8)|~r2_hidden(X8,X7)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[antisymmetry_r2_hidden])])])).
% 0.20/0.37  cnf(c_0_37, plain, (X1=X2|X1=X3|X1=X4|X1=X5|~r2_hidden(X1,k2_enumset1(X5,X4,X3,X2))), inference(er,[status(thm)],[c_0_33])).
% 0.20/0.37  cnf(c_0_38, negated_conjecture, (r2_hidden(esk3_0,k2_enumset1(esk4_0,esk4_0,esk4_0,esk4_0))|r2_hidden(esk3_0,esk4_0)), inference(spm,[status(thm)],[c_0_34, c_0_35])).
% 0.20/0.37  cnf(c_0_39, negated_conjecture, (esk3_0!=esk4_0), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.20/0.37  cnf(c_0_40, plain, (~r2_hidden(X1,X2)|~r2_hidden(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_36])).
% 0.20/0.37  cnf(c_0_41, negated_conjecture, (r2_hidden(esk3_0,esk4_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_38]), c_0_39])).
% 0.20/0.37  cnf(c_0_42, negated_conjecture, (r2_hidden(X1,k2_enumset1(esk3_0,esk3_0,esk3_0,esk3_0))|r2_hidden(X1,esk3_0)|~r2_hidden(X1,k3_tarski(k2_enumset1(esk4_0,esk4_0,esk4_0,k2_enumset1(esk4_0,esk4_0,esk4_0,esk4_0))))), inference(spm,[status(thm)],[c_0_34, c_0_32])).
% 0.20/0.37  cnf(c_0_43, negated_conjecture, (~r2_hidden(esk4_0,esk3_0)), inference(spm,[status(thm)],[c_0_40, c_0_41])).
% 0.20/0.37  cnf(c_0_44, negated_conjecture, (r2_hidden(esk4_0,k2_enumset1(esk3_0,esk3_0,esk3_0,esk3_0))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_42, c_0_31]), c_0_43])).
% 0.20/0.37  cnf(c_0_45, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_44]), c_0_39]), ['proof']).
% 0.20/0.37  # SZS output end CNFRefutation
% 0.20/0.37  # Proof object total steps             : 46
% 0.20/0.37  # Proof object clause steps            : 25
% 0.20/0.37  # Proof object formula steps           : 21
% 0.20/0.37  # Proof object conjectures             : 13
% 0.20/0.37  # Proof object clause conjectures      : 10
% 0.20/0.37  # Proof object formula conjectures     : 3
% 0.20/0.37  # Proof object initial clauses used    : 11
% 0.20/0.37  # Proof object initial formulas used   : 10
% 0.20/0.37  # Proof object generating inferences   : 7
% 0.20/0.37  # Proof object simplifying inferences  : 24
% 0.20/0.37  # Training examples: 0 positive, 0 negative
% 0.20/0.37  # Parsed axioms                        : 10
% 0.20/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.20/0.37  # Initial clauses                      : 25
% 0.20/0.37  # Removed in clause preprocessing      : 5
% 0.20/0.37  # Initial clauses in saturation        : 20
% 0.20/0.37  # Processed clauses                    : 58
% 0.20/0.37  # ...of these trivial                  : 0
% 0.20/0.37  # ...subsumed                          : 1
% 0.20/0.37  # ...remaining for further processing  : 57
% 0.20/0.37  # Other redundant clauses eliminated   : 12
% 0.20/0.37  # Clauses deleted for lack of memory   : 0
% 0.20/0.37  # Backward-subsumed                    : 0
% 0.20/0.37  # Backward-rewritten                   : 2
% 0.20/0.37  # Generated clauses                    : 51
% 0.20/0.37  # ...of the previous two non-trivial   : 43
% 0.20/0.37  # Contextual simplify-reflections      : 0
% 0.20/0.37  # Paramodulations                      : 43
% 0.20/0.37  # Factorizations                       : 0
% 0.20/0.37  # Equation resolutions                 : 12
% 0.20/0.37  # Propositional unsat checks           : 0
% 0.20/0.37  #    Propositional check models        : 0
% 0.20/0.37  #    Propositional check unsatisfiable : 0
% 0.20/0.37  #    Propositional clauses             : 0
% 0.20/0.37  #    Propositional clauses after purity: 0
% 0.20/0.37  #    Propositional unsat core size     : 0
% 0.20/0.37  #    Propositional preprocessing time  : 0.000
% 0.20/0.37  #    Propositional encoding time       : 0.000
% 0.20/0.37  #    Propositional solver time         : 0.000
% 0.20/0.37  #    Success case prop preproc time    : 0.000
% 0.20/0.37  #    Success case prop encoding time   : 0.000
% 0.20/0.37  #    Success case prop solver time     : 0.000
% 0.20/0.37  # Current number of processed clauses  : 27
% 0.20/0.37  #    Positive orientable unit clauses  : 13
% 0.20/0.37  #    Positive unorientable unit clauses: 0
% 0.20/0.37  #    Negative unit clauses             : 2
% 0.20/0.37  #    Non-unit-clauses                  : 12
% 0.20/0.37  # Current number of unprocessed clauses: 20
% 0.20/0.37  # ...number of literals in the above   : 29
% 0.20/0.37  # Current number of archived formulas  : 0
% 0.20/0.37  # Current number of archived clauses   : 27
% 0.20/0.37  # Clause-clause subsumption calls (NU) : 79
% 0.20/0.37  # Rec. Clause-clause subsumption calls : 71
% 0.20/0.37  # Non-unit clause-clause subsumptions  : 0
% 0.20/0.37  # Unit Clause-clause subsumption calls : 0
% 0.20/0.37  # Rewrite failures with RHS unbound    : 0
% 0.20/0.37  # BW rewrite match attempts            : 26
% 0.20/0.37  # BW rewrite match successes           : 2
% 0.20/0.37  # Condensation attempts                : 0
% 0.20/0.37  # Condensation successes               : 0
% 0.20/0.37  # Termbank termtop insertions          : 2303
% 0.20/0.37  
% 0.20/0.37  # -------------------------------------------------
% 0.20/0.37  # User time                : 0.031 s
% 0.20/0.37  # System time              : 0.002 s
% 0.20/0.37  # Total time               : 0.033 s
% 0.20/0.37  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
