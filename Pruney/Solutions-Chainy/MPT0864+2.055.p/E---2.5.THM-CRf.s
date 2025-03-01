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
% DateTime   : Thu Dec  3 10:59:25 EST 2020

% Result     : Theorem 0.78s
% Output     : CNFRefutation 0.78s
% Verified   : 
% Statistics : Number of formulae       :   90 (1442 expanded)
%              Number of clauses        :   49 ( 551 expanded)
%              Number of leaves         :   20 ( 439 expanded)
%              Depth                    :   12
%              Number of atoms          :  196 (2162 expanded)
%              Number of equality atoms :  140 (1884 expanded)
%              Maximal formula depth    :   37 (   3 average)
%              Maximal clause size      :   52 (   1 average)
%              Maximal term depth       :    6 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t20_mcart_1,conjecture,(
    ! [X1] :
      ( ? [X2,X3] : X1 = k4_tarski(X2,X3)
     => ( X1 != k1_mcart_1(X1)
        & X1 != k2_mcart_1(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t20_mcart_1)).

fof(d4_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5,X6,X7] :
      ( X7 = k4_enumset1(X1,X2,X3,X4,X5,X6)
    <=> ! [X8] :
          ( r2_hidden(X8,X7)
        <=> ~ ( X8 != X1
              & X8 != X2
              & X8 != X3
              & X8 != X4
              & X8 != X5
              & X8 != X6 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d4_enumset1)).

fof(t74_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5,X6] : k5_enumset1(X1,X1,X2,X3,X4,X5,X6) = k4_enumset1(X1,X2,X3,X4,X5,X6) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t74_enumset1)).

fof(t75_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5,X6,X7] : k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7) = k5_enumset1(X1,X2,X3,X4,X5,X6,X7) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t75_enumset1)).

fof(t7_mcart_1,axiom,(
    ! [X1,X2] :
      ( k1_mcart_1(k4_tarski(X1,X2)) = X1
      & k2_mcart_1(k4_tarski(X1,X2)) = X2 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_mcart_1)).

fof(t12_setfam_1,axiom,(
    ! [X1,X2] : k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_setfam_1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(l54_zfmisc_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,X4))
    <=> ( r2_hidden(X1,X3)
        & r2_hidden(X2,X4) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l54_zfmisc_1)).

fof(l51_zfmisc_1,axiom,(
    ! [X1,X2] : k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l51_zfmisc_1)).

fof(t100_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_xboole_1)).

fof(t46_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,k2_xboole_0(X1,X2)) = k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t46_xboole_1)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).

fof(t72_enumset1,axiom,(
    ! [X1,X2,X3,X4] : k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t72_enumset1)).

fof(t73_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5] : k4_enumset1(X1,X1,X2,X3,X4,X5) = k3_enumset1(X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t73_enumset1)).

fof(t21_xboole_1,axiom,(
    ! [X1,X2] : k3_xboole_0(X1,k2_xboole_0(X1,X2)) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t21_xboole_1)).

fof(l1_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(k1_tarski(X1),X2)
    <=> r2_hidden(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l1_zfmisc_1)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

fof(t20_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( k4_xboole_0(k1_tarski(X1),k1_tarski(X2)) = k1_tarski(X1)
    <=> X1 != X2 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t20_zfmisc_1)).

fof(idempotence_k3_xboole_0,axiom,(
    ! [X1,X2] : k3_xboole_0(X1,X1) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',idempotence_k3_xboole_0)).

fof(t135_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( ( r1_tarski(X1,k2_zfmisc_1(X1,X2))
        | r1_tarski(X1,k2_zfmisc_1(X2,X1)) )
     => X1 = k1_xboole_0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t135_zfmisc_1)).

fof(c_0_20,negated_conjecture,(
    ~ ! [X1] :
        ( ? [X2,X3] : X1 = k4_tarski(X2,X3)
       => ( X1 != k1_mcart_1(X1)
          & X1 != k2_mcart_1(X1) ) ) ),
    inference(assume_negation,[status(cth)],[t20_mcart_1])).

fof(c_0_21,plain,(
    ! [X56,X57,X58,X59,X60,X61,X62,X63,X64,X65,X66,X67,X68,X69,X70,X71] :
      ( ( ~ r2_hidden(X63,X62)
        | X63 = X56
        | X63 = X57
        | X63 = X58
        | X63 = X59
        | X63 = X60
        | X63 = X61
        | X62 != k4_enumset1(X56,X57,X58,X59,X60,X61) )
      & ( X64 != X56
        | r2_hidden(X64,X62)
        | X62 != k4_enumset1(X56,X57,X58,X59,X60,X61) )
      & ( X64 != X57
        | r2_hidden(X64,X62)
        | X62 != k4_enumset1(X56,X57,X58,X59,X60,X61) )
      & ( X64 != X58
        | r2_hidden(X64,X62)
        | X62 != k4_enumset1(X56,X57,X58,X59,X60,X61) )
      & ( X64 != X59
        | r2_hidden(X64,X62)
        | X62 != k4_enumset1(X56,X57,X58,X59,X60,X61) )
      & ( X64 != X60
        | r2_hidden(X64,X62)
        | X62 != k4_enumset1(X56,X57,X58,X59,X60,X61) )
      & ( X64 != X61
        | r2_hidden(X64,X62)
        | X62 != k4_enumset1(X56,X57,X58,X59,X60,X61) )
      & ( esk1_7(X65,X66,X67,X68,X69,X70,X71) != X65
        | ~ r2_hidden(esk1_7(X65,X66,X67,X68,X69,X70,X71),X71)
        | X71 = k4_enumset1(X65,X66,X67,X68,X69,X70) )
      & ( esk1_7(X65,X66,X67,X68,X69,X70,X71) != X66
        | ~ r2_hidden(esk1_7(X65,X66,X67,X68,X69,X70,X71),X71)
        | X71 = k4_enumset1(X65,X66,X67,X68,X69,X70) )
      & ( esk1_7(X65,X66,X67,X68,X69,X70,X71) != X67
        | ~ r2_hidden(esk1_7(X65,X66,X67,X68,X69,X70,X71),X71)
        | X71 = k4_enumset1(X65,X66,X67,X68,X69,X70) )
      & ( esk1_7(X65,X66,X67,X68,X69,X70,X71) != X68
        | ~ r2_hidden(esk1_7(X65,X66,X67,X68,X69,X70,X71),X71)
        | X71 = k4_enumset1(X65,X66,X67,X68,X69,X70) )
      & ( esk1_7(X65,X66,X67,X68,X69,X70,X71) != X69
        | ~ r2_hidden(esk1_7(X65,X66,X67,X68,X69,X70,X71),X71)
        | X71 = k4_enumset1(X65,X66,X67,X68,X69,X70) )
      & ( esk1_7(X65,X66,X67,X68,X69,X70,X71) != X70
        | ~ r2_hidden(esk1_7(X65,X66,X67,X68,X69,X70,X71),X71)
        | X71 = k4_enumset1(X65,X66,X67,X68,X69,X70) )
      & ( r2_hidden(esk1_7(X65,X66,X67,X68,X69,X70,X71),X71)
        | esk1_7(X65,X66,X67,X68,X69,X70,X71) = X65
        | esk1_7(X65,X66,X67,X68,X69,X70,X71) = X66
        | esk1_7(X65,X66,X67,X68,X69,X70,X71) = X67
        | esk1_7(X65,X66,X67,X68,X69,X70,X71) = X68
        | esk1_7(X65,X66,X67,X68,X69,X70,X71) = X69
        | esk1_7(X65,X66,X67,X68,X69,X70,X71) = X70
        | X71 = k4_enumset1(X65,X66,X67,X68,X69,X70) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d4_enumset1])])])])])])).

