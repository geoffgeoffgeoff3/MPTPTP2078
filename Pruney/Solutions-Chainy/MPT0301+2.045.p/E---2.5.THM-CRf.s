%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n017.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:43:30 EST 2020

% Result     : Theorem 0.20s
% Output     : CNFRefutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   67 ( 367 expanded)
%              Number of clauses        :   43 ( 165 expanded)
%              Number of leaves         :   12 ( 105 expanded)
%              Depth                    :   12
%              Number of atoms          :  178 (1087 expanded)
%              Number of equality atoms :   75 ( 378 expanded)
%              Maximal formula depth    :   17 (   4 average)
%              Maximal clause size      :   20 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t4_xboole_0,axiom,(
    ! [X1,X2] :
      ( ~ ( ~ r1_xboole_0(X1,X2)
          & ! [X3] : ~ r2_hidden(X3,k3_xboole_0(X1,X2)) )
      & ~ ( ? [X3] : r2_hidden(X3,k3_xboole_0(X1,X2))
          & r1_xboole_0(X1,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t4_xboole_0)).

fof(t2_boole,axiom,(
    ! [X1] : k3_xboole_0(X1,k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_boole)).

fof(t65_xboole_1,axiom,(
    ! [X1] : r1_xboole_0(X1,k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t65_xboole_1)).

fof(d4_tarski,axiom,(
    ! [X1,X2] :
      ( X2 = k3_tarski(X1)
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ? [X4] :
              ( r2_hidden(X3,X4)
              & r2_hidden(X4,X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d4_tarski)).

fof(t113_zfmisc_1,conjecture,(
    ! [X1,X2] :
      ( k2_zfmisc_1(X1,X2) = k1_xboole_0
    <=> ( X1 = k1_xboole_0
        | X2 = k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t113_zfmisc_1)).

fof(t2_zfmisc_1,axiom,(
    k3_tarski(k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_zfmisc_1)).

fof(l54_zfmisc_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,X4))
    <=> ( r2_hidden(X1,X3)
        & r2_hidden(X2,X4) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l54_zfmisc_1)).

fof(t3_xboole_0,axiom,(
    ! [X1,X2] :
      ( ~ ( ~ r1_xboole_0(X1,X2)
          & ! [X3] :
              ~ ( r2_hidden(X3,X1)
                & r2_hidden(X3,X2) ) )
      & ~ ( ? [X3] :
              ( r2_hidden(X3,X1)
              & r2_hidden(X3,X2) )
          & r1_xboole_0(X1,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_xboole_0)).

fof(t28_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
     => k3_xboole_0(X1,X2) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t28_xboole_1)).

fof(t2_xboole_1,axiom,(
    ! [X1] : r1_tarski(k1_xboole_0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_xboole_1)).

fof(t104_zfmisc_1,axiom,(
    ! [X1,X2,X3,X4,X5] :
      ~ ( r2_hidden(X1,k3_xboole_0(k2_zfmisc_1(X2,X3),k2_zfmisc_1(X4,X5)))
        & ! [X6,X7] :
            ~ ( X1 = k4_tarski(X6,X7)
              & r2_hidden(X6,k3_xboole_0(X2,X4))
              & r2_hidden(X7,k3_xboole_0(X3,X5)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t104_zfmisc_1)).

fof(t66_xboole_1,axiom,(
    ! [X1] :
      ( ~ ( ~ r1_xboole_0(X1,X1)
          & X1 = k1_xboole_0 )
      & ~ ( X1 != k1_xboole_0
          & r1_xboole_0(X1,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t66_xboole_1)).

fof(c_0_12,plain,(
    ! [X14,X15,X17,X18,X19] :
      ( ( r1_xboole_0(X14,X15)
        | r2_hidden(esk2_2(X14,X15),k3_xboole_0(X14,X15)) )
      & ( ~ r2_hidden(X19,k3_xboole_0(X17,X18))
        | ~ r1_xboole_0(X17,X18) ) ) ),
    inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t4_xboole_0])])])])])])).

fof(c_0_13,plain,(
    ! [X22] : k3_xboole_0(X22,k1_xboole_0) = k1_xboole_0 ),
    inference(variable_rename,[status(thm)],[t2_boole])).

fof(c_0_14,plain,(
    ! [X24] : r1_xboole_0(X24,k1_xboole_0) ),
    inference(variable_rename,[status(thm)],[t65_xboole_1])).

cnf(c_0_15,plain,
    ( ~ r2_hidden(X1,k3_xboole_0(X2,X3))
    | ~ r1_xboole_0(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_16,plain,
    ( k3_xboole_0(X1,k1_xboole_0) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_17,plain,
    ( r1_xboole_0(X1,k1_xboole_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

fof(c_0_18,plain,(
    ! [X26,X27,X28,X30,X31,X32,X33,X35] :
      ( ( r2_hidden(X28,esk3_3(X26,X27,X28))
        | ~ r2_hidden(X28,X27)
        | X27 != k3_tarski(X26) )
      & ( r2_hidden(esk3_3(X26,X27,X28),X26)
        | ~ r2_hidden(X28,X27)
        | X27 != k3_tarski(X26) )
      & ( ~ r2_hidden(X30,X31)
        | ~ r2_hidden(X31,X26)
        | r2_hidden(X30,X27)
        | X27 != k3_tarski(X26) )
      & ( ~ r2_hidden(esk4_2(X32,X33),X33)
        | ~ r2_hidden(esk4_2(X32,X33),X35)
        | ~ r2_hidden(X35,X32)
        | X33 = k3_tarski(X32) )
      & ( r2_hidden(esk4_2(X32,X33),esk5_2(X32,X33))
        | r2_hidden(esk4_2(X32,X33),X33)
        | X33 = k3_tarski(X32) )
      & ( r2_hidden(esk5_2(X32,X33),X32)
        | r2_hidden(esk4_2(X32,X33),X33)
        | X33 = k3_tarski(X32) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d4_tarski])])])])])])).

fof(c_0_19,negated_conjecture,(
    ~ ! [X1,X2] :
        ( k2_zfmisc_1(X1,X2) = k1_xboole_0
      <=> ( X1 = k1_xboole_0
          | X2 = k1_xboole_0 ) ) ),
    inference(assume_negation,[status(cth)],[t113_zfmisc_1])).

cnf(c_0_20,plain,
    ( ~ r2_hidden(X1,k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_15,c_0_16]),c_0_17])])).

