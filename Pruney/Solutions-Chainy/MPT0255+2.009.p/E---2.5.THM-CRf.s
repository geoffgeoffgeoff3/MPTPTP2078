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
% DateTime   : Thu Dec  3 10:41:21 EST 2020

% Result     : Theorem 0.20s
% Output     : CNFRefutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   40 (  95 expanded)
%              Number of clauses        :   20 (  39 expanded)
%              Number of leaves         :   10 (  28 expanded)
%              Depth                    :    8
%              Number of atoms          :   84 ( 139 expanded)
%              Number of equality atoms :   51 ( 106 expanded)
%              Maximal formula depth    :   22 (   3 average)
%              Maximal clause size      :   28 (   1 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t50_zfmisc_1,conjecture,(
    ! [X1,X2,X3] : k2_xboole_0(k2_tarski(X1,X2),X3) != k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t50_zfmisc_1)).

fof(l51_zfmisc_1,axiom,(
    ! [X1,X2] : k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l51_zfmisc_1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).

fof(t72_enumset1,axiom,(
    ! [X1,X2,X3,X4] : k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t72_enumset1)).

fof(commutativity_k2_tarski,axiom,(
    ! [X1,X2] : k2_tarski(X1,X2) = k2_tarski(X2,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_tarski)).

fof(fc5_xboole_0,axiom,(
    ! [X1,X2] :
      ( ~ v1_xboole_0(X1)
     => ~ v1_xboole_0(k2_xboole_0(X2,X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc5_xboole_0)).

fof(d1_enumset1,axiom,(
    ! [X1,X2,X3,X4] :
      ( X4 = k1_enumset1(X1,X2,X3)
    <=> ! [X5] :
          ( r2_hidden(X5,X4)
        <=> ~ ( X5 != X1
              & X5 != X2
              & X5 != X3 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_enumset1)).

fof(d1_xboole_0,axiom,(
    ! [X1] :
      ( v1_xboole_0(X1)
    <=> ! [X2] : ~ r2_hidden(X2,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_xboole_0)).

fof(fc1_xboole_0,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc1_xboole_0)).

fof(c_0_10,negated_conjecture,(
    ~ ! [X1,X2,X3] : k2_xboole_0(k2_tarski(X1,X2),X3) != k1_xboole_0 ),
    inference(assume_negation,[status(cth)],[t50_zfmisc_1])).

fof(c_0_11,plain,(
    ! [X34,X35] : k3_tarski(k2_tarski(X34,X35)) = k2_xboole_0(X34,X35) ),
    inference(variable_rename,[status(thm)],[l51_zfmisc_1])).

fof(c_0_12,plain,(
    ! [X25,X26] : k1_enumset1(X25,X25,X26) = k2_tarski(X25,X26) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_13,negated_conjecture,(
    k2_xboole_0(k2_tarski(esk3_0,esk4_0),esk5_0) = k1_xboole_0 ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_10])])])).

cnf(c_0_14,plain,
    ( k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_15,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

fof(c_0_16,plain,(
    ! [X27,X28,X29] : k2_enumset1(X27,X27,X28,X29) = k1_enumset1(X27,X28,X29) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_17,plain,(
    ! [X30,X31,X32,X33] : k3_enumset1(X30,X30,X31,X32,X33) = k2_enumset1(X30,X31,X32,X33) ),
    inference(variable_rename,[status(thm)],[t72_enumset1])).

fof(c_0_18,plain,(
    ! [X12,X13] : k2_tarski(X12,X13) = k2_tarski(X13,X12) ),
    inference(variable_rename,[status(thm)],[commutativity_k2_tarski])).

fof(c_0_19,plain,(
    ! [X10,X11] :
      ( v1_xboole_0(X10)
      | ~ v1_xboole_0(k2_xboole_0(X11,X10)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc5_xboole_0])])])).

cnf(c_0_20,negated_conjecture,
    ( k2_xboole_0(k2_tarski(esk3_0,esk4_0),esk5_0) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_21,plain,
    ( k3_tarski(k1_enumset1(X1,X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_14,c_0_15])).

cnf(c_0_22,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_23,plain,
    ( k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_24,plain,
    ( k2_tarski(X1,X2) = k2_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_25,plain,
    ( v1_xboole_0(X1)
    | ~ v1_xboole_0(k2_xboole_0(X2,X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_26,negated_conjecture,
    ( k3_tarski(k3_enumset1(k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),esk5_0)) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_20,c_0_15]),c_0_21]),c_0_22]),c_0_22]),c_0_22]),c_0_23]),c_0_23]),c_0_23]),c_0_23])).

