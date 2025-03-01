%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n011.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:44:09 EST 2020

% Result     : Theorem 0.12s
% Output     : CNFRefutation 0.12s
% Verified   : 
% Statistics : Number of formulae       :   66 ( 204 expanded)
%              Number of clauses        :   49 (  97 expanded)
%              Number of leaves         :    8 (  51 expanded)
%              Depth                    :   13
%              Number of atoms          :  196 ( 839 expanded)
%              Number of equality atoms :   60 ( 205 expanded)
%              Maximal formula depth    :   23 (   4 average)
%              Maximal clause size      :   28 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(d5_xboole_0,axiom,(
    ! [X1,X2,X3] :
      ( X3 = k4_xboole_0(X1,X2)
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ( r2_hidden(X4,X1)
            & ~ r2_hidden(X4,X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d5_xboole_0)).

fof(t3_boole,axiom,(
    ! [X1] : k4_xboole_0(X1,k1_xboole_0) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_boole)).

fof(t4_boole,axiom,(
    ! [X1] : k4_xboole_0(k1_xboole_0,X1) = k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t4_boole)).

fof(d3_tarski,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
    <=> ! [X3] :
          ( r2_hidden(X3,X1)
         => r2_hidden(X3,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_tarski)).

fof(t138_zfmisc_1,conjecture,(
    ! [X1,X2,X3,X4] :
      ( r1_tarski(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X3,X4))
     => ( k2_zfmisc_1(X1,X2) = k1_xboole_0
        | ( r1_tarski(X1,X3)
          & r1_tarski(X2,X4) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t138_zfmisc_1)).

fof(l54_zfmisc_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,X4))
    <=> ( r2_hidden(X1,X3)
        & r2_hidden(X2,X4) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l54_zfmisc_1)).

fof(d2_zfmisc_1,axiom,(
    ! [X1,X2,X3] :
      ( X3 = k2_zfmisc_1(X1,X2)
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ? [X5,X6] :
              ( r2_hidden(X5,X1)
              & r2_hidden(X6,X2)
              & X4 = k4_tarski(X5,X6) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d2_zfmisc_1)).

fof(t7_xboole_0,axiom,(
    ! [X1] :
      ~ ( X1 != k1_xboole_0
        & ! [X2] : ~ r2_hidden(X2,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_xboole_0)).

fof(c_0_8,plain,(
    ! [X13,X14,X15,X16,X17,X18,X19,X20] :
      ( ( r2_hidden(X16,X13)
        | ~ r2_hidden(X16,X15)
        | X15 != k4_xboole_0(X13,X14) )
      & ( ~ r2_hidden(X16,X14)
        | ~ r2_hidden(X16,X15)
        | X15 != k4_xboole_0(X13,X14) )
      & ( ~ r2_hidden(X17,X13)
        | r2_hidden(X17,X14)
        | r2_hidden(X17,X15)
        | X15 != k4_xboole_0(X13,X14) )
      & ( ~ r2_hidden(esk2_3(X18,X19,X20),X20)
        | ~ r2_hidden(esk2_3(X18,X19,X20),X18)
        | r2_hidden(esk2_3(X18,X19,X20),X19)
        | X20 = k4_xboole_0(X18,X19) )
      & ( r2_hidden(esk2_3(X18,X19,X20),X18)
        | r2_hidden(esk2_3(X18,X19,X20),X20)
        | X20 = k4_xboole_0(X18,X19) )
      & ( ~ r2_hidden(esk2_3(X18,X19,X20),X19)
        | r2_hidden(esk2_3(X18,X19,X20),X20)
        | X20 = k4_xboole_0(X18,X19) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d5_xboole_0])])])])])])])).

fof(c_0_9,plain,(
    ! [X26] : k4_xboole_0(X26,k1_xboole_0) = X26 ),
    inference(variable_rename,[status(thm)],[t3_boole])).

fof(c_0_10,plain,(
    ! [X27] : k4_xboole_0(k1_xboole_0,X27) = k1_xboole_0 ),
    inference(variable_rename,[status(thm)],[t4_boole])).

