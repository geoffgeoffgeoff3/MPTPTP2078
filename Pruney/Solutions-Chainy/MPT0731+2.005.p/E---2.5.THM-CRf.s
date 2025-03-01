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
% DateTime   : Thu Dec  3 10:56:07 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   63 (  95 expanded)
%              Number of clauses        :   30 (  40 expanded)
%              Number of leaves         :   16 (  27 expanded)
%              Depth                    :    8
%              Number of atoms          :  151 ( 241 expanded)
%              Number of equality atoms :   87 ( 162 expanded)
%              Maximal formula depth    :   37 (   4 average)
%              Maximal clause size      :   52 (   1 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
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

fof(t14_ordinal1,conjecture,(
    ! [X1] : X1 != k1_ordinal1(X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t14_ordinal1)).

fof(d1_ordinal1,axiom,(
    ! [X1] : k1_ordinal1(X1) = k2_xboole_0(X1,k1_tarski(X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_ordinal1)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

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

fof(t73_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5] : k4_enumset1(X1,X1,X2,X3,X4,X5) = k3_enumset1(X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t73_enumset1)).

fof(d3_tarski,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
    <=> ! [X3] :
          ( r2_hidden(X3,X1)
         => r2_hidden(X3,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_tarski)).

fof(t100_zfmisc_1,axiom,(
    ! [X1] : r1_tarski(X1,k1_zfmisc_1(k3_tarski(X1))) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_zfmisc_1)).

fof(t1_subset,axiom,(
    ! [X1,X2] :
      ( r2_hidden(X1,X2)
     => m1_subset_1(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t1_subset)).

fof(t7_ordinal1,axiom,(
    ! [X1,X2] :
      ~ ( r2_hidden(X1,X2)
        & r1_tarski(X2,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_ordinal1)).

fof(t3_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X2))
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_subset)).

fof(c_0_16,plain,(
    ! [X46,X47,X48,X49,X50,X51,X52,X53,X54,X55,X56,X57,X58,X59,X60,X61] :
      ( ( ~ r2_hidden(X53,X52)
        | X53 = X46
        | X53 = X47
        | X53 = X48
        | X53 = X49
        | X53 = X50
        | X53 = X51
        | X52 != k4_enumset1(X46,X47,X48,X49,X50,X51) )
      & ( X54 != X46
        | r2_hidden(X54,X52)
        | X52 != k4_enumset1(X46,X47,X48,X49,X50,X51) )
      & ( X54 != X47
        | r2_hidden(X54,X52)
        | X52 != k4_enumset1(X46,X47,X48,X49,X50,X51) )
      & ( X54 != X48
        | r2_hidden(X54,X52)
        | X52 != k4_enumset1(X46,X47,X48,X49,X50,X51) )
      & ( X54 != X49
        | r2_hidden(X54,X52)
        | X52 != k4_enumset1(X46,X47,X48,X49,X50,X51) )
      & ( X54 != X50
        | r2_hidden(X54,X52)
        | X52 != k4_enumset1(X46,X47,X48,X49,X50,X51) )
      & ( X54 != X51
        | r2_hidden(X54,X52)
        | X52 != k4_enumset1(X46,X47,X48,X49,X50,X51) )
      & ( esk2_7(X55,X56,X57,X58,X59,X60,X61) != X55
        | ~ r2_hidden(esk2_7(X55,X56,X57,X58,X59,X60,X61),X61)
        | X61 = k4_enumset1(X55,X56,X57,X58,X59,X60) )
      & ( esk2_7(X55,X56,X57,X58,X59,X60,X61) != X56
        | ~ r2_hidden(esk2_7(X55,X56,X57,X58,X59,X60,X61),X61)
        | X61 = k4_enumset1(X55,X56,X57,X58,X59,X60) )
      & ( esk2_7(X55,X56,X57,X58,X59,X60,X61) != X57
        | ~ r2_hidden(esk2_7(X55,X56,X57,X58,X59,X60,X61),X61)
        | X61 = k4_enumset1(X55,X56,X57,X58,X59,X60) )
      & ( esk2_7(X55,X56,X57,X58,X59,X60,X61) != X58
        | ~ r2_hidden(esk2_7(X55,X56,X57,X58,X59,X60,X61),X61)
        | X61 = k4_enumset1(X55,X56,X57,X58,X59,X60) )
      & ( esk2_7(X55,X56,X57,X58,X59,X60,X61) != X59
        | ~ r2_hidden(esk2_7(X55,X56,X57,X58,X59,X60,X61),X61)
        | X61 = k4_enumset1(X55,X56,X57,X58,X59,X60) )
      & ( esk2_7(X55,X56,X57,X58,X59,X60,X61) != X60
        | ~ r2_hidden(esk2_7(X55,X56,X57,X58,X59,X60,X61),X61)
        | X61 = k4_enumset1(X55,X56,X57,X58,X59,X60) )
      & ( r2_hidden(esk2_7(X55,X56,X57,X58,X59,X60,X61),X61)
        | esk2_7(X55,X56,X57,X58,X59,X60,X61) = X55
        | esk2_7(X55,X56,X57,X58,X59,X60,X61) = X56
        | esk2_7(X55,X56,X57,X58,X59,X60,X61) = X57
        | esk2_7(X55,X56,X57,X58,X59,X60,X61) = X58
        | esk2_7(X55,X56,X57,X58,X59,X60,X61) = X59
        | esk2_7(X55,X56,X57,X58,X59,X60,X61) = X60
        | X61 = k4_enumset1(X55,X56,X57,X58,X59,X60) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d4_enumset1])])])])])])).

