%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n008.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:32:41 EST 2020

% Result     : Theorem 0.12s
% Output     : CNFRefutation 0.12s
% Verified   : 
% Statistics : Number of formulae       :   56 ( 114 expanded)
%              Number of clauses        :   31 (  51 expanded)
%              Number of leaves         :   12 (  29 expanded)
%              Depth                    :    9
%              Number of atoms          :   84 ( 201 expanded)
%              Number of equality atoms :   38 (  61 expanded)
%              Maximal formula depth    :    9 (   3 average)
%              Maximal clause size      :    4 (   1 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t63_xboole_1,conjecture,(
    ! [X1,X2,X3] :
      ( ( r1_tarski(X1,X2)
        & r1_xboole_0(X2,X3) )
     => r1_xboole_0(X1,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t63_xboole_1)).

fof(t4_xboole_0,axiom,(
    ! [X1,X2] :
      ( ~ ( ~ r1_xboole_0(X1,X2)
          & ! [X3] : ~ r2_hidden(X3,k3_xboole_0(X1,X2)) )
      & ~ ( ? [X3] : r2_hidden(X3,k3_xboole_0(X1,X2))
          & r1_xboole_0(X1,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t4_xboole_0)).

fof(t48_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t48_xboole_1)).

fof(l32_xboole_1,axiom,(
    ! [X1,X2] :
      ( k4_xboole_0(X1,X2) = k1_xboole_0
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l32_xboole_1)).

fof(t7_xboole_0,axiom,(
    ! [X1] :
      ~ ( X1 != k1_xboole_0
        & ! [X2] : ~ r2_hidden(X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_xboole_0)).

fof(symmetry_r1_xboole_0,axiom,(
    ! [X1,X2] :
      ( r1_xboole_0(X1,X2)
     => r1_xboole_0(X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',symmetry_r1_xboole_0)).

fof(t39_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,k4_xboole_0(X2,X1)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t39_xboole_1)).

fof(t1_boole,axiom,(
    ! [X1] : k2_xboole_0(X1,k1_xboole_0) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t1_boole)).

fof(t47_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,k3_xboole_0(X1,X2)) = k4_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t47_xboole_1)).

fof(t41_xboole_1,axiom,(
    ! [X1,X2,X3] : k4_xboole_0(k4_xboole_0(X1,X2),X3) = k4_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t41_xboole_1)).

fof(t3_boole,axiom,(
    ! [X1] : k4_xboole_0(X1,k1_xboole_0) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_boole)).

fof(t2_boole,axiom,(
    ! [X1] : k3_xboole_0(X1,k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_boole)).

fof(c_0_12,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( ( r1_tarski(X1,X2)
          & r1_xboole_0(X2,X3) )
       => r1_xboole_0(X1,X3) ) ),
    inference(assume_negation,[status(cth)],[t63_xboole_1])).

fof(c_0_13,plain,(
    ! [X6,X7,X9,X10,X11] :
      ( ( r1_xboole_0(X6,X7)
        | r2_hidden(esk1_2(X6,X7),k3_xboole_0(X6,X7)) )
      & ( ~ r2_hidden(X11,k3_xboole_0(X9,X10))
        | ~ r1_xboole_0(X9,X10) ) ) ),
    inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t4_xboole_0])])])])])])).

fof(c_0_14,plain,(
    ! [X26,X27] : k4_xboole_0(X26,k4_xboole_0(X26,X27)) = k3_xboole_0(X26,X27) ),
    inference(variable_rename,[status(thm)],[t48_xboole_1])).

fof(c_0_15,plain,(
    ! [X14,X15] :
      ( ( k4_xboole_0(X14,X15) != k1_xboole_0
        | r1_tarski(X14,X15) )
      & ( ~ r1_tarski(X14,X15)
        | k4_xboole_0(X14,X15) = k1_xboole_0 ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l32_xboole_1])])).

fof(c_0_16,negated_conjecture,
    ( r1_tarski(esk3_0,esk4_0)
    & r1_xboole_0(esk4_0,esk5_0)
    & ~ r1_xboole_0(esk3_0,esk5_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_12])])])).

cnf(c_0_17,plain,
    ( ~ r2_hidden(X1,k3_xboole_0(X2,X3))
    | ~ r1_xboole_0(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_18,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

fof(c_0_19,plain,(
    ! [X12] :
      ( X12 = k1_xboole_0
      | r2_hidden(esk2_1(X12),X12) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t7_xboole_0])])])])).