cnf(c_0_21,plain,
    ( r2_hidden(esk3_3(X1,X2,X3),X1)
    | ~ r2_hidden(X3,X2)
    | X2 != k3_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_22,plain,
    ( k3_tarski(k1_xboole_0) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[t2_zfmisc_1])).

fof(c_0_23,plain,(
    ! [X37,X38,X39,X40] :
      ( ( r2_hidden(X37,X39)
        | ~ r2_hidden(k4_tarski(X37,X38),k2_zfmisc_1(X39,X40)) )
      & ( r2_hidden(X38,X40)
        | ~ r2_hidden(k4_tarski(X37,X38),k2_zfmisc_1(X39,X40)) )
      & ( ~ r2_hidden(X37,X39)
        | ~ r2_hidden(X38,X40)
        | r2_hidden(k4_tarski(X37,X38),k2_zfmisc_1(X39,X40)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l54_zfmisc_1])])])).

fof(c_0_24,negated_conjecture,
    ( ( esk8_0 != k1_xboole_0
      | k2_zfmisc_1(esk8_0,esk9_0) != k1_xboole_0 )
    & ( esk9_0 != k1_xboole_0
      | k2_zfmisc_1(esk8_0,esk9_0) != k1_xboole_0 )
    & ( k2_zfmisc_1(esk8_0,esk9_0) = k1_xboole_0
      | esk8_0 = k1_xboole_0
      | esk9_0 = k1_xboole_0 ) ),
    inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_19])])])])).

cnf(c_0_25,plain,
    ( X1 != k1_xboole_0
    | ~ r2_hidden(X2,X1) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_20,c_0_21]),c_0_22])).

fof(c_0_26,plain,(
    ! [X8,X9,X11,X12,X13] :
      ( ( r2_hidden(esk1_2(X8,X9),X8)
        | r1_xboole_0(X8,X9) )
      & ( r2_hidden(esk1_2(X8,X9),X9)
        | r1_xboole_0(X8,X9) )
      & ( ~ r2_hidden(X13,X11)
        | ~ r2_hidden(X13,X12)
        | ~ r1_xboole_0(X11,X12) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t3_xboole_0])])])])])])])).

fof(c_0_27,plain,(
    ! [X20,X21] :
      ( ~ r1_tarski(X20,X21)
      | k3_xboole_0(X20,X21) = X20 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t28_xboole_1])])).

fof(c_0_28,plain,(
    ! [X23] : r1_tarski(k1_xboole_0,X23) ),
    inference(variable_rename,[status(thm)],[t2_xboole_1])).