cnf(c_0_27,plain,
    ( k3_enumset1(X1,X1,X1,X1,X2) = k3_enumset1(X2,X2,X2,X2,X1) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_24,c_0_15]),c_0_15]),c_0_22]),c_0_22]),c_0_23]),c_0_23])).

fof(c_0_28,plain,(
    ! [X14,X15,X16,X17,X18,X19,X20,X21,X22,X23] :
      ( ( ~ r2_hidden(X18,X17)
        | X18 = X14
        | X18 = X15
        | X18 = X16
        | X17 != k1_enumset1(X14,X15,X16) )
      & ( X19 != X14
        | r2_hidden(X19,X17)
        | X17 != k1_enumset1(X14,X15,X16) )
      & ( X19 != X15
        | r2_hidden(X19,X17)
        | X17 != k1_enumset1(X14,X15,X16) )
      & ( X19 != X16
        | r2_hidden(X19,X17)
        | X17 != k1_enumset1(X14,X15,X16) )
      & ( esk2_4(X20,X21,X22,X23) != X20
        | ~ r2_hidden(esk2_4(X20,X21,X22,X23),X23)
        | X23 = k1_enumset1(X20,X21,X22) )
      & ( esk2_4(X20,X21,X22,X23) != X21
        | ~ r2_hidden(esk2_4(X20,X21,X22,X23),X23)
        | X23 = k1_enumset1(X20,X21,X22) )
      & ( esk2_4(X20,X21,X22,X23) != X22
        | ~ r2_hidden(esk2_4(X20,X21,X22,X23),X23)
        | X23 = k1_enumset1(X20,X21,X22) )
      & ( r2_hidden(esk2_4(X20,X21,X22,X23),X23)
        | esk2_4(X20,X21,X22,X23) = X20
        | esk2_4(X20,X21,X22,X23) = X21
        | esk2_4(X20,X21,X22,X23) = X22
        | X23 = k1_enumset1(X20,X21,X22) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_enumset1])])])])])])).

fof(c_0_29,plain,(
    ! [X6,X7,X8] :
      ( ( ~ v1_xboole_0(X6)
        | ~ r2_hidden(X7,X6) )
      & ( r2_hidden(esk1_1(X8),X8)
        | v1_xboole_0(X8) ) ) ),
    inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d1_xboole_0])])])])])])).

cnf(c_0_30,plain,
    ( v1_xboole_0(X1)
    | ~ v1_xboole_0(k3_tarski(k3_enumset1(X2,X2,X2,X2,X1))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_25,c_0_21]),c_0_22]),c_0_23])).

cnf(c_0_31,negated_conjecture,
    ( k3_tarski(k3_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk4_0))) = k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_26,c_0_27])).

cnf(c_0_32,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(split_conjunct,[status(thm)],[fc1_xboole_0])).

cnf(c_0_33,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k1_enumset1(X4,X2,X5) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_34,plain,
    ( ~ v1_xboole_0(X1)
    | ~ r2_hidden(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_35,negated_conjecture,
    ( v1_xboole_0(k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk4_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_30,c_0_31]),c_0_32])])).

cnf(c_0_36,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k3_enumset1(X4,X4,X4,X2,X5) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_33,c_0_22]),c_0_23])).

cnf(c_0_37,negated_conjecture,
    ( ~ r2_hidden(X1,k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk4_0)) ),
    inference(spm,[status(thm)],[c_0_34,c_0_35])).

cnf(c_0_38,plain,
    ( r2_hidden(X1,k3_enumset1(X2,X2,X2,X1,X3)) ),
    inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_36])])).

