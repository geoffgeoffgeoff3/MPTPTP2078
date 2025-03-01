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
% DateTime   : Thu Dec  3 10:59:17 EST 2020

% Result     : Theorem 0.12s
% Output     : CNFRefutation 0.12s
% Verified   : 
% Statistics : Number of formulae       :   58 ( 285 expanded)
%              Number of clauses        :   37 ( 126 expanded)
%              Number of leaves         :   10 (  76 expanded)
%              Depth                    :   12
%              Number of atoms          :  173 ( 720 expanded)
%              Number of equality atoms :   74 ( 420 expanded)
%              Maximal formula depth    :   16 (   4 average)
%              Maximal clause size      :   20 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t19_mcart_1,conjecture,(
    ! [X1,X2,X3,X4,X5] :
      ( r2_hidden(X1,k2_zfmisc_1(k2_tarski(X2,X3),k2_tarski(X4,X5)))
     => ( ( k1_mcart_1(X1) = X2
          | k1_mcart_1(X1) = X3 )
        & ( k2_mcart_1(X1) = X4
          | k2_mcart_1(X1) = X5 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t19_mcart_1)).

fof(d5_xboole_0,axiom,(
    ! [X1,X2,X3] :
      ( X3 = k4_xboole_0(X1,X2)
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ( r2_hidden(X4,X1)
            & ~ r2_hidden(X4,X2) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d5_xboole_0)).

fof(t72_zfmisc_1,axiom,(
    ! [X1,X2,X3] :
      ( k4_xboole_0(k2_tarski(X1,X2),X3) = k2_tarski(X1,X2)
    <=> ( ~ r2_hidden(X1,X3)
        & ~ r2_hidden(X2,X3) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t72_zfmisc_1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_enumset1)).

fof(d1_tarski,axiom,(
    ! [X1,X2] :
      ( X2 = k1_tarski(X1)
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> X3 = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_tarski)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_enumset1)).

fof(t10_mcart_1,axiom,(
    ! [X1,X2,X3] :
      ( r2_hidden(X1,k2_zfmisc_1(X2,X3))
     => ( r2_hidden(k1_mcart_1(X1),X2)
        & r2_hidden(k2_mcart_1(X1),X3) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t10_mcart_1)).

fof(t38_zfmisc_1,axiom,(
    ! [X1,X2,X3] :
      ( r1_tarski(k2_tarski(X1,X2),X3)
    <=> ( r2_hidden(X1,X3)
        & r2_hidden(X2,X3) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t38_zfmisc_1)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d10_xboole_0)).

fof(c_0_10,negated_conjecture,(
    ~ ! [X1,X2,X3,X4,X5] :
        ( r2_hidden(X1,k2_zfmisc_1(k2_tarski(X2,X3),k2_tarski(X4,X5)))
       => ( ( k1_mcart_1(X1) = X2
            | k1_mcart_1(X1) = X3 )
          & ( k2_mcart_1(X1) = X4
            | k2_mcart_1(X1) = X5 ) ) ) ),
    inference(assume_negation,[status(cth)],[t19_mcart_1])).

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
      ( ( ~ r2_hidden(X33,X35)
        | k4_xboole_0(k2_tarski(X33,X34),X35) != k2_tarski(X33,X34) )
      & ( ~ r2_hidden(X34,X35)
        | k4_xboole_0(k2_tarski(X33,X34),X35) != k2_tarski(X33,X34) )
      & ( r2_hidden(X33,X35)
        | r2_hidden(X34,X35)
        | k4_xboole_0(k2_tarski(X33,X34),X35) = k2_tarski(X33,X34) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t72_zfmisc_1])])])])).

fof(c_0_13,plain,(
    ! [X25,X26] : k1_enumset1(X25,X25,X26) = k2_tarski(X25,X26) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_14,plain,(
    ! [X27,X28,X29] : k2_enumset1(X27,X27,X28,X29) = k1_enumset1(X27,X28,X29) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_15,negated_conjecture,
    ( r2_hidden(esk3_0,k2_zfmisc_1(k2_tarski(esk4_0,esk5_0),k2_tarski(esk6_0,esk7_0)))
    & ( k2_mcart_1(esk3_0) != esk6_0
      | k1_mcart_1(esk3_0) != esk4_0 )
    & ( k2_mcart_1(esk3_0) != esk7_0
      | k1_mcart_1(esk3_0) != esk4_0 )
    & ( k2_mcart_1(esk3_0) != esk6_0
      | k1_mcart_1(esk3_0) != esk5_0 )
    & ( k2_mcart_1(esk3_0) != esk7_0
      | k1_mcart_1(esk3_0) != esk5_0 ) ),
    inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_10])])])])).

