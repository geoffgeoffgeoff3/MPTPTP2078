%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n004.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:41:14 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   69 ( 278 expanded)
%              Number of clauses        :   34 ( 116 expanded)
%              Number of leaves         :   17 (  80 expanded)
%              Depth                    :    7
%              Number of atoms          :  107 ( 322 expanded)
%              Number of equality atoms :   81 ( 286 expanded)
%              Maximal formula depth    :   17 (   3 average)
%              Maximal clause size      :   20 (   1 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t49_zfmisc_1,conjecture,(
    ! [X1,X2] : k2_xboole_0(k1_tarski(X1),X2) != k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t49_zfmisc_1)).

fof(l51_zfmisc_1,axiom,(
    ! [X1,X2] : k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l51_zfmisc_1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(t36_xboole_1,axiom,(
    ! [X1,X2] : r1_tarski(k4_xboole_0(X1,X2),X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t36_xboole_1)).

fof(t100_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_xboole_1)).

fof(t5_boole,axiom,(
    ! [X1] : k5_xboole_0(X1,k1_xboole_0) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t5_boole)).

fof(commutativity_k5_xboole_0,axiom,(
    ! [X1,X2] : k5_xboole_0(X1,X2) = k5_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k5_xboole_0)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).

fof(t98_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X2) = k5_xboole_0(X1,k4_xboole_0(X2,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t98_xboole_1)).

fof(l32_xboole_1,axiom,(
    ! [X1,X2] :
      ( k4_xboole_0(X1,X2) = k1_xboole_0
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l32_xboole_1)).

fof(t2_boole,axiom,(
    ! [X1] : k3_xboole_0(X1,k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_boole)).

fof(d2_tarski,axiom,(
    ! [X1,X2,X3] :
      ( X3 = k2_tarski(X1,X2)
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ( X4 = X1
            | X4 = X2 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d2_tarski)).

fof(t91_xboole_1,axiom,(
    ! [X1,X2,X3] : k5_xboole_0(k5_xboole_0(X1,X2),X3) = k5_xboole_0(X1,k5_xboole_0(X2,X3)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t91_xboole_1)).

fof(t92_xboole_1,axiom,(
    ! [X1] : k5_xboole_0(X1,X1) = k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t92_xboole_1)).

fof(l33_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( k4_xboole_0(k1_tarski(X1),X2) = k1_tarski(X1)
    <=> ~ r2_hidden(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l33_zfmisc_1)).

fof(t39_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,k4_xboole_0(X2,X1)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t39_xboole_1)).

fof(c_0_17,negated_conjecture,(
    ~ ! [X1,X2] : k2_xboole_0(k1_tarski(X1),X2) != k1_xboole_0 ),
    inference(assume_negation,[status(cth)],[t49_zfmisc_1])).

fof(c_0_18,plain,(
    ! [X40,X41] : k3_tarski(k2_tarski(X40,X41)) = k2_xboole_0(X40,X41) ),
    inference(variable_rename,[status(thm)],[l51_zfmisc_1])).

fof(c_0_19,plain,(
    ! [X33,X34] : k1_enumset1(X33,X33,X34) = k2_tarski(X33,X34) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_20,plain,(
    ! [X12,X13] : r1_tarski(k4_xboole_0(X12,X13),X12) ),
    inference(variable_rename,[status(thm)],[t36_xboole_1])).

fof(c_0_21,plain,(
    ! [X9,X10] : k4_xboole_0(X9,X10) = k5_xboole_0(X9,k3_xboole_0(X9,X10)) ),
    inference(variable_rename,[status(thm)],[t100_xboole_1])).

fof(c_0_22,plain,(
    ! [X16] : k5_xboole_0(X16,k1_xboole_0) = X16 ),
    inference(variable_rename,[status(thm)],[t5_boole])).

fof(c_0_23,plain,(
    ! [X5,X6] : k5_xboole_0(X5,X6) = k5_xboole_0(X6,X5) ),
    inference(variable_rename,[status(thm)],[commutativity_k5_xboole_0])).

fof(c_0_24,negated_conjecture,(
    k2_xboole_0(k1_tarski(esk2_0),esk3_0) = k1_xboole_0 ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_17])])])).

fof(c_0_25,plain,(
    ! [X32] : k2_tarski(X32,X32) = k1_tarski(X32) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

cnf(c_0_26,plain,
    ( k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_27,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

fof(c_0_28,plain,(
    ! [X35,X36,X37] : k2_enumset1(X35,X35,X36,X37) = k1_enumset1(X35,X36,X37) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_29,plain,(
    ! [X21,X22] : k2_xboole_0(X21,X22) = k5_xboole_0(X21,k4_xboole_0(X22,X21)) ),
    inference(variable_rename,[status(thm)],[t98_xboole_1])).

fof(c_0_30,plain,(
    ! [X7,X8] :
      ( ( k4_xboole_0(X7,X8) != k1_xboole_0
        | r1_tarski(X7,X8) )
      & ( ~ r1_tarski(X7,X8)
        | k4_xboole_0(X7,X8) = k1_xboole_0 ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l32_xboole_1])])).

cnf(c_0_31,plain,
    ( r1_tarski(k4_xboole_0(X1,X2),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_32,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

fof(c_0_33,plain,(
    ! [X11] : k3_xboole_0(X11,k1_xboole_0) = k1_xboole_0 ),
    inference(variable_rename,[status(thm)],[t2_boole])).

fof(c_0_34,plain,(
    ! [X23,X24,X25,X26,X27,X28,X29,X30] :
      ( ( ~ r2_hidden(X26,X25)
        | X26 = X23
        | X26 = X24
        | X25 != k2_tarski(X23,X24) )
      & ( X27 != X23
        | r2_hidden(X27,X25)
        | X25 != k2_tarski(X23,X24) )
      & ( X27 != X24
        | r2_hidden(X27,X25)
        | X25 != k2_tarski(X23,X24) )
      & ( esk1_3(X28,X29,X30) != X28
        | ~ r2_hidden(esk1_3(X28,X29,X30),X30)
        | X30 = k2_tarski(X28,X29) )
      & ( esk1_3(X28,X29,X30) != X29
        | ~ r2_hidden(esk1_3(X28,X29,X30),X30)
        | X30 = k2_tarski(X28,X29) )
      & ( r2_hidden(esk1_3(X28,X29,X30),X30)
        | esk1_3(X28,X29,X30) = X28
        | esk1_3(X28,X29,X30) = X29
        | X30 = k2_tarski(X28,X29) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d2_tarski])])])])])])).

fof(c_0_35,plain,(
    ! [X17,X18,X19] : k5_xboole_0(k5_xboole_0(X17,X18),X19) = k5_xboole_0(X17,k5_xboole_0(X18,X19)) ),
    inference(variable_rename,[status(thm)],[t91_xboole_1])).

fof(c_0_36,plain,(
    ! [X20] : k5_xboole_0(X20,X20) = k1_xboole_0 ),
    inference(variable_rename,[status(thm)],[t92_xboole_1])).

cnf(c_0_37,plain,
    ( k5_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_38,plain,
    ( k5_xboole_0(X1,X2) = k5_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_39,negated_conjecture,
    ( k2_xboole_0(k1_tarski(esk2_0),esk3_0) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_40,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_41,plain,
    ( k3_tarski(k1_enumset1(X1,X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_26,c_0_27])).

cnf(c_0_42,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_43,plain,
    ( k2_xboole_0(X1,X2) = k5_xboole_0(X1,k4_xboole_0(X2,X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

fof(c_0_44,plain,(
    ! [X38,X39] :
      ( ( k4_xboole_0(k1_tarski(X38),X39) != k1_tarski(X38)
        | ~ r2_hidden(X38,X39) )
      & ( r2_hidden(X38,X39)
        | k4_xboole_0(k1_tarski(X38),X39) = k1_tarski(X38) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[l33_zfmisc_1])])])).

cnf(c_0_45,plain,
    ( k4_xboole_0(X1,X2) = k1_xboole_0
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_46,plain,
    ( r1_tarski(k5_xboole_0(X1,k3_xboole_0(X1,X2)),X1) ),
    inference(rw,[status(thm)],[c_0_31,c_0_32])).

cnf(c_0_47,plain,
    ( k3_xboole_0(X1,k1_xboole_0) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_48,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k2_tarski(X2,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

fof(c_0_49,plain,(
    ! [X14,X15] : k2_xboole_0(X14,k4_xboole_0(X15,X14)) = k2_xboole_0(X14,X15) ),
    inference(variable_rename,[status(thm)],[t39_xboole_1])).

cnf(c_0_50,plain,
    ( k5_xboole_0(k5_xboole_0(X1,X2),X3) = k5_xboole_0(X1,k5_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

cnf(c_0_51,plain,
    ( k5_xboole_0(X1,X1) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

cnf(c_0_52,plain,
    ( k5_xboole_0(k1_xboole_0,X1) = X1 ),
    inference(spm,[status(thm)],[c_0_37,c_0_38])).

cnf(c_0_53,negated_conjecture,
    ( k3_tarski(k2_enumset1(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),esk3_0)) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_39,c_0_40]),c_0_27]),c_0_41]),c_0_42]),c_0_42]),c_0_42])).

cnf(c_0_54,plain,
    ( k3_tarski(k2_enumset1(X1,X1,X1,X2)) = k5_xboole_0(X1,k5_xboole_0(X2,k3_xboole_0(X2,X1))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_43,c_0_41]),c_0_32]),c_0_42])).

