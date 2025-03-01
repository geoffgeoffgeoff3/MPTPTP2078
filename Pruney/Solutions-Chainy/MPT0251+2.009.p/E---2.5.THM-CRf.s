%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n023.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:40:23 EST 2020

% Result     : Theorem 0.22s
% Output     : CNFRefutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   70 ( 655 expanded)
%              Number of clauses        :   39 ( 272 expanded)
%              Number of leaves         :   15 ( 190 expanded)
%              Depth                    :    9
%              Number of atoms          :   98 ( 707 expanded)
%              Number of equality atoms :   58 ( 643 expanded)
%              Maximal formula depth    :    9 (   2 average)
%              Maximal clause size      :    7 (   1 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(l51_zfmisc_1,axiom,(
    ! [X1,X2] : k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l51_zfmisc_1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(t1_boole,axiom,(
    ! [X1] : k2_xboole_0(X1,k1_xboole_0) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t1_boole)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).

fof(t72_enumset1,axiom,(
    ! [X1,X2,X3,X4] : k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t72_enumset1)).

fof(commutativity_k2_xboole_0,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_xboole_0)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).

fof(t38_zfmisc_1,axiom,(
    ! [X1,X2,X3] :
      ( r1_tarski(k2_tarski(X1,X2),X3)
    <=> ( r2_hidden(X1,X3)
        & r2_hidden(X2,X3) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t38_zfmisc_1)).

fof(t46_zfmisc_1,conjecture,(
    ! [X1,X2] :
      ( r2_hidden(X1,X2)
     => k2_xboole_0(k1_tarski(X1),X2) = X2 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t46_zfmisc_1)).

fof(t7_xboole_1,axiom,(
    ! [X1,X2] : r1_tarski(X1,k2_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_xboole_1)).

fof(t39_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,k4_xboole_0(X2,X1)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t39_xboole_1)).

fof(t100_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_xboole_1)).

fof(t28_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
     => k3_xboole_0(X1,X2) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t28_xboole_1)).

fof(t40_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(k2_xboole_0(X1,X2),X2) = k4_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t40_xboole_1)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

fof(c_0_15,plain,(
    ! [X63,X64] : k3_tarski(k2_tarski(X63,X64)) = k2_xboole_0(X63,X64) ),
    inference(variable_rename,[status(thm)],[l51_zfmisc_1])).

fof(c_0_16,plain,(
    ! [X54,X55] : k1_enumset1(X54,X54,X55) = k2_tarski(X54,X55) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_17,plain,(
    ! [X44] : k2_xboole_0(X44,k1_xboole_0) = X44 ),
    inference(variable_rename,[status(thm)],[t1_boole])).

cnf(c_0_18,plain,
    ( k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_19,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

fof(c_0_20,plain,(
    ! [X56,X57,X58] : k2_enumset1(X56,X56,X57,X58) = k1_enumset1(X56,X57,X58) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_21,plain,(
    ! [X59,X60,X61,X62] : k3_enumset1(X59,X59,X60,X61,X62) = k2_enumset1(X59,X60,X61,X62) ),
    inference(variable_rename,[status(thm)],[t72_enumset1])).

fof(c_0_22,plain,(
    ! [X7,X8] : k2_xboole_0(X7,X8) = k2_xboole_0(X8,X7) ),
    inference(variable_rename,[status(thm)],[commutativity_k2_xboole_0])).

fof(c_0_23,plain,(
    ! [X40,X41] :
      ( ( r1_tarski(X40,X41)
        | X40 != X41 )
      & ( r1_tarski(X41,X40)
        | X40 != X41 )
      & ( ~ r1_tarski(X40,X41)
        | ~ r1_tarski(X41,X40)
        | X40 = X41 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

fof(c_0_24,plain,(
    ! [X65,X66,X67] :
      ( ( r2_hidden(X65,X67)
        | ~ r1_tarski(k2_tarski(X65,X66),X67) )
      & ( r2_hidden(X66,X67)
        | ~ r1_tarski(k2_tarski(X65,X66),X67) )
      & ( ~ r2_hidden(X65,X67)
        | ~ r2_hidden(X66,X67)
        | r1_tarski(k2_tarski(X65,X66),X67) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t38_zfmisc_1])])])).

fof(c_0_25,negated_conjecture,(
    ~ ! [X1,X2] :
        ( r2_hidden(X1,X2)
       => k2_xboole_0(k1_tarski(X1),X2) = X2 ) ),
    inference(assume_negation,[status(cth)],[t46_zfmisc_1])).

fof(c_0_26,plain,(
    ! [X51,X52] : r1_tarski(X51,k2_xboole_0(X51,X52)) ),
    inference(variable_rename,[status(thm)],[t7_xboole_1])).

cnf(c_0_27,plain,
    ( k2_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_28,plain,
    ( k3_tarski(k1_enumset1(X1,X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_18,c_0_19])).

cnf(c_0_29,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_30,plain,
    ( k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_31,plain,
    ( k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

fof(c_0_32,plain,(
    ! [X47,X48] : k2_xboole_0(X47,k4_xboole_0(X48,X47)) = k2_xboole_0(X47,X48) ),
    inference(variable_rename,[status(thm)],[t39_xboole_1])).

fof(c_0_33,plain,(
    ! [X42,X43] : k4_xboole_0(X42,X43) = k5_xboole_0(X42,k3_xboole_0(X42,X43)) ),
    inference(variable_rename,[status(thm)],[t100_xboole_1])).

fof(c_0_34,plain,(
    ! [X45,X46] :
      ( ~ r1_tarski(X45,X46)
      | k3_xboole_0(X45,X46) = X45 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t28_xboole_1])])).

cnf(c_0_35,plain,
    ( r1_tarski(X1,X2)
    | X2 != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_36,plain,
    ( r1_tarski(k2_tarski(X1,X3),X2)
    | ~ r2_hidden(X1,X2)
    | ~ r2_hidden(X3,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

fof(c_0_37,negated_conjecture,
    ( r2_hidden(esk6_0,esk7_0)
    & k2_xboole_0(k1_tarski(esk6_0),esk7_0) != esk7_0 ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_25])])])).

fof(c_0_38,plain,(
    ! [X49,X50] : k4_xboole_0(k2_xboole_0(X49,X50),X50) = k4_xboole_0(X49,X50) ),
    inference(variable_rename,[status(thm)],[t40_xboole_1])).

cnf(c_0_39,plain,
    ( r1_tarski(X1,k2_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_40,plain,
    ( k3_tarski(k3_enumset1(X1,X1,X1,X1,k1_xboole_0)) = X1 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_27,c_0_28]),c_0_29]),c_0_30])).

cnf(c_0_41,plain,
    ( k3_tarski(k3_enumset1(X1,X1,X1,X1,X2)) = k3_tarski(k3_enumset1(X2,X2,X2,X2,X1)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_31,c_0_28]),c_0_28]),c_0_29]),c_0_29]),c_0_30]),c_0_30])).

