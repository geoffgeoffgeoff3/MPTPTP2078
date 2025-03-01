%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n005.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:37:28 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   84 ( 554 expanded)
%              Number of clauses        :   43 ( 232 expanded)
%              Number of leaves         :   20 ( 160 expanded)
%              Depth                    :   13
%              Number of atoms          :  197 ( 700 expanded)
%              Number of equality atoms :  157 ( 600 expanded)
%              Maximal formula depth    :   52 (   4 average)
%              Maximal clause size      :   76 (   1 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t28_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
     => k3_xboole_0(X1,X2) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t28_xboole_1)).

fof(t2_xboole_1,axiom,(
    ! [X1] : r1_tarski(k1_xboole_0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_xboole_1)).

fof(t48_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t48_xboole_1)).

fof(t100_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_xboole_1)).

fof(commutativity_k3_xboole_0,axiom,(
    ! [X1,X2] : k3_xboole_0(X1,X2) = k3_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).

fof(t5_boole,axiom,(
    ! [X1] : k5_xboole_0(X1,k1_xboole_0) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t5_boole)).

fof(idempotence_k3_xboole_0,axiom,(
    ! [X1,X2] : k3_xboole_0(X1,X1) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',idempotence_k3_xboole_0)).

fof(t91_xboole_1,axiom,(
    ! [X1,X2,X3] : k5_xboole_0(k5_xboole_0(X1,X2),X3) = k5_xboole_0(X1,k5_xboole_0(X2,X3)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t91_xboole_1)).

fof(t13_zfmisc_1,conjecture,(
    ! [X1,X2] :
      ( k2_xboole_0(k1_tarski(X1),k1_tarski(X2)) = k1_tarski(X1)
     => X1 = X2 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t13_zfmisc_1)).

fof(t98_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X2) = k5_xboole_0(X1,k4_xboole_0(X2,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t98_xboole_1)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).

fof(t72_enumset1,axiom,(
    ! [X1,X2,X3,X4] : k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t72_enumset1)).

fof(t73_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5] : k4_enumset1(X1,X1,X2,X3,X4,X5) = k3_enumset1(X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t73_enumset1)).

fof(t74_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5,X6] : k5_enumset1(X1,X1,X2,X3,X4,X5,X6) = k4_enumset1(X1,X2,X3,X4,X5,X6) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t74_enumset1)).

fof(t75_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5,X6,X7] : k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7) = k5_enumset1(X1,X2,X3,X4,X5,X6,X7) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t75_enumset1)).

fof(d1_tarski,axiom,(
    ! [X1,X2] :
      ( X2 = k1_tarski(X1)
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> X3 = X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_tarski)).

fof(t134_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5,X6,X7,X8,X9] : k7_enumset1(X1,X2,X3,X4,X5,X6,X7,X8,X9) = k2_xboole_0(k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8),k1_tarski(X9)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t134_enumset1)).

fof(d7_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5,X6,X7,X8,X9,X10] :
      ( X10 = k7_enumset1(X1,X2,X3,X4,X5,X6,X7,X8,X9)
    <=> ! [X11] :
          ( r2_hidden(X11,X10)
        <=> ~ ( X11 != X1
              & X11 != X2
              & X11 != X3
              & X11 != X4
              & X11 != X5
              & X11 != X6
              & X11 != X7
              & X11 != X8
              & X11 != X9 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d7_enumset1)).

fof(c_0_20,plain,(
    ! [X17,X18] :
      ( ~ r1_tarski(X17,X18)
      | k3_xboole_0(X17,X18) = X17 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t28_xboole_1])])).

fof(c_0_21,plain,(
    ! [X19] : r1_tarski(k1_xboole_0,X19) ),
    inference(variable_rename,[status(thm)],[t2_xboole_1])).

fof(c_0_22,plain,(
    ! [X20,X21] : k4_xboole_0(X20,k4_xboole_0(X20,X21)) = k3_xboole_0(X20,X21) ),
    inference(variable_rename,[status(thm)],[t48_xboole_1])).

fof(c_0_23,plain,(
    ! [X15,X16] : k4_xboole_0(X15,X16) = k5_xboole_0(X15,k3_xboole_0(X15,X16)) ),
    inference(variable_rename,[status(thm)],[t100_xboole_1])).

fof(c_0_24,plain,(
    ! [X12,X13] : k3_xboole_0(X12,X13) = k3_xboole_0(X13,X12) ),
    inference(variable_rename,[status(thm)],[commutativity_k3_xboole_0])).

cnf(c_0_25,plain,
    ( k3_xboole_0(X1,X2) = X1
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_26,plain,
    ( r1_tarski(k1_xboole_0,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_27,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_28,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_29,plain,
    ( k3_xboole_0(X1,X2) = k3_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_30,plain,
    ( k3_xboole_0(k1_xboole_0,X1) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_25,c_0_26])).

fof(c_0_31,plain,(
    ! [X22] : k5_xboole_0(X22,k1_xboole_0) = X22 ),
    inference(variable_rename,[status(thm)],[t5_boole])).

fof(c_0_32,plain,(
    ! [X14] : k3_xboole_0(X14,X14) = X14 ),
    inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[idempotence_k3_xboole_0])])).

fof(c_0_33,plain,(
    ! [X23,X24,X25] : k5_xboole_0(k5_xboole_0(X23,X24),X25) = k5_xboole_0(X23,k5_xboole_0(X24,X25)) ),
    inference(variable_rename,[status(thm)],[t91_xboole_1])).

cnf(c_0_34,plain,
    ( k5_xboole_0(X1,k3_xboole_0(X1,k5_xboole_0(X1,k3_xboole_0(X1,X2)))) = k3_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_27,c_0_28]),c_0_28])).

cnf(c_0_35,plain,
    ( k3_xboole_0(X1,k1_xboole_0) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_29,c_0_30])).