fof(c_0_17,plain,(
    ! [X30,X31,X32,X33,X34,X35] : k5_enumset1(X30,X30,X31,X32,X33,X34,X35) = k4_enumset1(X30,X31,X32,X33,X34,X35) ),
    inference(variable_rename,[status(thm)],[t74_enumset1])).

fof(c_0_18,plain,(
    ! [X36,X37,X38,X39,X40,X41,X42] : k6_enumset1(X36,X36,X37,X38,X39,X40,X41,X42) = k5_enumset1(X36,X37,X38,X39,X40,X41,X42) ),
    inference(variable_rename,[status(thm)],[t75_enumset1])).

fof(c_0_19,negated_conjecture,(
    ~ ! [X1] : X1 != k1_ordinal1(X1) ),
    inference(assume_negation,[status(cth)],[t14_ordinal1])).

fof(c_0_20,plain,(
    ! [X67] : k1_ordinal1(X67) = k2_xboole_0(X67,k1_tarski(X67)) ),
    inference(variable_rename,[status(thm)],[d1_ordinal1])).

fof(c_0_21,plain,(
    ! [X15] : k2_tarski(X15,X15) = k1_tarski(X15) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_22,plain,(
    ! [X43,X44] : k3_tarski(k2_tarski(X43,X44)) = k2_xboole_0(X43,X44) ),
    inference(variable_rename,[status(thm)],[l51_zfmisc_1])).

fof(c_0_23,plain,(
    ! [X16,X17] : k1_enumset1(X16,X16,X17) = k2_tarski(X16,X17) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

cnf(c_0_24,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k4_enumset1(X4,X5,X6,X7,X8,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_25,plain,
    ( k5_enumset1(X1,X1,X2,X3,X4,X5,X6) = k4_enumset1(X1,X2,X3,X4,X5,X6) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_26,plain,
    ( k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7) = k5_enumset1(X1,X2,X3,X4,X5,X6,X7) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

fof(c_0_27,negated_conjecture,(
    esk3_0 = k1_ordinal1(esk3_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_19])])])).

cnf(c_0_28,plain,
    ( k1_ordinal1(X1) = k2_xboole_0(X1,k1_tarski(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_29,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_30,plain,
    ( k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_31,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

fof(c_0_32,plain,(
    ! [X18,X19,X20] : k2_enumset1(X18,X18,X19,X20) = k1_enumset1(X18,X19,X20) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_33,plain,(
    ! [X21,X22,X23,X24] : k3_enumset1(X21,X21,X22,X23,X24) = k2_enumset1(X21,X22,X23,X24) ),
    inference(variable_rename,[status(thm)],[t72_enumset1])).

fof(c_0_34,plain,(
    ! [X25,X26,X27,X28,X29] : k4_enumset1(X25,X25,X26,X27,X28,X29) = k3_enumset1(X25,X26,X27,X28,X29) ),
    inference(variable_rename,[status(thm)],[t73_enumset1])).

fof(c_0_35,plain,(
    ! [X9,X10,X11,X12,X13] :
      ( ( ~ r1_tarski(X9,X10)
        | ~ r2_hidden(X11,X9)
        | r2_hidden(X11,X10) )
      & ( r2_hidden(esk1_2(X12,X13),X12)
        | r1_tarski(X12,X13) )
      & ( ~ r2_hidden(esk1_2(X12,X13),X13)
        | r1_tarski(X12,X13) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).

cnf(c_0_36,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k6_enumset1(X4,X4,X4,X5,X6,X7,X8,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_24,c_0_25]),c_0_26])).

fof(c_0_37,plain,(
    ! [X45] : r1_tarski(X45,k1_zfmisc_1(k3_tarski(X45))) ),
    inference(variable_rename,[status(thm)],[t100_zfmisc_1])).

cnf(c_0_38,negated_conjecture,
    ( esk3_0 = k1_ordinal1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_39,plain,
    ( k1_ordinal1(X1) = k2_xboole_0(X1,k2_tarski(X1,X1)) ),
    inference(rw,[status(thm)],[c_0_28,c_0_29])).

cnf(c_0_40,plain,
    ( k3_tarski(k1_enumset1(X1,X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_30,c_0_31])).

cnf(c_0_41,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

cnf(c_0_42,plain,
    ( k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_43,plain,
    ( k4_enumset1(X1,X1,X2,X3,X4,X5) = k3_enumset1(X1,X2,X3,X4,X5) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_44,plain,
    ( r2_hidden(X3,X2)
    | ~ r1_tarski(X1,X2)
    | ~ r2_hidden(X3,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

cnf(c_0_45,plain,
    ( r2_hidden(X1,k6_enumset1(X2,X2,X2,X3,X4,X5,X6,X1)) ),
    inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_36])])).

cnf(c_0_46,plain,
    ( r1_tarski(X1,k1_zfmisc_1(k3_tarski(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_47,negated_conjecture,
    ( esk3_0 = k3_tarski(k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_38,c_0_39]),c_0_31]),c_0_40]),c_0_41]),c_0_41]),c_0_42]),c_0_42]),c_0_43]),c_0_43]),c_0_25]),c_0_25]),c_0_26]),c_0_26])).

