%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n015.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:56:30 EST 2020

% Result     : Theorem 0.20s
% Output     : CNFRefutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   86 ( 686 expanded)
%              Number of clauses        :   51 ( 267 expanded)
%              Number of leaves         :   17 ( 192 expanded)
%              Depth                    :   11
%              Number of atoms          :  280 (1576 expanded)
%              Number of equality atoms :  108 ( 503 expanded)
%              Maximal formula depth    :   47 (   5 average)
%              Maximal clause size      :   68 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t34_ordinal1,conjecture,(
    ! [X1] :
      ( v3_ordinal1(X1)
     => ! [X2] :
          ( v3_ordinal1(X2)
         => ( r2_hidden(X1,k1_ordinal1(X2))
          <=> r1_ordinal1(X1,X2) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t34_ordinal1)).

fof(l51_zfmisc_1,axiom,(
    ! [X1,X2] : k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l51_zfmisc_1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

fof(connectedness_r1_ordinal1,axiom,(
    ! [X1,X2] :
      ( ( v3_ordinal1(X1)
        & v3_ordinal1(X2) )
     => ( r1_ordinal1(X1,X2)
        | r1_ordinal1(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',connectedness_r1_ordinal1)).

fof(d1_ordinal1,axiom,(
    ! [X1] : k1_ordinal1(X1) = k2_xboole_0(X1,k1_tarski(X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_ordinal1)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_enumset1)).

fof(d3_xboole_0,axiom,(
    ! [X1,X2,X3] :
      ( X3 = k2_xboole_0(X1,X2)
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ( r2_hidden(X4,X1)
            | r2_hidden(X4,X2) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_xboole_0)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_enumset1)).

fof(t72_enumset1,axiom,(
    ! [X1,X2,X3,X4] : k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t72_enumset1)).

fof(t73_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5] : k4_enumset1(X1,X1,X2,X3,X4,X5) = k3_enumset1(X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t73_enumset1)).

fof(t74_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5,X6] : k5_enumset1(X1,X1,X2,X3,X4,X5,X6) = k4_enumset1(X1,X2,X3,X4,X5,X6) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t74_enumset1)).

fof(t75_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5,X6,X7] : k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7) = k5_enumset1(X1,X2,X3,X4,X5,X6,X7) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t75_enumset1)).

fof(t7_ordinal1,axiom,(
    ! [X1,X2] :
      ~ ( r2_hidden(X1,X2)
        & r1_tarski(X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_ordinal1)).

fof(redefinition_r1_ordinal1,axiom,(
    ! [X1,X2] :
      ( ( v3_ordinal1(X1)
        & v3_ordinal1(X2) )
     => ( r1_ordinal1(X1,X2)
      <=> r1_tarski(X1,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_r1_ordinal1)).

fof(l1_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(k1_tarski(X1),X2)
    <=> r2_hidden(X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l1_zfmisc_1)).

fof(t24_ordinal1,axiom,(
    ! [X1] :
      ( v3_ordinal1(X1)
     => ! [X2] :
          ( v3_ordinal1(X2)
         => ~ ( ~ r2_hidden(X1,X2)
              & X1 != X2
              & ~ r2_hidden(X2,X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t24_ordinal1)).

fof(d6_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5,X6,X7,X8,X9] :
      ( X9 = k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8)
    <=> ! [X10] :
          ( r2_hidden(X10,X9)
        <=> ~ ( X10 != X1
              & X10 != X2
              & X10 != X3
              & X10 != X4
              & X10 != X5
              & X10 != X6
              & X10 != X7
              & X10 != X8 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d6_enumset1)).

fof(c_0_17,negated_conjecture,(
    ~ ! [X1] :
        ( v3_ordinal1(X1)
       => ! [X2] :
            ( v3_ordinal1(X2)
           => ( r2_hidden(X1,k1_ordinal1(X2))
            <=> r1_ordinal1(X1,X2) ) ) ) ),
    inference(assume_negation,[status(cth)],[t34_ordinal1])).

fof(c_0_18,plain,(
    ! [X50,X51] : k3_tarski(k2_tarski(X50,X51)) = k2_xboole_0(X50,X51) ),
    inference(variable_rename,[status(thm)],[l51_zfmisc_1])).

fof(c_0_19,plain,(
    ! [X21,X22] : k1_enumset1(X21,X21,X22) = k2_tarski(X21,X22) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_20,plain,(
    ! [X73,X74] :
      ( ~ v3_ordinal1(X73)
      | ~ v3_ordinal1(X74)
      | r1_ordinal1(X73,X74)
      | r1_ordinal1(X74,X73) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[connectedness_r1_ordinal1])])).

fof(c_0_21,negated_conjecture,
    ( v3_ordinal1(esk3_0)
    & v3_ordinal1(esk4_0)
    & ( ~ r2_hidden(esk3_0,k1_ordinal1(esk4_0))
      | ~ r1_ordinal1(esk3_0,esk4_0) )
    & ( r2_hidden(esk3_0,k1_ordinal1(esk4_0))
      | r1_ordinal1(esk3_0,esk4_0) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_17])])])).

fof(c_0_22,plain,(
    ! [X75] : k1_ordinal1(X75) = k2_xboole_0(X75,k1_tarski(X75)) ),
    inference(variable_rename,[status(thm)],[d1_ordinal1])).

fof(c_0_23,plain,(
    ! [X20] : k2_tarski(X20,X20) = k1_tarski(X20) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_24,plain,(
    ! [X11,X12,X13,X14,X15,X16,X17,X18] :
      ( ( ~ r2_hidden(X14,X13)
        | r2_hidden(X14,X11)
        | r2_hidden(X14,X12)
        | X13 != k2_xboole_0(X11,X12) )
      & ( ~ r2_hidden(X15,X11)
        | r2_hidden(X15,X13)
        | X13 != k2_xboole_0(X11,X12) )
      & ( ~ r2_hidden(X15,X12)
        | r2_hidden(X15,X13)
        | X13 != k2_xboole_0(X11,X12) )
      & ( ~ r2_hidden(esk1_3(X16,X17,X18),X16)
        | ~ r2_hidden(esk1_3(X16,X17,X18),X18)
        | X18 = k2_xboole_0(X16,X17) )
      & ( ~ r2_hidden(esk1_3(X16,X17,X18),X17)
        | ~ r2_hidden(esk1_3(X16,X17,X18),X18)
        | X18 = k2_xboole_0(X16,X17) )
      & ( r2_hidden(esk1_3(X16,X17,X18),X18)
        | r2_hidden(esk1_3(X16,X17,X18),X16)
        | r2_hidden(esk1_3(X16,X17,X18),X17)
        | X18 = k2_xboole_0(X16,X17) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_xboole_0])])])])])])).

cnf(c_0_25,plain,
    ( k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_26,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

fof(c_0_27,plain,(
    ! [X23,X24,X25] : k2_enumset1(X23,X23,X24,X25) = k1_enumset1(X23,X24,X25) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_28,plain,(
    ! [X26,X27,X28,X29] : k3_enumset1(X26,X26,X27,X28,X29) = k2_enumset1(X26,X27,X28,X29) ),
    inference(variable_rename,[status(thm)],[t72_enumset1])).

fof(c_0_29,plain,(
    ! [X30,X31,X32,X33,X34] : k4_enumset1(X30,X30,X31,X32,X33,X34) = k3_enumset1(X30,X31,X32,X33,X34) ),
    inference(variable_rename,[status(thm)],[t73_enumset1])).

fof(c_0_30,plain,(
    ! [X35,X36,X37,X38,X39,X40] : k5_enumset1(X35,X35,X36,X37,X38,X39,X40) = k4_enumset1(X35,X36,X37,X38,X39,X40) ),
    inference(variable_rename,[status(thm)],[t74_enumset1])).

fof(c_0_31,plain,(
    ! [X41,X42,X43,X44,X45,X46,X47] : k6_enumset1(X41,X41,X42,X43,X44,X45,X46,X47) = k5_enumset1(X41,X42,X43,X44,X45,X46,X47) ),
    inference(variable_rename,[status(thm)],[t75_enumset1])).

fof(c_0_32,plain,(
    ! [X80,X81] :
      ( ~ r2_hidden(X80,X81)
      | ~ r1_tarski(X81,X80) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t7_ordinal1])])).

fof(c_0_33,plain,(
    ! [X76,X77] :
      ( ( ~ r1_ordinal1(X76,X77)
        | r1_tarski(X76,X77)
        | ~ v3_ordinal1(X76)
        | ~ v3_ordinal1(X77) )
      & ( ~ r1_tarski(X76,X77)
        | r1_ordinal1(X76,X77)
        | ~ v3_ordinal1(X76)
        | ~ v3_ordinal1(X77) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_r1_ordinal1])])])).