cnf(c_0_29,plain,
    ( r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(X2,X4))
    | ~ r2_hidden(X1,X2)
    | ~ r2_hidden(X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_30,negated_conjecture,
    ( k2_zfmisc_1(esk8_0,esk9_0) = k1_xboole_0
    | esk8_0 = k1_xboole_0
    | esk9_0 = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_31,plain,
    ( r2_hidden(esk5_2(X1,X2),X1)
    | r2_hidden(esk4_2(X1,X2),X2)
    | X2 = k3_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_32,plain,
    ( X1 != k3_tarski(X2)
    | X2 != k1_xboole_0
    | ~ r2_hidden(X3,X1) ),
    inference(spm,[status(thm)],[c_0_25,c_0_21])).

cnf(c_0_33,plain,
    ( r2_hidden(esk1_2(X1,X2),X2)
    | r1_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

fof(c_0_34,plain,(
    ! [X41,X42,X43,X44,X45] :
      ( ( X41 = k4_tarski(esk6_5(X41,X42,X43,X44,X45),esk7_5(X41,X42,X43,X44,X45))
        | ~ r2_hidden(X41,k3_xboole_0(k2_zfmisc_1(X42,X43),k2_zfmisc_1(X44,X45))) )
      & ( r2_hidden(esk6_5(X41,X42,X43,X44,X45),k3_xboole_0(X42,X44))
        | ~ r2_hidden(X41,k3_xboole_0(k2_zfmisc_1(X42,X43),k2_zfmisc_1(X44,X45))) )
      & ( r2_hidden(esk7_5(X41,X42,X43,X44,X45),k3_xboole_0(X43,X45))
        | ~ r2_hidden(X41,k3_xboole_0(k2_zfmisc_1(X42,X43),k2_zfmisc_1(X44,X45))) ) ) ),
    inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t104_zfmisc_1])])])])).

cnf(c_0_35,plain,
    ( k3_xboole_0(X1,X2) = X1
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_36,plain,
    ( r1_tarski(k1_xboole_0,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_37,negated_conjecture,
    ( ~ r2_hidden(X1,esk9_0)
    | ~ r2_hidden(X2,esk8_0) ),
    inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_29,c_0_30]),c_0_20]),c_0_25]),c_0_25])).

cnf(c_0_38,plain,
    ( X1 = k3_tarski(X2)
    | r2_hidden(esk4_2(X2,X1),X1)
    | X2 != k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_25,c_0_31])).

fof(c_0_39,plain,(
    ! [X25] :
      ( ( r1_xboole_0(X25,X25)
        | X25 != k1_xboole_0 )
      & ( X25 = k1_xboole_0
        | ~ r1_xboole_0(X25,X25) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t66_xboole_1])])])).

cnf(c_0_40,plain,
    ( r1_xboole_0(X1,X2)
    | X2 != k3_tarski(X3)
    | X3 != k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_32,c_0_33])).

cnf(c_0_41,plain,
    ( X1 = k1_xboole_0
    | r2_hidden(esk4_2(k1_xboole_0,X1),X1) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_20,c_0_31]),c_0_22])).

cnf(c_0_42,plain,
    ( r2_hidden(esk7_5(X1,X2,X3,X4,X5),k3_xboole_0(X3,X5))
    | ~ r2_hidden(X1,k3_xboole_0(k2_zfmisc_1(X2,X3),k2_zfmisc_1(X4,X5))) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_43,plain,
    ( k3_xboole_0(k1_xboole_0,X1) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_35,c_0_36])).

cnf(c_0_44,negated_conjecture,
    ( esk9_0 = k3_tarski(X1)
    | X1 != k1_xboole_0
    | ~ r2_hidden(X2,esk8_0) ),
    inference(spm,[status(thm)],[c_0_37,c_0_38])).

cnf(c_0_45,plain,
    ( X1 = k1_xboole_0
    | ~ r1_xboole_0(X1,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_46,plain,
    ( r1_xboole_0(X1,k3_tarski(X2))
    | X2 != k1_xboole_0 ),
    inference(er,[status(thm)],[c_0_40])).

cnf(c_0_47,negated_conjecture,
    ( esk9_0 = k1_xboole_0
    | ~ r2_hidden(X1,esk8_0) ),
    inference(spm,[status(thm)],[c_0_37,c_0_41])).

cnf(c_0_48,plain,
    ( ~ r2_hidden(X1,k3_xboole_0(k2_zfmisc_1(X2,k1_xboole_0),k2_zfmisc_1(X3,X4))) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_42,c_0_43]),c_0_20])).

cnf(c_0_49,plain,
    ( r1_xboole_0(X1,X2)
    | r2_hidden(esk2_2(X1,X2),k3_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_50,plain,
    ( r2_hidden(esk6_5(X1,X2,X3,X4,X5),k3_xboole_0(X2,X4))
    | ~ r2_hidden(X1,k3_xboole_0(k2_zfmisc_1(X2,X3),k2_zfmisc_1(X4,X5))) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_51,negated_conjecture,
    ( esk9_0 != k1_xboole_0
    | k2_zfmisc_1(esk8_0,esk9_0) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_52,negated_conjecture,
    ( esk9_0 = k3_tarski(X1)
    | esk8_0 = k1_xboole_0
    | X1 != k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_44,c_0_41])).

cnf(c_0_53,plain,
    ( k3_tarski(X1) = k1_xboole_0
    | X1 != k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_45,c_0_46])).

cnf(c_0_54,negated_conjecture,
    ( esk8_0 = k1_xboole_0
    | esk9_0 = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_47,c_0_41])).

cnf(c_0_55,plain,
    ( r1_xboole_0(k2_zfmisc_1(X1,k1_xboole_0),k2_zfmisc_1(X2,X3)) ),
    inference(spm,[status(thm)],[c_0_48,c_0_49])).

cnf(c_0_56,plain,
    ( ~ r2_hidden(X1,k3_xboole_0(k2_zfmisc_1(k1_xboole_0,X2),k2_zfmisc_1(X3,X4))) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_50,c_0_43]),c_0_20])).