cnf(c_0_48,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k4_enumset1(X2,X4,X5,X6,X7,X8) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

fof(c_0_49,plain,(
    ! [X63,X64] :
      ( ~ r2_hidden(X63,X64)
      | m1_subset_1(X63,X64) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_subset])])).

cnf(c_0_50,plain,
    ( r2_hidden(X1,X2)
    | ~ r1_tarski(k6_enumset1(X3,X3,X3,X4,X5,X6,X7,X1),X2) ),
    inference(spm,[status(thm)],[c_0_44,c_0_45])).

cnf(c_0_51,negated_conjecture,
    ( r1_tarski(k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0)),k1_zfmisc_1(esk3_0)) ),
    inference(spm,[status(thm)],[c_0_46,c_0_47])).

fof(c_0_52,plain,(
    ! [X68,X69] :
      ( ~ r2_hidden(X68,X69)
      | ~ r1_tarski(X69,X68) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t7_ordinal1])])).

cnf(c_0_53,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k6_enumset1(X2,X2,X2,X4,X5,X6,X7,X8) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_48,c_0_25]),c_0_26])).

fof(c_0_54,plain,(
    ! [X65,X66] :
      ( ( ~ m1_subset_1(X65,k1_zfmisc_1(X66))
        | r1_tarski(X65,X66) )
      & ( ~ r1_tarski(X65,X66)
        | m1_subset_1(X65,k1_zfmisc_1(X66)) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).

cnf(c_0_55,plain,
    ( m1_subset_1(X1,X2)
    | ~ r2_hidden(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_49])).

cnf(c_0_56,negated_conjecture,
    ( r2_hidden(k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0),k1_zfmisc_1(esk3_0)) ),
    inference(spm,[status(thm)],[c_0_50,c_0_51])).

cnf(c_0_57,plain,
    ( ~ r2_hidden(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_52])).

cnf(c_0_58,plain,
    ( r2_hidden(X1,k6_enumset1(X1,X1,X1,X2,X3,X4,X5,X6)) ),
    inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_53])])).

