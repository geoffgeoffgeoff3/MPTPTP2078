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
% DateTime   : Thu Dec  3 10:43:44 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   44 ( 126 expanded)
%              Number of clauses        :   29 (  59 expanded)
%              Number of leaves         :    7 (  31 expanded)
%              Depth                    :    8
%              Number of atoms          :  154 ( 420 expanded)
%              Number of equality atoms :   63 ( 185 expanded)
%              Maximal formula depth    :   22 (   4 average)
%              Maximal clause size      :   28 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t129_zfmisc_1,conjecture,(
    ! [X1,X2,X3,X4] :
      ( r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,k1_tarski(X4)))
    <=> ( r2_hidden(X1,X3)
        & X2 = X4 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t129_zfmisc_1)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(d5_xboole_0,axiom,(
    ! [X1,X2,X3] :
      ( X3 = k4_xboole_0(X1,X2)
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ( r2_hidden(X4,X1)
            & ~ r2_hidden(X4,X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d5_xboole_0)).

fof(t64_zfmisc_1,axiom,(
    ! [X1,X2,X3] :
      ( r2_hidden(X1,k4_xboole_0(X2,k1_tarski(X3)))
    <=> ( r2_hidden(X1,X2)
        & X1 != X3 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t64_zfmisc_1)).

fof(l54_zfmisc_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,X4))
    <=> ( r2_hidden(X1,X3)
        & r2_hidden(X2,X4) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l54_zfmisc_1)).

fof(d1_enumset1,axiom,(
    ! [X1,X2,X3,X4] :
      ( X4 = k1_enumset1(X1,X2,X3)
    <=> ! [X5] :
          ( r2_hidden(X5,X4)
        <=> ~ ( X5 != X1
              & X5 != X2
              & X5 != X3 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_enumset1)).

fof(c_0_7,negated_conjecture,(
    ~ ! [X1,X2,X3,X4] :
        ( r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,k1_tarski(X4)))
      <=> ( r2_hidden(X1,X3)
          & X2 = X4 ) ) ),
    inference(assume_negation,[status(cth)],[t129_zfmisc_1])).

fof(c_0_8,negated_conjecture,
    ( ( ~ r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(esk5_0,k1_tarski(esk6_0)))
      | ~ r2_hidden(esk3_0,esk5_0)
      | esk4_0 != esk6_0 )
    & ( r2_hidden(esk3_0,esk5_0)
      | r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(esk5_0,k1_tarski(esk6_0))) )
    & ( esk4_0 = esk6_0
      | r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(esk5_0,k1_tarski(esk6_0))) ) ),
    inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_7])])])])).

fof(c_0_9,plain,(
    ! [X26] : k2_tarski(X26,X26) = k1_tarski(X26) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_10,plain,(
    ! [X27,X28] : k1_enumset1(X27,X27,X28) = k2_tarski(X27,X28) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_11,plain,(
    ! [X6,X7,X8,X9,X10,X11,X12,X13] :
      ( ( r2_hidden(X9,X6)
        | ~ r2_hidden(X9,X8)
        | X8 != k4_xboole_0(X6,X7) )
      & ( ~ r2_hidden(X9,X7)
        | ~ r2_hidden(X9,X8)
        | X8 != k4_xboole_0(X6,X7) )
      & ( ~ r2_hidden(X10,X6)
        | r2_hidden(X10,X7)
        | r2_hidden(X10,X8)
        | X8 != k4_xboole_0(X6,X7) )
      & ( ~ r2_hidden(esk1_3(X11,X12,X13),X13)
        | ~ r2_hidden(esk1_3(X11,X12,X13),X11)
        | r2_hidden(esk1_3(X11,X12,X13),X12)
        | X13 = k4_xboole_0(X11,X12) )
      & ( r2_hidden(esk1_3(X11,X12,X13),X11)
        | r2_hidden(esk1_3(X11,X12,X13),X13)
        | X13 = k4_xboole_0(X11,X12) )
      & ( ~ r2_hidden(esk1_3(X11,X12,X13),X12)
        | r2_hidden(esk1_3(X11,X12,X13),X13)
        | X13 = k4_xboole_0(X11,X12) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d5_xboole_0])])])])])])])).