cnf(c_0_57,negated_conjecture,
    ( esk8_0 = k1_xboole_0
    | k2_zfmisc_1(esk8_0,k3_tarski(X1)) != k1_xboole_0
    | X1 != k1_xboole_0 ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_51,c_0_52]),c_0_53])).

cnf(c_0_58,negated_conjecture,
    ( esk8_0 != k1_xboole_0
    | k2_zfmisc_1(esk8_0,esk9_0) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_59,negated_conjecture,
    ( esk8_0 = k1_xboole_0
    | k2_zfmisc_1(esk8_0,k1_xboole_0) != k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_51,c_0_54])).

cnf(c_0_60,plain,
    ( k2_zfmisc_1(X1,k1_xboole_0) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_45,c_0_55])).

cnf(c_0_61,plain,
    ( r1_xboole_0(k2_zfmisc_1(k1_xboole_0,X1),k2_zfmisc_1(X2,X3)) ),
    inference(spm,[status(thm)],[c_0_56,c_0_49])).

cnf(c_0_62,negated_conjecture,
    ( k2_zfmisc_1(esk8_0,esk9_0) != k1_xboole_0
    | X1 != k1_xboole_0 ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_57,c_0_52]),c_0_58])).

cnf(c_0_63,negated_conjecture,
    ( esk8_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_59,c_0_60])])).

cnf(c_0_64,plain,
    ( k2_zfmisc_1(k1_xboole_0,X1) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_45,c_0_61])).

cnf(c_0_65,negated_conjecture,
    ( X1 != k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_62,c_0_63]),c_0_64])])).