cnf(c_0_34,plain,
    ( r1_ordinal1(X1,X2)
    | r1_ordinal1(X2,X1)
    | ~ v3_ordinal1(X1)
    | ~ v3_ordinal1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_35,negated_conjecture,
    ( v3_ordinal1(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_36,plain,
    ( k1_ordinal1(X1) = k2_xboole_0(X1,k1_tarski(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_37,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_38,plain,
    ( r2_hidden(X1,X3)
    | ~ r2_hidden(X1,X2)
    | X3 != k2_xboole_0(X2,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_39,plain,
    ( k3_tarski(k1_enumset1(X1,X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_25,c_0_26])).

cnf(c_0_40,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_41,plain,
    ( k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_42,plain,
    ( k4_enumset1(X1,X1,X2,X3,X4,X5) = k3_enumset1(X1,X2,X3,X4,X5) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_43,plain,
    ( k5_enumset1(X1,X1,X2,X3,X4,X5,X6) = k4_enumset1(X1,X2,X3,X4,X5,X6) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_44,plain,
    ( k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7) = k5_enumset1(X1,X2,X3,X4,X5,X6,X7) ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

fof(c_0_45,plain,(
    ! [X48,X49] :
      ( ( ~ r1_tarski(k1_tarski(X48),X49)
        | r2_hidden(X48,X49) )
      & ( ~ r2_hidden(X48,X49)
        | r1_tarski(k1_tarski(X48),X49) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l1_zfmisc_1])])).

cnf(c_0_46,plain,
    ( r2_hidden(X1,X3)
    | r2_hidden(X1,X4)
    | ~ r2_hidden(X1,X2)
    | X2 != k2_xboole_0(X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_47,plain,
    ( ~ r2_hidden(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

cnf(c_0_48,plain,
    ( r1_tarski(X1,X2)
    | ~ r1_ordinal1(X1,X2)
    | ~ v3_ordinal1(X1)
    | ~ v3_ordinal1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_49,negated_conjecture,
    ( r1_ordinal1(X1,esk4_0)
    | r1_ordinal1(esk4_0,X1)
    | ~ v3_ordinal1(X1) ),
    inference(spm,[status(thm)],[c_0_34,c_0_35])).

cnf(c_0_50,negated_conjecture,
    ( v3_ordinal1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_51,negated_conjecture,
    ( ~ r2_hidden(esk3_0,k1_ordinal1(esk4_0))
    | ~ r1_ordinal1(esk3_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_52,plain,
    ( k1_ordinal1(X1) = k2_xboole_0(X1,k2_tarski(X1,X1)) ),
    inference(rw,[status(thm)],[c_0_36,c_0_37])).

cnf(c_0_53,plain,
    ( r2_hidden(X1,X3)
    | X3 != k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X4))
    | ~ r2_hidden(X1,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_38,c_0_39]),c_0_40]),c_0_41]),c_0_42]),c_0_43]),c_0_44])).

cnf(c_0_54,plain,
    ( r1_tarski(k1_tarski(X1),X2)
    | ~ r2_hidden(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_45])).

cnf(c_0_55,plain,
    ( r2_hidden(X1,X4)
    | r2_hidden(X1,X3)
    | X2 != k3_tarski(k6_enumset1(X3,X3,X3,X3,X3,X3,X3,X4))
    | ~ r2_hidden(X1,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_46,c_0_39]),c_0_40]),c_0_41]),c_0_42]),c_0_43]),c_0_44])).