fof(c_0_16,plain,(
    ! [X17,X18,X19,X20,X21,X22] :
      ( ( ~ r2_hidden(X19,X18)
        | X19 = X17
        | X18 != k1_tarski(X17) )
      & ( X20 != X17
        | r2_hidden(X20,X18)
        | X18 != k1_tarski(X17) )
      & ( ~ r2_hidden(esk2_2(X21,X22),X22)
        | esk2_2(X21,X22) != X21
        | X22 = k1_tarski(X21) )
      & ( r2_hidden(esk2_2(X21,X22),X22)
        | esk2_2(X21,X22) = X21
        | X22 = k1_tarski(X21) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_tarski])])])])])])).

fof(c_0_17,plain,(
    ! [X24] : k2_tarski(X24,X24) = k1_tarski(X24) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

cnf(c_0_18,plain,
    ( ~ r2_hidden(X1,X2)
    | ~ r2_hidden(X1,X3)
    | X3 != k4_xboole_0(X4,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_19,plain,
    ( r2_hidden(X1,X2)
    | r2_hidden(X3,X2)
    | k4_xboole_0(k2_tarski(X1,X3),X2) = k2_tarski(X1,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_20,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_21,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

fof(c_0_22,plain,(
    ! [X36,X37,X38] :
      ( ( r2_hidden(k1_mcart_1(X36),X37)
        | ~ r2_hidden(X36,k2_zfmisc_1(X37,X38)) )
      & ( r2_hidden(k2_mcart_1(X36),X38)
        | ~ r2_hidden(X36,k2_zfmisc_1(X37,X38)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t10_mcart_1])])])).

cnf(c_0_23,negated_conjecture,
    ( r2_hidden(esk3_0,k2_zfmisc_1(k2_tarski(esk4_0,esk5_0),k2_tarski(esk6_0,esk7_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_24,plain,
    ( X1 = X3
    | ~ r2_hidden(X1,X2)
    | X2 != k1_tarski(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_25,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_26,plain,
    ( ~ r2_hidden(X1,k4_xboole_0(X2,X3))
    | ~ r2_hidden(X1,X3) ),
    inference(er,[status(thm)],[c_0_18])).

cnf(c_0_27,plain,
    ( k4_xboole_0(k2_enumset1(X1,X1,X1,X3),X2) = k2_enumset1(X1,X1,X1,X3)
    | r2_hidden(X3,X2)
    | r2_hidden(X1,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_19,c_0_20]),c_0_20]),c_0_21]),c_0_21])).

cnf(c_0_28,plain,
    ( r2_hidden(k2_mcart_1(X1),X2)
    | ~ r2_hidden(X1,k2_zfmisc_1(X3,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_29,negated_conjecture,
    ( r2_hidden(esk3_0,k2_zfmisc_1(k2_enumset1(esk4_0,esk4_0,esk4_0,esk5_0),k2_enumset1(esk6_0,esk6_0,esk6_0,esk7_0))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_23,c_0_20]),c_0_20]),c_0_21]),c_0_21])).

fof(c_0_30,plain,(
    ! [X30,X31,X32] :
      ( ( r2_hidden(X30,X32)
        | ~ r1_tarski(k2_tarski(X30,X31),X32) )
      & ( r2_hidden(X31,X32)
        | ~ r1_tarski(k2_tarski(X30,X31),X32) )
      & ( ~ r2_hidden(X30,X32)
        | ~ r2_hidden(X31,X32)
        | r1_tarski(k2_tarski(X30,X31),X32) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t38_zfmisc_1])])])).

fof(c_0_31,plain,(
    ! [X15,X16] :
      ( ( r1_tarski(X15,X16)
        | X15 != X16 )
      & ( r1_tarski(X16,X15)
        | X15 != X16 )
      & ( ~ r1_tarski(X15,X16)
        | ~ r1_tarski(X16,X15)
        | X15 = X16 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

cnf(c_0_32,plain,
    ( X1 = X3
    | X2 != k2_enumset1(X3,X3,X3,X3)
    | ~ r2_hidden(X1,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_24,c_0_25]),c_0_20]),c_0_21])).