cnf(c_0_36,plain,
    ( k5_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

cnf(c_0_37,plain,
    ( k3_xboole_0(X1,X1) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

fof(c_0_38,negated_conjecture,(
    ~ ! [X1,X2] :
        ( k2_xboole_0(k1_tarski(X1),k1_tarski(X2)) = k1_tarski(X1)
       => X1 = X2 ) ),
    inference(assume_negation,[status(cth)],[t13_zfmisc_1])).

fof(c_0_39,plain,(
    ! [X26,X27] : k2_xboole_0(X26,X27) = k5_xboole_0(X26,k4_xboole_0(X27,X26)) ),
    inference(variable_rename,[status(thm)],[t98_xboole_1])).

cnf(c_0_40,plain,
    ( k5_xboole_0(k5_xboole_0(X1,X2),X3) = k5_xboole_0(X1,k5_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_41,plain,
    ( k5_xboole_0(X1,X1) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34,c_0_35]),c_0_36]),c_0_37])).

fof(c_0_42,negated_conjecture,
    ( k2_xboole_0(k1_tarski(esk3_0),k1_tarski(esk4_0)) = k1_tarski(esk3_0)
    & esk3_0 != esk4_0 ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_38])])])).

fof(c_0_43,plain,(
    ! [X67] : k2_tarski(X67,X67) = k1_tarski(X67) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_44,plain,(
    ! [X68,X69] : k1_enumset1(X68,X68,X69) = k2_tarski(X68,X69) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

cnf(c_0_45,plain,
    ( k2_xboole_0(X1,X2) = k5_xboole_0(X1,k4_xboole_0(X2,X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

fof(c_0_46,plain,(
    ! [X70,X71,X72] : k2_enumset1(X70,X70,X71,X72) = k1_enumset1(X70,X71,X72) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_47,plain,(
    ! [X73,X74,X75,X76] : k3_enumset1(X73,X73,X74,X75,X76) = k2_enumset1(X73,X74,X75,X76) ),
    inference(variable_rename,[status(thm)],[t72_enumset1])).

fof(c_0_48,plain,(
    ! [X77,X78,X79,X80,X81] : k4_enumset1(X77,X77,X78,X79,X80,X81) = k3_enumset1(X77,X78,X79,X80,X81) ),
    inference(variable_rename,[status(thm)],[t73_enumset1])).

fof(c_0_49,plain,(
    ! [X82,X83,X84,X85,X86,X87] : k5_enumset1(X82,X82,X83,X84,X85,X86,X87) = k4_enumset1(X82,X83,X84,X85,X86,X87) ),
    inference(variable_rename,[status(thm)],[t74_enumset1])).

fof(c_0_50,plain,(
    ! [X88,X89,X90,X91,X92,X93,X94] : k6_enumset1(X88,X88,X89,X90,X91,X92,X93,X94) = k5_enumset1(X88,X89,X90,X91,X92,X93,X94) ),
    inference(variable_rename,[status(thm)],[t75_enumset1])).

cnf(c_0_51,plain,
    ( k5_xboole_0(X1,k5_xboole_0(X1,X2)) = k5_xboole_0(k1_xboole_0,X2) ),
    inference(spm,[status(thm)],[c_0_40,c_0_41])).

cnf(c_0_52,negated_conjecture,
    ( k2_xboole_0(k1_tarski(esk3_0),k1_tarski(esk4_0)) = k1_tarski(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_42])).

cnf(c_0_53,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_43])).

cnf(c_0_54,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_44])).

cnf(c_0_55,plain,
    ( k2_xboole_0(X1,X2) = k5_xboole_0(X1,k5_xboole_0(X2,k3_xboole_0(X2,X1))) ),
    inference(rw,[status(thm)],[c_0_45,c_0_28])).

cnf(c_0_56,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_46])).

cnf(c_0_57,plain,
    ( k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_47])).

cnf(c_0_58,plain,
    ( k4_enumset1(X1,X1,X2,X3,X4,X5) = k3_enumset1(X1,X2,X3,X4,X5) ),
    inference(split_conjunct,[status(thm)],[c_0_48])).

cnf(c_0_59,plain,
    ( k5_enumset1(X1,X1,X2,X3,X4,X5,X6) = k4_enumset1(X1,X2,X3,X4,X5,X6) ),
    inference(split_conjunct,[status(thm)],[c_0_49])).

cnf(c_0_60,plain,
    ( k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7) = k5_enumset1(X1,X2,X3,X4,X5,X6,X7) ),
    inference(split_conjunct,[status(thm)],[c_0_50])).

cnf(c_0_61,plain,
    ( k5_xboole_0(k1_xboole_0,X1) = X1 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51,c_0_41]),c_0_36])).

cnf(c_0_62,negated_conjecture,
    ( k5_xboole_0(k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0),k5_xboole_0(k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0),k3_xboole_0(k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0),k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0)))) = k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_52,c_0_53]),c_0_53]),c_0_53]),c_0_54]),c_0_54]),c_0_54]),c_0_55]),c_0_56]),c_0_56]),c_0_56]),c_0_56]),c_0_56]),c_0_57]),c_0_57]),c_0_57]),c_0_57]),c_0_57]),c_0_58]),c_0_58]),c_0_58]),c_0_58]),c_0_58]),c_0_59]),c_0_59]),c_0_59]),c_0_59]),c_0_59]),c_0_60]),c_0_60]),c_0_60]),c_0_60]),c_0_60])).

fof(c_0_63,plain,(
    ! [X28,X29,X30,X31,X32,X33] :
      ( ( ~ r2_hidden(X30,X29)
        | X30 = X28
        | X29 != k1_tarski(X28) )
      & ( X31 != X28
        | r2_hidden(X31,X29)
        | X29 != k1_tarski(X28) )
      & ( ~ r2_hidden(esk1_2(X32,X33),X33)
        | esk1_2(X32,X33) != X32
        | X33 = k1_tarski(X32) )
      & ( r2_hidden(esk1_2(X32,X33),X33)
        | esk1_2(X32,X33) = X32
        | X33 = k1_tarski(X32) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_tarski])])])])])])).