cnf(c_0_59,plain,
    ( r1_tarski(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_54])).

cnf(c_0_60,negated_conjecture,
    ( m1_subset_1(k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0),k1_zfmisc_1(esk3_0)) ),
    inference(spm,[status(thm)],[c_0_55,c_0_56])).

cnf(c_0_61,plain,
    ( ~ r1_tarski(k6_enumset1(X1,X1,X1,X2,X3,X4,X5,X6),X1) ),
    inference(spm,[status(thm)],[c_0_57,c_0_58])).

cnf(c_0_62,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_59,c_0_60]),c_0_61]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n016.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 10:55:19 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.13/0.39  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S054N
% 0.13/0.39  # and selection function GSelectMinInfpos.
% 0.13/0.39  #
% 0.13/0.39  # Preprocessing time       : 0.028 s
% 0.13/0.39  # Presaturation interreduction done
% 0.13/0.39  
% 0.13/0.39  # Proof found!
% 0.13/0.39  # SZS status Theorem
% 0.13/0.39  # SZS output start CNFRefutation
% 0.13/0.39  fof(d4_enumset1, axiom, ![X1, X2, X3, X4, X5, X6, X7]:(X7=k4_enumset1(X1,X2,X3,X4,X5,X6)<=>![X8]:(r2_hidden(X8,X7)<=>~((((((X8!=X1&X8!=X2)&X8!=X3)&X8!=X4)&X8!=X5)&X8!=X6)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d4_enumset1)).
% 0.13/0.39  fof(t74_enumset1, axiom, ![X1, X2, X3, X4, X5, X6]:k5_enumset1(X1,X1,X2,X3,X4,X5,X6)=k4_enumset1(X1,X2,X3,X4,X5,X6), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t74_enumset1)).
% 0.13/0.39  fof(t75_enumset1, axiom, ![X1, X2, X3, X4, X5, X6, X7]:k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7)=k5_enumset1(X1,X2,X3,X4,X5,X6,X7), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t75_enumset1)).
% 0.13/0.39  fof(t14_ordinal1, conjecture, ![X1]:X1!=k1_ordinal1(X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t14_ordinal1)).
% 0.13/0.39  fof(d1_ordinal1, axiom, ![X1]:k1_ordinal1(X1)=k2_xboole_0(X1,k1_tarski(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_ordinal1)).
% 0.13/0.39  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t69_enumset1)).
% 0.13/0.39  fof(l51_zfmisc_1, axiom, ![X1, X2]:k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l51_zfmisc_1)).
% 0.13/0.39  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t70_enumset1)).
% 0.13/0.39  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t71_enumset1)).
% 0.13/0.39  fof(t72_enumset1, axiom, ![X1, X2, X3, X4]:k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t72_enumset1)).
% 0.13/0.39  fof(t73_enumset1, axiom, ![X1, X2, X3, X4, X5]:k4_enumset1(X1,X1,X2,X3,X4,X5)=k3_enumset1(X1,X2,X3,X4,X5), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t73_enumset1)).
% 0.13/0.39  fof(d3_tarski, axiom, ![X1, X2]:(r1_tarski(X1,X2)<=>![X3]:(r2_hidden(X3,X1)=>r2_hidden(X3,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d3_tarski)).
% 0.13/0.39  fof(t100_zfmisc_1, axiom, ![X1]:r1_tarski(X1,k1_zfmisc_1(k3_tarski(X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t100_zfmisc_1)).
% 0.13/0.39  fof(t1_subset, axiom, ![X1, X2]:(r2_hidden(X1,X2)=>m1_subset_1(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t1_subset)).
% 0.13/0.39  fof(t7_ordinal1, axiom, ![X1, X2]:~((r2_hidden(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t7_ordinal1)).
% 0.13/0.39  fof(t3_subset, axiom, ![X1, X2]:(m1_subset_1(X1,k1_zfmisc_1(X2))<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_subset)).
% 0.13/0.39  fof(c_0_16, plain, ![X46, X47, X48, X49, X50, X51, X52, X53, X54, X55, X56, X57, X58, X59, X60, X61]:(((~r2_hidden(X53,X52)|(X53=X46|X53=X47|X53=X48|X53=X49|X53=X50|X53=X51)|X52!=k4_enumset1(X46,X47,X48,X49,X50,X51))&((((((X54!=X46|r2_hidden(X54,X52)|X52!=k4_enumset1(X46,X47,X48,X49,X50,X51))&(X54!=X47|r2_hidden(X54,X52)|X52!=k4_enumset1(X46,X47,X48,X49,X50,X51)))&(X54!=X48|r2_hidden(X54,X52)|X52!=k4_enumset1(X46,X47,X48,X49,X50,X51)))&(X54!=X49|r2_hidden(X54,X52)|X52!=k4_enumset1(X46,X47,X48,X49,X50,X51)))&(X54!=X50|r2_hidden(X54,X52)|X52!=k4_enumset1(X46,X47,X48,X49,X50,X51)))&(X54!=X51|r2_hidden(X54,X52)|X52!=k4_enumset1(X46,X47,X48,X49,X50,X51))))&(((((((esk2_7(X55,X56,X57,X58,X59,X60,X61)!=X55|~r2_hidden(esk2_7(X55,X56,X57,X58,X59,X60,X61),X61)|X61=k4_enumset1(X55,X56,X57,X58,X59,X60))&(esk2_7(X55,X56,X57,X58,X59,X60,X61)!=X56|~r2_hidden(esk2_7(X55,X56,X57,X58,X59,X60,X61),X61)|X61=k4_enumset1(X55,X56,X57,X58,X59,X60)))&(esk2_7(X55,X56,X57,X58,X59,X60,X61)!=X57|~r2_hidden(esk2_7(X55,X56,X57,X58,X59,X60,X61),X61)|X61=k4_enumset1(X55,X56,X57,X58,X59,X60)))&(esk2_7(X55,X56,X57,X58,X59,X60,X61)!=X58|~r2_hidden(esk2_7(X55,X56,X57,X58,X59,X60,X61),X61)|X61=k4_enumset1(X55,X56,X57,X58,X59,X60)))&(esk2_7(X55,X56,X57,X58,X59,X60,X61)!=X59|~r2_hidden(esk2_7(X55,X56,X57,X58,X59,X60,X61),X61)|X61=k4_enumset1(X55,X56,X57,X58,X59,X60)))&(esk2_7(X55,X56,X57,X58,X59,X60,X61)!=X60|~r2_hidden(esk2_7(X55,X56,X57,X58,X59,X60,X61),X61)|X61=k4_enumset1(X55,X56,X57,X58,X59,X60)))&(r2_hidden(esk2_7(X55,X56,X57,X58,X59,X60,X61),X61)|(esk2_7(X55,X56,X57,X58,X59,X60,X61)=X55|esk2_7(X55,X56,X57,X58,X59,X60,X61)=X56|esk2_7(X55,X56,X57,X58,X59,X60,X61)=X57|esk2_7(X55,X56,X57,X58,X59,X60,X61)=X58|esk2_7(X55,X56,X57,X58,X59,X60,X61)=X59|esk2_7(X55,X56,X57,X58,X59,X60,X61)=X60)|X61=k4_enumset1(X55,X56,X57,X58,X59,X60)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d4_enumset1])])])])])])).
% 0.13/0.39  fof(c_0_17, plain, ![X30, X31, X32, X33, X34, X35]:k5_enumset1(X30,X30,X31,X32,X33,X34,X35)=k4_enumset1(X30,X31,X32,X33,X34,X35), inference(variable_rename,[status(thm)],[t74_enumset1])).
% 0.13/0.39  fof(c_0_18, plain, ![X36, X37, X38, X39, X40, X41, X42]:k6_enumset1(X36,X36,X37,X38,X39,X40,X41,X42)=k5_enumset1(X36,X37,X38,X39,X40,X41,X42), inference(variable_rename,[status(thm)],[t75_enumset1])).
% 0.13/0.39  fof(c_0_19, negated_conjecture, ~(![X1]:X1!=k1_ordinal1(X1)), inference(assume_negation,[status(cth)],[t14_ordinal1])).
% 0.13/0.39  fof(c_0_20, plain, ![X67]:k1_ordinal1(X67)=k2_xboole_0(X67,k1_tarski(X67)), inference(variable_rename,[status(thm)],[d1_ordinal1])).
% 0.13/0.39  fof(c_0_21, plain, ![X15]:k2_tarski(X15,X15)=k1_tarski(X15), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.13/0.39  fof(c_0_22, plain, ![X43, X44]:k3_tarski(k2_tarski(X43,X44))=k2_xboole_0(X43,X44), inference(variable_rename,[status(thm)],[l51_zfmisc_1])).
% 0.13/0.39  fof(c_0_23, plain, ![X16, X17]:k1_enumset1(X16,X16,X17)=k2_tarski(X16,X17), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.13/0.39  cnf(c_0_24, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k4_enumset1(X4,X5,X6,X7,X8,X2)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.13/0.39  cnf(c_0_25, plain, (k5_enumset1(X1,X1,X2,X3,X4,X5,X6)=k4_enumset1(X1,X2,X3,X4,X5,X6)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.13/0.39  cnf(c_0_26, plain, (k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7)=k5_enumset1(X1,X2,X3,X4,X5,X6,X7)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.13/0.39  fof(c_0_27, negated_conjecture, esk3_0=k1_ordinal1(esk3_0), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_19])])])).
% 0.13/0.39  cnf(c_0_28, plain, (k1_ordinal1(X1)=k2_xboole_0(X1,k1_tarski(X1))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.13/0.39  cnf(c_0_29, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.13/0.39  cnf(c_0_30, plain, (k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.13/0.39  cnf(c_0_31, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.13/0.39  fof(c_0_32, plain, ![X18, X19, X20]:k2_enumset1(X18,X18,X19,X20)=k1_enumset1(X18,X19,X20), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.13/0.39  fof(c_0_33, plain, ![X21, X22, X23, X24]:k3_enumset1(X21,X21,X22,X23,X24)=k2_enumset1(X21,X22,X23,X24), inference(variable_rename,[status(thm)],[t72_enumset1])).
% 0.13/0.39  fof(c_0_34, plain, ![X25, X26, X27, X28, X29]:k4_enumset1(X25,X25,X26,X27,X28,X29)=k3_enumset1(X25,X26,X27,X28,X29), inference(variable_rename,[status(thm)],[t73_enumset1])).
% 0.13/0.39  fof(c_0_35, plain, ![X9, X10, X11, X12, X13]:((~r1_tarski(X9,X10)|(~r2_hidden(X11,X9)|r2_hidden(X11,X10)))&((r2_hidden(esk1_2(X12,X13),X12)|r1_tarski(X12,X13))&(~r2_hidden(esk1_2(X12,X13),X13)|r1_tarski(X12,X13)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).
% 0.13/0.39  cnf(c_0_36, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k6_enumset1(X4,X4,X4,X5,X6,X7,X8,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_24, c_0_25]), c_0_26])).
% 0.13/0.39  fof(c_0_37, plain, ![X45]:r1_tarski(X45,k1_zfmisc_1(k3_tarski(X45))), inference(variable_rename,[status(thm)],[t100_zfmisc_1])).
% 0.13/0.39  cnf(c_0_38, negated_conjecture, (esk3_0=k1_ordinal1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.13/0.39  cnf(c_0_39, plain, (k1_ordinal1(X1)=k2_xboole_0(X1,k2_tarski(X1,X1))), inference(rw,[status(thm)],[c_0_28, c_0_29])).
% 0.13/0.39  cnf(c_0_40, plain, (k3_tarski(k1_enumset1(X1,X1,X2))=k2_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_30, c_0_31])).
% 0.13/0.39  cnf(c_0_41, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.13/0.39  cnf(c_0_42, plain, (k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4)), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.13/0.39  cnf(c_0_43, plain, (k4_enumset1(X1,X1,X2,X3,X4,X5)=k3_enumset1(X1,X2,X3,X4,X5)), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.13/0.39  cnf(c_0_44, plain, (r2_hidden(X3,X2)|~r1_tarski(X1,X2)|~r2_hidden(X3,X1)), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.13/0.39  cnf(c_0_45, plain, (r2_hidden(X1,k6_enumset1(X2,X2,X2,X3,X4,X5,X6,X1))), inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_36])])).
% 0.13/0.39  cnf(c_0_46, plain, (r1_tarski(X1,k1_zfmisc_1(k3_tarski(X1)))), inference(split_conjunct,[status(thm)],[c_0_37])).
% 0.13/0.39  cnf(c_0_47, negated_conjecture, (esk3_0=k3_tarski(k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_38, c_0_39]), c_0_31]), c_0_40]), c_0_41]), c_0_41]), c_0_42]), c_0_42]), c_0_43]), c_0_43]), c_0_25]), c_0_25]), c_0_26]), c_0_26])).
% 0.13/0.39  cnf(c_0_48, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k4_enumset1(X2,X4,X5,X6,X7,X8)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.13/0.39  fof(c_0_49, plain, ![X63, X64]:(~r2_hidden(X63,X64)|m1_subset_1(X63,X64)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_subset])])).
% 0.13/0.39  cnf(c_0_50, plain, (r2_hidden(X1,X2)|~r1_tarski(k6_enumset1(X3,X3,X3,X4,X5,X6,X7,X1),X2)), inference(spm,[status(thm)],[c_0_44, c_0_45])).
% 0.13/0.39  cnf(c_0_51, negated_conjecture, (r1_tarski(k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0)),k1_zfmisc_1(esk3_0))), inference(spm,[status(thm)],[c_0_46, c_0_47])).
% 0.13/0.39  fof(c_0_52, plain, ![X68, X69]:(~r2_hidden(X68,X69)|~r1_tarski(X69,X68)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t7_ordinal1])])).
% 0.13/0.39  cnf(c_0_53, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k6_enumset1(X2,X2,X2,X4,X5,X6,X7,X8)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_48, c_0_25]), c_0_26])).
% 0.13/0.39  fof(c_0_54, plain, ![X65, X66]:((~m1_subset_1(X65,k1_zfmisc_1(X66))|r1_tarski(X65,X66))&(~r1_tarski(X65,X66)|m1_subset_1(X65,k1_zfmisc_1(X66)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).
% 0.13/0.39  cnf(c_0_55, plain, (m1_subset_1(X1,X2)|~r2_hidden(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_49])).
% 0.13/0.39  cnf(c_0_56, negated_conjecture, (r2_hidden(k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0),k1_zfmisc_1(esk3_0))), inference(spm,[status(thm)],[c_0_50, c_0_51])).
% 0.13/0.39  cnf(c_0_57, plain, (~r2_hidden(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_52])).
% 0.13/0.39  cnf(c_0_58, plain, (r2_hidden(X1,k6_enumset1(X1,X1,X1,X2,X3,X4,X5,X6))), inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_53])])).
% 0.13/0.39  cnf(c_0_59, plain, (r1_tarski(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_54])).
% 0.13/0.39  cnf(c_0_60, negated_conjecture, (m1_subset_1(k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0),k1_zfmisc_1(esk3_0))), inference(spm,[status(thm)],[c_0_55, c_0_56])).
% 0.13/0.39  cnf(c_0_61, plain, (~r1_tarski(k6_enumset1(X1,X1,X1,X2,X3,X4,X5,X6),X1)), inference(spm,[status(thm)],[c_0_57, c_0_58])).
% 0.13/0.39  cnf(c_0_62, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_59, c_0_60]), c_0_61]), ['proof']).
% 0.13/0.39  # SZS output end CNFRefutation
% 0.13/0.39  # Proof object total steps             : 63
% 0.13/0.39  # Proof object clause steps            : 30
% 0.13/0.39  # Proof object formula steps           : 33
% 0.13/0.39  # Proof object conjectures             : 9
% 0.13/0.39  # Proof object clause conjectures      : 6
% 0.13/0.39  # Proof object formula conjectures     : 3
% 0.13/0.39  # Proof object initial clauses used    : 17
% 0.13/0.39  # Proof object initial formulas used   : 16
% 0.13/0.39  # Proof object generating inferences   : 6
% 0.13/0.39  # Proof object simplifying inferences  : 24
% 0.13/0.39  # Training examples: 0 positive, 0 negative
% 0.13/0.39  # Parsed axioms                        : 16
% 0.13/0.39  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.39  # Initial clauses                      : 32
% 0.13/0.39  # Removed in clause preprocessing      : 9
% 0.13/0.39  # Initial clauses in saturation        : 23
% 0.13/0.39  # Processed clauses                    : 101
% 0.13/0.39  # ...of these trivial                  : 1
% 0.13/0.39  # ...subsumed                          : 6
% 0.13/0.39  # ...remaining for further processing  : 94
% 0.13/0.39  # Other redundant clauses eliminated   : 19
% 0.13/0.39  # Clauses deleted for lack of memory   : 0
% 0.13/0.39  # Backward-subsumed                    : 0
% 0.13/0.39  # Backward-rewritten                   : 0
% 0.13/0.39  # Generated clauses                    : 244
% 0.13/0.39  # ...of the previous two non-trivial   : 229
% 0.13/0.39  # Contextual simplify-reflections      : 0
% 0.13/0.39  # Paramodulations                      : 231
% 0.13/0.39  # Factorizations                       : 0
% 0.13/0.39  # Equation resolutions                 : 19
% 0.13/0.39  # Propositional unsat checks           : 0
% 0.13/0.39  #    Propositional check models        : 0
% 0.13/0.39  #    Propositional check unsatisfiable : 0
% 0.13/0.39  #    Propositional clauses             : 0
% 0.13/0.39  #    Propositional clauses after purity: 0
% 0.13/0.39  #    Propositional unsat core size     : 0
% 0.13/0.39  #    Propositional preprocessing time  : 0.000
% 0.13/0.39  #    Propositional encoding time       : 0.000
% 0.13/0.39  #    Propositional solver time         : 0.000
% 0.13/0.39  #    Success case prop preproc time    : 0.000
% 0.13/0.39  #    Success case prop encoding time   : 0.000
% 0.13/0.39  #    Success case prop solver time     : 0.000
% 0.13/0.39  # Current number of processed clauses  : 64
% 0.13/0.39  #    Positive orientable unit clauses  : 16
% 0.13/0.39  #    Positive unorientable unit clauses: 0
% 0.13/0.39  #    Negative unit clauses             : 7
% 0.13/0.39  #    Non-unit-clauses                  : 41
% 0.13/0.39  # Current number of unprocessed clauses: 174
% 0.13/0.39  # ...number of literals in the above   : 1188
% 0.13/0.39  # Current number of archived formulas  : 0
% 0.13/0.39  # Current number of archived clauses   : 32
% 0.13/0.39  # Clause-clause subsumption calls (NU) : 164
% 0.13/0.39  # Rec. Clause-clause subsumption calls : 129
% 0.13/0.39  # Non-unit clause-clause subsumptions  : 6
% 0.13/0.39  # Unit Clause-clause subsumption calls : 24
% 0.13/0.39  # Rewrite failures with RHS unbound    : 0
% 0.13/0.39  # BW rewrite match attempts            : 39
% 0.13/0.39  # BW rewrite match successes           : 0
% 0.13/0.39  # Condensation attempts                : 0
% 0.13/0.39  # Condensation successes               : 0
% 0.13/0.39  # Termbank termtop insertions          : 8478
% 0.13/0.39  
% 0.13/0.39  # -------------------------------------------------
% 0.13/0.39  # User time                : 0.036 s
% 0.13/0.39  # System time              : 0.008 s
% 0.13/0.39  # Total time               : 0.045 s
% 0.13/0.39  # Maximum resident set size: 1584 pages
%------------------------------------------------------------------------------