fof(c_0_12,plain,(
    ! [X33,X34,X35] :
      ( ( r2_hidden(X33,X34)
        | ~ r2_hidden(X33,k4_xboole_0(X34,k1_tarski(X35))) )
      & ( X33 != X35
        | ~ r2_hidden(X33,k4_xboole_0(X34,k1_tarski(X35))) )
      & ( ~ r2_hidden(X33,X34)
        | X33 = X35
        | r2_hidden(X33,k4_xboole_0(X34,k1_tarski(X35))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t64_zfmisc_1])])])).

cnf(c_0_13,negated_conjecture,
    ( r2_hidden(esk3_0,esk5_0)
    | r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(esk5_0,k1_tarski(esk6_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_14,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_15,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

fof(c_0_16,plain,(
    ! [X29,X30,X31,X32] :
      ( ( r2_hidden(X29,X31)
        | ~ r2_hidden(k4_tarski(X29,X30),k2_zfmisc_1(X31,X32)) )
      & ( r2_hidden(X30,X32)
        | ~ r2_hidden(k4_tarski(X29,X30),k2_zfmisc_1(X31,X32)) )
      & ( ~ r2_hidden(X29,X31)
        | ~ r2_hidden(X30,X32)
        | r2_hidden(k4_tarski(X29,X30),k2_zfmisc_1(X31,X32)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l54_zfmisc_1])])])).

cnf(c_0_17,plain,
    ( ~ r2_hidden(X1,X2)
    | ~ r2_hidden(X1,X3)
    | X3 != k4_xboole_0(X4,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_18,plain,
    ( X1 = X3
    | r2_hidden(X1,k4_xboole_0(X2,k1_tarski(X3)))
    | ~ r2_hidden(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_19,negated_conjecture,
    ( esk4_0 = esk6_0
    | r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(esk5_0,k1_tarski(esk6_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

fof(c_0_20,plain,(
    ! [X15,X16,X17,X18,X19,X20,X21,X22,X23,X24] :
      ( ( ~ r2_hidden(X19,X18)
        | X19 = X15
        | X19 = X16
        | X19 = X17
        | X18 != k1_enumset1(X15,X16,X17) )
      & ( X20 != X15
        | r2_hidden(X20,X18)
        | X18 != k1_enumset1(X15,X16,X17) )
      & ( X20 != X16
        | r2_hidden(X20,X18)
        | X18 != k1_enumset1(X15,X16,X17) )
      & ( X20 != X17
        | r2_hidden(X20,X18)
        | X18 != k1_enumset1(X15,X16,X17) )
      & ( esk2_4(X21,X22,X23,X24) != X21
        | ~ r2_hidden(esk2_4(X21,X22,X23,X24),X24)
        | X24 = k1_enumset1(X21,X22,X23) )
      & ( esk2_4(X21,X22,X23,X24) != X22
        | ~ r2_hidden(esk2_4(X21,X22,X23,X24),X24)
        | X24 = k1_enumset1(X21,X22,X23) )
      & ( esk2_4(X21,X22,X23,X24) != X23
        | ~ r2_hidden(esk2_4(X21,X22,X23,X24),X24)
        | X24 = k1_enumset1(X21,X22,X23) )
      & ( r2_hidden(esk2_4(X21,X22,X23,X24),X24)
        | esk2_4(X21,X22,X23,X24) = X21
        | esk2_4(X21,X22,X23,X24) = X22
        | esk2_4(X21,X22,X23,X24) = X23
        | X24 = k1_enumset1(X21,X22,X23) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_enumset1])])])])])])).

cnf(c_0_21,negated_conjecture,
    ( ~ r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(esk5_0,k1_tarski(esk6_0)))
    | ~ r2_hidden(esk3_0,esk5_0)
    | esk4_0 != esk6_0 ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_22,negated_conjecture,
    ( r2_hidden(esk3_0,esk5_0)
    | r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(esk5_0,k1_enumset1(esk6_0,esk6_0,esk6_0))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_13,c_0_14]),c_0_15])).