fof(c_0_64,plain,(
    ! [X58,X59,X60,X61,X62,X63,X64,X65,X66] : k7_enumset1(X58,X59,X60,X61,X62,X63,X64,X65,X66) = k2_xboole_0(k6_enumset1(X58,X59,X60,X61,X62,X63,X64,X65),k1_tarski(X66)) ),
    inference(variable_rename,[status(thm)],[t134_enumset1])).

cnf(c_0_65,plain,
    ( k5_xboole_0(X1,k5_xboole_0(X1,X2)) = X2 ),
    inference(rw,[status(thm)],[c_0_51,c_0_61])).

cnf(c_0_66,negated_conjecture,
    ( k5_xboole_0(k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0),k5_xboole_0(k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0),k3_xboole_0(k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0),k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0)))) = k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0) ),
    inference(rw,[status(thm)],[c_0_62,c_0_29])).

cnf(c_0_67,plain,
    ( X1 = X3
    | ~ r2_hidden(X1,X2)
    | X2 != k1_tarski(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_63])).

cnf(c_0_68,plain,
    ( k7_enumset1(X1,X2,X3,X4,X5,X6,X7,X8,X9) = k2_xboole_0(k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8),k1_tarski(X9)) ),
    inference(split_conjunct,[status(thm)],[c_0_64])).

cnf(c_0_69,negated_conjecture,
    ( k5_xboole_0(k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0),k3_xboole_0(k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0),k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0))) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_65,c_0_66]),c_0_41])).

cnf(c_0_70,plain,
    ( k5_xboole_0(X1,k5_xboole_0(X2,k5_xboole_0(X1,X2))) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_40,c_0_41])).

fof(c_0_71,plain,(
    ! [X35,X36,X37,X38,X39,X40,X41,X42,X43,X44,X45,X46,X47,X48,X49,X50,X51,X52,X53,X54,X55,X56] :
      ( ( ~ r2_hidden(X45,X44)
        | X45 = X35
        | X45 = X36
        | X45 = X37
        | X45 = X38
        | X45 = X39
        | X45 = X40
        | X45 = X41
        | X45 = X42
        | X45 = X43
        | X44 != k7_enumset1(X35,X36,X37,X38,X39,X40,X41,X42,X43) )
      & ( X46 != X35
        | r2_hidden(X46,X44)
        | X44 != k7_enumset1(X35,X36,X37,X38,X39,X40,X41,X42,X43) )
      & ( X46 != X36
        | r2_hidden(X46,X44)
        | X44 != k7_enumset1(X35,X36,X37,X38,X39,X40,X41,X42,X43) )
      & ( X46 != X37
        | r2_hidden(X46,X44)
        | X44 != k7_enumset1(X35,X36,X37,X38,X39,X40,X41,X42,X43) )
      & ( X46 != X38
        | r2_hidden(X46,X44)
        | X44 != k7_enumset1(X35,X36,X37,X38,X39,X40,X41,X42,X43) )
      & ( X46 != X39
        | r2_hidden(X46,X44)
        | X44 != k7_enumset1(X35,X36,X37,X38,X39,X40,X41,X42,X43) )
      & ( X46 != X40
        | r2_hidden(X46,X44)
        | X44 != k7_enumset1(X35,X36,X37,X38,X39,X40,X41,X42,X43) )
      & ( X46 != X41
        | r2_hidden(X46,X44)
        | X44 != k7_enumset1(X35,X36,X37,X38,X39,X40,X41,X42,X43) )
      & ( X46 != X42
        | r2_hidden(X46,X44)
        | X44 != k7_enumset1(X35,X36,X37,X38,X39,X40,X41,X42,X43) )
      & ( X46 != X43
        | r2_hidden(X46,X44)
        | X44 != k7_enumset1(X35,X36,X37,X38,X39,X40,X41,X42,X43) )
      & ( esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56) != X47
        | ~ r2_hidden(esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56),X56)
        | X56 = k7_enumset1(X47,X48,X49,X50,X51,X52,X53,X54,X55) )
      & ( esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56) != X48
        | ~ r2_hidden(esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56),X56)
        | X56 = k7_enumset1(X47,X48,X49,X50,X51,X52,X53,X54,X55) )
      & ( esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56) != X49
        | ~ r2_hidden(esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56),X56)
        | X56 = k7_enumset1(X47,X48,X49,X50,X51,X52,X53,X54,X55) )
      & ( esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56) != X50
        | ~ r2_hidden(esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56),X56)
        | X56 = k7_enumset1(X47,X48,X49,X50,X51,X52,X53,X54,X55) )
      & ( esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56) != X51
        | ~ r2_hidden(esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56),X56)
        | X56 = k7_enumset1(X47,X48,X49,X50,X51,X52,X53,X54,X55) )
      & ( esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56) != X52
        | ~ r2_hidden(esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56),X56)
        | X56 = k7_enumset1(X47,X48,X49,X50,X51,X52,X53,X54,X55) )
      & ( esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56) != X53
        | ~ r2_hidden(esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56),X56)
        | X56 = k7_enumset1(X47,X48,X49,X50,X51,X52,X53,X54,X55) )
      & ( esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56) != X54
        | ~ r2_hidden(esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56),X56)
        | X56 = k7_enumset1(X47,X48,X49,X50,X51,X52,X53,X54,X55) )
      & ( esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56) != X55
        | ~ r2_hidden(esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56),X56)
        | X56 = k7_enumset1(X47,X48,X49,X50,X51,X52,X53,X54,X55) )
      & ( r2_hidden(esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56),X56)
        | esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56) = X47
        | esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56) = X48
        | esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56) = X49
        | esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56) = X50
        | esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56) = X51
        | esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56) = X52
        | esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56) = X53
        | esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56) = X54
        | esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56) = X55
        | X56 = k7_enumset1(X47,X48,X49,X50,X51,X52,X53,X54,X55) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d7_enumset1])])])])])])).