fof(c_0_22,plain,(
    ! [X31,X32,X33,X34,X35,X36] : k5_enumset1(X31,X31,X32,X33,X34,X35,X36) = k4_enumset1(X31,X32,X33,X34,X35,X36) ),
    inference(variable_rename,[status(thm)],[t74_enumset1])).

fof(c_0_23,plain,(
    ! [X37,X38,X39,X40,X41,X42,X43] : k6_enumset1(X37,X37,X38,X39,X40,X41,X42,X43) = k5_enumset1(X37,X38,X39,X40,X41,X42,X43) ),
    inference(variable_rename,[status(thm)],[t75_enumset1])).

fof(c_0_24,plain,(
    ! [X75,X76] :
      ( k1_mcart_1(k4_tarski(X75,X76)) = X75
      & k2_mcart_1(k4_tarski(X75,X76)) = X76 ) ),
    inference(variable_rename,[status(thm)],[t7_mcart_1])).

fof(c_0_25,negated_conjecture,
    ( esk2_0 = k4_tarski(esk3_0,esk4_0)
    & ( esk2_0 = k1_mcart_1(esk2_0)
      | esk2_0 = k2_mcart_1(esk2_0) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_20])])])).

cnf(c_0_26,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k4_enumset1(X2,X4,X5,X6,X7,X8) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_27,plain,
    ( k5_enumset1(X1,X1,X2,X3,X4,X5,X6) = k4_enumset1(X1,X2,X3,X4,X5,X6) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_28,plain,
    ( k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7) = k5_enumset1(X1,X2,X3,X4,X5,X6,X7) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_29,plain,
    ( k1_mcart_1(k4_tarski(X1,X2)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_30,negated_conjecture,
    ( esk2_0 = k4_tarski(esk3_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

fof(c_0_31,plain,(
    ! [X73,X74] : k1_setfam_1(k2_tarski(X73,X74)) = k3_xboole_0(X73,X74) ),
    inference(variable_rename,[status(thm)],[t12_setfam_1])).

fof(c_0_32,plain,(
    ! [X17,X18] : k1_enumset1(X17,X17,X18) = k2_tarski(X17,X18) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_33,plain,(
    ! [X48,X49,X50,X51] :
      ( ( r2_hidden(X48,X50)
        | ~ r2_hidden(k4_tarski(X48,X49),k2_zfmisc_1(X50,X51)) )
      & ( r2_hidden(X49,X51)
        | ~ r2_hidden(k4_tarski(X48,X49),k2_zfmisc_1(X50,X51)) )
      & ( ~ r2_hidden(X48,X50)
        | ~ r2_hidden(X49,X51)
        | r2_hidden(k4_tarski(X48,X49),k2_zfmisc_1(X50,X51)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l54_zfmisc_1])])])).

cnf(c_0_34,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k6_enumset1(X2,X2,X2,X4,X5,X6,X7,X8) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_26,c_0_27]),c_0_28])).

cnf(c_0_35,plain,
    ( k2_mcart_1(k4_tarski(X1,X2)) = X2 ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_36,negated_conjecture,
    ( esk2_0 = k1_mcart_1(esk2_0)
    | esk2_0 = k2_mcart_1(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_37,negated_conjecture,
    ( k1_mcart_1(esk2_0) = esk3_0 ),
    inference(spm,[status(thm)],[c_0_29,c_0_30])).

fof(c_0_38,plain,(
    ! [X46,X47] : k3_tarski(k2_tarski(X46,X47)) = k2_xboole_0(X46,X47) ),
    inference(variable_rename,[status(thm)],[l51_zfmisc_1])).

fof(c_0_39,plain,(
    ! [X10,X11] : k4_xboole_0(X10,X11) = k5_xboole_0(X10,k3_xboole_0(X10,X11)) ),
    inference(variable_rename,[status(thm)],[t100_xboole_1])).

cnf(c_0_40,plain,
    ( k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

cnf(c_0_41,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

cnf(c_0_42,plain,
    ( r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(X2,X4))
    | ~ r2_hidden(X1,X2)
    | ~ r2_hidden(X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_43,plain,
    ( r2_hidden(X1,k6_enumset1(X1,X1,X1,X2,X3,X4,X5,X6)) ),
    inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_34])])).

cnf(c_0_44,negated_conjecture,
    ( k2_mcart_1(esk2_0) = esk4_0 ),
    inference(spm,[status(thm)],[c_0_35,c_0_30])).

cnf(c_0_45,negated_conjecture,
    ( k2_mcart_1(esk2_0) = esk2_0
    | esk3_0 = esk2_0 ),
    inference(rw,[status(thm)],[c_0_36,c_0_37])).

fof(c_0_46,plain,(
    ! [X14,X15] : k4_xboole_0(X14,k2_xboole_0(X14,X15)) = k1_xboole_0 ),
    inference(variable_rename,[status(thm)],[t46_xboole_1])).

cnf(c_0_47,plain,
    ( k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_38])).

cnf(c_0_48,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_49,plain,
    ( k1_setfam_1(k1_enumset1(X1,X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_40,c_0_41])).

fof(c_0_50,plain,(
    ! [X19,X20,X21] : k2_enumset1(X19,X19,X20,X21) = k1_enumset1(X19,X20,X21) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_51,plain,(
    ! [X22,X23,X24,X25] : k3_enumset1(X22,X22,X23,X24,X25) = k2_enumset1(X22,X23,X24,X25) ),
    inference(variable_rename,[status(thm)],[t72_enumset1])).

fof(c_0_52,plain,(
    ! [X26,X27,X28,X29,X30] : k4_enumset1(X26,X26,X27,X28,X29,X30) = k3_enumset1(X26,X27,X28,X29,X30) ),
    inference(variable_rename,[status(thm)],[t73_enumset1])).

fof(c_0_53,plain,(
    ! [X12,X13] : k3_xboole_0(X12,k2_xboole_0(X12,X13)) = X12 ),
    inference(variable_rename,[status(thm)],[t21_xboole_1])).

fof(c_0_54,plain,(
    ! [X44,X45] :
      ( ( ~ r1_tarski(k1_tarski(X44),X45)
        | r2_hidden(X44,X45) )
      & ( ~ r2_hidden(X44,X45)
        | r1_tarski(k1_tarski(X44),X45) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l1_zfmisc_1])])).

fof(c_0_55,plain,(
    ! [X16] : k2_tarski(X16,X16) = k1_tarski(X16) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

cnf(c_0_56,plain,
    ( r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,k6_enumset1(X2,X2,X2,X4,X5,X6,X7,X8)))
    | ~ r2_hidden(X1,X3) ),
    inference(spm,[status(thm)],[c_0_42,c_0_43])).

cnf(c_0_57,negated_conjecture,
    ( esk3_0 = esk2_0
    | esk4_0 = esk2_0 ),
    inference(spm,[status(thm)],[c_0_44,c_0_45])).

fof(c_0_58,plain,(
    ! [X54,X55] :
      ( ( k4_xboole_0(k1_tarski(X54),k1_tarski(X55)) != k1_tarski(X54)
        | X54 != X55 )
      & ( X54 = X55
        | k4_xboole_0(k1_tarski(X54),k1_tarski(X55)) = k1_tarski(X54) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t20_zfmisc_1])])).

fof(c_0_59,plain,(
    ! [X9] : k3_xboole_0(X9,X9) = X9 ),
    inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[idempotence_k3_xboole_0])])).