cnf(c_0_56,negated_conjecture,
    ( r2_hidden(esk3_0,k1_ordinal1(esk4_0))
    | r1_ordinal1(esk3_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_57,plain,
    ( ~ r1_ordinal1(X1,X2)
    | ~ v3_ordinal1(X2)
    | ~ v3_ordinal1(X1)
    | ~ r2_hidden(X2,X1) ),
    inference(spm,[status(thm)],[c_0_47,c_0_48])).

cnf(c_0_58,negated_conjecture,
    ( r1_ordinal1(esk4_0,esk3_0)
    | r1_ordinal1(esk3_0,esk4_0) ),
    inference(spm,[status(thm)],[c_0_49,c_0_50])).

cnf(c_0_59,negated_conjecture,
    ( ~ r1_ordinal1(esk3_0,esk4_0)
    | ~ r2_hidden(esk3_0,k3_tarski(k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0)))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_51,c_0_52]),c_0_26]),c_0_39]),c_0_40]),c_0_40]),c_0_41]),c_0_41]),c_0_42]),c_0_42]),c_0_43]),c_0_43]),c_0_44]),c_0_44])).

cnf(c_0_60,plain,
    ( r2_hidden(X1,k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X3)))
    | ~ r2_hidden(X1,X2) ),
    inference(er,[status(thm)],[c_0_53])).

cnf(c_0_61,plain,
    ( r1_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),X2)
    | ~ r2_hidden(X1,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_54,c_0_37]),c_0_26]),c_0_40]),c_0_41]),c_0_42]),c_0_43]),c_0_44])).

cnf(c_0_62,plain,
    ( r2_hidden(X1,X2)
    | r2_hidden(X1,X3)
    | ~ r2_hidden(X1,k3_tarski(k6_enumset1(X3,X3,X3,X3,X3,X3,X3,X2))) ),
    inference(er,[status(thm)],[c_0_55])).

cnf(c_0_63,negated_conjecture,
    ( r1_ordinal1(esk3_0,esk4_0)
    | r2_hidden(esk3_0,k3_tarski(k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0)))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_56,c_0_52]),c_0_26]),c_0_39]),c_0_40]),c_0_40]),c_0_41]),c_0_41]),c_0_42]),c_0_42]),c_0_43]),c_0_43]),c_0_44]),c_0_44])).

cnf(c_0_64,negated_conjecture,
    ( r1_ordinal1(esk4_0,esk3_0)
    | ~ r2_hidden(esk4_0,esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57,c_0_58]),c_0_35]),c_0_50])])).

cnf(c_0_65,plain,
    ( r2_hidden(X1,X3)
    | ~ r2_hidden(X1,X2)
    | X3 != k2_xboole_0(X4,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

fof(c_0_66,plain,(
    ! [X78,X79] :
      ( ~ v3_ordinal1(X78)
      | ~ v3_ordinal1(X79)
      | r2_hidden(X78,X79)
      | X78 = X79
      | r2_hidden(X79,X78) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t24_ordinal1])])])])).

cnf(c_0_67,negated_conjecture,
    ( ~ r1_ordinal1(esk3_0,esk4_0)
    | ~ r2_hidden(esk3_0,esk4_0) ),
    inference(spm,[status(thm)],[c_0_59,c_0_60])).

cnf(c_0_68,plain,
    ( ~ r2_hidden(X1,k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X2))
    | ~ r2_hidden(X2,X1) ),
    inference(spm,[status(thm)],[c_0_47,c_0_61])).

cnf(c_0_69,negated_conjecture,
    ( r1_ordinal1(esk3_0,esk4_0)
    | r2_hidden(esk3_0,k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0))
    | r2_hidden(esk3_0,esk4_0) ),
    inference(spm,[status(thm)],[c_0_62,c_0_63])).

cnf(c_0_70,negated_conjecture,
    ( ~ r2_hidden(esk3_0,esk4_0)
    | ~ r2_hidden(esk4_0,esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57,c_0_64]),c_0_50]),c_0_35])])).

cnf(c_0_71,plain,
    ( r2_hidden(X1,X3)
    | X3 != k3_tarski(k6_enumset1(X4,X4,X4,X4,X4,X4,X4,X2))
    | ~ r2_hidden(X1,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_65,c_0_39]),c_0_40]),c_0_41]),c_0_42]),c_0_43]),c_0_44])).

cnf(c_0_72,plain,
    ( r2_hidden(X1,X2)
    | X1 = X2
    | r2_hidden(X2,X1)
    | ~ v3_ordinal1(X1)
    | ~ v3_ordinal1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_66])).

cnf(c_0_73,negated_conjecture,
    ( r1_ordinal1(esk4_0,esk3_0)
    | ~ r2_hidden(esk3_0,esk4_0) ),
    inference(spm,[status(thm)],[c_0_67,c_0_58])).

cnf(c_0_74,negated_conjecture,
    ( r1_ordinal1(esk3_0,esk4_0)
    | ~ r2_hidden(esk4_0,esk3_0) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_68,c_0_69]),c_0_70])).