cnf(c_0_66,plain,
    ( $false ),
    inference(sr,[status(thm)],[c_0_22,c_0_65]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.34  % Computer   : n017.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 16:35:01 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.35  # Version: 2.5pre002
% 0.14/0.35  # No SInE strategy applied
% 0.14/0.35  # Trying AutoSched0 for 299 seconds
% 0.20/0.45  # AutoSched0-Mode selected heuristic G_E___208_B02_F1_AE_CS_SP_PS_S0Y
% 0.20/0.45  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.20/0.45  #
% 0.20/0.45  # Preprocessing time       : 0.027 s
% 0.20/0.45  # Presaturation interreduction done
% 0.20/0.45  
% 0.20/0.45  # Proof found!
% 0.20/0.45  # SZS status Theorem
% 0.20/0.45  # SZS output start CNFRefutation
% 0.20/0.45  fof(t4_xboole_0, axiom, ![X1, X2]:(~((~(r1_xboole_0(X1,X2))&![X3]:~(r2_hidden(X3,k3_xboole_0(X1,X2)))))&~((?[X3]:r2_hidden(X3,k3_xboole_0(X1,X2))&r1_xboole_0(X1,X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t4_xboole_0)).
% 0.20/0.45  fof(t2_boole, axiom, ![X1]:k3_xboole_0(X1,k1_xboole_0)=k1_xboole_0, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t2_boole)).
% 0.20/0.45  fof(t65_xboole_1, axiom, ![X1]:r1_xboole_0(X1,k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t65_xboole_1)).
% 0.20/0.45  fof(d4_tarski, axiom, ![X1, X2]:(X2=k3_tarski(X1)<=>![X3]:(r2_hidden(X3,X2)<=>?[X4]:(r2_hidden(X3,X4)&r2_hidden(X4,X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d4_tarski)).
% 0.20/0.45  fof(t113_zfmisc_1, conjecture, ![X1, X2]:(k2_zfmisc_1(X1,X2)=k1_xboole_0<=>(X1=k1_xboole_0|X2=k1_xboole_0)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t113_zfmisc_1)).
% 0.20/0.45  fof(t2_zfmisc_1, axiom, k3_tarski(k1_xboole_0)=k1_xboole_0, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t2_zfmisc_1)).
% 0.20/0.45  fof(l54_zfmisc_1, axiom, ![X1, X2, X3, X4]:(r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,X4))<=>(r2_hidden(X1,X3)&r2_hidden(X2,X4))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l54_zfmisc_1)).
% 0.20/0.45  fof(t3_xboole_0, axiom, ![X1, X2]:(~((~(r1_xboole_0(X1,X2))&![X3]:~((r2_hidden(X3,X1)&r2_hidden(X3,X2)))))&~((?[X3]:(r2_hidden(X3,X1)&r2_hidden(X3,X2))&r1_xboole_0(X1,X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_xboole_0)).
% 0.20/0.45  fof(t28_xboole_1, axiom, ![X1, X2]:(r1_tarski(X1,X2)=>k3_xboole_0(X1,X2)=X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t28_xboole_1)).
% 0.20/0.45  fof(t2_xboole_1, axiom, ![X1]:r1_tarski(k1_xboole_0,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t2_xboole_1)).
% 0.20/0.45  fof(t104_zfmisc_1, axiom, ![X1, X2, X3, X4, X5]:~((r2_hidden(X1,k3_xboole_0(k2_zfmisc_1(X2,X3),k2_zfmisc_1(X4,X5)))&![X6, X7]:~(((X1=k4_tarski(X6,X7)&r2_hidden(X6,k3_xboole_0(X2,X4)))&r2_hidden(X7,k3_xboole_0(X3,X5)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t104_zfmisc_1)).
% 0.20/0.45  fof(t66_xboole_1, axiom, ![X1]:(~((~(r1_xboole_0(X1,X1))&X1=k1_xboole_0))&~((X1!=k1_xboole_0&r1_xboole_0(X1,X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t66_xboole_1)).
% 0.20/0.45  fof(c_0_12, plain, ![X14, X15, X17, X18, X19]:((r1_xboole_0(X14,X15)|r2_hidden(esk2_2(X14,X15),k3_xboole_0(X14,X15)))&(~r2_hidden(X19,k3_xboole_0(X17,X18))|~r1_xboole_0(X17,X18))), inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t4_xboole_0])])])])])])).
% 0.20/0.45  fof(c_0_13, plain, ![X22]:k3_xboole_0(X22,k1_xboole_0)=k1_xboole_0, inference(variable_rename,[status(thm)],[t2_boole])).
% 0.20/0.45  fof(c_0_14, plain, ![X24]:r1_xboole_0(X24,k1_xboole_0), inference(variable_rename,[status(thm)],[t65_xboole_1])).
% 0.20/0.45  cnf(c_0_15, plain, (~r2_hidden(X1,k3_xboole_0(X2,X3))|~r1_xboole_0(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.20/0.45  cnf(c_0_16, plain, (k3_xboole_0(X1,k1_xboole_0)=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.20/0.45  cnf(c_0_17, plain, (r1_xboole_0(X1,k1_xboole_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.20/0.45  fof(c_0_18, plain, ![X26, X27, X28, X30, X31, X32, X33, X35]:((((r2_hidden(X28,esk3_3(X26,X27,X28))|~r2_hidden(X28,X27)|X27!=k3_tarski(X26))&(r2_hidden(esk3_3(X26,X27,X28),X26)|~r2_hidden(X28,X27)|X27!=k3_tarski(X26)))&(~r2_hidden(X30,X31)|~r2_hidden(X31,X26)|r2_hidden(X30,X27)|X27!=k3_tarski(X26)))&((~r2_hidden(esk4_2(X32,X33),X33)|(~r2_hidden(esk4_2(X32,X33),X35)|~r2_hidden(X35,X32))|X33=k3_tarski(X32))&((r2_hidden(esk4_2(X32,X33),esk5_2(X32,X33))|r2_hidden(esk4_2(X32,X33),X33)|X33=k3_tarski(X32))&(r2_hidden(esk5_2(X32,X33),X32)|r2_hidden(esk4_2(X32,X33),X33)|X33=k3_tarski(X32))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d4_tarski])])])])])])).
% 0.20/0.45  fof(c_0_19, negated_conjecture, ~(![X1, X2]:(k2_zfmisc_1(X1,X2)=k1_xboole_0<=>(X1=k1_xboole_0|X2=k1_xboole_0))), inference(assume_negation,[status(cth)],[t113_zfmisc_1])).
% 0.20/0.45  cnf(c_0_20, plain, (~r2_hidden(X1,k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_15, c_0_16]), c_0_17])])).
% 0.20/0.45  cnf(c_0_21, plain, (r2_hidden(esk3_3(X1,X2,X3),X1)|~r2_hidden(X3,X2)|X2!=k3_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.20/0.45  cnf(c_0_22, plain, (k3_tarski(k1_xboole_0)=k1_xboole_0), inference(split_conjunct,[status(thm)],[t2_zfmisc_1])).
% 0.20/0.45  fof(c_0_23, plain, ![X37, X38, X39, X40]:(((r2_hidden(X37,X39)|~r2_hidden(k4_tarski(X37,X38),k2_zfmisc_1(X39,X40)))&(r2_hidden(X38,X40)|~r2_hidden(k4_tarski(X37,X38),k2_zfmisc_1(X39,X40))))&(~r2_hidden(X37,X39)|~r2_hidden(X38,X40)|r2_hidden(k4_tarski(X37,X38),k2_zfmisc_1(X39,X40)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l54_zfmisc_1])])])).
% 0.20/0.45  fof(c_0_24, negated_conjecture, (((esk8_0!=k1_xboole_0|k2_zfmisc_1(esk8_0,esk9_0)!=k1_xboole_0)&(esk9_0!=k1_xboole_0|k2_zfmisc_1(esk8_0,esk9_0)!=k1_xboole_0))&(k2_zfmisc_1(esk8_0,esk9_0)=k1_xboole_0|(esk8_0=k1_xboole_0|esk9_0=k1_xboole_0))), inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_19])])])])).
% 0.20/0.45  cnf(c_0_25, plain, (X1!=k1_xboole_0|~r2_hidden(X2,X1)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_20, c_0_21]), c_0_22])).
% 0.20/0.45  fof(c_0_26, plain, ![X8, X9, X11, X12, X13]:(((r2_hidden(esk1_2(X8,X9),X8)|r1_xboole_0(X8,X9))&(r2_hidden(esk1_2(X8,X9),X9)|r1_xboole_0(X8,X9)))&(~r2_hidden(X13,X11)|~r2_hidden(X13,X12)|~r1_xboole_0(X11,X12))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t3_xboole_0])])])])])])])).
% 0.20/0.45  fof(c_0_27, plain, ![X20, X21]:(~r1_tarski(X20,X21)|k3_xboole_0(X20,X21)=X20), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t28_xboole_1])])).
% 0.20/0.45  fof(c_0_28, plain, ![X23]:r1_tarski(k1_xboole_0,X23), inference(variable_rename,[status(thm)],[t2_xboole_1])).
% 0.20/0.45  cnf(c_0_29, plain, (r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(X2,X4))|~r2_hidden(X1,X2)|~r2_hidden(X3,X4)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.20/0.45  cnf(c_0_30, negated_conjecture, (k2_zfmisc_1(esk8_0,esk9_0)=k1_xboole_0|esk8_0=k1_xboole_0|esk9_0=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.20/0.45  cnf(c_0_31, plain, (r2_hidden(esk5_2(X1,X2),X1)|r2_hidden(esk4_2(X1,X2),X2)|X2=k3_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.20/0.45  cnf(c_0_32, plain, (X1!=k3_tarski(X2)|X2!=k1_xboole_0|~r2_hidden(X3,X1)), inference(spm,[status(thm)],[c_0_25, c_0_21])).
% 0.20/0.45  cnf(c_0_33, plain, (r2_hidden(esk1_2(X1,X2),X2)|r1_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.20/0.45  fof(c_0_34, plain, ![X41, X42, X43, X44, X45]:(((X41=k4_tarski(esk6_5(X41,X42,X43,X44,X45),esk7_5(X41,X42,X43,X44,X45))|~r2_hidden(X41,k3_xboole_0(k2_zfmisc_1(X42,X43),k2_zfmisc_1(X44,X45))))&(r2_hidden(esk6_5(X41,X42,X43,X44,X45),k3_xboole_0(X42,X44))|~r2_hidden(X41,k3_xboole_0(k2_zfmisc_1(X42,X43),k2_zfmisc_1(X44,X45)))))&(r2_hidden(esk7_5(X41,X42,X43,X44,X45),k3_xboole_0(X43,X45))|~r2_hidden(X41,k3_xboole_0(k2_zfmisc_1(X42,X43),k2_zfmisc_1(X44,X45))))), inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t104_zfmisc_1])])])])).
% 0.20/0.45  cnf(c_0_35, plain, (k3_xboole_0(X1,X2)=X1|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.20/0.45  cnf(c_0_36, plain, (r1_tarski(k1_xboole_0,X1)), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.20/0.45  cnf(c_0_37, negated_conjecture, (~r2_hidden(X1,esk9_0)|~r2_hidden(X2,esk8_0)), inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_29, c_0_30]), c_0_20]), c_0_25]), c_0_25])).
% 0.20/0.45  cnf(c_0_38, plain, (X1=k3_tarski(X2)|r2_hidden(esk4_2(X2,X1),X1)|X2!=k1_xboole_0), inference(spm,[status(thm)],[c_0_25, c_0_31])).
% 0.20/0.45  fof(c_0_39, plain, ![X25]:((r1_xboole_0(X25,X25)|X25!=k1_xboole_0)&(X25=k1_xboole_0|~r1_xboole_0(X25,X25))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t66_xboole_1])])])).
% 0.20/0.45  cnf(c_0_40, plain, (r1_xboole_0(X1,X2)|X2!=k3_tarski(X3)|X3!=k1_xboole_0), inference(spm,[status(thm)],[c_0_32, c_0_33])).
% 0.20/0.45  cnf(c_0_41, plain, (X1=k1_xboole_0|r2_hidden(esk4_2(k1_xboole_0,X1),X1)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_20, c_0_31]), c_0_22])).
% 0.20/0.45  cnf(c_0_42, plain, (r2_hidden(esk7_5(X1,X2,X3,X4,X5),k3_xboole_0(X3,X5))|~r2_hidden(X1,k3_xboole_0(k2_zfmisc_1(X2,X3),k2_zfmisc_1(X4,X5)))), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.20/0.45  cnf(c_0_43, plain, (k3_xboole_0(k1_xboole_0,X1)=k1_xboole_0), inference(spm,[status(thm)],[c_0_35, c_0_36])).
% 0.20/0.45  cnf(c_0_44, negated_conjecture, (esk9_0=k3_tarski(X1)|X1!=k1_xboole_0|~r2_hidden(X2,esk8_0)), inference(spm,[status(thm)],[c_0_37, c_0_38])).
% 0.20/0.45  cnf(c_0_45, plain, (X1=k1_xboole_0|~r1_xboole_0(X1,X1)), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.20/0.45  cnf(c_0_46, plain, (r1_xboole_0(X1,k3_tarski(X2))|X2!=k1_xboole_0), inference(er,[status(thm)],[c_0_40])).
% 0.20/0.45  cnf(c_0_47, negated_conjecture, (esk9_0=k1_xboole_0|~r2_hidden(X1,esk8_0)), inference(spm,[status(thm)],[c_0_37, c_0_41])).
% 0.20/0.45  cnf(c_0_48, plain, (~r2_hidden(X1,k3_xboole_0(k2_zfmisc_1(X2,k1_xboole_0),k2_zfmisc_1(X3,X4)))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_42, c_0_43]), c_0_20])).
% 0.20/0.45  cnf(c_0_49, plain, (r1_xboole_0(X1,X2)|r2_hidden(esk2_2(X1,X2),k3_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.20/0.45  cnf(c_0_50, plain, (r2_hidden(esk6_5(X1,X2,X3,X4,X5),k3_xboole_0(X2,X4))|~r2_hidden(X1,k3_xboole_0(k2_zfmisc_1(X2,X3),k2_zfmisc_1(X4,X5)))), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.20/0.45  cnf(c_0_51, negated_conjecture, (esk9_0!=k1_xboole_0|k2_zfmisc_1(esk8_0,esk9_0)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.20/0.45  cnf(c_0_52, negated_conjecture, (esk9_0=k3_tarski(X1)|esk8_0=k1_xboole_0|X1!=k1_xboole_0), inference(spm,[status(thm)],[c_0_44, c_0_41])).
% 0.20/0.45  cnf(c_0_53, plain, (k3_tarski(X1)=k1_xboole_0|X1!=k1_xboole_0), inference(spm,[status(thm)],[c_0_45, c_0_46])).
% 0.20/0.45  cnf(c_0_54, negated_conjecture, (esk8_0=k1_xboole_0|esk9_0=k1_xboole_0), inference(spm,[status(thm)],[c_0_47, c_0_41])).
% 0.20/0.45  cnf(c_0_55, plain, (r1_xboole_0(k2_zfmisc_1(X1,k1_xboole_0),k2_zfmisc_1(X2,X3))), inference(spm,[status(thm)],[c_0_48, c_0_49])).
% 0.20/0.45  cnf(c_0_56, plain, (~r2_hidden(X1,k3_xboole_0(k2_zfmisc_1(k1_xboole_0,X2),k2_zfmisc_1(X3,X4)))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_50, c_0_43]), c_0_20])).
% 0.20/0.45  cnf(c_0_57, negated_conjecture, (esk8_0=k1_xboole_0|k2_zfmisc_1(esk8_0,k3_tarski(X1))!=k1_xboole_0|X1!=k1_xboole_0), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_51, c_0_52]), c_0_53])).
% 0.20/0.45  cnf(c_0_58, negated_conjecture, (esk8_0!=k1_xboole_0|k2_zfmisc_1(esk8_0,esk9_0)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.20/0.45  cnf(c_0_59, negated_conjecture, (esk8_0=k1_xboole_0|k2_zfmisc_1(esk8_0,k1_xboole_0)!=k1_xboole_0), inference(spm,[status(thm)],[c_0_51, c_0_54])).
% 0.20/0.45  cnf(c_0_60, plain, (k2_zfmisc_1(X1,k1_xboole_0)=k1_xboole_0), inference(spm,[status(thm)],[c_0_45, c_0_55])).
% 0.20/0.45  cnf(c_0_61, plain, (r1_xboole_0(k2_zfmisc_1(k1_xboole_0,X1),k2_zfmisc_1(X2,X3))), inference(spm,[status(thm)],[c_0_56, c_0_49])).
% 0.20/0.45  cnf(c_0_62, negated_conjecture, (k2_zfmisc_1(esk8_0,esk9_0)!=k1_xboole_0|X1!=k1_xboole_0), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_57, c_0_52]), c_0_58])).
% 0.20/0.45  cnf(c_0_63, negated_conjecture, (esk8_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_59, c_0_60])])).
% 0.20/0.45  cnf(c_0_64, plain, (k2_zfmisc_1(k1_xboole_0,X1)=k1_xboole_0), inference(spm,[status(thm)],[c_0_45, c_0_61])).
% 0.20/0.45  cnf(c_0_65, negated_conjecture, (X1!=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_62, c_0_63]), c_0_64])])).
% 0.20/0.45  cnf(c_0_66, plain, ($false), inference(sr,[status(thm)],[c_0_22, c_0_65]), ['proof']).
% 0.20/0.45  # SZS output end CNFRefutation
% 0.20/0.45  # Proof object total steps             : 67
% 0.20/0.45  # Proof object clause steps            : 43
% 0.20/0.45  # Proof object formula steps           : 24
% 0.20/0.45  # Proof object conjectures             : 16
% 0.20/0.45  # Proof object clause conjectures      : 13
% 0.20/0.45  # Proof object formula conjectures     : 3
% 0.20/0.45  # Proof object initial clauses used    : 17
% 0.20/0.45  # Proof object initial formulas used   : 12
% 0.20/0.45  # Proof object generating inferences   : 23
% 0.20/0.45  # Proof object simplifying inferences  : 17
% 0.20/0.45  # Training examples: 0 positive, 0 negative
% 0.20/0.45  # Parsed axioms                        : 12
% 0.20/0.45  # Removed by relevancy pruning/SinE    : 0
% 0.20/0.45  # Initial clauses                      : 27
% 0.20/0.45  # Removed in clause preprocessing      : 0
% 0.20/0.45  # Initial clauses in saturation        : 27
% 0.20/0.45  # Processed clauses                    : 1223
% 0.20/0.45  # ...of these trivial                  : 17
% 0.20/0.45  # ...subsumed                          : 865
% 0.20/0.45  # ...remaining for further processing  : 341
% 0.20/0.45  # Other redundant clauses eliminated   : 0
% 0.20/0.45  # Clauses deleted for lack of memory   : 0
% 0.20/0.45  # Backward-subsumed                    : 8
% 0.20/0.45  # Backward-rewritten                   : 142
% 0.20/0.45  # Generated clauses                    : 5674
% 0.20/0.45  # ...of the previous two non-trivial   : 3944
% 0.20/0.45  # Contextual simplify-reflections      : 7
% 0.20/0.45  # Paramodulations                      : 5617
% 0.20/0.45  # Factorizations                       : 4
% 0.20/0.45  # Equation resolutions                 : 46
% 0.20/0.45  # Propositional unsat checks           : 0
% 0.20/0.45  #    Propositional check models        : 0
% 0.20/0.45  #    Propositional check unsatisfiable : 0
% 0.20/0.45  #    Propositional clauses             : 0
% 0.20/0.45  #    Propositional clauses after purity: 0
% 0.20/0.45  #    Propositional unsat core size     : 0
% 0.20/0.45  #    Propositional preprocessing time  : 0.000
% 0.20/0.45  #    Propositional encoding time       : 0.000
% 0.20/0.45  #    Propositional solver time         : 0.000
% 0.20/0.45  #    Success case prop preproc time    : 0.000
% 0.20/0.45  #    Success case prop encoding time   : 0.000
% 0.20/0.45  #    Success case prop solver time     : 0.000
% 0.20/0.45  # Current number of processed clauses  : 157
% 0.20/0.45  #    Positive orientable unit clauses  : 3
% 0.20/0.45  #    Positive unorientable unit clauses: 0
% 0.20/0.45  #    Negative unit clauses             : 2
% 0.20/0.45  #    Non-unit-clauses                  : 152
% 0.20/0.45  # Current number of unprocessed clauses: 2757
% 0.20/0.45  # ...number of literals in the above   : 9312
% 0.20/0.45  # Current number of archived formulas  : 0
% 0.20/0.45  # Current number of archived clauses   : 184
% 0.20/0.45  # Clause-clause subsumption calls (NU) : 5221
% 0.20/0.45  # Rec. Clause-clause subsumption calls : 4111
% 0.20/0.45  # Non-unit clause-clause subsumptions  : 535
% 0.20/0.45  # Unit Clause-clause subsumption calls : 307
% 0.20/0.45  # Rewrite failures with RHS unbound    : 0
% 0.20/0.45  # BW rewrite match attempts            : 13
% 0.20/0.45  # BW rewrite match successes           : 13
% 0.20/0.45  # Condensation attempts                : 0
% 0.20/0.45  # Condensation successes               : 0
% 0.20/0.45  # Termbank termtop insertions          : 47571
% 0.20/0.45  
% 0.20/0.45  # -------------------------------------------------
% 0.20/0.45  # User time                : 0.105 s
% 0.20/0.45  # System time              : 0.005 s
% 0.20/0.45  # Total time               : 0.110 s
% 0.20/0.45  # Maximum resident set size: 1580 pages
%------------------------------------------------------------------------------