cnf(c_0_23,plain,
    ( r2_hidden(X1,X2)
    | ~ r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(X2,X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_24,plain,
    ( ~ r2_hidden(X1,k4_xboole_0(X2,X3))
    | ~ r2_hidden(X1,X3) ),
    inference(er,[status(thm)],[c_0_17])).

cnf(c_0_25,plain,
    ( X1 = X3
    | r2_hidden(X1,k4_xboole_0(X2,k1_enumset1(X3,X3,X3)))
    | ~ r2_hidden(X1,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_18,c_0_14]),c_0_15])).

cnf(c_0_26,plain,
    ( r2_hidden(X1,X2)
    | ~ r2_hidden(k4_tarski(X3,X1),k2_zfmisc_1(X4,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_27,negated_conjecture,
    ( esk6_0 = esk4_0
    | r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(esk5_0,k1_enumset1(esk6_0,esk6_0,esk6_0))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_19,c_0_14]),c_0_15])).

cnf(c_0_28,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k1_enumset1(X4,X5,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_29,negated_conjecture,
    ( esk6_0 != esk4_0
    | ~ r2_hidden(esk3_0,esk5_0)
    | ~ r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(esk5_0,k1_enumset1(esk6_0,esk6_0,esk6_0))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_21,c_0_14]),c_0_15])).

cnf(c_0_30,negated_conjecture,
    ( r2_hidden(esk3_0,esk5_0) ),
    inference(csr,[status(thm)],[c_0_22,c_0_23])).

cnf(c_0_31,plain,
    ( X1 = X2
    | ~ r2_hidden(X1,k1_enumset1(X2,X2,X2))
    | ~ r2_hidden(X1,X3) ),
    inference(spm,[status(thm)],[c_0_24,c_0_25])).

cnf(c_0_32,negated_conjecture,
    ( esk4_0 = esk6_0
    | r2_hidden(esk4_0,k1_enumset1(esk6_0,esk6_0,esk6_0)) ),
    inference(spm,[status(thm)],[c_0_26,c_0_27])).

cnf(c_0_33,plain,
    ( r2_hidden(X1,X2)
    | X2 != k1_enumset1(X3,X4,X1) ),
    inference(er,[status(thm)],[c_0_28])).

cnf(c_0_34,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k1_enumset1(X2,X4,X5) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_35,negated_conjecture,
    ( esk4_0 != esk6_0
    | ~ r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(esk5_0,k1_enumset1(esk6_0,esk6_0,esk6_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_29,c_0_30])])).

cnf(c_0_36,plain,
    ( r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(X2,X4))
    | ~ r2_hidden(X1,X2)
    | ~ r2_hidden(X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_37,negated_conjecture,
    ( esk4_0 = esk6_0
    | ~ r2_hidden(esk4_0,X1) ),
    inference(spm,[status(thm)],[c_0_31,c_0_32])).

cnf(c_0_38,plain,
    ( r2_hidden(X1,k1_enumset1(X2,X3,X1)) ),
    inference(er,[status(thm)],[c_0_33])).

cnf(c_0_39,plain,
    ( r2_hidden(X1,X2)
    | X2 != k1_enumset1(X1,X3,X4) ),
    inference(er,[status(thm)],[c_0_34])).

cnf(c_0_40,negated_conjecture,
    ( esk4_0 != esk6_0
    | ~ r2_hidden(esk4_0,k1_enumset1(esk6_0,esk6_0,esk6_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35,c_0_36]),c_0_30])])).

cnf(c_0_41,negated_conjecture,
    ( esk4_0 = esk6_0 ),
    inference(spm,[status(thm)],[c_0_37,c_0_38])).

cnf(c_0_42,plain,
    ( r2_hidden(X1,k1_enumset1(X1,X2,X3)) ),
    inference(er,[status(thm)],[c_0_39])).