cnf(c_0_60,plain,
    ( k4_xboole_0(X1,k2_xboole_0(X1,X2)) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_46])).

cnf(c_0_61,plain,
    ( k3_tarski(k1_enumset1(X1,X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_47,c_0_41])).

cnf(c_0_62,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k1_setfam_1(k1_enumset1(X1,X1,X2))) ),
    inference(rw,[status(thm)],[c_0_48,c_0_49])).

cnf(c_0_63,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_50])).

cnf(c_0_64,plain,
    ( k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_51])).

cnf(c_0_65,plain,
    ( k4_enumset1(X1,X1,X2,X3,X4,X5) = k3_enumset1(X1,X2,X3,X4,X5) ),
    inference(split_conjunct,[status(thm)],[c_0_52])).

cnf(c_0_66,plain,
    ( k3_xboole_0(X1,k2_xboole_0(X1,X2)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_53])).

cnf(c_0_67,plain,
    ( r1_tarski(k1_tarski(X1),X2)
    | ~ r2_hidden(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_54])).

cnf(c_0_68,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_55])).

cnf(c_0_69,plain,
    ( r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(k6_enumset1(X1,X1,X1,X3,X4,X5,X6,X7),k6_enumset1(X2,X2,X2,X8,X9,X10,X11,X12))) ),
    inference(spm,[status(thm)],[c_0_56,c_0_43])).

cnf(c_0_70,negated_conjecture,
    ( k4_tarski(esk3_0,esk2_0) = esk2_0
    | esk3_0 = esk2_0 ),
    inference(spm,[status(thm)],[c_0_30,c_0_57])).

cnf(c_0_71,plain,
    ( k4_xboole_0(k1_tarski(X1),k1_tarski(X2)) != k1_tarski(X1)
    | X1 != X2 ),
    inference(split_conjunct,[status(thm)],[c_0_58])).

cnf(c_0_72,plain,
    ( k3_xboole_0(X1,X1) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_59])).

cnf(c_0_73,plain,
    ( k5_xboole_0(X1,k1_setfam_1(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))))) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_60,c_0_61]),c_0_62]),c_0_63]),c_0_63]),c_0_64]),c_0_64]),c_0_65]),c_0_65]),c_0_27]),c_0_27]),c_0_28]),c_0_28])).

cnf(c_0_74,plain,
    ( k1_setfam_1(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)))) = X1 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_66,c_0_61]),c_0_49]),c_0_63]),c_0_63]),c_0_64]),c_0_64]),c_0_65]),c_0_65]),c_0_27]),c_0_27]),c_0_28]),c_0_28])).

fof(c_0_75,plain,(
    ! [X52,X53] :
      ( ( ~ r1_tarski(X52,k2_zfmisc_1(X52,X53))
        | X52 = k1_xboole_0 )
      & ( ~ r1_tarski(X52,k2_zfmisc_1(X53,X52))
        | X52 = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t135_zfmisc_1])])])).

cnf(c_0_76,plain,
    ( r1_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),X2)
    | ~ r2_hidden(X1,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_67,c_0_68]),c_0_41]),c_0_63]),c_0_64]),c_0_65]),c_0_27]),c_0_28])).

cnf(c_0_77,negated_conjecture,
    ( esk3_0 = esk2_0
    | r2_hidden(esk2_0,k2_zfmisc_1(k6_enumset1(esk3_0,esk3_0,esk3_0,X1,X2,X3,X4,X5),k6_enumset1(esk2_0,esk2_0,esk2_0,X6,X7,X8,X9,X10))) ),
    inference(spm,[status(thm)],[c_0_69,c_0_70])).