cnf(c_0_39,negated_conjecture,
    ( $false ),
    inference(spm,[status(thm)],[c_0_37,c_0_38]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n016.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 14:06:04 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.20/0.37  # AutoSched0-Mode selected heuristic h208_C18_F1_SE_CS_SP_PS_S002A
% 0.20/0.37  # and selection function SelectNegativeLiterals.
% 0.20/0.37  #
% 0.20/0.37  # Preprocessing time       : 0.027 s
% 0.20/0.37  # Presaturation interreduction done
% 0.20/0.37  
% 0.20/0.37  # Proof found!
% 0.20/0.37  # SZS status Theorem
% 0.20/0.37  # SZS output start CNFRefutation
% 0.20/0.37  fof(t50_zfmisc_1, conjecture, ![X1, X2, X3]:k2_xboole_0(k2_tarski(X1,X2),X3)!=k1_xboole_0, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t50_zfmisc_1)).
% 0.20/0.37  fof(l51_zfmisc_1, axiom, ![X1, X2]:k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l51_zfmisc_1)).
% 0.20/0.37  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t70_enumset1)).
% 0.20/0.37  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t71_enumset1)).
% 0.20/0.37  fof(t72_enumset1, axiom, ![X1, X2, X3, X4]:k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t72_enumset1)).
% 0.20/0.37  fof(commutativity_k2_tarski, axiom, ![X1, X2]:k2_tarski(X1,X2)=k2_tarski(X2,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', commutativity_k2_tarski)).
% 0.20/0.37  fof(fc5_xboole_0, axiom, ![X1, X2]:(~(v1_xboole_0(X1))=>~(v1_xboole_0(k2_xboole_0(X2,X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc5_xboole_0)).
% 0.20/0.37  fof(d1_enumset1, axiom, ![X1, X2, X3, X4]:(X4=k1_enumset1(X1,X2,X3)<=>![X5]:(r2_hidden(X5,X4)<=>~(((X5!=X1&X5!=X2)&X5!=X3)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_enumset1)).
% 0.20/0.37  fof(d1_xboole_0, axiom, ![X1]:(v1_xboole_0(X1)<=>![X2]:~(r2_hidden(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_xboole_0)).
% 0.20/0.37  fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc1_xboole_0)).
% 0.20/0.37  fof(c_0_10, negated_conjecture, ~(![X1, X2, X3]:k2_xboole_0(k2_tarski(X1,X2),X3)!=k1_xboole_0), inference(assume_negation,[status(cth)],[t50_zfmisc_1])).
% 0.20/0.37  fof(c_0_11, plain, ![X34, X35]:k3_tarski(k2_tarski(X34,X35))=k2_xboole_0(X34,X35), inference(variable_rename,[status(thm)],[l51_zfmisc_1])).
% 0.20/0.37  fof(c_0_12, plain, ![X25, X26]:k1_enumset1(X25,X25,X26)=k2_tarski(X25,X26), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.20/0.37  fof(c_0_13, negated_conjecture, k2_xboole_0(k2_tarski(esk3_0,esk4_0),esk5_0)=k1_xboole_0, inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_10])])])).
% 0.20/0.37  cnf(c_0_14, plain, (k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.20/0.37  cnf(c_0_15, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.20/0.37  fof(c_0_16, plain, ![X27, X28, X29]:k2_enumset1(X27,X27,X28,X29)=k1_enumset1(X27,X28,X29), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.20/0.37  fof(c_0_17, plain, ![X30, X31, X32, X33]:k3_enumset1(X30,X30,X31,X32,X33)=k2_enumset1(X30,X31,X32,X33), inference(variable_rename,[status(thm)],[t72_enumset1])).
% 0.20/0.37  fof(c_0_18, plain, ![X12, X13]:k2_tarski(X12,X13)=k2_tarski(X13,X12), inference(variable_rename,[status(thm)],[commutativity_k2_tarski])).
% 0.20/0.37  fof(c_0_19, plain, ![X10, X11]:(v1_xboole_0(X10)|~v1_xboole_0(k2_xboole_0(X11,X10))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc5_xboole_0])])])).
% 0.20/0.37  cnf(c_0_20, negated_conjecture, (k2_xboole_0(k2_tarski(esk3_0,esk4_0),esk5_0)=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.20/0.37  cnf(c_0_21, plain, (k3_tarski(k1_enumset1(X1,X1,X2))=k2_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_14, c_0_15])).
% 0.20/0.37  cnf(c_0_22, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.20/0.37  cnf(c_0_23, plain, (k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.20/0.37  cnf(c_0_24, plain, (k2_tarski(X1,X2)=k2_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.20/0.37  cnf(c_0_25, plain, (v1_xboole_0(X1)|~v1_xboole_0(k2_xboole_0(X2,X1))), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.20/0.37  cnf(c_0_26, negated_conjecture, (k3_tarski(k3_enumset1(k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),esk5_0))=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_20, c_0_15]), c_0_21]), c_0_22]), c_0_22]), c_0_22]), c_0_23]), c_0_23]), c_0_23]), c_0_23])).
% 0.20/0.37  cnf(c_0_27, plain, (k3_enumset1(X1,X1,X1,X1,X2)=k3_enumset1(X2,X2,X2,X2,X1)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_24, c_0_15]), c_0_15]), c_0_22]), c_0_22]), c_0_23]), c_0_23])).
% 0.20/0.37  fof(c_0_28, plain, ![X14, X15, X16, X17, X18, X19, X20, X21, X22, X23]:(((~r2_hidden(X18,X17)|(X18=X14|X18=X15|X18=X16)|X17!=k1_enumset1(X14,X15,X16))&(((X19!=X14|r2_hidden(X19,X17)|X17!=k1_enumset1(X14,X15,X16))&(X19!=X15|r2_hidden(X19,X17)|X17!=k1_enumset1(X14,X15,X16)))&(X19!=X16|r2_hidden(X19,X17)|X17!=k1_enumset1(X14,X15,X16))))&((((esk2_4(X20,X21,X22,X23)!=X20|~r2_hidden(esk2_4(X20,X21,X22,X23),X23)|X23=k1_enumset1(X20,X21,X22))&(esk2_4(X20,X21,X22,X23)!=X21|~r2_hidden(esk2_4(X20,X21,X22,X23),X23)|X23=k1_enumset1(X20,X21,X22)))&(esk2_4(X20,X21,X22,X23)!=X22|~r2_hidden(esk2_4(X20,X21,X22,X23),X23)|X23=k1_enumset1(X20,X21,X22)))&(r2_hidden(esk2_4(X20,X21,X22,X23),X23)|(esk2_4(X20,X21,X22,X23)=X20|esk2_4(X20,X21,X22,X23)=X21|esk2_4(X20,X21,X22,X23)=X22)|X23=k1_enumset1(X20,X21,X22)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_enumset1])])])])])])).
% 0.20/0.37  fof(c_0_29, plain, ![X6, X7, X8]:((~v1_xboole_0(X6)|~r2_hidden(X7,X6))&(r2_hidden(esk1_1(X8),X8)|v1_xboole_0(X8))), inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d1_xboole_0])])])])])])).
% 0.20/0.37  cnf(c_0_30, plain, (v1_xboole_0(X1)|~v1_xboole_0(k3_tarski(k3_enumset1(X2,X2,X2,X2,X1)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_25, c_0_21]), c_0_22]), c_0_23])).
% 0.20/0.37  cnf(c_0_31, negated_conjecture, (k3_tarski(k3_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk4_0)))=k1_xboole_0), inference(rw,[status(thm)],[c_0_26, c_0_27])).
% 0.20/0.37  cnf(c_0_32, plain, (v1_xboole_0(k1_xboole_0)), inference(split_conjunct,[status(thm)],[fc1_xboole_0])).
% 0.20/0.37  cnf(c_0_33, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k1_enumset1(X4,X2,X5)), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.20/0.37  cnf(c_0_34, plain, (~v1_xboole_0(X1)|~r2_hidden(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.20/0.37  cnf(c_0_35, negated_conjecture, (v1_xboole_0(k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk4_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_30, c_0_31]), c_0_32])])).
% 0.20/0.37  cnf(c_0_36, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k3_enumset1(X4,X4,X4,X2,X5)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_33, c_0_22]), c_0_23])).
% 0.20/0.37  cnf(c_0_37, negated_conjecture, (~r2_hidden(X1,k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk4_0))), inference(spm,[status(thm)],[c_0_34, c_0_35])).
% 0.20/0.37  cnf(c_0_38, plain, (r2_hidden(X1,k3_enumset1(X2,X2,X2,X1,X3))), inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_36])])).
% 0.20/0.37  cnf(c_0_39, negated_conjecture, ($false), inference(spm,[status(thm)],[c_0_37, c_0_38]), ['proof']).
% 0.20/0.37  # SZS output end CNFRefutation
% 0.20/0.37  # Proof object total steps             : 40
% 0.20/0.37  # Proof object clause steps            : 20
% 0.20/0.37  # Proof object formula steps           : 20
% 0.20/0.37  # Proof object conjectures             : 9
% 0.20/0.37  # Proof object clause conjectures      : 6
% 0.20/0.37  # Proof object formula conjectures     : 3
% 0.20/0.37  # Proof object initial clauses used    : 10
% 0.20/0.37  # Proof object initial formulas used   : 10
% 0.20/0.37  # Proof object generating inferences   : 3
% 0.20/0.37  # Proof object simplifying inferences  : 26
% 0.20/0.37  # Training examples: 0 positive, 0 negative
% 0.20/0.37  # Parsed axioms                        : 10
% 0.20/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.20/0.37  # Initial clauses                      : 18
% 0.20/0.37  # Removed in clause preprocessing      : 4
% 0.20/0.37  # Initial clauses in saturation        : 14
% 0.20/0.37  # Processed clauses                    : 30
% 0.20/0.37  # ...of these trivial                  : 0
% 0.20/0.37  # ...subsumed                          : 0
% 0.20/0.37  # ...remaining for further processing  : 30
% 0.20/0.37  # Other redundant clauses eliminated   : 7
% 0.20/0.37  # Clauses deleted for lack of memory   : 0
% 0.20/0.37  # Backward-subsumed                    : 0
% 0.20/0.37  # Backward-rewritten                   : 1
% 0.20/0.37  # Generated clauses                    : 13
% 0.20/0.37  # ...of the previous two non-trivial   : 12
% 0.20/0.37  # Contextual simplify-reflections      : 0
% 0.20/0.37  # Paramodulations                      : 9
% 0.20/0.37  # Factorizations                       : 0
% 0.20/0.37  # Equation resolutions                 : 7
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
% 0.20/0.37  # Current number of processed clauses  : 11
% 0.20/0.37  #    Positive orientable unit clauses  : 5
% 0.20/0.37  #    Positive unorientable unit clauses: 0
% 0.20/0.37  #    Negative unit clauses             : 2
% 0.20/0.37  #    Non-unit-clauses                  : 4
% 0.20/0.37  # Current number of unprocessed clauses: 10
% 0.20/0.37  # ...number of literals in the above   : 24
% 0.20/0.37  # Current number of archived formulas  : 0
% 0.20/0.37  # Current number of archived clauses   : 19
% 0.20/0.37  # Clause-clause subsumption calls (NU) : 6
% 0.20/0.37  # Rec. Clause-clause subsumption calls : 6
% 0.20/0.37  # Non-unit clause-clause subsumptions  : 0
% 0.20/0.37  # Unit Clause-clause subsumption calls : 1
% 0.20/0.37  # Rewrite failures with RHS unbound    : 0
% 0.20/0.37  # BW rewrite match attempts            : 16
% 0.20/0.37  # BW rewrite match successes           : 6
% 0.20/0.37  # Condensation attempts                : 0
% 0.20/0.37  # Condensation successes               : 0
% 0.20/0.37  # Termbank termtop insertions          : 1109
% 0.20/0.38  
% 0.20/0.38  # -------------------------------------------------
% 0.20/0.38  # User time                : 0.026 s
% 0.20/0.38  # System time              : 0.005 s
% 0.20/0.38  # Total time               : 0.032 s
% 0.20/0.38  # Maximum resident set size: 1568 pages
%------------------------------------------------------------------------------