cnf(c_0_72,plain,
    ( X1 = X3
    | X2 != k6_enumset1(X3,X3,X3,X3,X3,X3,X3,X3)
    | ~ r2_hidden(X1,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_67,c_0_53]),c_0_54]),c_0_56]),c_0_57]),c_0_58]),c_0_59]),c_0_60])).

cnf(c_0_73,plain,
    ( k7_enumset1(X1,X2,X3,X4,X5,X6,X7,X8,X9) = k5_xboole_0(k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8),k5_xboole_0(k6_enumset1(X9,X9,X9,X9,X9,X9,X9,X9),k3_xboole_0(k6_enumset1(X9,X9,X9,X9,X9,X9,X9,X9),k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8)))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_68,c_0_53]),c_0_54]),c_0_55]),c_0_56]),c_0_56]),c_0_57]),c_0_57]),c_0_58]),c_0_58]),c_0_59]),c_0_59]),c_0_60]),c_0_60])).

cnf(c_0_74,negated_conjecture,
    ( k3_xboole_0(k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0),k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0)) = k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_65,c_0_69]),c_0_36])).

cnf(c_0_75,plain,
    ( k5_xboole_0(X1,k5_xboole_0(X2,X1)) = X2 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_65,c_0_70]),c_0_36])).

cnf(c_0_76,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k7_enumset1(X4,X5,X6,X7,X8,X9,X10,X2,X11) ),
    inference(split_conjunct,[status(thm)],[c_0_71])).

cnf(c_0_77,plain,
    ( X1 = X2
    | ~ r2_hidden(X1,k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X2)) ),
    inference(er,[status(thm)],[c_0_72])).

cnf(c_0_78,negated_conjecture,
    ( k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0) = k7_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk3_0) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_73,c_0_74]),c_0_75])).

cnf(c_0_79,plain,
    ( r2_hidden(X1,X2)
    | X2 != k7_enumset1(X3,X4,X5,X6,X7,X8,X9,X1,X10) ),
    inference(er,[status(thm)],[c_0_76])).

cnf(c_0_80,negated_conjecture,
    ( X1 = esk3_0
    | ~ r2_hidden(X1,k7_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk3_0)) ),
    inference(spm,[status(thm)],[c_0_77,c_0_78])).

cnf(c_0_81,plain,
    ( r2_hidden(X1,k7_enumset1(X2,X3,X4,X5,X6,X7,X8,X1,X9)) ),
    inference(er,[status(thm)],[c_0_79])).

cnf(c_0_82,negated_conjecture,
    ( esk3_0 != esk4_0 ),
    inference(split_conjunct,[status(thm)],[c_0_42])).