cnf(c_0_78,plain,
    ( X1 != X2
    | k5_xboole_0(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k1_setfam_1(k6_enumset1(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X2)))) != k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_71,c_0_68]),c_0_68]),c_0_68]),c_0_41]),c_0_41]),c_0_41]),c_0_62]),c_0_63]),c_0_63]),c_0_63]),c_0_63]),c_0_63]),c_0_63]),c_0_64]),c_0_64]),c_0_64]),c_0_64]),c_0_64]),c_0_64]),c_0_64]),c_0_65]),c_0_65]),c_0_65]),c_0_65]),c_0_65]),c_0_65]),c_0_65]),c_0_65]),c_0_27]),c_0_27]),c_0_27]),c_0_27]),c_0_27]),c_0_27]),c_0_27]),c_0_27]),c_0_27]),c_0_28]),c_0_28]),c_0_28]),c_0_28]),c_0_28]),c_0_28]),c_0_28]),c_0_28]),c_0_28]),c_0_28])).

cnf(c_0_79,plain,
    ( k1_setfam_1(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) = X1 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_72,c_0_49]),c_0_63]),c_0_64]),c_0_65]),c_0_27]),c_0_28])).

cnf(c_0_80,plain,
    ( k5_xboole_0(X1,X1) = k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_73,c_0_74])).

cnf(c_0_81,negated_conjecture,
    ( r2_hidden(esk2_0,k2_zfmisc_1(k6_enumset1(esk3_0,esk3_0,esk3_0,X1,X2,X3,X4,X5),k6_enumset1(esk4_0,esk4_0,esk4_0,X6,X7,X8,X9,X10))) ),
    inference(spm,[status(thm)],[c_0_69,c_0_30])).

cnf(c_0_82,plain,
    ( X1 = k1_xboole_0
    | ~ r1_tarski(X1,k2_zfmisc_1(X2,X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_75])).

cnf(c_0_83,negated_conjecture,
    ( esk3_0 = esk2_0
    | r1_tarski(k6_enumset1(esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk2_0),k2_zfmisc_1(k6_enumset1(esk3_0,esk3_0,esk3_0,X1,X2,X3,X4,X5),k6_enumset1(esk2_0,esk2_0,esk2_0,X6,X7,X8,X9,X10))) ),
    inference(spm,[status(thm)],[c_0_76,c_0_77])).

cnf(c_0_84,plain,
    ( k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1) != k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(er,[status(thm)],[c_0_78]),c_0_79]),c_0_80])).

cnf(c_0_85,negated_conjecture,
    ( r1_tarski(k6_enumset1(esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk2_0),k2_zfmisc_1(k6_enumset1(esk3_0,esk3_0,esk3_0,X1,X2,X3,X4,X5),k6_enumset1(esk4_0,esk4_0,esk4_0,X6,X7,X8,X9,X10))) ),
    inference(spm,[status(thm)],[c_0_76,c_0_81])).

cnf(c_0_86,negated_conjecture,
    ( esk3_0 = esk2_0 ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_82,c_0_83]),c_0_84])).

cnf(c_0_87,plain,
    ( X1 = k1_xboole_0
    | ~ r1_tarski(X1,k2_zfmisc_1(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_75])).

cnf(c_0_88,negated_conjecture,
    ( r1_tarski(k6_enumset1(esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk2_0),k2_zfmisc_1(k6_enumset1(esk2_0,esk2_0,esk2_0,X1,X2,X3,X4,X5),k6_enumset1(esk4_0,esk4_0,esk4_0,X6,X7,X8,X9,X10))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_85,c_0_86]),c_0_86]),c_0_86])).