cnf(c_0_42,plain,
    ( k2_xboole_0(X1,k4_xboole_0(X2,X1)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

cnf(c_0_43,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_44,plain,
    ( k3_xboole_0(X1,X2) = X1
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_45,plain,
    ( r1_tarski(X1,X1) ),
    inference(er,[status(thm)],[c_0_35])).

cnf(c_0_46,plain,
    ( r1_tarski(k3_enumset1(X1,X1,X1,X1,X3),X2)
    | ~ r2_hidden(X3,X2)
    | ~ r2_hidden(X1,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_36,c_0_19]),c_0_29]),c_0_30])).

cnf(c_0_47,negated_conjecture,
    ( r2_hidden(esk6_0,esk7_0) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_48,plain,
    ( k4_xboole_0(k2_xboole_0(X1,X2),X2) = k4_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_38])).

cnf(c_0_49,plain,
    ( r1_tarski(X1,k3_tarski(k3_enumset1(X1,X1,X1,X1,X2))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_39,c_0_28]),c_0_29]),c_0_30])).

cnf(c_0_50,plain,
    ( k3_tarski(k3_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,X1)) = X1 ),
    inference(spm,[status(thm)],[c_0_40,c_0_41])).

cnf(c_0_51,plain,
    ( k3_tarski(k3_enumset1(X1,X1,X1,X1,k5_xboole_0(X2,k3_xboole_0(X2,X1)))) = k3_tarski(k3_enumset1(X1,X1,X1,X1,X2)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_42,c_0_28]),c_0_28]),c_0_43]),c_0_29]),c_0_29]),c_0_30]),c_0_30])).