cnf(c_0_43,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_40,c_0_41]),c_0_41]),c_0_42])]),
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
% 0.12/0.34  % DateTime   : Tue Dec  1 21:00:19 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.19/0.37  # AutoSched0-Mode selected heuristic G_E___208_B02_F1_AE_CS_SP_PS_S0Y
% 0.19/0.37  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.19/0.37  #
% 0.19/0.37  # Preprocessing time       : 0.028 s
% 0.19/0.37  # Presaturation interreduction done
% 0.19/0.37  
% 0.19/0.37  # Proof found!
% 0.19/0.37  # SZS status Theorem
% 0.19/0.37  # SZS output start CNFRefutation
% 0.19/0.37  fof(t129_zfmisc_1, conjecture, ![X1, X2, X3, X4]:(r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,k1_tarski(X4)))<=>(r2_hidden(X1,X3)&X2=X4)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t129_zfmisc_1)).
% 0.19/0.37  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t69_enumset1)).
% 0.19/0.37  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t70_enumset1)).
% 0.19/0.37  fof(d5_xboole_0, axiom, ![X1, X2, X3]:(X3=k4_xboole_0(X1,X2)<=>![X4]:(r2_hidden(X4,X3)<=>(r2_hidden(X4,X1)&~(r2_hidden(X4,X2))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d5_xboole_0)).
% 0.19/0.37  fof(t64_zfmisc_1, axiom, ![X1, X2, X3]:(r2_hidden(X1,k4_xboole_0(X2,k1_tarski(X3)))<=>(r2_hidden(X1,X2)&X1!=X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t64_zfmisc_1)).
% 0.19/0.37  fof(l54_zfmisc_1, axiom, ![X1, X2, X3, X4]:(r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,X4))<=>(r2_hidden(X1,X3)&r2_hidden(X2,X4))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l54_zfmisc_1)).
% 0.19/0.37  fof(d1_enumset1, axiom, ![X1, X2, X3, X4]:(X4=k1_enumset1(X1,X2,X3)<=>![X5]:(r2_hidden(X5,X4)<=>~(((X5!=X1&X5!=X2)&X5!=X3)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_enumset1)).
% 0.19/0.37  fof(c_0_7, negated_conjecture, ~(![X1, X2, X3, X4]:(r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,k1_tarski(X4)))<=>(r2_hidden(X1,X3)&X2=X4))), inference(assume_negation,[status(cth)],[t129_zfmisc_1])).
% 0.19/0.37  fof(c_0_8, negated_conjecture, ((~r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(esk5_0,k1_tarski(esk6_0)))|(~r2_hidden(esk3_0,esk5_0)|esk4_0!=esk6_0))&((r2_hidden(esk3_0,esk5_0)|r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(esk5_0,k1_tarski(esk6_0))))&(esk4_0=esk6_0|r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(esk5_0,k1_tarski(esk6_0)))))), inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_7])])])])).
% 0.19/0.37  fof(c_0_9, plain, ![X26]:k2_tarski(X26,X26)=k1_tarski(X26), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.19/0.37  fof(c_0_10, plain, ![X27, X28]:k1_enumset1(X27,X27,X28)=k2_tarski(X27,X28), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.19/0.37  fof(c_0_11, plain, ![X6, X7, X8, X9, X10, X11, X12, X13]:((((r2_hidden(X9,X6)|~r2_hidden(X9,X8)|X8!=k4_xboole_0(X6,X7))&(~r2_hidden(X9,X7)|~r2_hidden(X9,X8)|X8!=k4_xboole_0(X6,X7)))&(~r2_hidden(X10,X6)|r2_hidden(X10,X7)|r2_hidden(X10,X8)|X8!=k4_xboole_0(X6,X7)))&((~r2_hidden(esk1_3(X11,X12,X13),X13)|(~r2_hidden(esk1_3(X11,X12,X13),X11)|r2_hidden(esk1_3(X11,X12,X13),X12))|X13=k4_xboole_0(X11,X12))&((r2_hidden(esk1_3(X11,X12,X13),X11)|r2_hidden(esk1_3(X11,X12,X13),X13)|X13=k4_xboole_0(X11,X12))&(~r2_hidden(esk1_3(X11,X12,X13),X12)|r2_hidden(esk1_3(X11,X12,X13),X13)|X13=k4_xboole_0(X11,X12))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d5_xboole_0])])])])])])])).
% 0.19/0.37  fof(c_0_12, plain, ![X33, X34, X35]:(((r2_hidden(X33,X34)|~r2_hidden(X33,k4_xboole_0(X34,k1_tarski(X35))))&(X33!=X35|~r2_hidden(X33,k4_xboole_0(X34,k1_tarski(X35)))))&(~r2_hidden(X33,X34)|X33=X35|r2_hidden(X33,k4_xboole_0(X34,k1_tarski(X35))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t64_zfmisc_1])])])).
% 0.19/0.37  cnf(c_0_13, negated_conjecture, (r2_hidden(esk3_0,esk5_0)|r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(esk5_0,k1_tarski(esk6_0)))), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.19/0.37  cnf(c_0_14, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.19/0.37  cnf(c_0_15, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.19/0.37  fof(c_0_16, plain, ![X29, X30, X31, X32]:(((r2_hidden(X29,X31)|~r2_hidden(k4_tarski(X29,X30),k2_zfmisc_1(X31,X32)))&(r2_hidden(X30,X32)|~r2_hidden(k4_tarski(X29,X30),k2_zfmisc_1(X31,X32))))&(~r2_hidden(X29,X31)|~r2_hidden(X30,X32)|r2_hidden(k4_tarski(X29,X30),k2_zfmisc_1(X31,X32)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l54_zfmisc_1])])])).
% 0.19/0.37  cnf(c_0_17, plain, (~r2_hidden(X1,X2)|~r2_hidden(X1,X3)|X3!=k4_xboole_0(X4,X2)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.19/0.37  cnf(c_0_18, plain, (X1=X3|r2_hidden(X1,k4_xboole_0(X2,k1_tarski(X3)))|~r2_hidden(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.19/0.37  cnf(c_0_19, negated_conjecture, (esk4_0=esk6_0|r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(esk5_0,k1_tarski(esk6_0)))), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.19/0.37  fof(c_0_20, plain, ![X15, X16, X17, X18, X19, X20, X21, X22, X23, X24]:(((~r2_hidden(X19,X18)|(X19=X15|X19=X16|X19=X17)|X18!=k1_enumset1(X15,X16,X17))&(((X20!=X15|r2_hidden(X20,X18)|X18!=k1_enumset1(X15,X16,X17))&(X20!=X16|r2_hidden(X20,X18)|X18!=k1_enumset1(X15,X16,X17)))&(X20!=X17|r2_hidden(X20,X18)|X18!=k1_enumset1(X15,X16,X17))))&((((esk2_4(X21,X22,X23,X24)!=X21|~r2_hidden(esk2_4(X21,X22,X23,X24),X24)|X24=k1_enumset1(X21,X22,X23))&(esk2_4(X21,X22,X23,X24)!=X22|~r2_hidden(esk2_4(X21,X22,X23,X24),X24)|X24=k1_enumset1(X21,X22,X23)))&(esk2_4(X21,X22,X23,X24)!=X23|~r2_hidden(esk2_4(X21,X22,X23,X24),X24)|X24=k1_enumset1(X21,X22,X23)))&(r2_hidden(esk2_4(X21,X22,X23,X24),X24)|(esk2_4(X21,X22,X23,X24)=X21|esk2_4(X21,X22,X23,X24)=X22|esk2_4(X21,X22,X23,X24)=X23)|X24=k1_enumset1(X21,X22,X23)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_enumset1])])])])])])).
% 0.19/0.37  cnf(c_0_21, negated_conjecture, (~r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(esk5_0,k1_tarski(esk6_0)))|~r2_hidden(esk3_0,esk5_0)|esk4_0!=esk6_0), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.19/0.37  cnf(c_0_22, negated_conjecture, (r2_hidden(esk3_0,esk5_0)|r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(esk5_0,k1_enumset1(esk6_0,esk6_0,esk6_0)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_13, c_0_14]), c_0_15])).
% 0.19/0.37  cnf(c_0_23, plain, (r2_hidden(X1,X2)|~r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(X2,X4))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.19/0.37  cnf(c_0_24, plain, (~r2_hidden(X1,k4_xboole_0(X2,X3))|~r2_hidden(X1,X3)), inference(er,[status(thm)],[c_0_17])).
% 0.19/0.37  cnf(c_0_25, plain, (X1=X3|r2_hidden(X1,k4_xboole_0(X2,k1_enumset1(X3,X3,X3)))|~r2_hidden(X1,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_18, c_0_14]), c_0_15])).
% 0.19/0.37  cnf(c_0_26, plain, (r2_hidden(X1,X2)|~r2_hidden(k4_tarski(X3,X1),k2_zfmisc_1(X4,X2))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.19/0.37  cnf(c_0_27, negated_conjecture, (esk6_0=esk4_0|r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(esk5_0,k1_enumset1(esk6_0,esk6_0,esk6_0)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_19, c_0_14]), c_0_15])).
% 0.19/0.37  cnf(c_0_28, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k1_enumset1(X4,X5,X2)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.19/0.37  cnf(c_0_29, negated_conjecture, (esk6_0!=esk4_0|~r2_hidden(esk3_0,esk5_0)|~r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(esk5_0,k1_enumset1(esk6_0,esk6_0,esk6_0)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_21, c_0_14]), c_0_15])).
% 0.19/0.37  cnf(c_0_30, negated_conjecture, (r2_hidden(esk3_0,esk5_0)), inference(csr,[status(thm)],[c_0_22, c_0_23])).
% 0.19/0.37  cnf(c_0_31, plain, (X1=X2|~r2_hidden(X1,k1_enumset1(X2,X2,X2))|~r2_hidden(X1,X3)), inference(spm,[status(thm)],[c_0_24, c_0_25])).
% 0.19/0.37  cnf(c_0_32, negated_conjecture, (esk4_0=esk6_0|r2_hidden(esk4_0,k1_enumset1(esk6_0,esk6_0,esk6_0))), inference(spm,[status(thm)],[c_0_26, c_0_27])).
% 0.19/0.37  cnf(c_0_33, plain, (r2_hidden(X1,X2)|X2!=k1_enumset1(X3,X4,X1)), inference(er,[status(thm)],[c_0_28])).
% 0.19/0.37  cnf(c_0_34, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k1_enumset1(X2,X4,X5)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.19/0.37  cnf(c_0_35, negated_conjecture, (esk4_0!=esk6_0|~r2_hidden(k4_tarski(esk3_0,esk4_0),k2_zfmisc_1(esk5_0,k1_enumset1(esk6_0,esk6_0,esk6_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_29, c_0_30])])).
% 0.19/0.37  cnf(c_0_36, plain, (r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(X2,X4))|~r2_hidden(X1,X2)|~r2_hidden(X3,X4)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.19/0.37  cnf(c_0_37, negated_conjecture, (esk4_0=esk6_0|~r2_hidden(esk4_0,X1)), inference(spm,[status(thm)],[c_0_31, c_0_32])).
% 0.19/0.37  cnf(c_0_38, plain, (r2_hidden(X1,k1_enumset1(X2,X3,X1))), inference(er,[status(thm)],[c_0_33])).
% 0.19/0.37  cnf(c_0_39, plain, (r2_hidden(X1,X2)|X2!=k1_enumset1(X1,X3,X4)), inference(er,[status(thm)],[c_0_34])).
% 0.19/0.37  cnf(c_0_40, negated_conjecture, (esk4_0!=esk6_0|~r2_hidden(esk4_0,k1_enumset1(esk6_0,esk6_0,esk6_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35, c_0_36]), c_0_30])])).
% 0.19/0.37  cnf(c_0_41, negated_conjecture, (esk4_0=esk6_0), inference(spm,[status(thm)],[c_0_37, c_0_38])).
% 0.19/0.37  cnf(c_0_42, plain, (r2_hidden(X1,k1_enumset1(X1,X2,X3))), inference(er,[status(thm)],[c_0_39])).
% 0.19/0.37  cnf(c_0_43, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_40, c_0_41]), c_0_41]), c_0_42])]), ['proof']).
% 0.19/0.37  # SZS output end CNFRefutation
% 0.19/0.37  # Proof object total steps             : 44
% 0.19/0.37  # Proof object clause steps            : 29
% 0.19/0.37  # Proof object formula steps           : 15
% 0.19/0.37  # Proof object conjectures             : 16
% 0.19/0.37  # Proof object clause conjectures      : 13
% 0.19/0.37  # Proof object formula conjectures     : 3
% 0.19/0.37  # Proof object initial clauses used    : 12
% 0.19/0.37  # Proof object initial formulas used   : 7
% 0.19/0.37  # Proof object generating inferences   : 8
% 0.19/0.37  # Proof object simplifying inferences  : 19
% 0.19/0.37  # Training examples: 0 positive, 0 negative
% 0.19/0.37  # Parsed axioms                        : 7
% 0.19/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.37  # Initial clauses                      : 25
% 0.19/0.37  # Removed in clause preprocessing      : 2
% 0.19/0.37  # Initial clauses in saturation        : 23
% 0.19/0.37  # Processed clauses                    : 57
% 0.19/0.37  # ...of these trivial                  : 1
% 0.19/0.37  # ...subsumed                          : 0
% 0.19/0.37  # ...remaining for further processing  : 56
% 0.19/0.37  # Other redundant clauses eliminated   : 4
% 0.19/0.37  # Clauses deleted for lack of memory   : 0
% 0.19/0.37  # Backward-subsumed                    : 1
% 0.19/0.37  # Backward-rewritten                   : 5
% 0.19/0.37  # Generated clauses                    : 35
% 0.19/0.37  # ...of the previous two non-trivial   : 27
% 0.19/0.37  # Contextual simplify-reflections      : 1
% 0.19/0.37  # Paramodulations                      : 25
% 0.19/0.37  # Factorizations                       : 0
% 0.19/0.37  # Equation resolutions                 : 10
% 0.19/0.37  # Propositional unsat checks           : 0
% 0.19/0.37  #    Propositional check models        : 0
% 0.19/0.37  #    Propositional check unsatisfiable : 0
% 0.19/0.37  #    Propositional clauses             : 0
% 0.19/0.37  #    Propositional clauses after purity: 0
% 0.19/0.37  #    Propositional unsat core size     : 0
% 0.19/0.37  #    Propositional preprocessing time  : 0.000
% 0.19/0.37  #    Propositional encoding time       : 0.000
% 0.19/0.37  #    Propositional solver time         : 0.000
% 0.19/0.37  #    Success case prop preproc time    : 0.000
% 0.19/0.37  #    Success case prop encoding time   : 0.000
% 0.19/0.37  #    Success case prop solver time     : 0.000
% 0.19/0.37  # Current number of processed clauses  : 23
% 0.19/0.37  #    Positive orientable unit clauses  : 5
% 0.19/0.37  #    Positive unorientable unit clauses: 0
% 0.19/0.37  #    Negative unit clauses             : 1
% 0.19/0.37  #    Non-unit-clauses                  : 17
% 0.19/0.37  # Current number of unprocessed clauses: 16
% 0.19/0.37  # ...number of literals in the above   : 53
% 0.19/0.37  # Current number of archived formulas  : 0
% 0.19/0.37  # Current number of archived clauses   : 31
% 0.19/0.37  # Clause-clause subsumption calls (NU) : 393
% 0.19/0.37  # Rec. Clause-clause subsumption calls : 280
% 0.19/0.37  # Non-unit clause-clause subsumptions  : 2
% 0.19/0.37  # Unit Clause-clause subsumption calls : 12
% 0.19/0.37  # Rewrite failures with RHS unbound    : 0
% 0.19/0.37  # BW rewrite match attempts            : 7
% 0.19/0.37  # BW rewrite match successes           : 1
% 0.19/0.37  # Condensation attempts                : 0
% 0.19/0.37  # Condensation successes               : 0
% 0.19/0.37  # Termbank termtop insertions          : 2048
% 0.19/0.37  
% 0.19/0.37  # -------------------------------------------------
% 0.19/0.37  # User time                : 0.028 s
% 0.19/0.37  # System time              : 0.006 s
% 0.19/0.37  # Total time               : 0.034 s
% 0.19/0.37  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