cnf(c_0_83,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_80,c_0_81]),c_0_82]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.33  % Computer   : n005.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 15:28:17 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.19/0.34  # Version: 2.5pre002
% 0.19/0.34  # No SInE strategy applied
% 0.19/0.34  # Trying AutoSched0 for 299 seconds
% 0.19/0.42  # AutoSched0-Mode selected heuristic G_E___207_C18_F1_AE_CS_SP_PI_S0a
% 0.19/0.42  # and selection function SelectNegativeLiterals.
% 0.19/0.42  #
% 0.19/0.42  # Preprocessing time       : 0.028 s
% 0.19/0.42  
% 0.19/0.42  # Proof found!
% 0.19/0.42  # SZS status Theorem
% 0.19/0.42  # SZS output start CNFRefutation
% 0.19/0.42  fof(t28_xboole_1, axiom, ![X1, X2]:(r1_tarski(X1,X2)=>k3_xboole_0(X1,X2)=X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t28_xboole_1)).
% 0.19/0.42  fof(t2_xboole_1, axiom, ![X1]:r1_tarski(k1_xboole_0,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t2_xboole_1)).
% 0.19/0.42  fof(t48_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,k4_xboole_0(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t48_xboole_1)).
% 0.19/0.42  fof(t100_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t100_xboole_1)).
% 0.19/0.42  fof(commutativity_k3_xboole_0, axiom, ![X1, X2]:k3_xboole_0(X1,X2)=k3_xboole_0(X2,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', commutativity_k3_xboole_0)).
% 0.19/0.42  fof(t5_boole, axiom, ![X1]:k5_xboole_0(X1,k1_xboole_0)=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t5_boole)).
% 0.19/0.42  fof(idempotence_k3_xboole_0, axiom, ![X1, X2]:k3_xboole_0(X1,X1)=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', idempotence_k3_xboole_0)).
% 0.19/0.42  fof(t91_xboole_1, axiom, ![X1, X2, X3]:k5_xboole_0(k5_xboole_0(X1,X2),X3)=k5_xboole_0(X1,k5_xboole_0(X2,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t91_xboole_1)).
% 0.19/0.42  fof(t13_zfmisc_1, conjecture, ![X1, X2]:(k2_xboole_0(k1_tarski(X1),k1_tarski(X2))=k1_tarski(X1)=>X1=X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t13_zfmisc_1)).
% 0.19/0.42  fof(t98_xboole_1, axiom, ![X1, X2]:k2_xboole_0(X1,X2)=k5_xboole_0(X1,k4_xboole_0(X2,X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t98_xboole_1)).
% 0.19/0.42  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t69_enumset1)).
% 0.19/0.42  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t70_enumset1)).
% 0.19/0.42  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t71_enumset1)).
% 0.19/0.42  fof(t72_enumset1, axiom, ![X1, X2, X3, X4]:k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t72_enumset1)).
% 0.19/0.42  fof(t73_enumset1, axiom, ![X1, X2, X3, X4, X5]:k4_enumset1(X1,X1,X2,X3,X4,X5)=k3_enumset1(X1,X2,X3,X4,X5), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t73_enumset1)).
% 0.19/0.42  fof(t74_enumset1, axiom, ![X1, X2, X3, X4, X5, X6]:k5_enumset1(X1,X1,X2,X3,X4,X5,X6)=k4_enumset1(X1,X2,X3,X4,X5,X6), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t74_enumset1)).
% 0.19/0.42  fof(t75_enumset1, axiom, ![X1, X2, X3, X4, X5, X6, X7]:k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7)=k5_enumset1(X1,X2,X3,X4,X5,X6,X7), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t75_enumset1)).
% 0.19/0.42  fof(d1_tarski, axiom, ![X1, X2]:(X2=k1_tarski(X1)<=>![X3]:(r2_hidden(X3,X2)<=>X3=X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_tarski)).
% 0.19/0.42  fof(t134_enumset1, axiom, ![X1, X2, X3, X4, X5, X6, X7, X8, X9]:k7_enumset1(X1,X2,X3,X4,X5,X6,X7,X8,X9)=k2_xboole_0(k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8),k1_tarski(X9)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t134_enumset1)).
% 0.19/0.42  fof(d7_enumset1, axiom, ![X1, X2, X3, X4, X5, X6, X7, X8, X9, X10]:(X10=k7_enumset1(X1,X2,X3,X4,X5,X6,X7,X8,X9)<=>![X11]:(r2_hidden(X11,X10)<=>~(((((((((X11!=X1&X11!=X2)&X11!=X3)&X11!=X4)&X11!=X5)&X11!=X6)&X11!=X7)&X11!=X8)&X11!=X9)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d7_enumset1)).
% 0.19/0.42  fof(c_0_20, plain, ![X17, X18]:(~r1_tarski(X17,X18)|k3_xboole_0(X17,X18)=X17), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t28_xboole_1])])).
% 0.19/0.42  fof(c_0_21, plain, ![X19]:r1_tarski(k1_xboole_0,X19), inference(variable_rename,[status(thm)],[t2_xboole_1])).
% 0.19/0.42  fof(c_0_22, plain, ![X20, X21]:k4_xboole_0(X20,k4_xboole_0(X20,X21))=k3_xboole_0(X20,X21), inference(variable_rename,[status(thm)],[t48_xboole_1])).
% 0.19/0.42  fof(c_0_23, plain, ![X15, X16]:k4_xboole_0(X15,X16)=k5_xboole_0(X15,k3_xboole_0(X15,X16)), inference(variable_rename,[status(thm)],[t100_xboole_1])).
% 0.19/0.42  fof(c_0_24, plain, ![X12, X13]:k3_xboole_0(X12,X13)=k3_xboole_0(X13,X12), inference(variable_rename,[status(thm)],[commutativity_k3_xboole_0])).
% 0.19/0.42  cnf(c_0_25, plain, (k3_xboole_0(X1,X2)=X1|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.19/0.42  cnf(c_0_26, plain, (r1_tarski(k1_xboole_0,X1)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.19/0.42  cnf(c_0_27, plain, (k4_xboole_0(X1,k4_xboole_0(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.19/0.42  cnf(c_0_28, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.19/0.42  cnf(c_0_29, plain, (k3_xboole_0(X1,X2)=k3_xboole_0(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.19/0.42  cnf(c_0_30, plain, (k3_xboole_0(k1_xboole_0,X1)=k1_xboole_0), inference(spm,[status(thm)],[c_0_25, c_0_26])).
% 0.19/0.42  fof(c_0_31, plain, ![X22]:k5_xboole_0(X22,k1_xboole_0)=X22, inference(variable_rename,[status(thm)],[t5_boole])).
% 0.19/0.42  fof(c_0_32, plain, ![X14]:k3_xboole_0(X14,X14)=X14, inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[idempotence_k3_xboole_0])])).
% 0.19/0.42  fof(c_0_33, plain, ![X23, X24, X25]:k5_xboole_0(k5_xboole_0(X23,X24),X25)=k5_xboole_0(X23,k5_xboole_0(X24,X25)), inference(variable_rename,[status(thm)],[t91_xboole_1])).
% 0.19/0.42  cnf(c_0_34, plain, (k5_xboole_0(X1,k3_xboole_0(X1,k5_xboole_0(X1,k3_xboole_0(X1,X2))))=k3_xboole_0(X1,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_27, c_0_28]), c_0_28])).
% 0.19/0.42  cnf(c_0_35, plain, (k3_xboole_0(X1,k1_xboole_0)=k1_xboole_0), inference(spm,[status(thm)],[c_0_29, c_0_30])).
% 0.19/0.42  cnf(c_0_36, plain, (k5_xboole_0(X1,k1_xboole_0)=X1), inference(split_conjunct,[status(thm)],[c_0_31])).
% 0.19/0.42  cnf(c_0_37, plain, (k3_xboole_0(X1,X1)=X1), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.19/0.42  fof(c_0_38, negated_conjecture, ~(![X1, X2]:(k2_xboole_0(k1_tarski(X1),k1_tarski(X2))=k1_tarski(X1)=>X1=X2)), inference(assume_negation,[status(cth)],[t13_zfmisc_1])).
% 0.19/0.42  fof(c_0_39, plain, ![X26, X27]:k2_xboole_0(X26,X27)=k5_xboole_0(X26,k4_xboole_0(X27,X26)), inference(variable_rename,[status(thm)],[t98_xboole_1])).
% 0.19/0.42  cnf(c_0_40, plain, (k5_xboole_0(k5_xboole_0(X1,X2),X3)=k5_xboole_0(X1,k5_xboole_0(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.19/0.42  cnf(c_0_41, plain, (k5_xboole_0(X1,X1)=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34, c_0_35]), c_0_36]), c_0_37])).
% 0.19/0.42  fof(c_0_42, negated_conjecture, (k2_xboole_0(k1_tarski(esk3_0),k1_tarski(esk4_0))=k1_tarski(esk3_0)&esk3_0!=esk4_0), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_38])])])).
% 0.19/0.42  fof(c_0_43, plain, ![X67]:k2_tarski(X67,X67)=k1_tarski(X67), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.19/0.42  fof(c_0_44, plain, ![X68, X69]:k1_enumset1(X68,X68,X69)=k2_tarski(X68,X69), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.19/0.42  cnf(c_0_45, plain, (k2_xboole_0(X1,X2)=k5_xboole_0(X1,k4_xboole_0(X2,X1))), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.19/0.42  fof(c_0_46, plain, ![X70, X71, X72]:k2_enumset1(X70,X70,X71,X72)=k1_enumset1(X70,X71,X72), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.19/0.42  fof(c_0_47, plain, ![X73, X74, X75, X76]:k3_enumset1(X73,X73,X74,X75,X76)=k2_enumset1(X73,X74,X75,X76), inference(variable_rename,[status(thm)],[t72_enumset1])).
% 0.19/0.42  fof(c_0_48, plain, ![X77, X78, X79, X80, X81]:k4_enumset1(X77,X77,X78,X79,X80,X81)=k3_enumset1(X77,X78,X79,X80,X81), inference(variable_rename,[status(thm)],[t73_enumset1])).
% 0.19/0.42  fof(c_0_49, plain, ![X82, X83, X84, X85, X86, X87]:k5_enumset1(X82,X82,X83,X84,X85,X86,X87)=k4_enumset1(X82,X83,X84,X85,X86,X87), inference(variable_rename,[status(thm)],[t74_enumset1])).
% 0.19/0.42  fof(c_0_50, plain, ![X88, X89, X90, X91, X92, X93, X94]:k6_enumset1(X88,X88,X89,X90,X91,X92,X93,X94)=k5_enumset1(X88,X89,X90,X91,X92,X93,X94), inference(variable_rename,[status(thm)],[t75_enumset1])).
% 0.19/0.42  cnf(c_0_51, plain, (k5_xboole_0(X1,k5_xboole_0(X1,X2))=k5_xboole_0(k1_xboole_0,X2)), inference(spm,[status(thm)],[c_0_40, c_0_41])).
% 0.19/0.42  cnf(c_0_52, negated_conjecture, (k2_xboole_0(k1_tarski(esk3_0),k1_tarski(esk4_0))=k1_tarski(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_42])).
% 0.19/0.42  cnf(c_0_53, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_43])).
% 0.19/0.42  cnf(c_0_54, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_44])).
% 0.19/0.42  cnf(c_0_55, plain, (k2_xboole_0(X1,X2)=k5_xboole_0(X1,k5_xboole_0(X2,k3_xboole_0(X2,X1)))), inference(rw,[status(thm)],[c_0_45, c_0_28])).
% 0.19/0.42  cnf(c_0_56, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_46])).
% 0.19/0.42  cnf(c_0_57, plain, (k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4)), inference(split_conjunct,[status(thm)],[c_0_47])).
% 0.19/0.42  cnf(c_0_58, plain, (k4_enumset1(X1,X1,X2,X3,X4,X5)=k3_enumset1(X1,X2,X3,X4,X5)), inference(split_conjunct,[status(thm)],[c_0_48])).
% 0.19/0.42  cnf(c_0_59, plain, (k5_enumset1(X1,X1,X2,X3,X4,X5,X6)=k4_enumset1(X1,X2,X3,X4,X5,X6)), inference(split_conjunct,[status(thm)],[c_0_49])).
% 0.19/0.42  cnf(c_0_60, plain, (k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7)=k5_enumset1(X1,X2,X3,X4,X5,X6,X7)), inference(split_conjunct,[status(thm)],[c_0_50])).
% 0.19/0.42  cnf(c_0_61, plain, (k5_xboole_0(k1_xboole_0,X1)=X1), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51, c_0_41]), c_0_36])).
% 0.19/0.42  cnf(c_0_62, negated_conjecture, (k5_xboole_0(k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0),k5_xboole_0(k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0),k3_xboole_0(k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0),k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0))))=k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_52, c_0_53]), c_0_53]), c_0_53]), c_0_54]), c_0_54]), c_0_54]), c_0_55]), c_0_56]), c_0_56]), c_0_56]), c_0_56]), c_0_56]), c_0_57]), c_0_57]), c_0_57]), c_0_57]), c_0_57]), c_0_58]), c_0_58]), c_0_58]), c_0_58]), c_0_58]), c_0_59]), c_0_59]), c_0_59]), c_0_59]), c_0_59]), c_0_60]), c_0_60]), c_0_60]), c_0_60]), c_0_60])).
% 0.19/0.42  fof(c_0_63, plain, ![X28, X29, X30, X31, X32, X33]:(((~r2_hidden(X30,X29)|X30=X28|X29!=k1_tarski(X28))&(X31!=X28|r2_hidden(X31,X29)|X29!=k1_tarski(X28)))&((~r2_hidden(esk1_2(X32,X33),X33)|esk1_2(X32,X33)!=X32|X33=k1_tarski(X32))&(r2_hidden(esk1_2(X32,X33),X33)|esk1_2(X32,X33)=X32|X33=k1_tarski(X32)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_tarski])])])])])])).
% 0.19/0.42  fof(c_0_64, plain, ![X58, X59, X60, X61, X62, X63, X64, X65, X66]:k7_enumset1(X58,X59,X60,X61,X62,X63,X64,X65,X66)=k2_xboole_0(k6_enumset1(X58,X59,X60,X61,X62,X63,X64,X65),k1_tarski(X66)), inference(variable_rename,[status(thm)],[t134_enumset1])).
% 0.19/0.42  cnf(c_0_65, plain, (k5_xboole_0(X1,k5_xboole_0(X1,X2))=X2), inference(rw,[status(thm)],[c_0_51, c_0_61])).
% 0.19/0.42  cnf(c_0_66, negated_conjecture, (k5_xboole_0(k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0),k5_xboole_0(k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0),k3_xboole_0(k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0),k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0))))=k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0)), inference(rw,[status(thm)],[c_0_62, c_0_29])).
% 0.19/0.42  cnf(c_0_67, plain, (X1=X3|~r2_hidden(X1,X2)|X2!=k1_tarski(X3)), inference(split_conjunct,[status(thm)],[c_0_63])).
% 0.19/0.42  cnf(c_0_68, plain, (k7_enumset1(X1,X2,X3,X4,X5,X6,X7,X8,X9)=k2_xboole_0(k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8),k1_tarski(X9))), inference(split_conjunct,[status(thm)],[c_0_64])).
% 0.19/0.42  cnf(c_0_69, negated_conjecture, (k5_xboole_0(k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0),k3_xboole_0(k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0),k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0)))=k1_xboole_0), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_65, c_0_66]), c_0_41])).
% 0.19/0.42  cnf(c_0_70, plain, (k5_xboole_0(X1,k5_xboole_0(X2,k5_xboole_0(X1,X2)))=k1_xboole_0), inference(spm,[status(thm)],[c_0_40, c_0_41])).
% 0.19/0.42  fof(c_0_71, plain, ![X35, X36, X37, X38, X39, X40, X41, X42, X43, X44, X45, X46, X47, X48, X49, X50, X51, X52, X53, X54, X55, X56]:(((~r2_hidden(X45,X44)|(X45=X35|X45=X36|X45=X37|X45=X38|X45=X39|X45=X40|X45=X41|X45=X42|X45=X43)|X44!=k7_enumset1(X35,X36,X37,X38,X39,X40,X41,X42,X43))&(((((((((X46!=X35|r2_hidden(X46,X44)|X44!=k7_enumset1(X35,X36,X37,X38,X39,X40,X41,X42,X43))&(X46!=X36|r2_hidden(X46,X44)|X44!=k7_enumset1(X35,X36,X37,X38,X39,X40,X41,X42,X43)))&(X46!=X37|r2_hidden(X46,X44)|X44!=k7_enumset1(X35,X36,X37,X38,X39,X40,X41,X42,X43)))&(X46!=X38|r2_hidden(X46,X44)|X44!=k7_enumset1(X35,X36,X37,X38,X39,X40,X41,X42,X43)))&(X46!=X39|r2_hidden(X46,X44)|X44!=k7_enumset1(X35,X36,X37,X38,X39,X40,X41,X42,X43)))&(X46!=X40|r2_hidden(X46,X44)|X44!=k7_enumset1(X35,X36,X37,X38,X39,X40,X41,X42,X43)))&(X46!=X41|r2_hidden(X46,X44)|X44!=k7_enumset1(X35,X36,X37,X38,X39,X40,X41,X42,X43)))&(X46!=X42|r2_hidden(X46,X44)|X44!=k7_enumset1(X35,X36,X37,X38,X39,X40,X41,X42,X43)))&(X46!=X43|r2_hidden(X46,X44)|X44!=k7_enumset1(X35,X36,X37,X38,X39,X40,X41,X42,X43))))&((((((((((esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56)!=X47|~r2_hidden(esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56),X56)|X56=k7_enumset1(X47,X48,X49,X50,X51,X52,X53,X54,X55))&(esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56)!=X48|~r2_hidden(esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56),X56)|X56=k7_enumset1(X47,X48,X49,X50,X51,X52,X53,X54,X55)))&(esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56)!=X49|~r2_hidden(esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56),X56)|X56=k7_enumset1(X47,X48,X49,X50,X51,X52,X53,X54,X55)))&(esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56)!=X50|~r2_hidden(esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56),X56)|X56=k7_enumset1(X47,X48,X49,X50,X51,X52,X53,X54,X55)))&(esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56)!=X51|~r2_hidden(esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56),X56)|X56=k7_enumset1(X47,X48,X49,X50,X51,X52,X53,X54,X55)))&(esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56)!=X52|~r2_hidden(esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56),X56)|X56=k7_enumset1(X47,X48,X49,X50,X51,X52,X53,X54,X55)))&(esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56)!=X53|~r2_hidden(esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56),X56)|X56=k7_enumset1(X47,X48,X49,X50,X51,X52,X53,X54,X55)))&(esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56)!=X54|~r2_hidden(esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56),X56)|X56=k7_enumset1(X47,X48,X49,X50,X51,X52,X53,X54,X55)))&(esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56)!=X55|~r2_hidden(esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56),X56)|X56=k7_enumset1(X47,X48,X49,X50,X51,X52,X53,X54,X55)))&(r2_hidden(esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56),X56)|(esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56)=X47|esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56)=X48|esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56)=X49|esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56)=X50|esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56)=X51|esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56)=X52|esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56)=X53|esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56)=X54|esk2_10(X47,X48,X49,X50,X51,X52,X53,X54,X55,X56)=X55)|X56=k7_enumset1(X47,X48,X49,X50,X51,X52,X53,X54,X55)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d7_enumset1])])])])])])).
% 0.19/0.42  cnf(c_0_72, plain, (X1=X3|X2!=k6_enumset1(X3,X3,X3,X3,X3,X3,X3,X3)|~r2_hidden(X1,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_67, c_0_53]), c_0_54]), c_0_56]), c_0_57]), c_0_58]), c_0_59]), c_0_60])).
% 0.19/0.42  cnf(c_0_73, plain, (k7_enumset1(X1,X2,X3,X4,X5,X6,X7,X8,X9)=k5_xboole_0(k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8),k5_xboole_0(k6_enumset1(X9,X9,X9,X9,X9,X9,X9,X9),k3_xboole_0(k6_enumset1(X9,X9,X9,X9,X9,X9,X9,X9),k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8))))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_68, c_0_53]), c_0_54]), c_0_55]), c_0_56]), c_0_56]), c_0_57]), c_0_57]), c_0_58]), c_0_58]), c_0_59]), c_0_59]), c_0_60]), c_0_60])).
% 0.19/0.42  cnf(c_0_74, negated_conjecture, (k3_xboole_0(k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0),k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0))=k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_65, c_0_69]), c_0_36])).
% 0.19/0.42  cnf(c_0_75, plain, (k5_xboole_0(X1,k5_xboole_0(X2,X1))=X2), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_65, c_0_70]), c_0_36])).
% 0.19/0.42  cnf(c_0_76, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k7_enumset1(X4,X5,X6,X7,X8,X9,X10,X2,X11)), inference(split_conjunct,[status(thm)],[c_0_71])).
% 0.19/0.42  cnf(c_0_77, plain, (X1=X2|~r2_hidden(X1,k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X2))), inference(er,[status(thm)],[c_0_72])).
% 0.19/0.42  cnf(c_0_78, negated_conjecture, (k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0)=k7_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk3_0)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_73, c_0_74]), c_0_75])).
% 0.19/0.42  cnf(c_0_79, plain, (r2_hidden(X1,X2)|X2!=k7_enumset1(X3,X4,X5,X6,X7,X8,X9,X1,X10)), inference(er,[status(thm)],[c_0_76])).
% 0.19/0.42  cnf(c_0_80, negated_conjecture, (X1=esk3_0|~r2_hidden(X1,k7_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk3_0))), inference(spm,[status(thm)],[c_0_77, c_0_78])).
% 0.19/0.42  cnf(c_0_81, plain, (r2_hidden(X1,k7_enumset1(X2,X3,X4,X5,X6,X7,X8,X1,X9))), inference(er,[status(thm)],[c_0_79])).
% 0.19/0.42  cnf(c_0_82, negated_conjecture, (esk3_0!=esk4_0), inference(split_conjunct,[status(thm)],[c_0_42])).
% 0.19/0.42  cnf(c_0_83, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_80, c_0_81]), c_0_82]), ['proof']).
% 0.19/0.42  # SZS output end CNFRefutation
% 0.19/0.42  # Proof object total steps             : 84
% 0.19/0.42  # Proof object clause steps            : 43
% 0.19/0.42  # Proof object formula steps           : 41
% 0.19/0.42  # Proof object conjectures             : 12
% 0.19/0.42  # Proof object clause conjectures      : 9
% 0.19/0.42  # Proof object formula conjectures     : 3
% 0.19/0.42  # Proof object initial clauses used    : 21
% 0.19/0.42  # Proof object initial formulas used   : 20
% 0.19/0.42  # Proof object generating inferences   : 14
% 0.19/0.42  # Proof object simplifying inferences  : 66
% 0.19/0.42  # Training examples: 0 positive, 0 negative
% 0.19/0.42  # Parsed axioms                        : 20
% 0.19/0.42  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.42  # Initial clauses                      : 43
% 0.19/0.42  # Removed in clause preprocessing      : 9
% 0.19/0.42  # Initial clauses in saturation        : 34
% 0.19/0.42  # Processed clauses                    : 264
% 0.19/0.42  # ...of these trivial                  : 20
% 0.19/0.42  # ...subsumed                          : 148
% 0.19/0.42  # ...remaining for further processing  : 96
% 0.19/0.42  # Other redundant clauses eliminated   : 112
% 0.19/0.42  # Clauses deleted for lack of memory   : 0
% 0.19/0.42  # Backward-subsumed                    : 1
% 0.19/0.42  # Backward-rewritten                   : 10
% 0.19/0.42  # Generated clauses                    : 2071
% 0.19/0.42  # ...of the previous two non-trivial   : 1685
% 0.19/0.42  # Contextual simplify-reflections      : 0
% 0.19/0.42  # Paramodulations                      : 1931
% 0.19/0.42  # Factorizations                       : 8
% 0.19/0.42  # Equation resolutions                 : 132
% 0.19/0.42  # Propositional unsat checks           : 0
% 0.19/0.42  #    Propositional check models        : 0
% 0.19/0.42  #    Propositional check unsatisfiable : 0
% 0.19/0.42  #    Propositional clauses             : 0
% 0.19/0.42  #    Propositional clauses after purity: 0
% 0.19/0.42  #    Propositional unsat core size     : 0
% 0.19/0.42  #    Propositional preprocessing time  : 0.000
% 0.19/0.42  #    Propositional encoding time       : 0.000
% 0.19/0.42  #    Propositional solver time         : 0.000
% 0.19/0.42  #    Success case prop preproc time    : 0.000
% 0.19/0.42  #    Success case prop encoding time   : 0.000
% 0.19/0.42  #    Success case prop solver time     : 0.000
% 0.19/0.42  # Current number of processed clauses  : 75
% 0.19/0.42  #    Positive orientable unit clauses  : 26
% 0.19/0.42  #    Positive unorientable unit clauses: 5
% 0.19/0.42  #    Negative unit clauses             : 1
% 0.19/0.42  #    Non-unit-clauses                  : 43
% 0.19/0.42  # Current number of unprocessed clauses: 1412
% 0.19/0.42  # ...number of literals in the above   : 6730
% 0.19/0.42  # Current number of archived formulas  : 0
% 0.19/0.42  # Current number of archived clauses   : 20
% 0.19/0.42  # Clause-clause subsumption calls (NU) : 380
% 0.19/0.42  # Rec. Clause-clause subsumption calls : 295
% 0.19/0.42  # Non-unit clause-clause subsumptions  : 12
% 0.19/0.42  # Unit Clause-clause subsumption calls : 41
% 0.19/0.42  # Rewrite failures with RHS unbound    : 0
% 0.19/0.42  # BW rewrite match attempts            : 144
% 0.19/0.42  # BW rewrite match successes           : 106
% 0.19/0.42  # Condensation attempts                : 0
% 0.19/0.42  # Condensation successes               : 0
% 0.19/0.42  # Termbank termtop insertions          : 32543
% 0.19/0.42  
% 0.19/0.42  # -------------------------------------------------
% 0.19/0.42  # User time                : 0.072 s
% 0.19/0.42  # System time              : 0.008 s
% 0.19/0.42  # Total time               : 0.080 s
% 0.19/0.42  # Maximum resident set size: 1588 pages
%------------------------------------------------------------------------------