fof(c_0_20,plain,(
    ! [X4,X5] :
      ( ~ r1_xboole_0(X4,X5)
      | r1_xboole_0(X5,X4) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[symmetry_r1_xboole_0])])).

fof(c_0_21,plain,(
    ! [X18,X19] : k2_xboole_0(X18,k4_xboole_0(X19,X18)) = k2_xboole_0(X18,X19) ),
    inference(variable_rename,[status(thm)],[t39_xboole_1])).

cnf(c_0_22,plain,
    ( k4_xboole_0(X1,X2) = k1_xboole_0
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_23,negated_conjecture,
    ( r1_tarski(esk3_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

fof(c_0_24,plain,(
    ! [X16] : k2_xboole_0(X16,k1_xboole_0) = X16 ),
    inference(variable_rename,[status(thm)],[t1_boole])).

fof(c_0_25,plain,(
    ! [X24,X25] : k4_xboole_0(X24,k3_xboole_0(X24,X25)) = k4_xboole_0(X24,X25) ),
    inference(variable_rename,[status(thm)],[t47_xboole_1])).

cnf(c_0_26,plain,
    ( ~ r1_xboole_0(X2,X3)
    | ~ r2_hidden(X1,k4_xboole_0(X2,k4_xboole_0(X2,X3))) ),
    inference(rw,[status(thm)],[c_0_17,c_0_18])).

cnf(c_0_27,plain,
    ( X1 = k1_xboole_0
    | r2_hidden(esk2_1(X1),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_28,plain,
    ( r1_xboole_0(X2,X1)
    | ~ r1_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_29,negated_conjecture,
    ( r1_xboole_0(esk4_0,esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

fof(c_0_30,plain,(
    ! [X21,X22,X23] : k4_xboole_0(k4_xboole_0(X21,X22),X23) = k4_xboole_0(X21,k2_xboole_0(X22,X23)) ),
    inference(variable_rename,[status(thm)],[t41_xboole_1])).

cnf(c_0_31,plain,
    ( k2_xboole_0(X1,k4_xboole_0(X2,X1)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_32,negated_conjecture,
    ( k4_xboole_0(esk3_0,esk4_0) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_22,c_0_23])).

cnf(c_0_33,plain,
    ( k2_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_34,plain,
    ( k4_xboole_0(X1,k3_xboole_0(X1,X2)) = k4_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_35,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k1_xboole_0
    | ~ r1_xboole_0(X1,X2) ),
    inference(spm,[status(thm)],[c_0_26,c_0_27])).

cnf(c_0_36,negated_conjecture,
    ( r1_xboole_0(esk5_0,esk4_0) ),
    inference(spm,[status(thm)],[c_0_28,c_0_29])).

fof(c_0_37,plain,(
    ! [X20] : k4_xboole_0(X20,k1_xboole_0) = X20 ),
    inference(variable_rename,[status(thm)],[t3_boole])).

fof(c_0_38,plain,(
    ! [X17] : k3_xboole_0(X17,k1_xboole_0) = k1_xboole_0 ),
    inference(variable_rename,[status(thm)],[t2_boole])).

cnf(c_0_39,plain,
    ( k4_xboole_0(k4_xboole_0(X1,X2),X3) = k4_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_40,negated_conjecture,
    ( k2_xboole_0(esk4_0,esk3_0) = esk4_0 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_32]),c_0_33])).

cnf(c_0_41,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,k4_xboole_0(X1,X2))) = k4_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_34,c_0_18])).

cnf(c_0_42,negated_conjecture,
    ( k4_xboole_0(esk5_0,k4_xboole_0(esk5_0,esk4_0)) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_35,c_0_36])).

cnf(c_0_43,plain,
    ( k4_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_44,plain,
    ( k3_xboole_0(X1,k1_xboole_0) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_38])).

cnf(c_0_45,plain,
    ( r1_xboole_0(X1,X2)
    | r2_hidden(esk1_2(X1,X2),k3_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_46,negated_conjecture,
    ( k4_xboole_0(k4_xboole_0(X1,esk4_0),esk3_0) = k4_xboole_0(X1,esk4_0) ),
    inference(spm,[status(thm)],[c_0_39,c_0_40])).

cnf(c_0_47,negated_conjecture,
    ( k4_xboole_0(esk5_0,esk4_0) = esk5_0 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41,c_0_42]),c_0_43])).

cnf(c_0_48,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,k1_xboole_0)) = k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_44,c_0_18])).