fof(c_0_75,plain,(
    ! [X52,X53,X54,X55,X56,X57,X58,X59,X60,X61,X62,X63,X64,X65,X66,X67,X68,X69,X70,X71] :
      ( ( ~ r2_hidden(X61,X60)
        | X61 = X52
        | X61 = X53
        | X61 = X54
        | X61 = X55
        | X61 = X56
        | X61 = X57
        | X61 = X58
        | X61 = X59
        | X60 != k6_enumset1(X52,X53,X54,X55,X56,X57,X58,X59) )
      & ( X62 != X52
        | r2_hidden(X62,X60)
        | X60 != k6_enumset1(X52,X53,X54,X55,X56,X57,X58,X59) )
      & ( X62 != X53
        | r2_hidden(X62,X60)
        | X60 != k6_enumset1(X52,X53,X54,X55,X56,X57,X58,X59) )
      & ( X62 != X54
        | r2_hidden(X62,X60)
        | X60 != k6_enumset1(X52,X53,X54,X55,X56,X57,X58,X59) )
      & ( X62 != X55
        | r2_hidden(X62,X60)
        | X60 != k6_enumset1(X52,X53,X54,X55,X56,X57,X58,X59) )
      & ( X62 != X56
        | r2_hidden(X62,X60)
        | X60 != k6_enumset1(X52,X53,X54,X55,X56,X57,X58,X59) )
      & ( X62 != X57
        | r2_hidden(X62,X60)
        | X60 != k6_enumset1(X52,X53,X54,X55,X56,X57,X58,X59) )
      & ( X62 != X58
        | r2_hidden(X62,X60)
        | X60 != k6_enumset1(X52,X53,X54,X55,X56,X57,X58,X59) )
      & ( X62 != X59
        | r2_hidden(X62,X60)
        | X60 != k6_enumset1(X52,X53,X54,X55,X56,X57,X58,X59) )
      & ( esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71) != X63
        | ~ r2_hidden(esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71),X71)
        | X71 = k6_enumset1(X63,X64,X65,X66,X67,X68,X69,X70) )
      & ( esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71) != X64
        | ~ r2_hidden(esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71),X71)
        | X71 = k6_enumset1(X63,X64,X65,X66,X67,X68,X69,X70) )
      & ( esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71) != X65
        | ~ r2_hidden(esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71),X71)
        | X71 = k6_enumset1(X63,X64,X65,X66,X67,X68,X69,X70) )
      & ( esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71) != X66
        | ~ r2_hidden(esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71),X71)
        | X71 = k6_enumset1(X63,X64,X65,X66,X67,X68,X69,X70) )
      & ( esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71) != X67
        | ~ r2_hidden(esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71),X71)
        | X71 = k6_enumset1(X63,X64,X65,X66,X67,X68,X69,X70) )
      & ( esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71) != X68
        | ~ r2_hidden(esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71),X71)
        | X71 = k6_enumset1(X63,X64,X65,X66,X67,X68,X69,X70) )
      & ( esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71) != X69
        | ~ r2_hidden(esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71),X71)
        | X71 = k6_enumset1(X63,X64,X65,X66,X67,X68,X69,X70) )
      & ( esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71) != X70
        | ~ r2_hidden(esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71),X71)
        | X71 = k6_enumset1(X63,X64,X65,X66,X67,X68,X69,X70) )
      & ( r2_hidden(esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71),X71)
        | esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71) = X63
        | esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71) = X64
        | esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71) = X65
        | esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71) = X66
        | esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71) = X67
        | esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71) = X68
        | esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71) = X69
        | esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71) = X70
        | X71 = k6_enumset1(X63,X64,X65,X66,X67,X68,X69,X70) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d6_enumset1])])])])])])).

cnf(c_0_76,plain,
    ( r2_hidden(X1,k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X3)))
    | ~ r2_hidden(X1,X3) ),
    inference(er,[status(thm)],[c_0_71])).

cnf(c_0_77,negated_conjecture,
    ( X1 = esk4_0
    | r2_hidden(X1,esk4_0)
    | r2_hidden(esk4_0,X1)
    | ~ v3_ordinal1(X1) ),
    inference(spm,[status(thm)],[c_0_72,c_0_35])).

cnf(c_0_78,negated_conjecture,
    ( ~ r2_hidden(esk3_0,esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57,c_0_73]),c_0_50]),c_0_35])])).

cnf(c_0_79,negated_conjecture,
    ( ~ r2_hidden(esk4_0,esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57,c_0_74]),c_0_35]),c_0_50])])).

cnf(c_0_80,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k6_enumset1(X2,X4,X5,X6,X7,X8,X9,X10) ),
    inference(split_conjunct,[status(thm)],[c_0_75])).

cnf(c_0_81,negated_conjecture,
    ( ~ r1_ordinal1(esk3_0,esk4_0)
    | ~ r2_hidden(esk3_0,k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0)) ),
    inference(spm,[status(thm)],[c_0_59,c_0_76])).

cnf(c_0_82,negated_conjecture,
    ( esk3_0 = esk4_0 ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_77,c_0_50]),c_0_78]),c_0_79])).

cnf(c_0_83,negated_conjecture,
    ( r1_ordinal1(esk4_0,esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(ef,[status(thm)],[c_0_49]),c_0_35])])).

cnf(c_0_84,plain,
    ( r2_hidden(X1,k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8)) ),
    inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_80])])).