cnf(c_0_52,plain,
    ( k3_xboole_0(X1,X1) = X1 ),
    inference(spm,[status(thm)],[c_0_44,c_0_45])).

fof(c_0_53,plain,(
    ! [X53] : k2_tarski(X53,X53) = k1_tarski(X53) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

cnf(c_0_54,negated_conjecture,
    ( r1_tarski(k3_enumset1(esk6_0,esk6_0,esk6_0,esk6_0,X1),esk7_0)
    | ~ r2_hidden(X1,esk7_0) ),
    inference(spm,[status(thm)],[c_0_46,c_0_47])).

cnf(c_0_55,plain,
    ( k5_xboole_0(k3_tarski(k3_enumset1(X1,X1,X1,X1,X2)),k3_xboole_0(k3_tarski(k3_enumset1(X1,X1,X1,X1,X2)),X2)) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_48,c_0_28]),c_0_43]),c_0_43]),c_0_29]),c_0_29]),c_0_30]),c_0_30])).

cnf(c_0_56,plain,
    ( r1_tarski(k1_xboole_0,X1) ),
    inference(spm,[status(thm)],[c_0_49,c_0_50])).

cnf(c_0_57,plain,
    ( k3_tarski(k3_enumset1(X1,X1,X1,X1,k5_xboole_0(X1,X1))) = k3_tarski(k3_enumset1(X1,X1,X1,X1,X1)) ),
    inference(spm,[status(thm)],[c_0_51,c_0_52])).

cnf(c_0_58,negated_conjecture,
    ( k2_xboole_0(k1_tarski(esk6_0),esk7_0) != esk7_0 ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_59,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_53])).

cnf(c_0_60,negated_conjecture,
    ( r1_tarski(k3_enumset1(esk6_0,esk6_0,esk6_0,esk6_0,esk6_0),esk7_0) ),
    inference(spm,[status(thm)],[c_0_54,c_0_47])).

cnf(c_0_61,plain,
    ( k5_xboole_0(k3_tarski(k3_enumset1(X1,X1,X1,X1,X2)),k3_xboole_0(k3_tarski(k3_enumset1(X1,X1,X1,X1,X2)),k5_xboole_0(X2,k3_xboole_0(X2,X1)))) = k5_xboole_0(X1,k3_xboole_0(X1,k5_xboole_0(X2,k3_xboole_0(X2,X1)))) ),
    inference(spm,[status(thm)],[c_0_55,c_0_51])).

cnf(c_0_62,plain,
    ( k5_xboole_0(X1,k3_xboole_0(X1,k1_xboole_0)) = X1 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51,c_0_50]),c_0_50])).

cnf(c_0_63,plain,
    ( k3_xboole_0(k1_xboole_0,X1) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_44,c_0_56])).

cnf(c_0_64,plain,
    ( k5_xboole_0(k1_xboole_0,k1_xboole_0) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50,c_0_57]),c_0_50])).

cnf(c_0_65,negated_conjecture,
    ( k3_tarski(k3_enumset1(k3_enumset1(esk6_0,esk6_0,esk6_0,esk6_0,esk6_0),k3_enumset1(esk6_0,esk6_0,esk6_0,esk6_0,esk6_0),k3_enumset1(esk6_0,esk6_0,esk6_0,esk6_0,esk6_0),k3_enumset1(esk6_0,esk6_0,esk6_0,esk6_0,esk6_0),esk7_0)) != esk7_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_58,c_0_59]),c_0_19]),c_0_28]),c_0_29]),c_0_29]),c_0_29]),c_0_30]),c_0_30]),c_0_30]),c_0_30])).

cnf(c_0_66,negated_conjecture,
    ( k3_xboole_0(k3_enumset1(esk6_0,esk6_0,esk6_0,esk6_0,esk6_0),esk7_0) = k3_enumset1(esk6_0,esk6_0,esk6_0,esk6_0,esk6_0) ),
    inference(spm,[status(thm)],[c_0_44,c_0_60])).