cnf(c_0_33,plain,
    ( r2_hidden(X1,X2)
    | r2_hidden(X3,X2)
    | ~ r2_hidden(X4,k2_enumset1(X1,X1,X1,X3))
    | ~ r2_hidden(X4,X2) ),
    inference(spm,[status(thm)],[c_0_26,c_0_27])).

cnf(c_0_34,negated_conjecture,
    ( r2_hidden(k2_mcart_1(esk3_0),k2_enumset1(esk6_0,esk6_0,esk6_0,esk7_0)) ),
    inference(spm,[status(thm)],[c_0_28,c_0_29])).

cnf(c_0_35,plain,
    ( r2_hidden(X1,X2)
    | ~ r1_tarski(k2_tarski(X3,X1),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_36,plain,
    ( r1_tarski(X1,X2)
    | X2 != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

cnf(c_0_37,plain,
    ( X1 = X2
    | ~ r2_hidden(X1,k2_enumset1(X2,X2,X2,X2)) ),
    inference(er,[status(thm)],[c_0_32])).

cnf(c_0_38,negated_conjecture,
    ( r2_hidden(esk7_0,X1)
    | r2_hidden(esk6_0,X1)
    | ~ r2_hidden(k2_mcart_1(esk3_0),X1) ),
    inference(spm,[status(thm)],[c_0_33,c_0_34])).

cnf(c_0_39,plain,
    ( r2_hidden(X1,X2)
    | ~ r1_tarski(k2_enumset1(X3,X3,X3,X1),X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_35,c_0_20]),c_0_21])).

cnf(c_0_40,plain,
    ( r1_tarski(X1,X1) ),
    inference(er,[status(thm)],[c_0_36])).

cnf(c_0_41,plain,
    ( r2_hidden(k1_mcart_1(X1),X2)
    | ~ r2_hidden(X1,k2_zfmisc_1(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_42,negated_conjecture,
    ( esk7_0 = X1
    | r2_hidden(esk6_0,k2_enumset1(X1,X1,X1,X1))
    | ~ r2_hidden(k2_mcart_1(esk3_0),k2_enumset1(X1,X1,X1,X1)) ),
    inference(spm,[status(thm)],[c_0_37,c_0_38])).

cnf(c_0_43,plain,
    ( r2_hidden(X1,k2_enumset1(X2,X2,X2,X1)) ),
    inference(spm,[status(thm)],[c_0_39,c_0_40])).

cnf(c_0_44,negated_conjecture,
    ( r2_hidden(k1_mcart_1(esk3_0),k2_enumset1(esk4_0,esk4_0,esk4_0,esk5_0)) ),
    inference(spm,[status(thm)],[c_0_41,c_0_29])).

cnf(c_0_45,negated_conjecture,
    ( k2_mcart_1(esk3_0) != esk7_0
    | k1_mcart_1(esk3_0) != esk5_0 ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_46,negated_conjecture,
    ( esk7_0 = k2_mcart_1(esk3_0)
    | r2_hidden(esk6_0,k2_enumset1(k2_mcart_1(esk3_0),k2_mcart_1(esk3_0),k2_mcart_1(esk3_0),k2_mcart_1(esk3_0))) ),
    inference(spm,[status(thm)],[c_0_42,c_0_43])).

cnf(c_0_47,negated_conjecture,
    ( r2_hidden(esk5_0,X1)
    | r2_hidden(esk4_0,X1)
    | ~ r2_hidden(k1_mcart_1(esk3_0),X1) ),
    inference(spm,[status(thm)],[c_0_33,c_0_44])).

cnf(c_0_48,negated_conjecture,
    ( r2_hidden(esk6_0,k2_enumset1(k2_mcart_1(esk3_0),k2_mcart_1(esk3_0),k2_mcart_1(esk3_0),k2_mcart_1(esk3_0)))
    | esk5_0 != k1_mcart_1(esk3_0) ),
    inference(spm,[status(thm)],[c_0_45,c_0_46])).

cnf(c_0_49,negated_conjecture,
    ( k2_mcart_1(esk3_0) != esk6_0
    | k1_mcart_1(esk3_0) != esk5_0 ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_50,negated_conjecture,
    ( k2_mcart_1(esk3_0) != esk7_0
    | k1_mcart_1(esk3_0) != esk4_0 ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_51,negated_conjecture,
    ( esk5_0 = X1
    | r2_hidden(esk4_0,k2_enumset1(X1,X1,X1,X1))
    | ~ r2_hidden(k1_mcart_1(esk3_0),k2_enumset1(X1,X1,X1,X1)) ),
    inference(spm,[status(thm)],[c_0_37,c_0_47])).

cnf(c_0_52,negated_conjecture,
    ( esk5_0 != k1_mcart_1(esk3_0) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_48]),c_0_49])).

cnf(c_0_53,negated_conjecture,
    ( r2_hidden(esk6_0,k2_enumset1(k2_mcart_1(esk3_0),k2_mcart_1(esk3_0),k2_mcart_1(esk3_0),k2_mcart_1(esk3_0)))
    | esk4_0 != k1_mcart_1(esk3_0) ),
    inference(spm,[status(thm)],[c_0_50,c_0_46])).

cnf(c_0_54,negated_conjecture,
    ( k2_mcart_1(esk3_0) != esk6_0
    | k1_mcart_1(esk3_0) != esk4_0 ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_55,negated_conjecture,
    ( r2_hidden(esk4_0,k2_enumset1(k1_mcart_1(esk3_0),k1_mcart_1(esk3_0),k1_mcart_1(esk3_0),k1_mcart_1(esk3_0))) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_51,c_0_43]),c_0_52])).

cnf(c_0_56,negated_conjecture,
    ( esk4_0 != k1_mcart_1(esk3_0) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_53]),c_0_54])).