cnf(c_0_85,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_81,c_0_82]),c_0_83]),c_0_82]),c_0_84])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.13/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n015.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 09:33:08 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.20/0.38  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S5PRR_RG_S04BN
% 0.20/0.38  # and selection function PSelectComplexExceptUniqMaxHorn.
% 0.20/0.38  #
% 0.20/0.38  # Preprocessing time       : 0.028 s
% 0.20/0.38  # Presaturation interreduction done
% 0.20/0.38  
% 0.20/0.38  # Proof found!
% 0.20/0.38  # SZS status Theorem
% 0.20/0.38  # SZS output start CNFRefutation
% 0.20/0.38  fof(t34_ordinal1, conjecture, ![X1]:(v3_ordinal1(X1)=>![X2]:(v3_ordinal1(X2)=>(r2_hidden(X1,k1_ordinal1(X2))<=>r1_ordinal1(X1,X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t34_ordinal1)).
% 0.20/0.38  fof(l51_zfmisc_1, axiom, ![X1, X2]:k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l51_zfmisc_1)).
% 0.20/0.38  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t70_enumset1)).
% 0.20/0.38  fof(connectedness_r1_ordinal1, axiom, ![X1, X2]:((v3_ordinal1(X1)&v3_ordinal1(X2))=>(r1_ordinal1(X1,X2)|r1_ordinal1(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', connectedness_r1_ordinal1)).
% 0.20/0.38  fof(d1_ordinal1, axiom, ![X1]:k1_ordinal1(X1)=k2_xboole_0(X1,k1_tarski(X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d1_ordinal1)).
% 0.20/0.38  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t69_enumset1)).
% 0.20/0.38  fof(d3_xboole_0, axiom, ![X1, X2, X3]:(X3=k2_xboole_0(X1,X2)<=>![X4]:(r2_hidden(X4,X3)<=>(r2_hidden(X4,X1)|r2_hidden(X4,X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d3_xboole_0)).
% 0.20/0.38  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t71_enumset1)).
% 0.20/0.38  fof(t72_enumset1, axiom, ![X1, X2, X3, X4]:k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t72_enumset1)).
% 0.20/0.38  fof(t73_enumset1, axiom, ![X1, X2, X3, X4, X5]:k4_enumset1(X1,X1,X2,X3,X4,X5)=k3_enumset1(X1,X2,X3,X4,X5), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t73_enumset1)).
% 0.20/0.38  fof(t74_enumset1, axiom, ![X1, X2, X3, X4, X5, X6]:k5_enumset1(X1,X1,X2,X3,X4,X5,X6)=k4_enumset1(X1,X2,X3,X4,X5,X6), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t74_enumset1)).
% 0.20/0.38  fof(t75_enumset1, axiom, ![X1, X2, X3, X4, X5, X6, X7]:k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7)=k5_enumset1(X1,X2,X3,X4,X5,X6,X7), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t75_enumset1)).
% 0.20/0.38  fof(t7_ordinal1, axiom, ![X1, X2]:~((r2_hidden(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t7_ordinal1)).
% 0.20/0.38  fof(redefinition_r1_ordinal1, axiom, ![X1, X2]:((v3_ordinal1(X1)&v3_ordinal1(X2))=>(r1_ordinal1(X1,X2)<=>r1_tarski(X1,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_r1_ordinal1)).
% 0.20/0.38  fof(l1_zfmisc_1, axiom, ![X1, X2]:(r1_tarski(k1_tarski(X1),X2)<=>r2_hidden(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l1_zfmisc_1)).
% 0.20/0.38  fof(t24_ordinal1, axiom, ![X1]:(v3_ordinal1(X1)=>![X2]:(v3_ordinal1(X2)=>~(((~(r2_hidden(X1,X2))&X1!=X2)&~(r2_hidden(X2,X1)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t24_ordinal1)).
% 0.20/0.38  fof(d6_enumset1, axiom, ![X1, X2, X3, X4, X5, X6, X7, X8, X9]:(X9=k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8)<=>![X10]:(r2_hidden(X10,X9)<=>~((((((((X10!=X1&X10!=X2)&X10!=X3)&X10!=X4)&X10!=X5)&X10!=X6)&X10!=X7)&X10!=X8)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d6_enumset1)).
% 0.20/0.38  fof(c_0_17, negated_conjecture, ~(![X1]:(v3_ordinal1(X1)=>![X2]:(v3_ordinal1(X2)=>(r2_hidden(X1,k1_ordinal1(X2))<=>r1_ordinal1(X1,X2))))), inference(assume_negation,[status(cth)],[t34_ordinal1])).
% 0.20/0.38  fof(c_0_18, plain, ![X50, X51]:k3_tarski(k2_tarski(X50,X51))=k2_xboole_0(X50,X51), inference(variable_rename,[status(thm)],[l51_zfmisc_1])).
% 0.20/0.38  fof(c_0_19, plain, ![X21, X22]:k1_enumset1(X21,X21,X22)=k2_tarski(X21,X22), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.20/0.38  fof(c_0_20, plain, ![X73, X74]:(~v3_ordinal1(X73)|~v3_ordinal1(X74)|(r1_ordinal1(X73,X74)|r1_ordinal1(X74,X73))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[connectedness_r1_ordinal1])])).
% 0.20/0.38  fof(c_0_21, negated_conjecture, (v3_ordinal1(esk3_0)&(v3_ordinal1(esk4_0)&((~r2_hidden(esk3_0,k1_ordinal1(esk4_0))|~r1_ordinal1(esk3_0,esk4_0))&(r2_hidden(esk3_0,k1_ordinal1(esk4_0))|r1_ordinal1(esk3_0,esk4_0))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_17])])])).
% 0.20/0.38  fof(c_0_22, plain, ![X75]:k1_ordinal1(X75)=k2_xboole_0(X75,k1_tarski(X75)), inference(variable_rename,[status(thm)],[d1_ordinal1])).
% 0.20/0.38  fof(c_0_23, plain, ![X20]:k2_tarski(X20,X20)=k1_tarski(X20), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.20/0.38  fof(c_0_24, plain, ![X11, X12, X13, X14, X15, X16, X17, X18]:(((~r2_hidden(X14,X13)|(r2_hidden(X14,X11)|r2_hidden(X14,X12))|X13!=k2_xboole_0(X11,X12))&((~r2_hidden(X15,X11)|r2_hidden(X15,X13)|X13!=k2_xboole_0(X11,X12))&(~r2_hidden(X15,X12)|r2_hidden(X15,X13)|X13!=k2_xboole_0(X11,X12))))&(((~r2_hidden(esk1_3(X16,X17,X18),X16)|~r2_hidden(esk1_3(X16,X17,X18),X18)|X18=k2_xboole_0(X16,X17))&(~r2_hidden(esk1_3(X16,X17,X18),X17)|~r2_hidden(esk1_3(X16,X17,X18),X18)|X18=k2_xboole_0(X16,X17)))&(r2_hidden(esk1_3(X16,X17,X18),X18)|(r2_hidden(esk1_3(X16,X17,X18),X16)|r2_hidden(esk1_3(X16,X17,X18),X17))|X18=k2_xboole_0(X16,X17)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_xboole_0])])])])])])).
% 0.20/0.38  cnf(c_0_25, plain, (k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.20/0.38  cnf(c_0_26, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.20/0.38  fof(c_0_27, plain, ![X23, X24, X25]:k2_enumset1(X23,X23,X24,X25)=k1_enumset1(X23,X24,X25), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.20/0.38  fof(c_0_28, plain, ![X26, X27, X28, X29]:k3_enumset1(X26,X26,X27,X28,X29)=k2_enumset1(X26,X27,X28,X29), inference(variable_rename,[status(thm)],[t72_enumset1])).
% 0.20/0.38  fof(c_0_29, plain, ![X30, X31, X32, X33, X34]:k4_enumset1(X30,X30,X31,X32,X33,X34)=k3_enumset1(X30,X31,X32,X33,X34), inference(variable_rename,[status(thm)],[t73_enumset1])).
% 0.20/0.38  fof(c_0_30, plain, ![X35, X36, X37, X38, X39, X40]:k5_enumset1(X35,X35,X36,X37,X38,X39,X40)=k4_enumset1(X35,X36,X37,X38,X39,X40), inference(variable_rename,[status(thm)],[t74_enumset1])).
% 0.20/0.38  fof(c_0_31, plain, ![X41, X42, X43, X44, X45, X46, X47]:k6_enumset1(X41,X41,X42,X43,X44,X45,X46,X47)=k5_enumset1(X41,X42,X43,X44,X45,X46,X47), inference(variable_rename,[status(thm)],[t75_enumset1])).
% 0.20/0.38  fof(c_0_32, plain, ![X80, X81]:(~r2_hidden(X80,X81)|~r1_tarski(X81,X80)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t7_ordinal1])])).
% 0.20/0.38  fof(c_0_33, plain, ![X76, X77]:((~r1_ordinal1(X76,X77)|r1_tarski(X76,X77)|(~v3_ordinal1(X76)|~v3_ordinal1(X77)))&(~r1_tarski(X76,X77)|r1_ordinal1(X76,X77)|(~v3_ordinal1(X76)|~v3_ordinal1(X77)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_r1_ordinal1])])])).
% 0.20/0.38  cnf(c_0_34, plain, (r1_ordinal1(X1,X2)|r1_ordinal1(X2,X1)|~v3_ordinal1(X1)|~v3_ordinal1(X2)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.20/0.38  cnf(c_0_35, negated_conjecture, (v3_ordinal1(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.20/0.38  cnf(c_0_36, plain, (k1_ordinal1(X1)=k2_xboole_0(X1,k1_tarski(X1))), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.20/0.38  cnf(c_0_37, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.20/0.38  cnf(c_0_38, plain, (r2_hidden(X1,X3)|~r2_hidden(X1,X2)|X3!=k2_xboole_0(X2,X4)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.20/0.38  cnf(c_0_39, plain, (k3_tarski(k1_enumset1(X1,X1,X2))=k2_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_25, c_0_26])).
% 0.20/0.38  cnf(c_0_40, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.20/0.38  cnf(c_0_41, plain, (k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4)), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.20/0.38  cnf(c_0_42, plain, (k4_enumset1(X1,X1,X2,X3,X4,X5)=k3_enumset1(X1,X2,X3,X4,X5)), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.20/0.38  cnf(c_0_43, plain, (k5_enumset1(X1,X1,X2,X3,X4,X5,X6)=k4_enumset1(X1,X2,X3,X4,X5,X6)), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.20/0.38  cnf(c_0_44, plain, (k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7)=k5_enumset1(X1,X2,X3,X4,X5,X6,X7)), inference(split_conjunct,[status(thm)],[c_0_31])).
% 0.20/0.38  fof(c_0_45, plain, ![X48, X49]:((~r1_tarski(k1_tarski(X48),X49)|r2_hidden(X48,X49))&(~r2_hidden(X48,X49)|r1_tarski(k1_tarski(X48),X49))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l1_zfmisc_1])])).
% 0.20/0.38  cnf(c_0_46, plain, (r2_hidden(X1,X3)|r2_hidden(X1,X4)|~r2_hidden(X1,X2)|X2!=k2_xboole_0(X3,X4)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.20/0.38  cnf(c_0_47, plain, (~r2_hidden(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.20/0.38  cnf(c_0_48, plain, (r1_tarski(X1,X2)|~r1_ordinal1(X1,X2)|~v3_ordinal1(X1)|~v3_ordinal1(X2)), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.20/0.38  cnf(c_0_49, negated_conjecture, (r1_ordinal1(X1,esk4_0)|r1_ordinal1(esk4_0,X1)|~v3_ordinal1(X1)), inference(spm,[status(thm)],[c_0_34, c_0_35])).
% 0.20/0.38  cnf(c_0_50, negated_conjecture, (v3_ordinal1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.20/0.38  cnf(c_0_51, negated_conjecture, (~r2_hidden(esk3_0,k1_ordinal1(esk4_0))|~r1_ordinal1(esk3_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.20/0.38  cnf(c_0_52, plain, (k1_ordinal1(X1)=k2_xboole_0(X1,k2_tarski(X1,X1))), inference(rw,[status(thm)],[c_0_36, c_0_37])).
% 0.20/0.38  cnf(c_0_53, plain, (r2_hidden(X1,X3)|X3!=k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X4))|~r2_hidden(X1,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_38, c_0_39]), c_0_40]), c_0_41]), c_0_42]), c_0_43]), c_0_44])).
% 0.20/0.38  cnf(c_0_54, plain, (r1_tarski(k1_tarski(X1),X2)|~r2_hidden(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_45])).
% 0.20/0.38  cnf(c_0_55, plain, (r2_hidden(X1,X4)|r2_hidden(X1,X3)|X2!=k3_tarski(k6_enumset1(X3,X3,X3,X3,X3,X3,X3,X4))|~r2_hidden(X1,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_46, c_0_39]), c_0_40]), c_0_41]), c_0_42]), c_0_43]), c_0_44])).
% 0.20/0.38  cnf(c_0_56, negated_conjecture, (r2_hidden(esk3_0,k1_ordinal1(esk4_0))|r1_ordinal1(esk3_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.20/0.38  cnf(c_0_57, plain, (~r1_ordinal1(X1,X2)|~v3_ordinal1(X2)|~v3_ordinal1(X1)|~r2_hidden(X2,X1)), inference(spm,[status(thm)],[c_0_47, c_0_48])).
% 0.20/0.38  cnf(c_0_58, negated_conjecture, (r1_ordinal1(esk4_0,esk3_0)|r1_ordinal1(esk3_0,esk4_0)), inference(spm,[status(thm)],[c_0_49, c_0_50])).
% 0.20/0.38  cnf(c_0_59, negated_conjecture, (~r1_ordinal1(esk3_0,esk4_0)|~r2_hidden(esk3_0,k3_tarski(k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0))))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_51, c_0_52]), c_0_26]), c_0_39]), c_0_40]), c_0_40]), c_0_41]), c_0_41]), c_0_42]), c_0_42]), c_0_43]), c_0_43]), c_0_44]), c_0_44])).
% 0.20/0.38  cnf(c_0_60, plain, (r2_hidden(X1,k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X3)))|~r2_hidden(X1,X2)), inference(er,[status(thm)],[c_0_53])).
% 0.20/0.38  cnf(c_0_61, plain, (r1_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),X2)|~r2_hidden(X1,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_54, c_0_37]), c_0_26]), c_0_40]), c_0_41]), c_0_42]), c_0_43]), c_0_44])).
% 0.20/0.38  cnf(c_0_62, plain, (r2_hidden(X1,X2)|r2_hidden(X1,X3)|~r2_hidden(X1,k3_tarski(k6_enumset1(X3,X3,X3,X3,X3,X3,X3,X2)))), inference(er,[status(thm)],[c_0_55])).
% 0.20/0.38  cnf(c_0_63, negated_conjecture, (r1_ordinal1(esk3_0,esk4_0)|r2_hidden(esk3_0,k3_tarski(k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0))))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_56, c_0_52]), c_0_26]), c_0_39]), c_0_40]), c_0_40]), c_0_41]), c_0_41]), c_0_42]), c_0_42]), c_0_43]), c_0_43]), c_0_44]), c_0_44])).
% 0.20/0.38  cnf(c_0_64, negated_conjecture, (r1_ordinal1(esk4_0,esk3_0)|~r2_hidden(esk4_0,esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57, c_0_58]), c_0_35]), c_0_50])])).
% 0.20/0.38  cnf(c_0_65, plain, (r2_hidden(X1,X3)|~r2_hidden(X1,X2)|X3!=k2_xboole_0(X4,X2)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.20/0.38  fof(c_0_66, plain, ![X78, X79]:(~v3_ordinal1(X78)|(~v3_ordinal1(X79)|(r2_hidden(X78,X79)|X78=X79|r2_hidden(X79,X78)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t24_ordinal1])])])])).
% 0.20/0.38  cnf(c_0_67, negated_conjecture, (~r1_ordinal1(esk3_0,esk4_0)|~r2_hidden(esk3_0,esk4_0)), inference(spm,[status(thm)],[c_0_59, c_0_60])).
% 0.20/0.38  cnf(c_0_68, plain, (~r2_hidden(X1,k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X2))|~r2_hidden(X2,X1)), inference(spm,[status(thm)],[c_0_47, c_0_61])).
% 0.20/0.38  cnf(c_0_69, negated_conjecture, (r1_ordinal1(esk3_0,esk4_0)|r2_hidden(esk3_0,k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0))|r2_hidden(esk3_0,esk4_0)), inference(spm,[status(thm)],[c_0_62, c_0_63])).
% 0.20/0.38  cnf(c_0_70, negated_conjecture, (~r2_hidden(esk3_0,esk4_0)|~r2_hidden(esk4_0,esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57, c_0_64]), c_0_50]), c_0_35])])).
% 0.20/0.38  cnf(c_0_71, plain, (r2_hidden(X1,X3)|X3!=k3_tarski(k6_enumset1(X4,X4,X4,X4,X4,X4,X4,X2))|~r2_hidden(X1,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_65, c_0_39]), c_0_40]), c_0_41]), c_0_42]), c_0_43]), c_0_44])).
% 0.20/0.38  cnf(c_0_72, plain, (r2_hidden(X1,X2)|X1=X2|r2_hidden(X2,X1)|~v3_ordinal1(X1)|~v3_ordinal1(X2)), inference(split_conjunct,[status(thm)],[c_0_66])).
% 0.20/0.38  cnf(c_0_73, negated_conjecture, (r1_ordinal1(esk4_0,esk3_0)|~r2_hidden(esk3_0,esk4_0)), inference(spm,[status(thm)],[c_0_67, c_0_58])).
% 0.20/0.38  cnf(c_0_74, negated_conjecture, (r1_ordinal1(esk3_0,esk4_0)|~r2_hidden(esk4_0,esk3_0)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_68, c_0_69]), c_0_70])).
% 0.20/0.38  fof(c_0_75, plain, ![X52, X53, X54, X55, X56, X57, X58, X59, X60, X61, X62, X63, X64, X65, X66, X67, X68, X69, X70, X71]:(((~r2_hidden(X61,X60)|(X61=X52|X61=X53|X61=X54|X61=X55|X61=X56|X61=X57|X61=X58|X61=X59)|X60!=k6_enumset1(X52,X53,X54,X55,X56,X57,X58,X59))&((((((((X62!=X52|r2_hidden(X62,X60)|X60!=k6_enumset1(X52,X53,X54,X55,X56,X57,X58,X59))&(X62!=X53|r2_hidden(X62,X60)|X60!=k6_enumset1(X52,X53,X54,X55,X56,X57,X58,X59)))&(X62!=X54|r2_hidden(X62,X60)|X60!=k6_enumset1(X52,X53,X54,X55,X56,X57,X58,X59)))&(X62!=X55|r2_hidden(X62,X60)|X60!=k6_enumset1(X52,X53,X54,X55,X56,X57,X58,X59)))&(X62!=X56|r2_hidden(X62,X60)|X60!=k6_enumset1(X52,X53,X54,X55,X56,X57,X58,X59)))&(X62!=X57|r2_hidden(X62,X60)|X60!=k6_enumset1(X52,X53,X54,X55,X56,X57,X58,X59)))&(X62!=X58|r2_hidden(X62,X60)|X60!=k6_enumset1(X52,X53,X54,X55,X56,X57,X58,X59)))&(X62!=X59|r2_hidden(X62,X60)|X60!=k6_enumset1(X52,X53,X54,X55,X56,X57,X58,X59))))&(((((((((esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71)!=X63|~r2_hidden(esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71),X71)|X71=k6_enumset1(X63,X64,X65,X66,X67,X68,X69,X70))&(esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71)!=X64|~r2_hidden(esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71),X71)|X71=k6_enumset1(X63,X64,X65,X66,X67,X68,X69,X70)))&(esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71)!=X65|~r2_hidden(esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71),X71)|X71=k6_enumset1(X63,X64,X65,X66,X67,X68,X69,X70)))&(esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71)!=X66|~r2_hidden(esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71),X71)|X71=k6_enumset1(X63,X64,X65,X66,X67,X68,X69,X70)))&(esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71)!=X67|~r2_hidden(esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71),X71)|X71=k6_enumset1(X63,X64,X65,X66,X67,X68,X69,X70)))&(esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71)!=X68|~r2_hidden(esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71),X71)|X71=k6_enumset1(X63,X64,X65,X66,X67,X68,X69,X70)))&(esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71)!=X69|~r2_hidden(esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71),X71)|X71=k6_enumset1(X63,X64,X65,X66,X67,X68,X69,X70)))&(esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71)!=X70|~r2_hidden(esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71),X71)|X71=k6_enumset1(X63,X64,X65,X66,X67,X68,X69,X70)))&(r2_hidden(esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71),X71)|(esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71)=X63|esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71)=X64|esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71)=X65|esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71)=X66|esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71)=X67|esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71)=X68|esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71)=X69|esk2_9(X63,X64,X65,X66,X67,X68,X69,X70,X71)=X70)|X71=k6_enumset1(X63,X64,X65,X66,X67,X68,X69,X70)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d6_enumset1])])])])])])).
% 0.20/0.38  cnf(c_0_76, plain, (r2_hidden(X1,k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X3)))|~r2_hidden(X1,X3)), inference(er,[status(thm)],[c_0_71])).
% 0.20/0.38  cnf(c_0_77, negated_conjecture, (X1=esk4_0|r2_hidden(X1,esk4_0)|r2_hidden(esk4_0,X1)|~v3_ordinal1(X1)), inference(spm,[status(thm)],[c_0_72, c_0_35])).
% 0.20/0.38  cnf(c_0_78, negated_conjecture, (~r2_hidden(esk3_0,esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57, c_0_73]), c_0_50]), c_0_35])])).
% 0.20/0.38  cnf(c_0_79, negated_conjecture, (~r2_hidden(esk4_0,esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57, c_0_74]), c_0_35]), c_0_50])])).
% 0.20/0.38  cnf(c_0_80, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k6_enumset1(X2,X4,X5,X6,X7,X8,X9,X10)), inference(split_conjunct,[status(thm)],[c_0_75])).
% 0.20/0.38  cnf(c_0_81, negated_conjecture, (~r1_ordinal1(esk3_0,esk4_0)|~r2_hidden(esk3_0,k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0))), inference(spm,[status(thm)],[c_0_59, c_0_76])).
% 0.20/0.38  cnf(c_0_82, negated_conjecture, (esk3_0=esk4_0), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_77, c_0_50]), c_0_78]), c_0_79])).
% 0.20/0.38  cnf(c_0_83, negated_conjecture, (r1_ordinal1(esk4_0,esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(ef,[status(thm)],[c_0_49]), c_0_35])])).
% 0.20/0.38  cnf(c_0_84, plain, (r2_hidden(X1,k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8))), inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_80])])).
% 0.20/0.38  cnf(c_0_85, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_81, c_0_82]), c_0_83]), c_0_82]), c_0_84])]), ['proof']).
% 0.20/0.38  # SZS output end CNFRefutation
% 0.20/0.38  # Proof object total steps             : 86
% 0.20/0.38  # Proof object clause steps            : 51
% 0.20/0.38  # Proof object formula steps           : 35
% 0.20/0.38  # Proof object conjectures             : 24
% 0.20/0.38  # Proof object clause conjectures      : 21
% 0.20/0.38  # Proof object formula conjectures     : 3
% 0.20/0.38  # Proof object initial clauses used    : 22
% 0.20/0.38  # Proof object initial formulas used   : 17
% 0.20/0.38  # Proof object generating inferences   : 16
% 0.20/0.38  # Proof object simplifying inferences  : 80
% 0.20/0.38  # Training examples: 0 positive, 0 negative
% 0.20/0.38  # Parsed axioms                        : 17
% 0.20/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.20/0.38  # Initial clauses                      : 44
% 0.20/0.38  # Removed in clause preprocessing      : 9
% 0.20/0.38  # Initial clauses in saturation        : 35
% 0.20/0.38  # Processed clauses                    : 113
% 0.20/0.38  # ...of these trivial                  : 4
% 0.20/0.38  # ...subsumed                          : 14
% 0.20/0.38  # ...remaining for further processing  : 95
% 0.20/0.38  # Other redundant clauses eliminated   : 20
% 0.20/0.38  # Clauses deleted for lack of memory   : 0
% 0.20/0.38  # Backward-subsumed                    : 0
% 0.20/0.38  # Backward-rewritten                   : 15
% 0.20/0.38  # Generated clauses                    : 77
% 0.20/0.38  # ...of the previous two non-trivial   : 67
% 0.20/0.38  # Contextual simplify-reflections      : 1
% 0.20/0.38  # Paramodulations                      : 52
% 0.20/0.38  # Factorizations                       : 12
% 0.20/0.38  # Equation resolutions                 : 20
% 0.20/0.38  # Propositional unsat checks           : 0
% 0.20/0.38  #    Propositional check models        : 0
% 0.20/0.38  #    Propositional check unsatisfiable : 0
% 0.20/0.38  #    Propositional clauses             : 0
% 0.20/0.38  #    Propositional clauses after purity: 0
% 0.20/0.38  #    Propositional unsat core size     : 0
% 0.20/0.38  #    Propositional preprocessing time  : 0.000
% 0.20/0.38  #    Propositional encoding time       : 0.000
% 0.20/0.38  #    Propositional solver time         : 0.000
% 0.20/0.38  #    Success case prop preproc time    : 0.000
% 0.20/0.38  #    Success case prop encoding time   : 0.000
% 0.20/0.38  #    Success case prop solver time     : 0.000
% 0.20/0.38  # Current number of processed clauses  : 32
% 0.20/0.38  #    Positive orientable unit clauses  : 11
% 0.20/0.38  #    Positive unorientable unit clauses: 0
% 0.20/0.38  #    Negative unit clauses             : 4
% 0.20/0.38  #    Non-unit-clauses                  : 17
% 0.20/0.38  # Current number of unprocessed clauses: 23
% 0.20/0.38  # ...number of literals in the above   : 76
% 0.20/0.38  # Current number of archived formulas  : 0
% 0.20/0.38  # Current number of archived clauses   : 60
% 0.20/0.38  # Clause-clause subsumption calls (NU) : 167
% 0.20/0.38  # Rec. Clause-clause subsumption calls : 133
% 0.20/0.38  # Non-unit clause-clause subsumptions  : 3
% 0.20/0.38  # Unit Clause-clause subsumption calls : 56
% 0.20/0.38  # Rewrite failures with RHS unbound    : 0
% 0.20/0.38  # BW rewrite match attempts            : 60
% 0.20/0.38  # BW rewrite match successes           : 1
% 0.20/0.38  # Condensation attempts                : 0
% 0.20/0.38  # Condensation successes               : 0
% 0.20/0.38  # Termbank termtop insertions          : 3607
% 0.20/0.38  
% 0.20/0.38  # -------------------------------------------------
% 0.20/0.38  # User time                : 0.034 s
% 0.20/0.38  # System time              : 0.003 s
% 0.20/0.38  # Total time               : 0.037 s
% 0.20/0.38  # Maximum resident set size: 1584 pages
%------------------------------------------------------------------------------