cnf(c_0_55,plain,
    ( k4_xboole_0(k1_tarski(X1),X2) != k1_tarski(X1)
    | ~ r2_hidden(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_44])).

cnf(c_0_56,plain,
    ( k5_xboole_0(X1,k3_xboole_0(X1,X2)) = k1_xboole_0
    | ~ r1_tarski(X1,X2) ),
    inference(rw,[status(thm)],[c_0_45,c_0_32])).

cnf(c_0_57,plain,
    ( r1_tarski(X1,X1) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_46,c_0_47]),c_0_37])).

cnf(c_0_58,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k2_enumset1(X2,X2,X2,X4) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_48,c_0_27]),c_0_42])).

cnf(c_0_59,plain,
    ( k2_xboole_0(X1,k4_xboole_0(X2,X1)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_49])).

cnf(c_0_60,plain,
    ( k5_xboole_0(X1,k5_xboole_0(X1,X2)) = X2 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50,c_0_51]),c_0_52])).

cnf(c_0_61,negated_conjecture,
    ( k5_xboole_0(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k5_xboole_0(esk3_0,k3_xboole_0(esk3_0,k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0)))) = k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_53,c_0_54])).

cnf(c_0_62,plain,
    ( k5_xboole_0(k2_enumset1(X1,X1,X1,X1),k3_xboole_0(k2_enumset1(X1,X1,X1,X1),X2)) != k2_enumset1(X1,X1,X1,X1)
    | ~ r2_hidden(X1,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_55,c_0_40]),c_0_40]),c_0_27]),c_0_27]),c_0_32]),c_0_42]),c_0_42]),c_0_42])).