cnf(c_0_49,plain,
    ( r1_xboole_0(X1,X2)
    | r2_hidden(esk1_2(X1,X2),k4_xboole_0(X1,k4_xboole_0(X1,X2))) ),
    inference(rw,[status(thm)],[c_0_45,c_0_18])).

cnf(c_0_50,negated_conjecture,
    ( k4_xboole_0(esk5_0,esk3_0) = esk5_0 ),
    inference(spm,[status(thm)],[c_0_46,c_0_47])).

cnf(c_0_51,plain,
    ( k4_xboole_0(X1,X1) = k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_48,c_0_43])).

cnf(c_0_52,negated_conjecture,
    ( ~ r2_hidden(X1,k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26,c_0_42]),c_0_36])])).

cnf(c_0_53,negated_conjecture,
    ( r1_xboole_0(esk5_0,esk3_0) ),
    inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49,c_0_50]),c_0_51]),c_0_52])).

cnf(c_0_54,negated_conjecture,
    ( ~ r1_xboole_0(esk3_0,esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_55,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_28,c_0_53]),c_0_54]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.33  % Computer   : n008.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 14:46:15 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.12/0.37  # AutoSched0-Mode selected heuristic G_E___103_C18_F1_PI_AE_Q4_CS_SP_S0Y
% 0.12/0.37  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.12/0.37  #
% 0.12/0.37  # Preprocessing time       : 0.027 s
% 0.12/0.37  
% 0.12/0.37  # Proof found!
% 0.12/0.37  # SZS status Theorem
% 0.12/0.37  # SZS output start CNFRefutation
% 0.12/0.37  fof(t63_xboole_1, conjecture, ![X1, X2, X3]:((r1_tarski(X1,X2)&r1_xboole_0(X2,X3))=>r1_xboole_0(X1,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t63_xboole_1)).
% 0.12/0.37  fof(t4_xboole_0, axiom, ![X1, X2]:(~((~(r1_xboole_0(X1,X2))&![X3]:~(r2_hidden(X3,k3_xboole_0(X1,X2)))))&~((?[X3]:r2_hidden(X3,k3_xboole_0(X1,X2))&r1_xboole_0(X1,X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t4_xboole_0)).
% 0.12/0.37  fof(t48_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,k4_xboole_0(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t48_xboole_1)).
% 0.12/0.37  fof(l32_xboole_1, axiom, ![X1, X2]:(k4_xboole_0(X1,X2)=k1_xboole_0<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l32_xboole_1)).
% 0.12/0.37  fof(t7_xboole_0, axiom, ![X1]:~((X1!=k1_xboole_0&![X2]:~(r2_hidden(X2,X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t7_xboole_0)).
% 0.12/0.37  fof(symmetry_r1_xboole_0, axiom, ![X1, X2]:(r1_xboole_0(X1,X2)=>r1_xboole_0(X2,X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', symmetry_r1_xboole_0)).
% 0.12/0.37  fof(t39_xboole_1, axiom, ![X1, X2]:k2_xboole_0(X1,k4_xboole_0(X2,X1))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t39_xboole_1)).
% 0.12/0.37  fof(t1_boole, axiom, ![X1]:k2_xboole_0(X1,k1_xboole_0)=X1, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t1_boole)).
% 0.12/0.37  fof(t47_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,k3_xboole_0(X1,X2))=k4_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t47_xboole_1)).
% 0.12/0.37  fof(t41_xboole_1, axiom, ![X1, X2, X3]:k4_xboole_0(k4_xboole_0(X1,X2),X3)=k4_xboole_0(X1,k2_xboole_0(X2,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t41_xboole_1)).
% 0.12/0.37  fof(t3_boole, axiom, ![X1]:k4_xboole_0(X1,k1_xboole_0)=X1, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t3_boole)).
% 0.12/0.37  fof(t2_boole, axiom, ![X1]:k3_xboole_0(X1,k1_xboole_0)=k1_xboole_0, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t2_boole)).
% 0.12/0.37  fof(c_0_12, negated_conjecture, ~(![X1, X2, X3]:((r1_tarski(X1,X2)&r1_xboole_0(X2,X3))=>r1_xboole_0(X1,X3))), inference(assume_negation,[status(cth)],[t63_xboole_1])).
% 0.12/0.37  fof(c_0_13, plain, ![X6, X7, X9, X10, X11]:((r1_xboole_0(X6,X7)|r2_hidden(esk1_2(X6,X7),k3_xboole_0(X6,X7)))&(~r2_hidden(X11,k3_xboole_0(X9,X10))|~r1_xboole_0(X9,X10))), inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t4_xboole_0])])])])])])).
% 0.12/0.37  fof(c_0_14, plain, ![X26, X27]:k4_xboole_0(X26,k4_xboole_0(X26,X27))=k3_xboole_0(X26,X27), inference(variable_rename,[status(thm)],[t48_xboole_1])).
% 0.12/0.37  fof(c_0_15, plain, ![X14, X15]:((k4_xboole_0(X14,X15)!=k1_xboole_0|r1_tarski(X14,X15))&(~r1_tarski(X14,X15)|k4_xboole_0(X14,X15)=k1_xboole_0)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l32_xboole_1])])).
% 0.12/0.37  fof(c_0_16, negated_conjecture, ((r1_tarski(esk3_0,esk4_0)&r1_xboole_0(esk4_0,esk5_0))&~r1_xboole_0(esk3_0,esk5_0)), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_12])])])).
% 0.12/0.37  cnf(c_0_17, plain, (~r2_hidden(X1,k3_xboole_0(X2,X3))|~r1_xboole_0(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.12/0.37  cnf(c_0_18, plain, (k4_xboole_0(X1,k4_xboole_0(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.12/0.37  fof(c_0_19, plain, ![X12]:(X12=k1_xboole_0|r2_hidden(esk2_1(X12),X12)), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t7_xboole_0])])])])).
% 0.12/0.37  fof(c_0_20, plain, ![X4, X5]:(~r1_xboole_0(X4,X5)|r1_xboole_0(X5,X4)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[symmetry_r1_xboole_0])])).
% 0.12/0.37  fof(c_0_21, plain, ![X18, X19]:k2_xboole_0(X18,k4_xboole_0(X19,X18))=k2_xboole_0(X18,X19), inference(variable_rename,[status(thm)],[t39_xboole_1])).
% 0.12/0.37  cnf(c_0_22, plain, (k4_xboole_0(X1,X2)=k1_xboole_0|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.12/0.37  cnf(c_0_23, negated_conjecture, (r1_tarski(esk3_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.12/0.37  fof(c_0_24, plain, ![X16]:k2_xboole_0(X16,k1_xboole_0)=X16, inference(variable_rename,[status(thm)],[t1_boole])).
% 0.12/0.37  fof(c_0_25, plain, ![X24, X25]:k4_xboole_0(X24,k3_xboole_0(X24,X25))=k4_xboole_0(X24,X25), inference(variable_rename,[status(thm)],[t47_xboole_1])).
% 0.12/0.37  cnf(c_0_26, plain, (~r1_xboole_0(X2,X3)|~r2_hidden(X1,k4_xboole_0(X2,k4_xboole_0(X2,X3)))), inference(rw,[status(thm)],[c_0_17, c_0_18])).
% 0.12/0.37  cnf(c_0_27, plain, (X1=k1_xboole_0|r2_hidden(esk2_1(X1),X1)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.12/0.37  cnf(c_0_28, plain, (r1_xboole_0(X2,X1)|~r1_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.12/0.37  cnf(c_0_29, negated_conjecture, (r1_xboole_0(esk4_0,esk5_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.12/0.37  fof(c_0_30, plain, ![X21, X22, X23]:k4_xboole_0(k4_xboole_0(X21,X22),X23)=k4_xboole_0(X21,k2_xboole_0(X22,X23)), inference(variable_rename,[status(thm)],[t41_xboole_1])).
% 0.12/0.37  cnf(c_0_31, plain, (k2_xboole_0(X1,k4_xboole_0(X2,X1))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.12/0.37  cnf(c_0_32, negated_conjecture, (k4_xboole_0(esk3_0,esk4_0)=k1_xboole_0), inference(spm,[status(thm)],[c_0_22, c_0_23])).
% 0.12/0.37  cnf(c_0_33, plain, (k2_xboole_0(X1,k1_xboole_0)=X1), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.12/0.37  cnf(c_0_34, plain, (k4_xboole_0(X1,k3_xboole_0(X1,X2))=k4_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.12/0.37  cnf(c_0_35, plain, (k4_xboole_0(X1,k4_xboole_0(X1,X2))=k1_xboole_0|~r1_xboole_0(X1,X2)), inference(spm,[status(thm)],[c_0_26, c_0_27])).
% 0.12/0.37  cnf(c_0_36, negated_conjecture, (r1_xboole_0(esk5_0,esk4_0)), inference(spm,[status(thm)],[c_0_28, c_0_29])).
% 0.12/0.37  fof(c_0_37, plain, ![X20]:k4_xboole_0(X20,k1_xboole_0)=X20, inference(variable_rename,[status(thm)],[t3_boole])).
% 0.12/0.37  fof(c_0_38, plain, ![X17]:k3_xboole_0(X17,k1_xboole_0)=k1_xboole_0, inference(variable_rename,[status(thm)],[t2_boole])).
% 0.12/0.37  cnf(c_0_39, plain, (k4_xboole_0(k4_xboole_0(X1,X2),X3)=k4_xboole_0(X1,k2_xboole_0(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.12/0.37  cnf(c_0_40, negated_conjecture, (k2_xboole_0(esk4_0,esk3_0)=esk4_0), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_32]), c_0_33])).
% 0.12/0.37  cnf(c_0_41, plain, (k4_xboole_0(X1,k4_xboole_0(X1,k4_xboole_0(X1,X2)))=k4_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_34, c_0_18])).
% 0.12/0.37  cnf(c_0_42, negated_conjecture, (k4_xboole_0(esk5_0,k4_xboole_0(esk5_0,esk4_0))=k1_xboole_0), inference(spm,[status(thm)],[c_0_35, c_0_36])).
% 0.12/0.37  cnf(c_0_43, plain, (k4_xboole_0(X1,k1_xboole_0)=X1), inference(split_conjunct,[status(thm)],[c_0_37])).
% 0.12/0.37  cnf(c_0_44, plain, (k3_xboole_0(X1,k1_xboole_0)=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_38])).
% 0.12/0.37  cnf(c_0_45, plain, (r1_xboole_0(X1,X2)|r2_hidden(esk1_2(X1,X2),k3_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.12/0.37  cnf(c_0_46, negated_conjecture, (k4_xboole_0(k4_xboole_0(X1,esk4_0),esk3_0)=k4_xboole_0(X1,esk4_0)), inference(spm,[status(thm)],[c_0_39, c_0_40])).
% 0.12/0.37  cnf(c_0_47, negated_conjecture, (k4_xboole_0(esk5_0,esk4_0)=esk5_0), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41, c_0_42]), c_0_43])).
% 0.12/0.37  cnf(c_0_48, plain, (k4_xboole_0(X1,k4_xboole_0(X1,k1_xboole_0))=k1_xboole_0), inference(rw,[status(thm)],[c_0_44, c_0_18])).
% 0.12/0.37  cnf(c_0_49, plain, (r1_xboole_0(X1,X2)|r2_hidden(esk1_2(X1,X2),k4_xboole_0(X1,k4_xboole_0(X1,X2)))), inference(rw,[status(thm)],[c_0_45, c_0_18])).
% 0.12/0.37  cnf(c_0_50, negated_conjecture, (k4_xboole_0(esk5_0,esk3_0)=esk5_0), inference(spm,[status(thm)],[c_0_46, c_0_47])).
% 0.12/0.37  cnf(c_0_51, plain, (k4_xboole_0(X1,X1)=k1_xboole_0), inference(rw,[status(thm)],[c_0_48, c_0_43])).
% 0.12/0.37  cnf(c_0_52, negated_conjecture, (~r2_hidden(X1,k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26, c_0_42]), c_0_36])])).
% 0.12/0.37  cnf(c_0_53, negated_conjecture, (r1_xboole_0(esk5_0,esk3_0)), inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49, c_0_50]), c_0_51]), c_0_52])).
% 0.12/0.37  cnf(c_0_54, negated_conjecture, (~r1_xboole_0(esk3_0,esk5_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.12/0.37  cnf(c_0_55, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_28, c_0_53]), c_0_54]), ['proof']).
% 0.12/0.37  # SZS output end CNFRefutation
% 0.12/0.37  # Proof object total steps             : 56
% 0.12/0.37  # Proof object clause steps            : 31
% 0.12/0.37  # Proof object formula steps           : 25
% 0.12/0.37  # Proof object conjectures             : 16
% 0.12/0.37  # Proof object clause conjectures      : 13
% 0.12/0.37  # Proof object formula conjectures     : 3
% 0.12/0.37  # Proof object initial clauses used    : 15
% 0.12/0.37  # Proof object initial formulas used   : 12
% 0.12/0.37  # Proof object generating inferences   : 11
% 0.12/0.37  # Proof object simplifying inferences  : 12
% 0.12/0.37  # Training examples: 0 positive, 0 negative
% 0.12/0.37  # Parsed axioms                        : 12
% 0.12/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.12/0.37  # Initial clauses                      : 16
% 0.12/0.37  # Removed in clause preprocessing      : 1
% 0.12/0.37  # Initial clauses in saturation        : 15
% 0.12/0.37  # Processed clauses                    : 175
% 0.12/0.37  # ...of these trivial                  : 9
% 0.12/0.37  # ...subsumed                          : 44
% 0.12/0.37  # ...remaining for further processing  : 122
% 0.12/0.37  # Other redundant clauses eliminated   : 0
% 0.12/0.37  # Clauses deleted for lack of memory   : 0
% 0.12/0.37  # Backward-subsumed                    : 4
% 0.12/0.37  # Backward-rewritten                   : 35
% 0.12/0.37  # Generated clauses                    : 724
% 0.12/0.37  # ...of the previous two non-trivial   : 534
% 0.12/0.37  # Contextual simplify-reflections      : 0
% 0.12/0.37  # Paramodulations                      : 701
% 0.12/0.37  # Factorizations                       : 0
% 0.12/0.37  # Equation resolutions                 : 0
% 0.12/0.37  # Propositional unsat checks           : 0
% 0.12/0.37  #    Propositional check models        : 0
% 0.12/0.37  #    Propositional check unsatisfiable : 0
% 0.12/0.37  #    Propositional clauses             : 0
% 0.12/0.37  #    Propositional clauses after purity: 0
% 0.12/0.37  #    Propositional unsat core size     : 0
% 0.12/0.37  #    Propositional preprocessing time  : 0.000
% 0.12/0.37  #    Propositional encoding time       : 0.000
% 0.12/0.37  #    Propositional solver time         : 0.000
% 0.12/0.37  #    Success case prop preproc time    : 0.000
% 0.12/0.37  #    Success case prop encoding time   : 0.000
% 0.12/0.37  #    Success case prop solver time     : 0.000
% 0.12/0.37  # Current number of processed clauses  : 72
% 0.12/0.37  #    Positive orientable unit clauses  : 34
% 0.12/0.37  #    Positive unorientable unit clauses: 0
% 0.12/0.37  #    Negative unit clauses             : 8
% 0.12/0.37  #    Non-unit-clauses                  : 30
% 0.12/0.37  # Current number of unprocessed clauses: 368
% 0.12/0.37  # ...number of literals in the above   : 638
% 0.12/0.37  # Current number of archived formulas  : 0
% 0.12/0.37  # Current number of archived clauses   : 45
% 0.12/0.37  # Clause-clause subsumption calls (NU) : 1126
% 0.12/0.37  # Rec. Clause-clause subsumption calls : 944
% 0.12/0.37  # Non-unit clause-clause subsumptions  : 40
% 0.12/0.37  # Unit Clause-clause subsumption calls : 327
% 0.12/0.37  # Rewrite failures with RHS unbound    : 0
% 0.12/0.37  # BW rewrite match attempts            : 20
% 0.12/0.37  # BW rewrite match successes           : 10
% 0.12/0.37  # Condensation attempts                : 0
% 0.12/0.37  # Condensation successes               : 0
% 0.12/0.37  # Termbank termtop insertions          : 7933
% 0.12/0.38  
% 0.12/0.38  # -------------------------------------------------
% 0.12/0.38  # User time                : 0.038 s
% 0.12/0.38  # System time              : 0.002 s
% 0.12/0.38  # Total time               : 0.040 s
% 0.12/0.38  # Maximum resident set size: 1568 pages
%------------------------------------------------------------------------------