cnf(c_0_67,plain,
    ( k5_xboole_0(X1,X1) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_61,c_0_62]),c_0_50]),c_0_50]),c_0_52]),c_0_63]),c_0_64])).

cnf(c_0_68,negated_conjecture,
    ( k3_tarski(k3_enumset1(esk7_0,esk7_0,esk7_0,esk7_0,k3_enumset1(esk6_0,esk6_0,esk6_0,esk6_0,esk6_0))) != esk7_0 ),
    inference(rw,[status(thm)],[c_0_65,c_0_41])).

cnf(c_0_69,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51,c_0_66]),c_0_67]),c_0_40]),c_0_68]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.14  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.15/0.35  % Computer   : n023.cluster.edu
% 0.15/0.35  % Model      : x86_64 x86_64
% 0.15/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.15/0.35  % Memory     : 8042.1875MB
% 0.15/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.15/0.35  % CPULimit   : 60
% 0.15/0.35  % WCLimit    : 600
% 0.15/0.35  % DateTime   : Tue Dec  1 09:45:06 EST 2020
% 0.15/0.35  % CPUTime    : 
% 0.15/0.36  # Version: 2.5pre002
% 0.15/0.36  # No SInE strategy applied
% 0.15/0.36  # Trying AutoSched0 for 299 seconds
% 0.22/0.49  # AutoSched0-Mode selected heuristic h208_C18_F1_SE_CS_SP_PS_S002A
% 0.22/0.49  # and selection function SelectNegativeLiterals.
% 0.22/0.49  #
% 0.22/0.49  # Preprocessing time       : 0.028 s
% 0.22/0.49  # Presaturation interreduction done
% 0.22/0.49  
% 0.22/0.49  # Proof found!
% 0.22/0.49  # SZS status Theorem
% 0.22/0.49  # SZS output start CNFRefutation
% 0.22/0.49  fof(l51_zfmisc_1, axiom, ![X1, X2]:k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l51_zfmisc_1)).
% 0.22/0.49  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t70_enumset1)).
% 0.22/0.49  fof(t1_boole, axiom, ![X1]:k2_xboole_0(X1,k1_xboole_0)=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t1_boole)).
% 0.22/0.49  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t71_enumset1)).
% 0.22/0.49  fof(t72_enumset1, axiom, ![X1, X2, X3, X4]:k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t72_enumset1)).
% 0.22/0.49  fof(commutativity_k2_xboole_0, axiom, ![X1, X2]:k2_xboole_0(X1,X2)=k2_xboole_0(X2,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', commutativity_k2_xboole_0)).
% 0.22/0.49  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.22/0.49  fof(t38_zfmisc_1, axiom, ![X1, X2, X3]:(r1_tarski(k2_tarski(X1,X2),X3)<=>(r2_hidden(X1,X3)&r2_hidden(X2,X3))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t38_zfmisc_1)).
% 0.22/0.49  fof(t46_zfmisc_1, conjecture, ![X1, X2]:(r2_hidden(X1,X2)=>k2_xboole_0(k1_tarski(X1),X2)=X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t46_zfmisc_1)).
% 0.22/0.49  fof(t7_xboole_1, axiom, ![X1, X2]:r1_tarski(X1,k2_xboole_0(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t7_xboole_1)).
% 0.22/0.49  fof(t39_xboole_1, axiom, ![X1, X2]:k2_xboole_0(X1,k4_xboole_0(X2,X1))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t39_xboole_1)).
% 0.22/0.49  fof(t100_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t100_xboole_1)).
% 0.22/0.49  fof(t28_xboole_1, axiom, ![X1, X2]:(r1_tarski(X1,X2)=>k3_xboole_0(X1,X2)=X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t28_xboole_1)).
% 0.22/0.49  fof(t40_xboole_1, axiom, ![X1, X2]:k4_xboole_0(k2_xboole_0(X1,X2),X2)=k4_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t40_xboole_1)).
% 0.22/0.49  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t69_enumset1)).
% 0.22/0.49  fof(c_0_15, plain, ![X63, X64]:k3_tarski(k2_tarski(X63,X64))=k2_xboole_0(X63,X64), inference(variable_rename,[status(thm)],[l51_zfmisc_1])).
% 0.22/0.49  fof(c_0_16, plain, ![X54, X55]:k1_enumset1(X54,X54,X55)=k2_tarski(X54,X55), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.22/0.49  fof(c_0_17, plain, ![X44]:k2_xboole_0(X44,k1_xboole_0)=X44, inference(variable_rename,[status(thm)],[t1_boole])).
% 0.22/0.49  cnf(c_0_18, plain, (k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.22/0.49  cnf(c_0_19, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.22/0.49  fof(c_0_20, plain, ![X56, X57, X58]:k2_enumset1(X56,X56,X57,X58)=k1_enumset1(X56,X57,X58), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.22/0.49  fof(c_0_21, plain, ![X59, X60, X61, X62]:k3_enumset1(X59,X59,X60,X61,X62)=k2_enumset1(X59,X60,X61,X62), inference(variable_rename,[status(thm)],[t72_enumset1])).
% 0.22/0.49  fof(c_0_22, plain, ![X7, X8]:k2_xboole_0(X7,X8)=k2_xboole_0(X8,X7), inference(variable_rename,[status(thm)],[commutativity_k2_xboole_0])).
% 0.22/0.49  fof(c_0_23, plain, ![X40, X41]:(((r1_tarski(X40,X41)|X40!=X41)&(r1_tarski(X41,X40)|X40!=X41))&(~r1_tarski(X40,X41)|~r1_tarski(X41,X40)|X40=X41)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.22/0.49  fof(c_0_24, plain, ![X65, X66, X67]:(((r2_hidden(X65,X67)|~r1_tarski(k2_tarski(X65,X66),X67))&(r2_hidden(X66,X67)|~r1_tarski(k2_tarski(X65,X66),X67)))&(~r2_hidden(X65,X67)|~r2_hidden(X66,X67)|r1_tarski(k2_tarski(X65,X66),X67))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t38_zfmisc_1])])])).
% 0.22/0.49  fof(c_0_25, negated_conjecture, ~(![X1, X2]:(r2_hidden(X1,X2)=>k2_xboole_0(k1_tarski(X1),X2)=X2)), inference(assume_negation,[status(cth)],[t46_zfmisc_1])).
% 0.22/0.49  fof(c_0_26, plain, ![X51, X52]:r1_tarski(X51,k2_xboole_0(X51,X52)), inference(variable_rename,[status(thm)],[t7_xboole_1])).
% 0.22/0.49  cnf(c_0_27, plain, (k2_xboole_0(X1,k1_xboole_0)=X1), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.22/0.49  cnf(c_0_28, plain, (k3_tarski(k1_enumset1(X1,X1,X2))=k2_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_18, c_0_19])).
% 0.22/0.49  cnf(c_0_29, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.22/0.49  cnf(c_0_30, plain, (k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.22/0.49  cnf(c_0_31, plain, (k2_xboole_0(X1,X2)=k2_xboole_0(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.22/0.49  fof(c_0_32, plain, ![X47, X48]:k2_xboole_0(X47,k4_xboole_0(X48,X47))=k2_xboole_0(X47,X48), inference(variable_rename,[status(thm)],[t39_xboole_1])).
% 0.22/0.49  fof(c_0_33, plain, ![X42, X43]:k4_xboole_0(X42,X43)=k5_xboole_0(X42,k3_xboole_0(X42,X43)), inference(variable_rename,[status(thm)],[t100_xboole_1])).
% 0.22/0.49  fof(c_0_34, plain, ![X45, X46]:(~r1_tarski(X45,X46)|k3_xboole_0(X45,X46)=X45), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t28_xboole_1])])).
% 0.22/0.49  cnf(c_0_35, plain, (r1_tarski(X1,X2)|X2!=X1), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.22/0.49  cnf(c_0_36, plain, (r1_tarski(k2_tarski(X1,X3),X2)|~r2_hidden(X1,X2)|~r2_hidden(X3,X2)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.22/0.49  fof(c_0_37, negated_conjecture, (r2_hidden(esk6_0,esk7_0)&k2_xboole_0(k1_tarski(esk6_0),esk7_0)!=esk7_0), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_25])])])).
% 0.22/0.49  fof(c_0_38, plain, ![X49, X50]:k4_xboole_0(k2_xboole_0(X49,X50),X50)=k4_xboole_0(X49,X50), inference(variable_rename,[status(thm)],[t40_xboole_1])).
% 0.22/0.49  cnf(c_0_39, plain, (r1_tarski(X1,k2_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.22/0.49  cnf(c_0_40, plain, (k3_tarski(k3_enumset1(X1,X1,X1,X1,k1_xboole_0))=X1), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_27, c_0_28]), c_0_29]), c_0_30])).
% 0.22/0.49  cnf(c_0_41, plain, (k3_tarski(k3_enumset1(X1,X1,X1,X1,X2))=k3_tarski(k3_enumset1(X2,X2,X2,X2,X1))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_31, c_0_28]), c_0_28]), c_0_29]), c_0_29]), c_0_30]), c_0_30])).
% 0.22/0.49  cnf(c_0_42, plain, (k2_xboole_0(X1,k4_xboole_0(X2,X1))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.22/0.49  cnf(c_0_43, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.22/0.49  cnf(c_0_44, plain, (k3_xboole_0(X1,X2)=X1|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.22/0.49  cnf(c_0_45, plain, (r1_tarski(X1,X1)), inference(er,[status(thm)],[c_0_35])).
% 0.22/0.49  cnf(c_0_46, plain, (r1_tarski(k3_enumset1(X1,X1,X1,X1,X3),X2)|~r2_hidden(X3,X2)|~r2_hidden(X1,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_36, c_0_19]), c_0_29]), c_0_30])).
% 0.22/0.49  cnf(c_0_47, negated_conjecture, (r2_hidden(esk6_0,esk7_0)), inference(split_conjunct,[status(thm)],[c_0_37])).
% 0.22/0.49  cnf(c_0_48, plain, (k4_xboole_0(k2_xboole_0(X1,X2),X2)=k4_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_38])).
% 0.22/0.49  cnf(c_0_49, plain, (r1_tarski(X1,k3_tarski(k3_enumset1(X1,X1,X1,X1,X2)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_39, c_0_28]), c_0_29]), c_0_30])).
% 0.22/0.49  cnf(c_0_50, plain, (k3_tarski(k3_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,X1))=X1), inference(spm,[status(thm)],[c_0_40, c_0_41])).
% 0.22/0.49  cnf(c_0_51, plain, (k3_tarski(k3_enumset1(X1,X1,X1,X1,k5_xboole_0(X2,k3_xboole_0(X2,X1))))=k3_tarski(k3_enumset1(X1,X1,X1,X1,X2))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_42, c_0_28]), c_0_28]), c_0_43]), c_0_29]), c_0_29]), c_0_30]), c_0_30])).
% 0.22/0.49  cnf(c_0_52, plain, (k3_xboole_0(X1,X1)=X1), inference(spm,[status(thm)],[c_0_44, c_0_45])).
% 0.22/0.49  fof(c_0_53, plain, ![X53]:k2_tarski(X53,X53)=k1_tarski(X53), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.22/0.49  cnf(c_0_54, negated_conjecture, (r1_tarski(k3_enumset1(esk6_0,esk6_0,esk6_0,esk6_0,X1),esk7_0)|~r2_hidden(X1,esk7_0)), inference(spm,[status(thm)],[c_0_46, c_0_47])).
% 0.22/0.49  cnf(c_0_55, plain, (k5_xboole_0(k3_tarski(k3_enumset1(X1,X1,X1,X1,X2)),k3_xboole_0(k3_tarski(k3_enumset1(X1,X1,X1,X1,X2)),X2))=k5_xboole_0(X1,k3_xboole_0(X1,X2))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_48, c_0_28]), c_0_43]), c_0_43]), c_0_29]), c_0_29]), c_0_30]), c_0_30])).
% 0.22/0.49  cnf(c_0_56, plain, (r1_tarski(k1_xboole_0,X1)), inference(spm,[status(thm)],[c_0_49, c_0_50])).
% 0.22/0.49  cnf(c_0_57, plain, (k3_tarski(k3_enumset1(X1,X1,X1,X1,k5_xboole_0(X1,X1)))=k3_tarski(k3_enumset1(X1,X1,X1,X1,X1))), inference(spm,[status(thm)],[c_0_51, c_0_52])).
% 0.22/0.49  cnf(c_0_58, negated_conjecture, (k2_xboole_0(k1_tarski(esk6_0),esk7_0)!=esk7_0), inference(split_conjunct,[status(thm)],[c_0_37])).
% 0.22/0.49  cnf(c_0_59, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_53])).
% 0.22/0.49  cnf(c_0_60, negated_conjecture, (r1_tarski(k3_enumset1(esk6_0,esk6_0,esk6_0,esk6_0,esk6_0),esk7_0)), inference(spm,[status(thm)],[c_0_54, c_0_47])).
% 0.22/0.49  cnf(c_0_61, plain, (k5_xboole_0(k3_tarski(k3_enumset1(X1,X1,X1,X1,X2)),k3_xboole_0(k3_tarski(k3_enumset1(X1,X1,X1,X1,X2)),k5_xboole_0(X2,k3_xboole_0(X2,X1))))=k5_xboole_0(X1,k3_xboole_0(X1,k5_xboole_0(X2,k3_xboole_0(X2,X1))))), inference(spm,[status(thm)],[c_0_55, c_0_51])).
% 0.22/0.49  cnf(c_0_62, plain, (k5_xboole_0(X1,k3_xboole_0(X1,k1_xboole_0))=X1), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51, c_0_50]), c_0_50])).
% 0.22/0.49  cnf(c_0_63, plain, (k3_xboole_0(k1_xboole_0,X1)=k1_xboole_0), inference(spm,[status(thm)],[c_0_44, c_0_56])).
% 0.22/0.49  cnf(c_0_64, plain, (k5_xboole_0(k1_xboole_0,k1_xboole_0)=k1_xboole_0), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50, c_0_57]), c_0_50])).
% 0.22/0.49  cnf(c_0_65, negated_conjecture, (k3_tarski(k3_enumset1(k3_enumset1(esk6_0,esk6_0,esk6_0,esk6_0,esk6_0),k3_enumset1(esk6_0,esk6_0,esk6_0,esk6_0,esk6_0),k3_enumset1(esk6_0,esk6_0,esk6_0,esk6_0,esk6_0),k3_enumset1(esk6_0,esk6_0,esk6_0,esk6_0,esk6_0),esk7_0))!=esk7_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_58, c_0_59]), c_0_19]), c_0_28]), c_0_29]), c_0_29]), c_0_29]), c_0_30]), c_0_30]), c_0_30]), c_0_30])).
% 0.22/0.49  cnf(c_0_66, negated_conjecture, (k3_xboole_0(k3_enumset1(esk6_0,esk6_0,esk6_0,esk6_0,esk6_0),esk7_0)=k3_enumset1(esk6_0,esk6_0,esk6_0,esk6_0,esk6_0)), inference(spm,[status(thm)],[c_0_44, c_0_60])).
% 0.22/0.49  cnf(c_0_67, plain, (k5_xboole_0(X1,X1)=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_61, c_0_62]), c_0_50]), c_0_50]), c_0_52]), c_0_63]), c_0_64])).
% 0.22/0.49  cnf(c_0_68, negated_conjecture, (k3_tarski(k3_enumset1(esk7_0,esk7_0,esk7_0,esk7_0,k3_enumset1(esk6_0,esk6_0,esk6_0,esk6_0,esk6_0)))!=esk7_0), inference(rw,[status(thm)],[c_0_65, c_0_41])).
% 0.22/0.49  cnf(c_0_69, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51, c_0_66]), c_0_67]), c_0_40]), c_0_68]), ['proof']).
% 0.22/0.49  # SZS output end CNFRefutation
% 0.22/0.49  # Proof object total steps             : 70
% 0.22/0.49  # Proof object clause steps            : 39
% 0.22/0.49  # Proof object formula steps           : 31
% 0.22/0.49  # Proof object conjectures             : 11
% 0.22/0.49  # Proof object clause conjectures      : 8
% 0.22/0.49  # Proof object formula conjectures     : 3
% 0.22/0.49  # Proof object initial clauses used    : 16
% 0.22/0.49  # Proof object initial formulas used   : 15
% 0.22/0.49  # Proof object generating inferences   : 13
% 0.22/0.49  # Proof object simplifying inferences  : 52
% 0.22/0.49  # Training examples: 0 positive, 0 negative
% 0.22/0.49  # Parsed axioms                        : 21
% 0.22/0.49  # Removed by relevancy pruning/SinE    : 0
% 0.22/0.49  # Initial clauses                      : 37
% 0.22/0.49  # Removed in clause preprocessing      : 6
% 0.22/0.49  # Initial clauses in saturation        : 31
% 0.22/0.49  # Processed clauses                    : 698
% 0.22/0.49  # ...of these trivial                  : 56
% 0.22/0.49  # ...subsumed                          : 268
% 0.22/0.49  # ...remaining for further processing  : 373
% 0.22/0.49  # Other redundant clauses eliminated   : 5
% 0.22/0.49  # Clauses deleted for lack of memory   : 0
% 0.22/0.49  # Backward-subsumed                    : 0
% 0.22/0.49  # Backward-rewritten                   : 16
% 0.22/0.49  # Generated clauses                    : 6914
% 0.22/0.49  # ...of the previous two non-trivial   : 5655
% 0.22/0.49  # Contextual simplify-reflections      : 0
% 0.22/0.49  # Paramodulations                      : 6907
% 0.22/0.49  # Factorizations                       : 2
% 0.22/0.49  # Equation resolutions                 : 5
% 0.22/0.49  # Propositional unsat checks           : 0
% 0.22/0.49  #    Propositional check models        : 0
% 0.22/0.49  #    Propositional check unsatisfiable : 0
% 0.22/0.49  #    Propositional clauses             : 0
% 0.22/0.49  #    Propositional clauses after purity: 0
% 0.22/0.49  #    Propositional unsat core size     : 0
% 0.22/0.49  #    Propositional preprocessing time  : 0.000
% 0.22/0.49  #    Propositional encoding time       : 0.000
% 0.22/0.49  #    Propositional solver time         : 0.000
% 0.22/0.49  #    Success case prop preproc time    : 0.000
% 0.22/0.49  #    Success case prop encoding time   : 0.000
% 0.22/0.49  #    Success case prop solver time     : 0.000
% 0.22/0.49  # Current number of processed clauses  : 322
% 0.22/0.49  #    Positive orientable unit clauses  : 65
% 0.22/0.49  #    Positive unorientable unit clauses: 1
% 0.22/0.49  #    Negative unit clauses             : 35
% 0.22/0.49  #    Non-unit-clauses                  : 221
% 0.22/0.49  # Current number of unprocessed clauses: 4983
% 0.22/0.49  # ...number of literals in the above   : 12655
% 0.22/0.49  # Current number of archived formulas  : 0
% 0.22/0.49  # Current number of archived clauses   : 52
% 0.22/0.49  # Clause-clause subsumption calls (NU) : 7527
% 0.22/0.49  # Rec. Clause-clause subsumption calls : 6943
% 0.22/0.49  # Non-unit clause-clause subsumptions  : 171
% 0.22/0.49  # Unit Clause-clause subsumption calls : 295
% 0.22/0.49  # Rewrite failures with RHS unbound    : 0
% 0.22/0.49  # BW rewrite match attempts            : 147
% 0.22/0.49  # BW rewrite match successes           : 24
% 0.22/0.49  # Condensation attempts                : 0
% 0.22/0.49  # Condensation successes               : 0
% 0.22/0.49  # Termbank termtop insertions          : 113149
% 0.22/0.49  
% 0.22/0.49  # -------------------------------------------------
% 0.22/0.49  # User time                : 0.126 s
% 0.22/0.49  # System time              : 0.007 s
% 0.22/0.49  # Total time               : 0.133 s
% 0.22/0.49  # Maximum resident set size: 1584 pages
%------------------------------------------------------------------------------