cnf(c_0_11,plain,
    ( ~ r2_hidden(X1,X2)
    | ~ r2_hidden(X1,X3)
    | X3 != k4_xboole_0(X4,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_12,plain,
    ( k4_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

fof(c_0_13,plain,(
    ! [X7,X8,X9,X10,X11] :
      ( ( ~ r1_tarski(X7,X8)
        | ~ r2_hidden(X9,X7)
        | r2_hidden(X9,X8) )
      & ( r2_hidden(esk1_2(X10,X11),X10)
        | r1_tarski(X10,X11) )
      & ( ~ r2_hidden(esk1_2(X10,X11),X11)
        | r1_tarski(X10,X11) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).

cnf(c_0_14,plain,
    ( k4_xboole_0(k1_xboole_0,X1) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

fof(c_0_15,negated_conjecture,(
    ~ ! [X1,X2,X3,X4] :
        ( r1_tarski(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X3,X4))
       => ( k2_zfmisc_1(X1,X2) = k1_xboole_0
          | ( r1_tarski(X1,X3)
            & r1_tarski(X2,X4) ) ) ) ),
    inference(assume_negation,[status(cth)],[t138_zfmisc_1])).

cnf(c_0_16,plain,
    ( ~ r2_hidden(X1,k1_xboole_0)
    | ~ r2_hidden(X1,X2) ),
    inference(er,[status(thm)],[inference(spm,[status(thm)],[c_0_11,c_0_12])])).

cnf(c_0_17,plain,
    ( r2_hidden(esk1_2(X1,X2),X1)
    | r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_18,plain,
    ( X1 != k1_xboole_0
    | ~ r2_hidden(X2,X1)
    | ~ r2_hidden(X2,X3) ),
    inference(spm,[status(thm)],[c_0_11,c_0_14])).

fof(c_0_19,negated_conjecture,
    ( r1_tarski(k2_zfmisc_1(esk9_0,esk10_0),k2_zfmisc_1(esk11_0,esk12_0))
    & k2_zfmisc_1(esk9_0,esk10_0) != k1_xboole_0
    & ( ~ r1_tarski(esk9_0,esk11_0)
      | ~ r1_tarski(esk10_0,esk12_0) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_15])])])).

cnf(c_0_20,plain,
    ( r1_tarski(k1_xboole_0,X1)
    | ~ r2_hidden(esk1_2(k1_xboole_0,X1),X2) ),
    inference(spm,[status(thm)],[c_0_16,c_0_17])).

cnf(c_0_21,plain,
    ( r1_tarski(X1,X2)
    | X1 != k1_xboole_0
    | ~ r2_hidden(esk1_2(X1,X2),X3) ),
    inference(spm,[status(thm)],[c_0_18,c_0_17])).

fof(c_0_22,plain,(
    ! [X45,X46,X47,X48] :
      ( ( r2_hidden(X45,X47)
        | ~ r2_hidden(k4_tarski(X45,X46),k2_zfmisc_1(X47,X48)) )
      & ( r2_hidden(X46,X48)
        | ~ r2_hidden(k4_tarski(X45,X46),k2_zfmisc_1(X47,X48)) )
      & ( ~ r2_hidden(X45,X47)
        | ~ r2_hidden(X46,X48)
        | r2_hidden(k4_tarski(X45,X46),k2_zfmisc_1(X47,X48)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l54_zfmisc_1])])])).

cnf(c_0_23,plain,
    ( r2_hidden(X3,X2)
    | ~ r1_tarski(X1,X2)
    | ~ r2_hidden(X3,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_24,negated_conjecture,
    ( r1_tarski(k2_zfmisc_1(esk9_0,esk10_0),k2_zfmisc_1(esk11_0,esk12_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_25,plain,
    ( r1_tarski(k1_xboole_0,X1) ),
    inference(spm,[status(thm)],[c_0_20,c_0_17])).

fof(c_0_26,plain,(
    ! [X28,X29,X30,X31,X34,X35,X36,X37,X38,X39,X41,X42] :
      ( ( r2_hidden(esk4_4(X28,X29,X30,X31),X28)
        | ~ r2_hidden(X31,X30)
        | X30 != k2_zfmisc_1(X28,X29) )
      & ( r2_hidden(esk5_4(X28,X29,X30,X31),X29)
        | ~ r2_hidden(X31,X30)
        | X30 != k2_zfmisc_1(X28,X29) )
      & ( X31 = k4_tarski(esk4_4(X28,X29,X30,X31),esk5_4(X28,X29,X30,X31))
        | ~ r2_hidden(X31,X30)
        | X30 != k2_zfmisc_1(X28,X29) )
      & ( ~ r2_hidden(X35,X28)
        | ~ r2_hidden(X36,X29)
        | X34 != k4_tarski(X35,X36)
        | r2_hidden(X34,X30)
        | X30 != k2_zfmisc_1(X28,X29) )
      & ( ~ r2_hidden(esk6_3(X37,X38,X39),X39)
        | ~ r2_hidden(X41,X37)
        | ~ r2_hidden(X42,X38)
        | esk6_3(X37,X38,X39) != k4_tarski(X41,X42)
        | X39 = k2_zfmisc_1(X37,X38) )
      & ( r2_hidden(esk7_3(X37,X38,X39),X37)
        | r2_hidden(esk6_3(X37,X38,X39),X39)
        | X39 = k2_zfmisc_1(X37,X38) )
      & ( r2_hidden(esk8_3(X37,X38,X39),X38)
        | r2_hidden(esk6_3(X37,X38,X39),X39)
        | X39 = k2_zfmisc_1(X37,X38) )
      & ( esk6_3(X37,X38,X39) = k4_tarski(esk7_3(X37,X38,X39),esk8_3(X37,X38,X39))
        | r2_hidden(esk6_3(X37,X38,X39),X39)
        | X39 = k2_zfmisc_1(X37,X38) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d2_zfmisc_1])])])])])])).