cnf(c_0_89,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_87,c_0_88]),c_0_84]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.13/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n016.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 20:45:04 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.78/0.94  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S054N
% 0.78/0.94  # and selection function GSelectMinInfpos.
% 0.78/0.94  #
% 0.78/0.94  # Preprocessing time       : 0.028 s
% 0.78/0.94  # Presaturation interreduction done
% 0.78/0.94  
% 0.78/0.94  # Proof found!
% 0.78/0.94  # SZS status Theorem
% 0.78/0.94  # SZS output start CNFRefutation
% 0.78/0.94  fof(t20_mcart_1, conjecture, ![X1]:(?[X2, X3]:X1=k4_tarski(X2,X3)=>(X1!=k1_mcart_1(X1)&X1!=k2_mcart_1(X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t20_mcart_1)).
% 0.78/0.94  fof(d4_enumset1, axiom, ![X1, X2, X3, X4, X5, X6, X7]:(X7=k4_enumset1(X1,X2,X3,X4,X5,X6)<=>![X8]:(r2_hidden(X8,X7)<=>~((((((X8!=X1&X8!=X2)&X8!=X3)&X8!=X4)&X8!=X5)&X8!=X6)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d4_enumset1)).
% 0.78/0.94  fof(t74_enumset1, axiom, ![X1, X2, X3, X4, X5, X6]:k5_enumset1(X1,X1,X2,X3,X4,X5,X6)=k4_enumset1(X1,X2,X3,X4,X5,X6), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t74_enumset1)).
% 0.78/0.94  fof(t75_enumset1, axiom, ![X1, X2, X3, X4, X5, X6, X7]:k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7)=k5_enumset1(X1,X2,X3,X4,X5,X6,X7), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t75_enumset1)).
% 0.78/0.94  fof(t7_mcart_1, axiom, ![X1, X2]:(k1_mcart_1(k4_tarski(X1,X2))=X1&k2_mcart_1(k4_tarski(X1,X2))=X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t7_mcart_1)).
% 0.78/0.94  fof(t12_setfam_1, axiom, ![X1, X2]:k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t12_setfam_1)).
% 0.78/0.94  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t70_enumset1)).
% 0.78/0.94  fof(l54_zfmisc_1, axiom, ![X1, X2, X3, X4]:(r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,X4))<=>(r2_hidden(X1,X3)&r2_hidden(X2,X4))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l54_zfmisc_1)).
% 0.78/0.94  fof(l51_zfmisc_1, axiom, ![X1, X2]:k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l51_zfmisc_1)).
% 0.78/0.94  fof(t100_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t100_xboole_1)).
% 0.78/0.94  fof(t46_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,k2_xboole_0(X1,X2))=k1_xboole_0, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t46_xboole_1)).
% 0.78/0.94  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t71_enumset1)).
% 0.78/0.94  fof(t72_enumset1, axiom, ![X1, X2, X3, X4]:k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t72_enumset1)).
% 0.78/0.94  fof(t73_enumset1, axiom, ![X1, X2, X3, X4, X5]:k4_enumset1(X1,X1,X2,X3,X4,X5)=k3_enumset1(X1,X2,X3,X4,X5), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t73_enumset1)).
% 0.78/0.94  fof(t21_xboole_1, axiom, ![X1, X2]:k3_xboole_0(X1,k2_xboole_0(X1,X2))=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t21_xboole_1)).
% 0.78/0.94  fof(l1_zfmisc_1, axiom, ![X1, X2]:(r1_tarski(k1_tarski(X1),X2)<=>r2_hidden(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l1_zfmisc_1)).
% 0.78/0.94  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t69_enumset1)).
% 0.78/0.94  fof(t20_zfmisc_1, axiom, ![X1, X2]:(k4_xboole_0(k1_tarski(X1),k1_tarski(X2))=k1_tarski(X1)<=>X1!=X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t20_zfmisc_1)).
% 0.78/0.94  fof(idempotence_k3_xboole_0, axiom, ![X1, X2]:k3_xboole_0(X1,X1)=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', idempotence_k3_xboole_0)).
% 0.78/0.94  fof(t135_zfmisc_1, axiom, ![X1, X2]:((r1_tarski(X1,k2_zfmisc_1(X1,X2))|r1_tarski(X1,k2_zfmisc_1(X2,X1)))=>X1=k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t135_zfmisc_1)).
% 0.78/0.94  fof(c_0_20, negated_conjecture, ~(![X1]:(?[X2, X3]:X1=k4_tarski(X2,X3)=>(X1!=k1_mcart_1(X1)&X1!=k2_mcart_1(X1)))), inference(assume_negation,[status(cth)],[t20_mcart_1])).
% 0.78/0.94  fof(c_0_21, plain, ![X56, X57, X58, X59, X60, X61, X62, X63, X64, X65, X66, X67, X68, X69, X70, X71]:(((~r2_hidden(X63,X62)|(X63=X56|X63=X57|X63=X58|X63=X59|X63=X60|X63=X61)|X62!=k4_enumset1(X56,X57,X58,X59,X60,X61))&((((((X64!=X56|r2_hidden(X64,X62)|X62!=k4_enumset1(X56,X57,X58,X59,X60,X61))&(X64!=X57|r2_hidden(X64,X62)|X62!=k4_enumset1(X56,X57,X58,X59,X60,X61)))&(X64!=X58|r2_hidden(X64,X62)|X62!=k4_enumset1(X56,X57,X58,X59,X60,X61)))&(X64!=X59|r2_hidden(X64,X62)|X62!=k4_enumset1(X56,X57,X58,X59,X60,X61)))&(X64!=X60|r2_hidden(X64,X62)|X62!=k4_enumset1(X56,X57,X58,X59,X60,X61)))&(X64!=X61|r2_hidden(X64,X62)|X62!=k4_enumset1(X56,X57,X58,X59,X60,X61))))&(((((((esk1_7(X65,X66,X67,X68,X69,X70,X71)!=X65|~r2_hidden(esk1_7(X65,X66,X67,X68,X69,X70,X71),X71)|X71=k4_enumset1(X65,X66,X67,X68,X69,X70))&(esk1_7(X65,X66,X67,X68,X69,X70,X71)!=X66|~r2_hidden(esk1_7(X65,X66,X67,X68,X69,X70,X71),X71)|X71=k4_enumset1(X65,X66,X67,X68,X69,X70)))&(esk1_7(X65,X66,X67,X68,X69,X70,X71)!=X67|~r2_hidden(esk1_7(X65,X66,X67,X68,X69,X70,X71),X71)|X71=k4_enumset1(X65,X66,X67,X68,X69,X70)))&(esk1_7(X65,X66,X67,X68,X69,X70,X71)!=X68|~r2_hidden(esk1_7(X65,X66,X67,X68,X69,X70,X71),X71)|X71=k4_enumset1(X65,X66,X67,X68,X69,X70)))&(esk1_7(X65,X66,X67,X68,X69,X70,X71)!=X69|~r2_hidden(esk1_7(X65,X66,X67,X68,X69,X70,X71),X71)|X71=k4_enumset1(X65,X66,X67,X68,X69,X70)))&(esk1_7(X65,X66,X67,X68,X69,X70,X71)!=X70|~r2_hidden(esk1_7(X65,X66,X67,X68,X69,X70,X71),X71)|X71=k4_enumset1(X65,X66,X67,X68,X69,X70)))&(r2_hidden(esk1_7(X65,X66,X67,X68,X69,X70,X71),X71)|(esk1_7(X65,X66,X67,X68,X69,X70,X71)=X65|esk1_7(X65,X66,X67,X68,X69,X70,X71)=X66|esk1_7(X65,X66,X67,X68,X69,X70,X71)=X67|esk1_7(X65,X66,X67,X68,X69,X70,X71)=X68|esk1_7(X65,X66,X67,X68,X69,X70,X71)=X69|esk1_7(X65,X66,X67,X68,X69,X70,X71)=X70)|X71=k4_enumset1(X65,X66,X67,X68,X69,X70)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d4_enumset1])])])])])])).
% 0.78/0.94  fof(c_0_22, plain, ![X31, X32, X33, X34, X35, X36]:k5_enumset1(X31,X31,X32,X33,X34,X35,X36)=k4_enumset1(X31,X32,X33,X34,X35,X36), inference(variable_rename,[status(thm)],[t74_enumset1])).
% 0.78/0.94  fof(c_0_23, plain, ![X37, X38, X39, X40, X41, X42, X43]:k6_enumset1(X37,X37,X38,X39,X40,X41,X42,X43)=k5_enumset1(X37,X38,X39,X40,X41,X42,X43), inference(variable_rename,[status(thm)],[t75_enumset1])).
% 0.78/0.94  fof(c_0_24, plain, ![X75, X76]:(k1_mcart_1(k4_tarski(X75,X76))=X75&k2_mcart_1(k4_tarski(X75,X76))=X76), inference(variable_rename,[status(thm)],[t7_mcart_1])).
% 0.78/0.94  fof(c_0_25, negated_conjecture, (esk2_0=k4_tarski(esk3_0,esk4_0)&(esk2_0=k1_mcart_1(esk2_0)|esk2_0=k2_mcart_1(esk2_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_20])])])).
% 0.78/0.94  cnf(c_0_26, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k4_enumset1(X2,X4,X5,X6,X7,X8)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.78/0.94  cnf(c_0_27, plain, (k5_enumset1(X1,X1,X2,X3,X4,X5,X6)=k4_enumset1(X1,X2,X3,X4,X5,X6)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.78/0.94  cnf(c_0_28, plain, (k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7)=k5_enumset1(X1,X2,X3,X4,X5,X6,X7)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.78/0.94  cnf(c_0_29, plain, (k1_mcart_1(k4_tarski(X1,X2))=X1), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.78/0.94  cnf(c_0_30, negated_conjecture, (esk2_0=k4_tarski(esk3_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.78/0.94  fof(c_0_31, plain, ![X73, X74]:k1_setfam_1(k2_tarski(X73,X74))=k3_xboole_0(X73,X74), inference(variable_rename,[status(thm)],[t12_setfam_1])).
% 0.78/0.94  fof(c_0_32, plain, ![X17, X18]:k1_enumset1(X17,X17,X18)=k2_tarski(X17,X18), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.78/0.94  fof(c_0_33, plain, ![X48, X49, X50, X51]:(((r2_hidden(X48,X50)|~r2_hidden(k4_tarski(X48,X49),k2_zfmisc_1(X50,X51)))&(r2_hidden(X49,X51)|~r2_hidden(k4_tarski(X48,X49),k2_zfmisc_1(X50,X51))))&(~r2_hidden(X48,X50)|~r2_hidden(X49,X51)|r2_hidden(k4_tarski(X48,X49),k2_zfmisc_1(X50,X51)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l54_zfmisc_1])])])).
% 0.78/0.94  cnf(c_0_34, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k6_enumset1(X2,X2,X2,X4,X5,X6,X7,X8)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_26, c_0_27]), c_0_28])).
% 0.78/0.94  cnf(c_0_35, plain, (k2_mcart_1(k4_tarski(X1,X2))=X2), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.78/0.94  cnf(c_0_36, negated_conjecture, (esk2_0=k1_mcart_1(esk2_0)|esk2_0=k2_mcart_1(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.78/0.94  cnf(c_0_37, negated_conjecture, (k1_mcart_1(esk2_0)=esk3_0), inference(spm,[status(thm)],[c_0_29, c_0_30])).
% 0.78/0.94  fof(c_0_38, plain, ![X46, X47]:k3_tarski(k2_tarski(X46,X47))=k2_xboole_0(X46,X47), inference(variable_rename,[status(thm)],[l51_zfmisc_1])).
% 0.78/0.94  fof(c_0_39, plain, ![X10, X11]:k4_xboole_0(X10,X11)=k5_xboole_0(X10,k3_xboole_0(X10,X11)), inference(variable_rename,[status(thm)],[t100_xboole_1])).
% 0.78/0.94  cnf(c_0_40, plain, (k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_31])).
% 0.78/0.94  cnf(c_0_41, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.78/0.94  cnf(c_0_42, plain, (r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(X2,X4))|~r2_hidden(X1,X2)|~r2_hidden(X3,X4)), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.78/0.94  cnf(c_0_43, plain, (r2_hidden(X1,k6_enumset1(X1,X1,X1,X2,X3,X4,X5,X6))), inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_34])])).
% 0.78/0.94  cnf(c_0_44, negated_conjecture, (k2_mcart_1(esk2_0)=esk4_0), inference(spm,[status(thm)],[c_0_35, c_0_30])).
% 0.78/0.94  cnf(c_0_45, negated_conjecture, (k2_mcart_1(esk2_0)=esk2_0|esk3_0=esk2_0), inference(rw,[status(thm)],[c_0_36, c_0_37])).
% 0.78/0.94  fof(c_0_46, plain, ![X14, X15]:k4_xboole_0(X14,k2_xboole_0(X14,X15))=k1_xboole_0, inference(variable_rename,[status(thm)],[t46_xboole_1])).
% 0.78/0.94  cnf(c_0_47, plain, (k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_38])).
% 0.78/0.94  cnf(c_0_48, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.78/0.94  cnf(c_0_49, plain, (k1_setfam_1(k1_enumset1(X1,X1,X2))=k3_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_40, c_0_41])).
% 0.78/0.94  fof(c_0_50, plain, ![X19, X20, X21]:k2_enumset1(X19,X19,X20,X21)=k1_enumset1(X19,X20,X21), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.78/0.94  fof(c_0_51, plain, ![X22, X23, X24, X25]:k3_enumset1(X22,X22,X23,X24,X25)=k2_enumset1(X22,X23,X24,X25), inference(variable_rename,[status(thm)],[t72_enumset1])).
% 0.78/0.94  fof(c_0_52, plain, ![X26, X27, X28, X29, X30]:k4_enumset1(X26,X26,X27,X28,X29,X30)=k3_enumset1(X26,X27,X28,X29,X30), inference(variable_rename,[status(thm)],[t73_enumset1])).
% 0.78/0.94  fof(c_0_53, plain, ![X12, X13]:k3_xboole_0(X12,k2_xboole_0(X12,X13))=X12, inference(variable_rename,[status(thm)],[t21_xboole_1])).
% 0.78/0.94  fof(c_0_54, plain, ![X44, X45]:((~r1_tarski(k1_tarski(X44),X45)|r2_hidden(X44,X45))&(~r2_hidden(X44,X45)|r1_tarski(k1_tarski(X44),X45))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l1_zfmisc_1])])).
% 0.78/0.94  fof(c_0_55, plain, ![X16]:k2_tarski(X16,X16)=k1_tarski(X16), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.78/0.94  cnf(c_0_56, plain, (r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,k6_enumset1(X2,X2,X2,X4,X5,X6,X7,X8)))|~r2_hidden(X1,X3)), inference(spm,[status(thm)],[c_0_42, c_0_43])).
% 0.78/0.94  cnf(c_0_57, negated_conjecture, (esk3_0=esk2_0|esk4_0=esk2_0), inference(spm,[status(thm)],[c_0_44, c_0_45])).
% 0.78/0.94  fof(c_0_58, plain, ![X54, X55]:((k4_xboole_0(k1_tarski(X54),k1_tarski(X55))!=k1_tarski(X54)|X54!=X55)&(X54=X55|k4_xboole_0(k1_tarski(X54),k1_tarski(X55))=k1_tarski(X54))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t20_zfmisc_1])])).
% 0.78/0.94  fof(c_0_59, plain, ![X9]:k3_xboole_0(X9,X9)=X9, inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[idempotence_k3_xboole_0])])).
% 0.78/0.94  cnf(c_0_60, plain, (k4_xboole_0(X1,k2_xboole_0(X1,X2))=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_46])).
% 0.78/0.94  cnf(c_0_61, plain, (k3_tarski(k1_enumset1(X1,X1,X2))=k2_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_47, c_0_41])).
% 0.78/0.94  cnf(c_0_62, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k1_setfam_1(k1_enumset1(X1,X1,X2)))), inference(rw,[status(thm)],[c_0_48, c_0_49])).
% 0.78/0.94  cnf(c_0_63, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_50])).
% 0.78/0.94  cnf(c_0_64, plain, (k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4)), inference(split_conjunct,[status(thm)],[c_0_51])).
% 0.78/0.94  cnf(c_0_65, plain, (k4_enumset1(X1,X1,X2,X3,X4,X5)=k3_enumset1(X1,X2,X3,X4,X5)), inference(split_conjunct,[status(thm)],[c_0_52])).
% 0.78/0.94  cnf(c_0_66, plain, (k3_xboole_0(X1,k2_xboole_0(X1,X2))=X1), inference(split_conjunct,[status(thm)],[c_0_53])).
% 0.78/0.94  cnf(c_0_67, plain, (r1_tarski(k1_tarski(X1),X2)|~r2_hidden(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_54])).
% 0.78/0.94  cnf(c_0_68, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_55])).
% 0.78/0.94  cnf(c_0_69, plain, (r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(k6_enumset1(X1,X1,X1,X3,X4,X5,X6,X7),k6_enumset1(X2,X2,X2,X8,X9,X10,X11,X12)))), inference(spm,[status(thm)],[c_0_56, c_0_43])).
% 0.78/0.94  cnf(c_0_70, negated_conjecture, (k4_tarski(esk3_0,esk2_0)=esk2_0|esk3_0=esk2_0), inference(spm,[status(thm)],[c_0_30, c_0_57])).
% 0.78/0.94  cnf(c_0_71, plain, (k4_xboole_0(k1_tarski(X1),k1_tarski(X2))!=k1_tarski(X1)|X1!=X2), inference(split_conjunct,[status(thm)],[c_0_58])).
% 0.78/0.94  cnf(c_0_72, plain, (k3_xboole_0(X1,X1)=X1), inference(split_conjunct,[status(thm)],[c_0_59])).
% 0.78/0.94  cnf(c_0_73, plain, (k5_xboole_0(X1,k1_setfam_1(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)))))=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_60, c_0_61]), c_0_62]), c_0_63]), c_0_63]), c_0_64]), c_0_64]), c_0_65]), c_0_65]), c_0_27]), c_0_27]), c_0_28]), c_0_28])).
% 0.78/0.94  cnf(c_0_74, plain, (k1_setfam_1(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))))=X1), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_66, c_0_61]), c_0_49]), c_0_63]), c_0_63]), c_0_64]), c_0_64]), c_0_65]), c_0_65]), c_0_27]), c_0_27]), c_0_28]), c_0_28])).
% 0.78/0.94  fof(c_0_75, plain, ![X52, X53]:((~r1_tarski(X52,k2_zfmisc_1(X52,X53))|X52=k1_xboole_0)&(~r1_tarski(X52,k2_zfmisc_1(X53,X52))|X52=k1_xboole_0)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t135_zfmisc_1])])])).
% 0.78/0.94  cnf(c_0_76, plain, (r1_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),X2)|~r2_hidden(X1,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_67, c_0_68]), c_0_41]), c_0_63]), c_0_64]), c_0_65]), c_0_27]), c_0_28])).
% 0.78/0.94  cnf(c_0_77, negated_conjecture, (esk3_0=esk2_0|r2_hidden(esk2_0,k2_zfmisc_1(k6_enumset1(esk3_0,esk3_0,esk3_0,X1,X2,X3,X4,X5),k6_enumset1(esk2_0,esk2_0,esk2_0,X6,X7,X8,X9,X10)))), inference(spm,[status(thm)],[c_0_69, c_0_70])).
% 0.78/0.94  cnf(c_0_78, plain, (X1!=X2|k5_xboole_0(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k1_setfam_1(k6_enumset1(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X2))))!=k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_71, c_0_68]), c_0_68]), c_0_68]), c_0_41]), c_0_41]), c_0_41]), c_0_62]), c_0_63]), c_0_63]), c_0_63]), c_0_63]), c_0_63]), c_0_63]), c_0_64]), c_0_64]), c_0_64]), c_0_64]), c_0_64]), c_0_64]), c_0_64]), c_0_65]), c_0_65]), c_0_65]), c_0_65]), c_0_65]), c_0_65]), c_0_65]), c_0_65]), c_0_27]), c_0_27]), c_0_27]), c_0_27]), c_0_27]), c_0_27]), c_0_27]), c_0_27]), c_0_27]), c_0_28]), c_0_28]), c_0_28]), c_0_28]), c_0_28]), c_0_28]), c_0_28]), c_0_28]), c_0_28]), c_0_28])).
% 0.78/0.94  cnf(c_0_79, plain, (k1_setfam_1(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1))=X1), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_72, c_0_49]), c_0_63]), c_0_64]), c_0_65]), c_0_27]), c_0_28])).
% 0.78/0.94  cnf(c_0_80, plain, (k5_xboole_0(X1,X1)=k1_xboole_0), inference(rw,[status(thm)],[c_0_73, c_0_74])).
% 0.78/0.94  cnf(c_0_81, negated_conjecture, (r2_hidden(esk2_0,k2_zfmisc_1(k6_enumset1(esk3_0,esk3_0,esk3_0,X1,X2,X3,X4,X5),k6_enumset1(esk4_0,esk4_0,esk4_0,X6,X7,X8,X9,X10)))), inference(spm,[status(thm)],[c_0_69, c_0_30])).
% 0.78/0.94  cnf(c_0_82, plain, (X1=k1_xboole_0|~r1_tarski(X1,k2_zfmisc_1(X2,X1))), inference(split_conjunct,[status(thm)],[c_0_75])).
% 0.78/0.94  cnf(c_0_83, negated_conjecture, (esk3_0=esk2_0|r1_tarski(k6_enumset1(esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk2_0),k2_zfmisc_1(k6_enumset1(esk3_0,esk3_0,esk3_0,X1,X2,X3,X4,X5),k6_enumset1(esk2_0,esk2_0,esk2_0,X6,X7,X8,X9,X10)))), inference(spm,[status(thm)],[c_0_76, c_0_77])).
% 0.78/0.94  cnf(c_0_84, plain, (k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)!=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(er,[status(thm)],[c_0_78]), c_0_79]), c_0_80])).
% 0.78/0.94  cnf(c_0_85, negated_conjecture, (r1_tarski(k6_enumset1(esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk2_0),k2_zfmisc_1(k6_enumset1(esk3_0,esk3_0,esk3_0,X1,X2,X3,X4,X5),k6_enumset1(esk4_0,esk4_0,esk4_0,X6,X7,X8,X9,X10)))), inference(spm,[status(thm)],[c_0_76, c_0_81])).
% 0.78/0.94  cnf(c_0_86, negated_conjecture, (esk3_0=esk2_0), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_82, c_0_83]), c_0_84])).
% 0.78/0.94  cnf(c_0_87, plain, (X1=k1_xboole_0|~r1_tarski(X1,k2_zfmisc_1(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_75])).
% 0.78/0.94  cnf(c_0_88, negated_conjecture, (r1_tarski(k6_enumset1(esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk2_0),k2_zfmisc_1(k6_enumset1(esk2_0,esk2_0,esk2_0,X1,X2,X3,X4,X5),k6_enumset1(esk4_0,esk4_0,esk4_0,X6,X7,X8,X9,X10)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_85, c_0_86]), c_0_86]), c_0_86])).
% 0.78/0.94  cnf(c_0_89, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_87, c_0_88]), c_0_84]), ['proof']).
% 0.78/0.94  # SZS output end CNFRefutation
% 0.78/0.94  # Proof object total steps             : 90
% 0.78/0.94  # Proof object clause steps            : 49
% 0.78/0.94  # Proof object formula steps           : 41
% 0.78/0.94  # Proof object conjectures             : 17
% 0.78/0.94  # Proof object clause conjectures      : 14
% 0.78/0.94  # Proof object formula conjectures     : 3
% 0.78/0.94  # Proof object initial clauses used    : 23
% 0.78/0.94  # Proof object initial formulas used   : 20
% 0.78/0.94  # Proof object generating inferences   : 12
% 0.78/0.94  # Proof object simplifying inferences  : 101
% 0.78/0.94  # Training examples: 0 positive, 0 negative
% 0.78/0.94  # Parsed axioms                        : 20
% 0.78/0.94  # Removed by relevancy pruning/SinE    : 0
% 0.78/0.94  # Initial clauses                      : 40
% 0.78/0.94  # Removed in clause preprocessing      : 10
% 0.78/0.94  # Initial clauses in saturation        : 30
% 0.78/0.94  # Processed clauses                    : 620
% 0.78/0.94  # ...of these trivial                  : 1
% 0.78/0.94  # ...subsumed                          : 210
% 0.78/0.94  # ...remaining for further processing  : 409
% 0.78/0.94  # Other redundant clauses eliminated   : 262
% 0.78/0.94  # Clauses deleted for lack of memory   : 0
% 0.78/0.94  # Backward-subsumed                    : 0
% 0.78/0.94  # Backward-rewritten                   : 221
% 0.78/0.94  # Generated clauses                    : 30648
% 0.78/0.94  # ...of the previous two non-trivial   : 30005
% 0.78/0.94  # Contextual simplify-reflections      : 0
% 0.78/0.94  # Paramodulations                      : 30259
% 0.78/0.94  # Factorizations                       : 133
% 0.78/0.94  # Equation resolutions                 : 262
% 0.78/0.94  # Propositional unsat checks           : 0
% 0.78/0.94  #    Propositional check models        : 0
% 0.78/0.94  #    Propositional check unsatisfiable : 0
% 0.78/0.94  #    Propositional clauses             : 0
% 0.78/0.94  #    Propositional clauses after purity: 0
% 0.78/0.94  #    Propositional unsat core size     : 0
% 0.78/0.94  #    Propositional preprocessing time  : 0.000
% 0.78/0.94  #    Propositional encoding time       : 0.000
% 0.78/0.94  #    Propositional solver time         : 0.000
% 0.78/0.94  #    Success case prop preproc time    : 0.000
% 0.78/0.94  #    Success case prop encoding time   : 0.000
% 0.78/0.94  #    Success case prop solver time     : 0.000
% 0.78/0.94  # Current number of processed clauses  : 150
% 0.78/0.94  #    Positive orientable unit clauses  : 59
% 0.78/0.94  #    Positive unorientable unit clauses: 0
% 0.78/0.94  #    Negative unit clauses             : 1
% 0.78/0.94  #    Non-unit-clauses                  : 90
% 0.78/0.94  # Current number of unprocessed clauses: 29443
% 0.78/0.94  # ...number of literals in the above   : 141782
% 0.78/0.94  # Current number of archived formulas  : 0
% 0.78/0.94  # Current number of archived clauses   : 261
% 0.78/0.94  # Clause-clause subsumption calls (NU) : 19211
% 0.78/0.94  # Rec. Clause-clause subsumption calls : 9032
% 0.78/0.94  # Non-unit clause-clause subsumptions  : 210
% 0.78/0.94  # Unit Clause-clause subsumption calls : 1097
% 0.78/0.94  # Rewrite failures with RHS unbound    : 0
% 0.78/0.94  # BW rewrite match attempts            : 944
% 0.78/0.94  # BW rewrite match successes           : 2
% 0.78/0.94  # Condensation attempts                : 0
% 0.78/0.94  # Condensation successes               : 0
% 0.78/0.94  # Termbank termtop insertions          : 773355
% 0.78/0.94  
% 0.78/0.94  # -------------------------------------------------
% 0.78/0.94  # User time                : 0.584 s
% 0.78/0.94  # System time              : 0.017 s
% 0.78/0.94  # Total time               : 0.601 s
% 0.78/0.94  # Maximum resident set size: 1588 pages
%------------------------------------------------------------------------------