cnf(c_0_63,plain,
    ( k5_xboole_0(X1,k3_xboole_0(X1,X1)) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_56,c_0_57])).

cnf(c_0_64,plain,
    ( r2_hidden(X1,k2_enumset1(X1,X1,X1,X2)) ),
    inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_58])])).

cnf(c_0_65,plain,
    ( k3_tarski(k2_enumset1(X1,X1,X1,k5_xboole_0(X2,k3_xboole_0(X2,X1)))) = k3_tarski(k2_enumset1(X1,X1,X1,X2)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_59,c_0_41]),c_0_41]),c_0_32]),c_0_42]),c_0_42])).

cnf(c_0_66,negated_conjecture,
    ( k5_xboole_0(esk3_0,k3_xboole_0(esk3_0,k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0))) = k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_60,c_0_61]),c_0_37])).

cnf(c_0_67,plain,
    ( k2_enumset1(X1,X1,X1,X1) != k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_62,c_0_63]),c_0_64])])).

cnf(c_0_68,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_65,c_0_66]),c_0_54]),c_0_63]),c_0_37]),c_0_54]),c_0_66]),c_0_51]),c_0_67]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.33  % Computer   : n004.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 14:32:08 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.19/0.37  # AutoSched0-Mode selected heuristic h208_C18_F1_SE_CS_SP_PS_S002A
% 0.19/0.37  # and selection function SelectNegativeLiterals.
% 0.19/0.37  #
% 0.19/0.37  # Preprocessing time       : 0.027 s
% 0.19/0.37  # Presaturation interreduction done
% 0.19/0.37  
% 0.19/0.37  # Proof found!
% 0.19/0.37  # SZS status Theorem
% 0.19/0.37  # SZS output start CNFRefutation
% 0.19/0.37  fof(t49_zfmisc_1, conjecture, ![X1, X2]:k2_xboole_0(k1_tarski(X1),X2)!=k1_xboole_0, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t49_zfmisc_1)).
% 0.19/0.37  fof(l51_zfmisc_1, axiom, ![X1, X2]:k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l51_zfmisc_1)).
% 0.19/0.37  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t70_enumset1)).
% 0.19/0.37  fof(t36_xboole_1, axiom, ![X1, X2]:r1_tarski(k4_xboole_0(X1,X2),X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t36_xboole_1)).
% 0.19/0.37  fof(t100_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t100_xboole_1)).
% 0.19/0.37  fof(t5_boole, axiom, ![X1]:k5_xboole_0(X1,k1_xboole_0)=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t5_boole)).
% 0.19/0.37  fof(commutativity_k5_xboole_0, axiom, ![X1, X2]:k5_xboole_0(X1,X2)=k5_xboole_0(X2,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', commutativity_k5_xboole_0)).
% 0.19/0.37  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t69_enumset1)).
% 0.19/0.37  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t71_enumset1)).
% 0.19/0.37  fof(t98_xboole_1, axiom, ![X1, X2]:k2_xboole_0(X1,X2)=k5_xboole_0(X1,k4_xboole_0(X2,X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t98_xboole_1)).
% 0.19/0.37  fof(l32_xboole_1, axiom, ![X1, X2]:(k4_xboole_0(X1,X2)=k1_xboole_0<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l32_xboole_1)).
% 0.19/0.37  fof(t2_boole, axiom, ![X1]:k3_xboole_0(X1,k1_xboole_0)=k1_xboole_0, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t2_boole)).
% 0.19/0.37  fof(d2_tarski, axiom, ![X1, X2, X3]:(X3=k2_tarski(X1,X2)<=>![X4]:(r2_hidden(X4,X3)<=>(X4=X1|X4=X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d2_tarski)).
% 0.19/0.37  fof(t91_xboole_1, axiom, ![X1, X2, X3]:k5_xboole_0(k5_xboole_0(X1,X2),X3)=k5_xboole_0(X1,k5_xboole_0(X2,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t91_xboole_1)).
% 0.19/0.37  fof(t92_xboole_1, axiom, ![X1]:k5_xboole_0(X1,X1)=k1_xboole_0, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t92_xboole_1)).
% 0.19/0.37  fof(l33_zfmisc_1, axiom, ![X1, X2]:(k4_xboole_0(k1_tarski(X1),X2)=k1_tarski(X1)<=>~(r2_hidden(X1,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l33_zfmisc_1)).
% 0.19/0.37  fof(t39_xboole_1, axiom, ![X1, X2]:k2_xboole_0(X1,k4_xboole_0(X2,X1))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t39_xboole_1)).
% 0.19/0.37  fof(c_0_17, negated_conjecture, ~(![X1, X2]:k2_xboole_0(k1_tarski(X1),X2)!=k1_xboole_0), inference(assume_negation,[status(cth)],[t49_zfmisc_1])).
% 0.19/0.37  fof(c_0_18, plain, ![X40, X41]:k3_tarski(k2_tarski(X40,X41))=k2_xboole_0(X40,X41), inference(variable_rename,[status(thm)],[l51_zfmisc_1])).
% 0.19/0.37  fof(c_0_19, plain, ![X33, X34]:k1_enumset1(X33,X33,X34)=k2_tarski(X33,X34), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.19/0.37  fof(c_0_20, plain, ![X12, X13]:r1_tarski(k4_xboole_0(X12,X13),X12), inference(variable_rename,[status(thm)],[t36_xboole_1])).
% 0.19/0.37  fof(c_0_21, plain, ![X9, X10]:k4_xboole_0(X9,X10)=k5_xboole_0(X9,k3_xboole_0(X9,X10)), inference(variable_rename,[status(thm)],[t100_xboole_1])).
% 0.19/0.37  fof(c_0_22, plain, ![X16]:k5_xboole_0(X16,k1_xboole_0)=X16, inference(variable_rename,[status(thm)],[t5_boole])).
% 0.19/0.37  fof(c_0_23, plain, ![X5, X6]:k5_xboole_0(X5,X6)=k5_xboole_0(X6,X5), inference(variable_rename,[status(thm)],[commutativity_k5_xboole_0])).
% 0.19/0.37  fof(c_0_24, negated_conjecture, k2_xboole_0(k1_tarski(esk2_0),esk3_0)=k1_xboole_0, inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_17])])])).
% 0.19/0.37  fof(c_0_25, plain, ![X32]:k2_tarski(X32,X32)=k1_tarski(X32), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.19/0.37  cnf(c_0_26, plain, (k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.19/0.37  cnf(c_0_27, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.19/0.37  fof(c_0_28, plain, ![X35, X36, X37]:k2_enumset1(X35,X35,X36,X37)=k1_enumset1(X35,X36,X37), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.19/0.37  fof(c_0_29, plain, ![X21, X22]:k2_xboole_0(X21,X22)=k5_xboole_0(X21,k4_xboole_0(X22,X21)), inference(variable_rename,[status(thm)],[t98_xboole_1])).
% 0.19/0.37  fof(c_0_30, plain, ![X7, X8]:((k4_xboole_0(X7,X8)!=k1_xboole_0|r1_tarski(X7,X8))&(~r1_tarski(X7,X8)|k4_xboole_0(X7,X8)=k1_xboole_0)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l32_xboole_1])])).
% 0.19/0.37  cnf(c_0_31, plain, (r1_tarski(k4_xboole_0(X1,X2),X1)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.19/0.37  cnf(c_0_32, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.19/0.37  fof(c_0_33, plain, ![X11]:k3_xboole_0(X11,k1_xboole_0)=k1_xboole_0, inference(variable_rename,[status(thm)],[t2_boole])).
% 0.19/0.37  fof(c_0_34, plain, ![X23, X24, X25, X26, X27, X28, X29, X30]:(((~r2_hidden(X26,X25)|(X26=X23|X26=X24)|X25!=k2_tarski(X23,X24))&((X27!=X23|r2_hidden(X27,X25)|X25!=k2_tarski(X23,X24))&(X27!=X24|r2_hidden(X27,X25)|X25!=k2_tarski(X23,X24))))&(((esk1_3(X28,X29,X30)!=X28|~r2_hidden(esk1_3(X28,X29,X30),X30)|X30=k2_tarski(X28,X29))&(esk1_3(X28,X29,X30)!=X29|~r2_hidden(esk1_3(X28,X29,X30),X30)|X30=k2_tarski(X28,X29)))&(r2_hidden(esk1_3(X28,X29,X30),X30)|(esk1_3(X28,X29,X30)=X28|esk1_3(X28,X29,X30)=X29)|X30=k2_tarski(X28,X29)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d2_tarski])])])])])])).
% 0.19/0.37  fof(c_0_35, plain, ![X17, X18, X19]:k5_xboole_0(k5_xboole_0(X17,X18),X19)=k5_xboole_0(X17,k5_xboole_0(X18,X19)), inference(variable_rename,[status(thm)],[t91_xboole_1])).
% 0.19/0.37  fof(c_0_36, plain, ![X20]:k5_xboole_0(X20,X20)=k1_xboole_0, inference(variable_rename,[status(thm)],[t92_xboole_1])).
% 0.19/0.37  cnf(c_0_37, plain, (k5_xboole_0(X1,k1_xboole_0)=X1), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.19/0.37  cnf(c_0_38, plain, (k5_xboole_0(X1,X2)=k5_xboole_0(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.19/0.37  cnf(c_0_39, negated_conjecture, (k2_xboole_0(k1_tarski(esk2_0),esk3_0)=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.19/0.37  cnf(c_0_40, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.19/0.37  cnf(c_0_41, plain, (k3_tarski(k1_enumset1(X1,X1,X2))=k2_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_26, c_0_27])).
% 0.19/0.37  cnf(c_0_42, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.19/0.37  cnf(c_0_43, plain, (k2_xboole_0(X1,X2)=k5_xboole_0(X1,k4_xboole_0(X2,X1))), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.19/0.37  fof(c_0_44, plain, ![X38, X39]:((k4_xboole_0(k1_tarski(X38),X39)!=k1_tarski(X38)|~r2_hidden(X38,X39))&(r2_hidden(X38,X39)|k4_xboole_0(k1_tarski(X38),X39)=k1_tarski(X38))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[l33_zfmisc_1])])])).
% 0.19/0.37  cnf(c_0_45, plain, (k4_xboole_0(X1,X2)=k1_xboole_0|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.19/0.37  cnf(c_0_46, plain, (r1_tarski(k5_xboole_0(X1,k3_xboole_0(X1,X2)),X1)), inference(rw,[status(thm)],[c_0_31, c_0_32])).
% 0.19/0.37  cnf(c_0_47, plain, (k3_xboole_0(X1,k1_xboole_0)=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.19/0.37  cnf(c_0_48, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k2_tarski(X2,X4)), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.19/0.37  fof(c_0_49, plain, ![X14, X15]:k2_xboole_0(X14,k4_xboole_0(X15,X14))=k2_xboole_0(X14,X15), inference(variable_rename,[status(thm)],[t39_xboole_1])).
% 0.19/0.37  cnf(c_0_50, plain, (k5_xboole_0(k5_xboole_0(X1,X2),X3)=k5_xboole_0(X1,k5_xboole_0(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.19/0.37  cnf(c_0_51, plain, (k5_xboole_0(X1,X1)=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_36])).
% 0.19/0.37  cnf(c_0_52, plain, (k5_xboole_0(k1_xboole_0,X1)=X1), inference(spm,[status(thm)],[c_0_37, c_0_38])).
% 0.19/0.37  cnf(c_0_53, negated_conjecture, (k3_tarski(k2_enumset1(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),esk3_0))=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_39, c_0_40]), c_0_27]), c_0_41]), c_0_42]), c_0_42]), c_0_42])).
% 0.19/0.37  cnf(c_0_54, plain, (k3_tarski(k2_enumset1(X1,X1,X1,X2))=k5_xboole_0(X1,k5_xboole_0(X2,k3_xboole_0(X2,X1)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_43, c_0_41]), c_0_32]), c_0_42])).
% 0.19/0.37  cnf(c_0_55, plain, (k4_xboole_0(k1_tarski(X1),X2)!=k1_tarski(X1)|~r2_hidden(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_44])).
% 0.19/0.37  cnf(c_0_56, plain, (k5_xboole_0(X1,k3_xboole_0(X1,X2))=k1_xboole_0|~r1_tarski(X1,X2)), inference(rw,[status(thm)],[c_0_45, c_0_32])).
% 0.19/0.37  cnf(c_0_57, plain, (r1_tarski(X1,X1)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_46, c_0_47]), c_0_37])).
% 0.19/0.37  cnf(c_0_58, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k2_enumset1(X2,X2,X2,X4)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_48, c_0_27]), c_0_42])).
% 0.19/0.37  cnf(c_0_59, plain, (k2_xboole_0(X1,k4_xboole_0(X2,X1))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_49])).
% 0.19/0.37  cnf(c_0_60, plain, (k5_xboole_0(X1,k5_xboole_0(X1,X2))=X2), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50, c_0_51]), c_0_52])).
% 0.19/0.37  cnf(c_0_61, negated_conjecture, (k5_xboole_0(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),k5_xboole_0(esk3_0,k3_xboole_0(esk3_0,k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0))))=k1_xboole_0), inference(rw,[status(thm)],[c_0_53, c_0_54])).
% 0.19/0.37  cnf(c_0_62, plain, (k5_xboole_0(k2_enumset1(X1,X1,X1,X1),k3_xboole_0(k2_enumset1(X1,X1,X1,X1),X2))!=k2_enumset1(X1,X1,X1,X1)|~r2_hidden(X1,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_55, c_0_40]), c_0_40]), c_0_27]), c_0_27]), c_0_32]), c_0_42]), c_0_42]), c_0_42])).
% 0.19/0.37  cnf(c_0_63, plain, (k5_xboole_0(X1,k3_xboole_0(X1,X1))=k1_xboole_0), inference(spm,[status(thm)],[c_0_56, c_0_57])).
% 0.19/0.37  cnf(c_0_64, plain, (r2_hidden(X1,k2_enumset1(X1,X1,X1,X2))), inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_58])])).
% 0.19/0.37  cnf(c_0_65, plain, (k3_tarski(k2_enumset1(X1,X1,X1,k5_xboole_0(X2,k3_xboole_0(X2,X1))))=k3_tarski(k2_enumset1(X1,X1,X1,X2))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_59, c_0_41]), c_0_41]), c_0_32]), c_0_42]), c_0_42])).
% 0.19/0.37  cnf(c_0_66, negated_conjecture, (k5_xboole_0(esk3_0,k3_xboole_0(esk3_0,k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0)))=k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_60, c_0_61]), c_0_37])).
% 0.19/0.37  cnf(c_0_67, plain, (k2_enumset1(X1,X1,X1,X1)!=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_62, c_0_63]), c_0_64])])).
% 0.19/0.37  cnf(c_0_68, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_65, c_0_66]), c_0_54]), c_0_63]), c_0_37]), c_0_54]), c_0_66]), c_0_51]), c_0_67]), ['proof']).
% 0.19/0.37  # SZS output end CNFRefutation
% 0.19/0.37  # Proof object total steps             : 69
% 0.19/0.37  # Proof object clause steps            : 34
% 0.19/0.37  # Proof object formula steps           : 35
% 0.19/0.37  # Proof object conjectures             : 8
% 0.19/0.37  # Proof object clause conjectures      : 5
% 0.19/0.37  # Proof object formula conjectures     : 3
% 0.19/0.37  # Proof object initial clauses used    : 17
% 0.19/0.37  # Proof object initial formulas used   : 17
% 0.19/0.37  # Proof object generating inferences   : 7
% 0.19/0.37  # Proof object simplifying inferences  : 42
% 0.19/0.37  # Training examples: 0 positive, 0 negative
% 0.19/0.37  # Parsed axioms                        : 17
% 0.19/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.37  # Initial clauses                      : 24
% 0.19/0.37  # Removed in clause preprocessing      : 5
% 0.19/0.37  # Initial clauses in saturation        : 19
% 0.19/0.37  # Processed clauses                    : 60
% 0.19/0.37  # ...of these trivial                  : 3
% 0.19/0.37  # ...subsumed                          : 2
% 0.19/0.37  # ...remaining for further processing  : 55
% 0.19/0.37  # Other redundant clauses eliminated   : 13
% 0.19/0.37  # Clauses deleted for lack of memory   : 0
% 0.19/0.37  # Backward-subsumed                    : 0
% 0.19/0.37  # Backward-rewritten                   : 4
% 0.19/0.37  # Generated clauses                    : 155
% 0.19/0.37  # ...of the previous two non-trivial   : 112
% 0.19/0.37  # Contextual simplify-reflections      : 0
% 0.19/0.37  # Paramodulations                      : 142
% 0.19/0.37  # Factorizations                       : 2
% 0.19/0.37  # Equation resolutions                 : 13
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
% 0.19/0.37  # Current number of processed clauses  : 29
% 0.19/0.37  #    Positive orientable unit clauses  : 17
% 0.19/0.37  #    Positive unorientable unit clauses: 2
% 0.19/0.37  #    Negative unit clauses             : 2
% 0.19/0.37  #    Non-unit-clauses                  : 8
% 0.19/0.37  # Current number of unprocessed clauses: 86
% 0.19/0.37  # ...number of literals in the above   : 290
% 0.19/0.37  # Current number of archived formulas  : 0
% 0.19/0.37  # Current number of archived clauses   : 28
% 0.19/0.37  # Clause-clause subsumption calls (NU) : 4
% 0.19/0.37  # Rec. Clause-clause subsumption calls : 4
% 0.19/0.37  # Non-unit clause-clause subsumptions  : 0
% 0.19/0.37  # Unit Clause-clause subsumption calls : 7
% 0.19/0.37  # Rewrite failures with RHS unbound    : 0
% 0.19/0.37  # BW rewrite match attempts            : 36
% 0.19/0.37  # BW rewrite match successes           : 20
% 0.19/0.37  # Condensation attempts                : 0
% 0.19/0.37  # Condensation successes               : 0
% 0.19/0.37  # Termbank termtop insertions          : 2875
% 0.19/0.37  
% 0.19/0.37  # -------------------------------------------------
% 0.19/0.37  # User time                : 0.031 s
% 0.19/0.37  # System time              : 0.004 s
% 0.19/0.37  # Total time               : 0.035 s
% 0.19/0.37  # Maximum resident set size: 1576 pages
%------------------------------------------------------------------------------