cnf(c_0_27,plain,
    ( r1_tarski(X1,X2)
    | X1 != k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_21,c_0_17])).

cnf(c_0_28,plain,
    ( r2_hidden(X1,X2)
    | ~ r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(X2,X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_29,negated_conjecture,
    ( r2_hidden(X1,k2_zfmisc_1(esk11_0,esk12_0))
    | ~ r2_hidden(X1,k2_zfmisc_1(esk9_0,esk10_0)) ),
    inference(spm,[status(thm)],[c_0_23,c_0_24])).

cnf(c_0_30,plain,
    ( ~ r2_hidden(X1,k1_xboole_0) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_23,c_0_25]),c_0_16])).

cnf(c_0_31,plain,
    ( r2_hidden(esk4_4(X1,X2,X3,X4),X1)
    | ~ r2_hidden(X4,X3)
    | X3 != k2_zfmisc_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_32,plain,
    ( X1 != k1_xboole_0
    | ~ r2_hidden(X2,X1) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_23,c_0_27]),c_0_18])).

cnf(c_0_33,negated_conjecture,
    ( r2_hidden(X1,esk11_0)
    | ~ r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(esk9_0,esk10_0)) ),
    inference(spm,[status(thm)],[c_0_28,c_0_29])).

cnf(c_0_34,plain,
    ( r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(X2,X4))
    | ~ r2_hidden(X1,X2)
    | ~ r2_hidden(X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

fof(c_0_35,plain,(
    ! [X22] :
      ( X22 = k1_xboole_0
      | r2_hidden(esk3_1(X22),X22) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t7_xboole_0])])])])).

cnf(c_0_36,plain,
    ( r2_hidden(esk5_4(X1,X2,X3,X4),X2)
    | ~ r2_hidden(X4,X3)
    | X3 != k2_zfmisc_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_37,plain,
    ( X1 != k2_zfmisc_1(k1_xboole_0,X2)
    | ~ r2_hidden(X3,X1) ),
    inference(spm,[status(thm)],[c_0_30,c_0_31])).

cnf(c_0_38,plain,
    ( X1 != k2_zfmisc_1(X2,X3)
    | X2 != k1_xboole_0
    | ~ r2_hidden(X4,X1) ),
    inference(spm,[status(thm)],[c_0_32,c_0_31])).

cnf(c_0_39,negated_conjecture,
    ( r2_hidden(X1,esk11_0)
    | ~ r2_hidden(X2,esk10_0)
    | ~ r2_hidden(X1,esk9_0) ),
    inference(spm,[status(thm)],[c_0_33,c_0_34])).

cnf(c_0_40,plain,
    ( X1 = k1_xboole_0
    | r2_hidden(esk3_1(X1),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

cnf(c_0_41,plain,
    ( X1 != k2_zfmisc_1(X2,X3)
    | X3 != k1_xboole_0
    | ~ r2_hidden(X4,X1) ),
    inference(spm,[status(thm)],[c_0_32,c_0_36])).

cnf(c_0_42,plain,
    ( r2_hidden(X1,X2)
    | ~ r2_hidden(k4_tarski(X3,X1),k2_zfmisc_1(X4,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_43,plain,
    ( ~ r2_hidden(X1,k2_zfmisc_1(k1_xboole_0,X2)) ),
    inference(er,[status(thm)],[c_0_37])).

cnf(c_0_44,plain,
    ( X1 != k1_xboole_0
    | ~ r2_hidden(X2,k2_zfmisc_1(X1,X3)) ),
    inference(er,[status(thm)],[c_0_38])).

cnf(c_0_45,plain,
    ( r1_tarski(X1,X2)
    | ~ r2_hidden(esk1_2(X1,X2),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_46,negated_conjecture,
    ( esk10_0 = k1_xboole_0
    | r2_hidden(X1,esk11_0)
    | ~ r2_hidden(X1,esk9_0) ),
    inference(spm,[status(thm)],[c_0_39,c_0_40])).

cnf(c_0_47,plain,
    ( X1 != k1_xboole_0
    | ~ r2_hidden(X2,k2_zfmisc_1(X3,X1)) ),
    inference(er,[status(thm)],[c_0_41])).

cnf(c_0_48,negated_conjecture,
    ( r2_hidden(X1,esk12_0)
    | ~ r2_hidden(k4_tarski(X2,X1),k2_zfmisc_1(esk9_0,esk10_0)) ),
    inference(spm,[status(thm)],[c_0_42,c_0_29])).

cnf(c_0_49,plain,
    ( r2_hidden(esk7_3(X1,X2,X3),X1)
    | r2_hidden(esk6_3(X1,X2,X3),X3)
    | X3 = k2_zfmisc_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_50,plain,
    ( k2_zfmisc_1(k1_xboole_0,X1) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_43,c_0_40])).

cnf(c_0_51,negated_conjecture,
    ( k2_zfmisc_1(esk9_0,esk10_0) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_52,plain,
    ( k2_zfmisc_1(X1,X2) = k1_xboole_0
    | X1 != k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_44,c_0_40])).

cnf(c_0_53,negated_conjecture,
    ( esk10_0 = k1_xboole_0
    | r1_tarski(X1,esk11_0)
    | ~ r2_hidden(esk1_2(X1,esk11_0),esk9_0) ),
    inference(spm,[status(thm)],[c_0_45,c_0_46])).

cnf(c_0_54,plain,
    ( k2_zfmisc_1(X1,X2) = k1_xboole_0
    | X2 != k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_47,c_0_40])).

cnf(c_0_55,negated_conjecture,
    ( r2_hidden(X1,esk12_0)
    | ~ r2_hidden(X1,esk10_0)
    | ~ r2_hidden(X2,esk9_0) ),
    inference(spm,[status(thm)],[c_0_48,c_0_34])).

cnf(c_0_56,plain,
    ( X1 = k1_xboole_0
    | r2_hidden(esk6_3(k1_xboole_0,X2,X1),X1) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_30,c_0_49]),c_0_50])).

cnf(c_0_57,negated_conjecture,
    ( esk9_0 != k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_51,c_0_52])).

cnf(c_0_58,negated_conjecture,
    ( esk10_0 = k1_xboole_0
    | r1_tarski(esk9_0,esk11_0) ),
    inference(spm,[status(thm)],[c_0_53,c_0_17])).

cnf(c_0_59,negated_conjecture,
    ( esk10_0 != k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_51,c_0_54])).

cnf(c_0_60,negated_conjecture,
    ( r2_hidden(X1,esk12_0)
    | ~ r2_hidden(X1,esk10_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_55,c_0_56]),c_0_57])).

cnf(c_0_61,negated_conjecture,
    ( ~ r1_tarski(esk9_0,esk11_0)
    | ~ r1_tarski(esk10_0,esk12_0) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_62,negated_conjecture,
    ( r1_tarski(esk9_0,esk11_0) ),
    inference(sr,[status(thm)],[c_0_58,c_0_59])).

cnf(c_0_63,negated_conjecture,
    ( r1_tarski(X1,esk12_0)
    | ~ r2_hidden(esk1_2(X1,esk12_0),esk10_0) ),
    inference(spm,[status(thm)],[c_0_45,c_0_60])).

cnf(c_0_64,negated_conjecture,
    ( ~ r1_tarski(esk10_0,esk12_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_61,c_0_62])])).