cnf(c_0_57,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_55]),c_0_56]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.34  % Computer   : n024.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 10:53:36 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.35  # Version: 2.5pre002
% 0.12/0.35  # No SInE strategy applied
% 0.12/0.35  # Trying AutoSched0 for 299 seconds
% 0.12/0.38  # AutoSched0-Mode selected heuristic G_E___208_B02_F1_AE_CS_SP_PS_S0Y
% 0.12/0.38  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.12/0.38  #
% 0.12/0.38  # Preprocessing time       : 0.028 s
% 0.12/0.38  # Presaturation interreduction done
% 0.12/0.38  
% 0.12/0.38  # Proof found!
% 0.12/0.38  # SZS status Theorem
% 0.12/0.38  # SZS output start CNFRefutation
% 0.12/0.38  fof(t19_mcart_1, conjecture, ![X1, X2, X3, X4, X5]:(r2_hidden(X1,k2_zfmisc_1(k2_tarski(X2,X3),k2_tarski(X4,X5)))=>((k1_mcart_1(X1)=X2|k1_mcart_1(X1)=X3)&(k2_mcart_1(X1)=X4|k2_mcart_1(X1)=X5))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t19_mcart_1)).
% 0.12/0.38  fof(d5_xboole_0, axiom, ![X1, X2, X3]:(X3=k4_xboole_0(X1,X2)<=>![X4]:(r2_hidden(X4,X3)<=>(r2_hidden(X4,X1)&~(r2_hidden(X4,X2))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d5_xboole_0)).
% 0.12/0.38  fof(t72_zfmisc_1, axiom, ![X1, X2, X3]:(k4_xboole_0(k2_tarski(X1,X2),X3)=k2_tarski(X1,X2)<=>(~(r2_hidden(X1,X3))&~(r2_hidden(X2,X3)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t72_zfmisc_1)).
% 0.12/0.38  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t70_enumset1)).
% 0.12/0.38  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t71_enumset1)).
% 0.12/0.38  fof(d1_tarski, axiom, ![X1, X2]:(X2=k1_tarski(X1)<=>![X3]:(r2_hidden(X3,X2)<=>X3=X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d1_tarski)).
% 0.12/0.38  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t69_enumset1)).
% 0.12/0.38  fof(t10_mcart_1, axiom, ![X1, X2, X3]:(r2_hidden(X1,k2_zfmisc_1(X2,X3))=>(r2_hidden(k1_mcart_1(X1),X2)&r2_hidden(k2_mcart_1(X1),X3))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t10_mcart_1)).
% 0.12/0.38  fof(t38_zfmisc_1, axiom, ![X1, X2, X3]:(r1_tarski(k2_tarski(X1,X2),X3)<=>(r2_hidden(X1,X3)&r2_hidden(X2,X3))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t38_zfmisc_1)).
% 0.12/0.38  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.12/0.38  fof(c_0_10, negated_conjecture, ~(![X1, X2, X3, X4, X5]:(r2_hidden(X1,k2_zfmisc_1(k2_tarski(X2,X3),k2_tarski(X4,X5)))=>((k1_mcart_1(X1)=X2|k1_mcart_1(X1)=X3)&(k2_mcart_1(X1)=X4|k2_mcart_1(X1)=X5)))), inference(assume_negation,[status(cth)],[t19_mcart_1])).
% 0.12/0.38  fof(c_0_11, plain, ![X6, X7, X8, X9, X10, X11, X12, X13]:((((r2_hidden(X9,X6)|~r2_hidden(X9,X8)|X8!=k4_xboole_0(X6,X7))&(~r2_hidden(X9,X7)|~r2_hidden(X9,X8)|X8!=k4_xboole_0(X6,X7)))&(~r2_hidden(X10,X6)|r2_hidden(X10,X7)|r2_hidden(X10,X8)|X8!=k4_xboole_0(X6,X7)))&((~r2_hidden(esk1_3(X11,X12,X13),X13)|(~r2_hidden(esk1_3(X11,X12,X13),X11)|r2_hidden(esk1_3(X11,X12,X13),X12))|X13=k4_xboole_0(X11,X12))&((r2_hidden(esk1_3(X11,X12,X13),X11)|r2_hidden(esk1_3(X11,X12,X13),X13)|X13=k4_xboole_0(X11,X12))&(~r2_hidden(esk1_3(X11,X12,X13),X12)|r2_hidden(esk1_3(X11,X12,X13),X13)|X13=k4_xboole_0(X11,X12))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d5_xboole_0])])])])])])])).
% 0.12/0.38  fof(c_0_12, plain, ![X33, X34, X35]:(((~r2_hidden(X33,X35)|k4_xboole_0(k2_tarski(X33,X34),X35)!=k2_tarski(X33,X34))&(~r2_hidden(X34,X35)|k4_xboole_0(k2_tarski(X33,X34),X35)!=k2_tarski(X33,X34)))&(r2_hidden(X33,X35)|r2_hidden(X34,X35)|k4_xboole_0(k2_tarski(X33,X34),X35)=k2_tarski(X33,X34))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t72_zfmisc_1])])])])).
% 0.12/0.38  fof(c_0_13, plain, ![X25, X26]:k1_enumset1(X25,X25,X26)=k2_tarski(X25,X26), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.12/0.38  fof(c_0_14, plain, ![X27, X28, X29]:k2_enumset1(X27,X27,X28,X29)=k1_enumset1(X27,X28,X29), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.12/0.38  fof(c_0_15, negated_conjecture, (r2_hidden(esk3_0,k2_zfmisc_1(k2_tarski(esk4_0,esk5_0),k2_tarski(esk6_0,esk7_0)))&(((k2_mcart_1(esk3_0)!=esk6_0|k1_mcart_1(esk3_0)!=esk4_0)&(k2_mcart_1(esk3_0)!=esk7_0|k1_mcart_1(esk3_0)!=esk4_0))&((k2_mcart_1(esk3_0)!=esk6_0|k1_mcart_1(esk3_0)!=esk5_0)&(k2_mcart_1(esk3_0)!=esk7_0|k1_mcart_1(esk3_0)!=esk5_0)))), inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_10])])])])).
% 0.12/0.38  fof(c_0_16, plain, ![X17, X18, X19, X20, X21, X22]:(((~r2_hidden(X19,X18)|X19=X17|X18!=k1_tarski(X17))&(X20!=X17|r2_hidden(X20,X18)|X18!=k1_tarski(X17)))&((~r2_hidden(esk2_2(X21,X22),X22)|esk2_2(X21,X22)!=X21|X22=k1_tarski(X21))&(r2_hidden(esk2_2(X21,X22),X22)|esk2_2(X21,X22)=X21|X22=k1_tarski(X21)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_tarski])])])])])])).
% 0.12/0.38  fof(c_0_17, plain, ![X24]:k2_tarski(X24,X24)=k1_tarski(X24), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.12/0.38  cnf(c_0_18, plain, (~r2_hidden(X1,X2)|~r2_hidden(X1,X3)|X3!=k4_xboole_0(X4,X2)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.12/0.38  cnf(c_0_19, plain, (r2_hidden(X1,X2)|r2_hidden(X3,X2)|k4_xboole_0(k2_tarski(X1,X3),X2)=k2_tarski(X1,X3)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.12/0.38  cnf(c_0_20, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.12/0.38  cnf(c_0_21, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.12/0.38  fof(c_0_22, plain, ![X36, X37, X38]:((r2_hidden(k1_mcart_1(X36),X37)|~r2_hidden(X36,k2_zfmisc_1(X37,X38)))&(r2_hidden(k2_mcart_1(X36),X38)|~r2_hidden(X36,k2_zfmisc_1(X37,X38)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t10_mcart_1])])])).
% 0.12/0.38  cnf(c_0_23, negated_conjecture, (r2_hidden(esk3_0,k2_zfmisc_1(k2_tarski(esk4_0,esk5_0),k2_tarski(esk6_0,esk7_0)))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.12/0.38  cnf(c_0_24, plain, (X1=X3|~r2_hidden(X1,X2)|X2!=k1_tarski(X3)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.12/0.38  cnf(c_0_25, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.12/0.38  cnf(c_0_26, plain, (~r2_hidden(X1,k4_xboole_0(X2,X3))|~r2_hidden(X1,X3)), inference(er,[status(thm)],[c_0_18])).
% 0.12/0.38  cnf(c_0_27, plain, (k4_xboole_0(k2_enumset1(X1,X1,X1,X3),X2)=k2_enumset1(X1,X1,X1,X3)|r2_hidden(X3,X2)|r2_hidden(X1,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_19, c_0_20]), c_0_20]), c_0_21]), c_0_21])).
% 0.12/0.38  cnf(c_0_28, plain, (r2_hidden(k2_mcart_1(X1),X2)|~r2_hidden(X1,k2_zfmisc_1(X3,X2))), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.12/0.38  cnf(c_0_29, negated_conjecture, (r2_hidden(esk3_0,k2_zfmisc_1(k2_enumset1(esk4_0,esk4_0,esk4_0,esk5_0),k2_enumset1(esk6_0,esk6_0,esk6_0,esk7_0)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_23, c_0_20]), c_0_20]), c_0_21]), c_0_21])).
% 0.12/0.38  fof(c_0_30, plain, ![X30, X31, X32]:(((r2_hidden(X30,X32)|~r1_tarski(k2_tarski(X30,X31),X32))&(r2_hidden(X31,X32)|~r1_tarski(k2_tarski(X30,X31),X32)))&(~r2_hidden(X30,X32)|~r2_hidden(X31,X32)|r1_tarski(k2_tarski(X30,X31),X32))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t38_zfmisc_1])])])).
% 0.12/0.38  fof(c_0_31, plain, ![X15, X16]:(((r1_tarski(X15,X16)|X15!=X16)&(r1_tarski(X16,X15)|X15!=X16))&(~r1_tarski(X15,X16)|~r1_tarski(X16,X15)|X15=X16)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.12/0.38  cnf(c_0_32, plain, (X1=X3|X2!=k2_enumset1(X3,X3,X3,X3)|~r2_hidden(X1,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_24, c_0_25]), c_0_20]), c_0_21])).
% 0.12/0.38  cnf(c_0_33, plain, (r2_hidden(X1,X2)|r2_hidden(X3,X2)|~r2_hidden(X4,k2_enumset1(X1,X1,X1,X3))|~r2_hidden(X4,X2)), inference(spm,[status(thm)],[c_0_26, c_0_27])).
% 0.12/0.38  cnf(c_0_34, negated_conjecture, (r2_hidden(k2_mcart_1(esk3_0),k2_enumset1(esk6_0,esk6_0,esk6_0,esk7_0))), inference(spm,[status(thm)],[c_0_28, c_0_29])).
% 0.12/0.38  cnf(c_0_35, plain, (r2_hidden(X1,X2)|~r1_tarski(k2_tarski(X3,X1),X2)), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.12/0.38  cnf(c_0_36, plain, (r1_tarski(X1,X2)|X2!=X1), inference(split_conjunct,[status(thm)],[c_0_31])).
% 0.12/0.38  cnf(c_0_37, plain, (X1=X2|~r2_hidden(X1,k2_enumset1(X2,X2,X2,X2))), inference(er,[status(thm)],[c_0_32])).
% 0.12/0.38  cnf(c_0_38, negated_conjecture, (r2_hidden(esk7_0,X1)|r2_hidden(esk6_0,X1)|~r2_hidden(k2_mcart_1(esk3_0),X1)), inference(spm,[status(thm)],[c_0_33, c_0_34])).
% 0.12/0.38  cnf(c_0_39, plain, (r2_hidden(X1,X2)|~r1_tarski(k2_enumset1(X3,X3,X3,X1),X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_35, c_0_20]), c_0_21])).
% 0.12/0.38  cnf(c_0_40, plain, (r1_tarski(X1,X1)), inference(er,[status(thm)],[c_0_36])).
% 0.12/0.38  cnf(c_0_41, plain, (r2_hidden(k1_mcart_1(X1),X2)|~r2_hidden(X1,k2_zfmisc_1(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.12/0.38  cnf(c_0_42, negated_conjecture, (esk7_0=X1|r2_hidden(esk6_0,k2_enumset1(X1,X1,X1,X1))|~r2_hidden(k2_mcart_1(esk3_0),k2_enumset1(X1,X1,X1,X1))), inference(spm,[status(thm)],[c_0_37, c_0_38])).
% 0.12/0.38  cnf(c_0_43, plain, (r2_hidden(X1,k2_enumset1(X2,X2,X2,X1))), inference(spm,[status(thm)],[c_0_39, c_0_40])).
% 0.12/0.38  cnf(c_0_44, negated_conjecture, (r2_hidden(k1_mcart_1(esk3_0),k2_enumset1(esk4_0,esk4_0,esk4_0,esk5_0))), inference(spm,[status(thm)],[c_0_41, c_0_29])).
% 0.12/0.38  cnf(c_0_45, negated_conjecture, (k2_mcart_1(esk3_0)!=esk7_0|k1_mcart_1(esk3_0)!=esk5_0), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.12/0.38  cnf(c_0_46, negated_conjecture, (esk7_0=k2_mcart_1(esk3_0)|r2_hidden(esk6_0,k2_enumset1(k2_mcart_1(esk3_0),k2_mcart_1(esk3_0),k2_mcart_1(esk3_0),k2_mcart_1(esk3_0)))), inference(spm,[status(thm)],[c_0_42, c_0_43])).
% 0.12/0.38  cnf(c_0_47, negated_conjecture, (r2_hidden(esk5_0,X1)|r2_hidden(esk4_0,X1)|~r2_hidden(k1_mcart_1(esk3_0),X1)), inference(spm,[status(thm)],[c_0_33, c_0_44])).
% 0.12/0.38  cnf(c_0_48, negated_conjecture, (r2_hidden(esk6_0,k2_enumset1(k2_mcart_1(esk3_0),k2_mcart_1(esk3_0),k2_mcart_1(esk3_0),k2_mcart_1(esk3_0)))|esk5_0!=k1_mcart_1(esk3_0)), inference(spm,[status(thm)],[c_0_45, c_0_46])).
% 0.12/0.38  cnf(c_0_49, negated_conjecture, (k2_mcart_1(esk3_0)!=esk6_0|k1_mcart_1(esk3_0)!=esk5_0), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.12/0.38  cnf(c_0_50, negated_conjecture, (k2_mcart_1(esk3_0)!=esk7_0|k1_mcart_1(esk3_0)!=esk4_0), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.12/0.38  cnf(c_0_51, negated_conjecture, (esk5_0=X1|r2_hidden(esk4_0,k2_enumset1(X1,X1,X1,X1))|~r2_hidden(k1_mcart_1(esk3_0),k2_enumset1(X1,X1,X1,X1))), inference(spm,[status(thm)],[c_0_37, c_0_47])).
% 0.12/0.38  cnf(c_0_52, negated_conjecture, (esk5_0!=k1_mcart_1(esk3_0)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_48]), c_0_49])).
% 0.12/0.38  cnf(c_0_53, negated_conjecture, (r2_hidden(esk6_0,k2_enumset1(k2_mcart_1(esk3_0),k2_mcart_1(esk3_0),k2_mcart_1(esk3_0),k2_mcart_1(esk3_0)))|esk4_0!=k1_mcart_1(esk3_0)), inference(spm,[status(thm)],[c_0_50, c_0_46])).
% 0.12/0.38  cnf(c_0_54, negated_conjecture, (k2_mcart_1(esk3_0)!=esk6_0|k1_mcart_1(esk3_0)!=esk4_0), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.12/0.38  cnf(c_0_55, negated_conjecture, (r2_hidden(esk4_0,k2_enumset1(k1_mcart_1(esk3_0),k1_mcart_1(esk3_0),k1_mcart_1(esk3_0),k1_mcart_1(esk3_0)))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_51, c_0_43]), c_0_52])).
% 0.12/0.38  cnf(c_0_56, negated_conjecture, (esk4_0!=k1_mcart_1(esk3_0)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_53]), c_0_54])).
% 0.12/0.38  cnf(c_0_57, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_55]), c_0_56]), ['proof']).
% 0.12/0.38  # SZS output end CNFRefutation
% 0.12/0.38  # Proof object total steps             : 58
% 0.12/0.38  # Proof object clause steps            : 37
% 0.12/0.38  # Proof object formula steps           : 21
% 0.12/0.38  # Proof object conjectures             : 22
% 0.12/0.38  # Proof object clause conjectures      : 19
% 0.12/0.38  # Proof object formula conjectures     : 3
% 0.12/0.38  # Proof object initial clauses used    : 15
% 0.12/0.38  # Proof object initial formulas used   : 10
% 0.12/0.38  # Proof object generating inferences   : 17
% 0.12/0.38  # Proof object simplifying inferences  : 18
% 0.12/0.38  # Training examples: 0 positive, 0 negative
% 0.12/0.38  # Parsed axioms                        : 10
% 0.12/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.12/0.38  # Initial clauses                      : 29
% 0.12/0.38  # Removed in clause preprocessing      : 3
% 0.12/0.38  # Initial clauses in saturation        : 26
% 0.12/0.38  # Processed clauses                    : 100
% 0.12/0.38  # ...of these trivial                  : 0
% 0.12/0.38  # ...subsumed                          : 5
% 0.12/0.38  # ...remaining for further processing  : 95
% 0.12/0.38  # Other redundant clauses eliminated   : 3
% 0.12/0.38  # Clauses deleted for lack of memory   : 0
% 0.12/0.38  # Backward-subsumed                    : 0
% 0.12/0.38  # Backward-rewritten                   : 2
% 0.12/0.38  # Generated clauses                    : 147
% 0.12/0.38  # ...of the previous two non-trivial   : 123
% 0.12/0.38  # Contextual simplify-reflections      : 2
% 0.12/0.38  # Paramodulations                      : 136
% 0.12/0.38  # Factorizations                       : 2
% 0.12/0.38  # Equation resolutions                 : 9
% 0.12/0.38  # Propositional unsat checks           : 0
% 0.12/0.38  #    Propositional check models        : 0
% 0.12/0.38  #    Propositional check unsatisfiable : 0
% 0.12/0.38  #    Propositional clauses             : 0
% 0.12/0.38  #    Propositional clauses after purity: 0
% 0.12/0.38  #    Propositional unsat core size     : 0
% 0.12/0.38  #    Propositional preprocessing time  : 0.000
% 0.12/0.38  #    Propositional encoding time       : 0.000
% 0.12/0.38  #    Propositional solver time         : 0.000
% 0.12/0.38  #    Success case prop preproc time    : 0.000
% 0.12/0.38  #    Success case prop encoding time   : 0.000
% 0.12/0.38  #    Success case prop solver time     : 0.000
% 0.12/0.38  # Current number of processed clauses  : 65
% 0.12/0.38  #    Positive orientable unit clauses  : 8
% 0.12/0.38  #    Positive unorientable unit clauses: 0
% 0.12/0.38  #    Negative unit clauses             : 2
% 0.12/0.38  #    Non-unit-clauses                  : 55
% 0.12/0.38  # Current number of unprocessed clauses: 72
% 0.12/0.38  # ...number of literals in the above   : 244
% 0.12/0.38  # Current number of archived formulas  : 0
% 0.12/0.38  # Current number of archived clauses   : 30
% 0.12/0.38  # Clause-clause subsumption calls (NU) : 540
% 0.12/0.38  # Rec. Clause-clause subsumption calls : 419
% 0.12/0.38  # Non-unit clause-clause subsumptions  : 5
% 0.12/0.38  # Unit Clause-clause subsumption calls : 26
% 0.12/0.38  # Rewrite failures with RHS unbound    : 0
% 0.12/0.38  # BW rewrite match attempts            : 10
% 0.12/0.38  # BW rewrite match successes           : 2
% 0.12/0.38  # Condensation attempts                : 0
% 0.12/0.38  # Condensation successes               : 0
% 0.12/0.38  # Termbank termtop insertions          : 4056
% 0.12/0.38  
% 0.12/0.38  # -------------------------------------------------
% 0.12/0.38  # User time                : 0.033 s
% 0.12/0.38  # System time              : 0.005 s
% 0.12/0.38  # Total time               : 0.038 s
% 0.12/0.38  # Maximum resident set size: 1576 pages
%------------------------------------------------------------------------------