cnf(c_0_65,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_63,c_0_17]),c_0_64]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.33  % Computer   : n011.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 11:45:42 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.12/0.38  # AutoSched0-Mode selected heuristic G_E___208_B02_F1_AE_CS_SP_PS_S0Y
% 0.12/0.38  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.12/0.38  #
% 0.12/0.38  # Preprocessing time       : 0.027 s
% 0.12/0.38  # Presaturation interreduction done
% 0.12/0.38  
% 0.12/0.38  # Proof found!
% 0.12/0.38  # SZS status Theorem
% 0.12/0.38  # SZS output start CNFRefutation
% 0.12/0.38  fof(d5_xboole_0, axiom, ![X1, X2, X3]:(X3=k4_xboole_0(X1,X2)<=>![X4]:(r2_hidden(X4,X3)<=>(r2_hidden(X4,X1)&~(r2_hidden(X4,X2))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d5_xboole_0)).
% 0.12/0.38  fof(t3_boole, axiom, ![X1]:k4_xboole_0(X1,k1_xboole_0)=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_boole)).
% 0.12/0.38  fof(t4_boole, axiom, ![X1]:k4_xboole_0(k1_xboole_0,X1)=k1_xboole_0, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t4_boole)).
% 0.12/0.38  fof(d3_tarski, axiom, ![X1, X2]:(r1_tarski(X1,X2)<=>![X3]:(r2_hidden(X3,X1)=>r2_hidden(X3,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d3_tarski)).
% 0.12/0.38  fof(t138_zfmisc_1, conjecture, ![X1, X2, X3, X4]:(r1_tarski(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X3,X4))=>(k2_zfmisc_1(X1,X2)=k1_xboole_0|(r1_tarski(X1,X3)&r1_tarski(X2,X4)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t138_zfmisc_1)).
% 0.12/0.38  fof(l54_zfmisc_1, axiom, ![X1, X2, X3, X4]:(r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,X4))<=>(r2_hidden(X1,X3)&r2_hidden(X2,X4))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l54_zfmisc_1)).
% 0.12/0.38  fof(d2_zfmisc_1, axiom, ![X1, X2, X3]:(X3=k2_zfmisc_1(X1,X2)<=>![X4]:(r2_hidden(X4,X3)<=>?[X5, X6]:((r2_hidden(X5,X1)&r2_hidden(X6,X2))&X4=k4_tarski(X5,X6)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d2_zfmisc_1)).
% 0.12/0.38  fof(t7_xboole_0, axiom, ![X1]:~((X1!=k1_xboole_0&![X2]:~(r2_hidden(X2,X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t7_xboole_0)).
% 0.12/0.38  fof(c_0_8, plain, ![X13, X14, X15, X16, X17, X18, X19, X20]:((((r2_hidden(X16,X13)|~r2_hidden(X16,X15)|X15!=k4_xboole_0(X13,X14))&(~r2_hidden(X16,X14)|~r2_hidden(X16,X15)|X15!=k4_xboole_0(X13,X14)))&(~r2_hidden(X17,X13)|r2_hidden(X17,X14)|r2_hidden(X17,X15)|X15!=k4_xboole_0(X13,X14)))&((~r2_hidden(esk2_3(X18,X19,X20),X20)|(~r2_hidden(esk2_3(X18,X19,X20),X18)|r2_hidden(esk2_3(X18,X19,X20),X19))|X20=k4_xboole_0(X18,X19))&((r2_hidden(esk2_3(X18,X19,X20),X18)|r2_hidden(esk2_3(X18,X19,X20),X20)|X20=k4_xboole_0(X18,X19))&(~r2_hidden(esk2_3(X18,X19,X20),X19)|r2_hidden(esk2_3(X18,X19,X20),X20)|X20=k4_xboole_0(X18,X19))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d5_xboole_0])])])])])])])).
% 0.12/0.38  fof(c_0_9, plain, ![X26]:k4_xboole_0(X26,k1_xboole_0)=X26, inference(variable_rename,[status(thm)],[t3_boole])).
% 0.12/0.38  fof(c_0_10, plain, ![X27]:k4_xboole_0(k1_xboole_0,X27)=k1_xboole_0, inference(variable_rename,[status(thm)],[t4_boole])).
% 0.12/0.38  cnf(c_0_11, plain, (~r2_hidden(X1,X2)|~r2_hidden(X1,X3)|X3!=k4_xboole_0(X4,X2)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.12/0.38  cnf(c_0_12, plain, (k4_xboole_0(X1,k1_xboole_0)=X1), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.12/0.38  fof(c_0_13, plain, ![X7, X8, X9, X10, X11]:((~r1_tarski(X7,X8)|(~r2_hidden(X9,X7)|r2_hidden(X9,X8)))&((r2_hidden(esk1_2(X10,X11),X10)|r1_tarski(X10,X11))&(~r2_hidden(esk1_2(X10,X11),X11)|r1_tarski(X10,X11)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).
% 0.12/0.38  cnf(c_0_14, plain, (k4_xboole_0(k1_xboole_0,X1)=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.12/0.38  fof(c_0_15, negated_conjecture, ~(![X1, X2, X3, X4]:(r1_tarski(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X3,X4))=>(k2_zfmisc_1(X1,X2)=k1_xboole_0|(r1_tarski(X1,X3)&r1_tarski(X2,X4))))), inference(assume_negation,[status(cth)],[t138_zfmisc_1])).
% 0.12/0.38  cnf(c_0_16, plain, (~r2_hidden(X1,k1_xboole_0)|~r2_hidden(X1,X2)), inference(er,[status(thm)],[inference(spm,[status(thm)],[c_0_11, c_0_12])])).
% 0.12/0.38  cnf(c_0_17, plain, (r2_hidden(esk1_2(X1,X2),X1)|r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.12/0.38  cnf(c_0_18, plain, (X1!=k1_xboole_0|~r2_hidden(X2,X1)|~r2_hidden(X2,X3)), inference(spm,[status(thm)],[c_0_11, c_0_14])).
% 0.12/0.38  fof(c_0_19, negated_conjecture, (r1_tarski(k2_zfmisc_1(esk9_0,esk10_0),k2_zfmisc_1(esk11_0,esk12_0))&(k2_zfmisc_1(esk9_0,esk10_0)!=k1_xboole_0&(~r1_tarski(esk9_0,esk11_0)|~r1_tarski(esk10_0,esk12_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_15])])])).
% 0.12/0.38  cnf(c_0_20, plain, (r1_tarski(k1_xboole_0,X1)|~r2_hidden(esk1_2(k1_xboole_0,X1),X2)), inference(spm,[status(thm)],[c_0_16, c_0_17])).
% 0.12/0.38  cnf(c_0_21, plain, (r1_tarski(X1,X2)|X1!=k1_xboole_0|~r2_hidden(esk1_2(X1,X2),X3)), inference(spm,[status(thm)],[c_0_18, c_0_17])).
% 0.12/0.38  fof(c_0_22, plain, ![X45, X46, X47, X48]:(((r2_hidden(X45,X47)|~r2_hidden(k4_tarski(X45,X46),k2_zfmisc_1(X47,X48)))&(r2_hidden(X46,X48)|~r2_hidden(k4_tarski(X45,X46),k2_zfmisc_1(X47,X48))))&(~r2_hidden(X45,X47)|~r2_hidden(X46,X48)|r2_hidden(k4_tarski(X45,X46),k2_zfmisc_1(X47,X48)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l54_zfmisc_1])])])).
% 0.12/0.38  cnf(c_0_23, plain, (r2_hidden(X3,X2)|~r1_tarski(X1,X2)|~r2_hidden(X3,X1)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.12/0.38  cnf(c_0_24, negated_conjecture, (r1_tarski(k2_zfmisc_1(esk9_0,esk10_0),k2_zfmisc_1(esk11_0,esk12_0))), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.12/0.38  cnf(c_0_25, plain, (r1_tarski(k1_xboole_0,X1)), inference(spm,[status(thm)],[c_0_20, c_0_17])).
% 0.12/0.38  fof(c_0_26, plain, ![X28, X29, X30, X31, X34, X35, X36, X37, X38, X39, X41, X42]:(((((r2_hidden(esk4_4(X28,X29,X30,X31),X28)|~r2_hidden(X31,X30)|X30!=k2_zfmisc_1(X28,X29))&(r2_hidden(esk5_4(X28,X29,X30,X31),X29)|~r2_hidden(X31,X30)|X30!=k2_zfmisc_1(X28,X29)))&(X31=k4_tarski(esk4_4(X28,X29,X30,X31),esk5_4(X28,X29,X30,X31))|~r2_hidden(X31,X30)|X30!=k2_zfmisc_1(X28,X29)))&(~r2_hidden(X35,X28)|~r2_hidden(X36,X29)|X34!=k4_tarski(X35,X36)|r2_hidden(X34,X30)|X30!=k2_zfmisc_1(X28,X29)))&((~r2_hidden(esk6_3(X37,X38,X39),X39)|(~r2_hidden(X41,X37)|~r2_hidden(X42,X38)|esk6_3(X37,X38,X39)!=k4_tarski(X41,X42))|X39=k2_zfmisc_1(X37,X38))&(((r2_hidden(esk7_3(X37,X38,X39),X37)|r2_hidden(esk6_3(X37,X38,X39),X39)|X39=k2_zfmisc_1(X37,X38))&(r2_hidden(esk8_3(X37,X38,X39),X38)|r2_hidden(esk6_3(X37,X38,X39),X39)|X39=k2_zfmisc_1(X37,X38)))&(esk6_3(X37,X38,X39)=k4_tarski(esk7_3(X37,X38,X39),esk8_3(X37,X38,X39))|r2_hidden(esk6_3(X37,X38,X39),X39)|X39=k2_zfmisc_1(X37,X38))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d2_zfmisc_1])])])])])])).
% 0.12/0.38  cnf(c_0_27, plain, (r1_tarski(X1,X2)|X1!=k1_xboole_0), inference(spm,[status(thm)],[c_0_21, c_0_17])).
% 0.12/0.38  cnf(c_0_28, plain, (r2_hidden(X1,X2)|~r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(X2,X4))), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.12/0.38  cnf(c_0_29, negated_conjecture, (r2_hidden(X1,k2_zfmisc_1(esk11_0,esk12_0))|~r2_hidden(X1,k2_zfmisc_1(esk9_0,esk10_0))), inference(spm,[status(thm)],[c_0_23, c_0_24])).
% 0.12/0.38  cnf(c_0_30, plain, (~r2_hidden(X1,k1_xboole_0)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_23, c_0_25]), c_0_16])).
% 0.12/0.38  cnf(c_0_31, plain, (r2_hidden(esk4_4(X1,X2,X3,X4),X1)|~r2_hidden(X4,X3)|X3!=k2_zfmisc_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.12/0.38  cnf(c_0_32, plain, (X1!=k1_xboole_0|~r2_hidden(X2,X1)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_23, c_0_27]), c_0_18])).
% 0.12/0.38  cnf(c_0_33, negated_conjecture, (r2_hidden(X1,esk11_0)|~r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(esk9_0,esk10_0))), inference(spm,[status(thm)],[c_0_28, c_0_29])).
% 0.12/0.38  cnf(c_0_34, plain, (r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(X2,X4))|~r2_hidden(X1,X2)|~r2_hidden(X3,X4)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.12/0.38  fof(c_0_35, plain, ![X22]:(X22=k1_xboole_0|r2_hidden(esk3_1(X22),X22)), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t7_xboole_0])])])])).
% 0.12/0.38  cnf(c_0_36, plain, (r2_hidden(esk5_4(X1,X2,X3,X4),X2)|~r2_hidden(X4,X3)|X3!=k2_zfmisc_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.12/0.38  cnf(c_0_37, plain, (X1!=k2_zfmisc_1(k1_xboole_0,X2)|~r2_hidden(X3,X1)), inference(spm,[status(thm)],[c_0_30, c_0_31])).
% 0.12/0.38  cnf(c_0_38, plain, (X1!=k2_zfmisc_1(X2,X3)|X2!=k1_xboole_0|~r2_hidden(X4,X1)), inference(spm,[status(thm)],[c_0_32, c_0_31])).
% 0.12/0.38  cnf(c_0_39, negated_conjecture, (r2_hidden(X1,esk11_0)|~r2_hidden(X2,esk10_0)|~r2_hidden(X1,esk9_0)), inference(spm,[status(thm)],[c_0_33, c_0_34])).
% 0.12/0.38  cnf(c_0_40, plain, (X1=k1_xboole_0|r2_hidden(esk3_1(X1),X1)), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.12/0.38  cnf(c_0_41, plain, (X1!=k2_zfmisc_1(X2,X3)|X3!=k1_xboole_0|~r2_hidden(X4,X1)), inference(spm,[status(thm)],[c_0_32, c_0_36])).
% 0.12/0.38  cnf(c_0_42, plain, (r2_hidden(X1,X2)|~r2_hidden(k4_tarski(X3,X1),k2_zfmisc_1(X4,X2))), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.12/0.38  cnf(c_0_43, plain, (~r2_hidden(X1,k2_zfmisc_1(k1_xboole_0,X2))), inference(er,[status(thm)],[c_0_37])).
% 0.12/0.38  cnf(c_0_44, plain, (X1!=k1_xboole_0|~r2_hidden(X2,k2_zfmisc_1(X1,X3))), inference(er,[status(thm)],[c_0_38])).
% 0.12/0.38  cnf(c_0_45, plain, (r1_tarski(X1,X2)|~r2_hidden(esk1_2(X1,X2),X2)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.12/0.38  cnf(c_0_46, negated_conjecture, (esk10_0=k1_xboole_0|r2_hidden(X1,esk11_0)|~r2_hidden(X1,esk9_0)), inference(spm,[status(thm)],[c_0_39, c_0_40])).
% 0.12/0.38  cnf(c_0_47, plain, (X1!=k1_xboole_0|~r2_hidden(X2,k2_zfmisc_1(X3,X1))), inference(er,[status(thm)],[c_0_41])).
% 0.12/0.38  cnf(c_0_48, negated_conjecture, (r2_hidden(X1,esk12_0)|~r2_hidden(k4_tarski(X2,X1),k2_zfmisc_1(esk9_0,esk10_0))), inference(spm,[status(thm)],[c_0_42, c_0_29])).
% 0.12/0.38  cnf(c_0_49, plain, (r2_hidden(esk7_3(X1,X2,X3),X1)|r2_hidden(esk6_3(X1,X2,X3),X3)|X3=k2_zfmisc_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.12/0.38  cnf(c_0_50, plain, (k2_zfmisc_1(k1_xboole_0,X1)=k1_xboole_0), inference(spm,[status(thm)],[c_0_43, c_0_40])).
% 0.12/0.38  cnf(c_0_51, negated_conjecture, (k2_zfmisc_1(esk9_0,esk10_0)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.12/0.38  cnf(c_0_52, plain, (k2_zfmisc_1(X1,X2)=k1_xboole_0|X1!=k1_xboole_0), inference(spm,[status(thm)],[c_0_44, c_0_40])).
% 0.12/0.38  cnf(c_0_53, negated_conjecture, (esk10_0=k1_xboole_0|r1_tarski(X1,esk11_0)|~r2_hidden(esk1_2(X1,esk11_0),esk9_0)), inference(spm,[status(thm)],[c_0_45, c_0_46])).
% 0.12/0.38  cnf(c_0_54, plain, (k2_zfmisc_1(X1,X2)=k1_xboole_0|X2!=k1_xboole_0), inference(spm,[status(thm)],[c_0_47, c_0_40])).
% 0.12/0.38  cnf(c_0_55, negated_conjecture, (r2_hidden(X1,esk12_0)|~r2_hidden(X1,esk10_0)|~r2_hidden(X2,esk9_0)), inference(spm,[status(thm)],[c_0_48, c_0_34])).
% 0.12/0.38  cnf(c_0_56, plain, (X1=k1_xboole_0|r2_hidden(esk6_3(k1_xboole_0,X2,X1),X1)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_30, c_0_49]), c_0_50])).
% 0.12/0.38  cnf(c_0_57, negated_conjecture, (esk9_0!=k1_xboole_0), inference(spm,[status(thm)],[c_0_51, c_0_52])).
% 0.12/0.38  cnf(c_0_58, negated_conjecture, (esk10_0=k1_xboole_0|r1_tarski(esk9_0,esk11_0)), inference(spm,[status(thm)],[c_0_53, c_0_17])).
% 0.12/0.38  cnf(c_0_59, negated_conjecture, (esk10_0!=k1_xboole_0), inference(spm,[status(thm)],[c_0_51, c_0_54])).
% 0.12/0.38  cnf(c_0_60, negated_conjecture, (r2_hidden(X1,esk12_0)|~r2_hidden(X1,esk10_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_55, c_0_56]), c_0_57])).
% 0.12/0.38  cnf(c_0_61, negated_conjecture, (~r1_tarski(esk9_0,esk11_0)|~r1_tarski(esk10_0,esk12_0)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.12/0.38  cnf(c_0_62, negated_conjecture, (r1_tarski(esk9_0,esk11_0)), inference(sr,[status(thm)],[c_0_58, c_0_59])).
% 0.12/0.38  cnf(c_0_63, negated_conjecture, (r1_tarski(X1,esk12_0)|~r2_hidden(esk1_2(X1,esk12_0),esk10_0)), inference(spm,[status(thm)],[c_0_45, c_0_60])).
% 0.12/0.38  cnf(c_0_64, negated_conjecture, (~r1_tarski(esk10_0,esk12_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_61, c_0_62])])).
% 0.12/0.38  cnf(c_0_65, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_63, c_0_17]), c_0_64]), ['proof']).
% 0.12/0.38  # SZS output end CNFRefutation
% 0.12/0.38  # Proof object total steps             : 66
% 0.12/0.38  # Proof object clause steps            : 49
% 0.12/0.38  # Proof object formula steps           : 17
% 0.12/0.38  # Proof object conjectures             : 21
% 0.12/0.38  # Proof object clause conjectures      : 18
% 0.12/0.38  # Proof object formula conjectures     : 3
% 0.12/0.38  # Proof object initial clauses used    : 16
% 0.12/0.38  # Proof object initial formulas used   : 8
% 0.12/0.38  # Proof object generating inferences   : 31
% 0.12/0.38  # Proof object simplifying inferences  : 9
% 0.12/0.38  # Training examples: 0 positive, 0 negative
% 0.12/0.38  # Parsed axioms                        : 9
% 0.12/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.12/0.38  # Initial clauses                      : 28
% 0.12/0.38  # Removed in clause preprocessing      : 0
% 0.12/0.38  # Initial clauses in saturation        : 28
% 0.12/0.38  # Processed clauses                    : 221
% 0.12/0.38  # ...of these trivial                  : 2
% 0.12/0.38  # ...subsumed                          : 92
% 0.12/0.38  # ...remaining for further processing  : 127
% 0.12/0.38  # Other redundant clauses eliminated   : 3
% 0.12/0.38  # Clauses deleted for lack of memory   : 0
% 0.12/0.38  # Backward-subsumed                    : 8
% 0.12/0.38  # Backward-rewritten                   : 9
% 0.12/0.38  # Generated clauses                    : 337
% 0.12/0.38  # ...of the previous two non-trivial   : 293
% 0.12/0.38  # Contextual simplify-reflections      : 2
% 0.12/0.38  # Paramodulations                      : 322
% 0.12/0.38  # Factorizations                       : 2
% 0.12/0.38  # Equation resolutions                 : 11
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
% 0.12/0.38  # Current number of processed clauses  : 80
% 0.12/0.38  #    Positive orientable unit clauses  : 11
% 0.12/0.38  #    Positive unorientable unit clauses: 0
% 0.12/0.38  #    Negative unit clauses             : 8
% 0.12/0.38  #    Non-unit-clauses                  : 61
% 0.12/0.38  # Current number of unprocessed clauses: 119
% 0.12/0.38  # ...number of literals in the above   : 415
% 0.12/0.38  # Current number of archived formulas  : 0
% 0.12/0.38  # Current number of archived clauses   : 47
% 0.12/0.38  # Clause-clause subsumption calls (NU) : 708
% 0.12/0.38  # Rec. Clause-clause subsumption calls : 481
% 0.12/0.38  # Non-unit clause-clause subsumptions  : 54
% 0.12/0.38  # Unit Clause-clause subsumption calls : 208
% 0.12/0.38  # Rewrite failures with RHS unbound    : 0
% 0.12/0.38  # BW rewrite match attempts            : 15
% 0.12/0.38  # BW rewrite match successes           : 5
% 0.12/0.38  # Condensation attempts                : 0
% 0.12/0.38  # Condensation successes               : 0
% 0.12/0.38  # Termbank termtop insertions          : 5183
% 0.12/0.38  
% 0.12/0.38  # -------------------------------------------------
% 0.12/0.38  # User time                : 0.035 s
% 0.12/0.38  # System time              : 0.006 s
% 0.12/0.38  # Total time               : 0.041 s
% 0.12/0.38  # Maximum resident set size: 1576 pages
%------------------------------------------------------------------------------
