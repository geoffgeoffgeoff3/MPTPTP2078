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
% DateTime   : Thu Dec  3 11:00:34 EST 2020

% Result     : Theorem 0.21s
% Output     : CNFRefutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   83 ( 397 expanded)
%              Number of clauses        :   64 ( 186 expanded)
%              Number of leaves         :    9 (  97 expanded)
%              Depth                    :   21
%              Number of atoms          :  261 (1314 expanded)
%              Number of equality atoms :  127 ( 316 expanded)
%              Maximal formula depth    :   20 (   4 average)
%              Maximal clause size      :   24 (   3 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t87_mcart_1,conjecture,(
    ! [X1,X2,X3,X4,X5] :
      ( m1_subset_1(X5,k1_zfmisc_1(X1))
     => ! [X6] :
          ( m1_subset_1(X6,k1_zfmisc_1(X2))
         => ! [X7] :
              ( m1_subset_1(X7,k1_zfmisc_1(X3))
             => ! [X8] :
                  ( m1_subset_1(X8,k1_zfmisc_1(X4))
                 => ! [X9] :
                      ( m1_subset_1(X9,k4_zfmisc_1(X1,X2,X3,X4))
                     => ( r2_hidden(X9,k4_zfmisc_1(X5,X6,X7,X8))
                       => ( r2_hidden(k8_mcart_1(X1,X2,X3,X4,X9),X5)
                          & r2_hidden(k9_mcart_1(X1,X2,X3,X4,X9),X6)
                          & r2_hidden(k10_mcart_1(X1,X2,X3,X4,X9),X7)
                          & r2_hidden(k11_mcart_1(X1,X2,X3,X4,X9),X8) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t87_mcart_1)).

fof(d4_zfmisc_1,axiom,(
    ! [X1,X2,X3,X4] : k4_zfmisc_1(X1,X2,X3,X4) = k2_zfmisc_1(k3_zfmisc_1(X1,X2,X3),X4) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d4_zfmisc_1)).

fof(d3_zfmisc_1,axiom,(
    ! [X1,X2,X3] : k3_zfmisc_1(X1,X2,X3) = k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_zfmisc_1)).

fof(t10_mcart_1,axiom,(
    ! [X1,X2,X3] :
      ( r2_hidden(X1,k2_zfmisc_1(X2,X3))
     => ( r2_hidden(k1_mcart_1(X1),X2)
        & r2_hidden(k2_mcart_1(X1),X3) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t10_mcart_1)).

fof(t61_mcart_1,axiom,(
    ! [X1,X2,X3,X4] :
      ~ ( X1 != k1_xboole_0
        & X2 != k1_xboole_0
        & X3 != k1_xboole_0
        & X4 != k1_xboole_0
        & ~ ! [X5] :
              ( m1_subset_1(X5,k4_zfmisc_1(X1,X2,X3,X4))
             => ( k8_mcart_1(X1,X2,X3,X4,X5) = k1_mcart_1(k1_mcart_1(k1_mcart_1(X5)))
                & k9_mcart_1(X1,X2,X3,X4,X5) = k2_mcart_1(k1_mcart_1(k1_mcart_1(X5)))
                & k10_mcart_1(X1,X2,X3,X4,X5) = k2_mcart_1(k1_mcart_1(X5))
                & k11_mcart_1(X1,X2,X3,X4,X5) = k2_mcart_1(X5) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t61_mcart_1)).

fof(t3_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X2))
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_subset)).

fof(t4_subset_1,axiom,(
    ! [X1] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t4_subset_1)).

fof(t7_ordinal1,axiom,(
    ! [X1,X2] :
      ~ ( r2_hidden(X1,X2)
        & r1_tarski(X2,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_ordinal1)).

fof(d3_tarski,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
    <=> ! [X3] :
          ( r2_hidden(X3,X1)
         => r2_hidden(X3,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_tarski)).

fof(c_0_9,negated_conjecture,(
    ~ ! [X1,X2,X3,X4,X5] :
        ( m1_subset_1(X5,k1_zfmisc_1(X1))
       => ! [X6] :
            ( m1_subset_1(X6,k1_zfmisc_1(X2))
           => ! [X7] :
                ( m1_subset_1(X7,k1_zfmisc_1(X3))
               => ! [X8] :
                    ( m1_subset_1(X8,k1_zfmisc_1(X4))
                   => ! [X9] :
                        ( m1_subset_1(X9,k4_zfmisc_1(X1,X2,X3,X4))
                       => ( r2_hidden(X9,k4_zfmisc_1(X5,X6,X7,X8))
                         => ( r2_hidden(k8_mcart_1(X1,X2,X3,X4,X9),X5)
                            & r2_hidden(k9_mcart_1(X1,X2,X3,X4,X9),X6)
                            & r2_hidden(k10_mcart_1(X1,X2,X3,X4,X9),X7)
                            & r2_hidden(k11_mcart_1(X1,X2,X3,X4,X9),X8) ) ) ) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t87_mcart_1])).

fof(c_0_10,plain,(
    ! [X27,X28,X29,X30] : k4_zfmisc_1(X27,X28,X29,X30) = k2_zfmisc_1(k3_zfmisc_1(X27,X28,X29),X30) ),
    inference(variable_rename,[status(thm)],[d4_zfmisc_1])).

fof(c_0_11,plain,(
    ! [X24,X25,X26] : k3_zfmisc_1(X24,X25,X26) = k2_zfmisc_1(k2_zfmisc_1(X24,X25),X26) ),
    inference(variable_rename,[status(thm)],[d3_zfmisc_1])).

fof(c_0_12,negated_conjecture,
    ( m1_subset_1(esk6_0,k1_zfmisc_1(esk2_0))
    & m1_subset_1(esk7_0,k1_zfmisc_1(esk3_0))
    & m1_subset_1(esk8_0,k1_zfmisc_1(esk4_0))
    & m1_subset_1(esk9_0,k1_zfmisc_1(esk5_0))
    & m1_subset_1(esk10_0,k4_zfmisc_1(esk2_0,esk3_0,esk4_0,esk5_0))
    & r2_hidden(esk10_0,k4_zfmisc_1(esk6_0,esk7_0,esk8_0,esk9_0))
    & ( ~ r2_hidden(k8_mcart_1(esk2_0,esk3_0,esk4_0,esk5_0,esk10_0),esk6_0)
      | ~ r2_hidden(k9_mcart_1(esk2_0,esk3_0,esk4_0,esk5_0,esk10_0),esk7_0)
      | ~ r2_hidden(k10_mcart_1(esk2_0,esk3_0,esk4_0,esk5_0,esk10_0),esk8_0)
      | ~ r2_hidden(k11_mcart_1(esk2_0,esk3_0,esk4_0,esk5_0,esk10_0),esk9_0) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_9])])])).

cnf(c_0_13,plain,
    ( k4_zfmisc_1(X1,X2,X3,X4) = k2_zfmisc_1(k3_zfmisc_1(X1,X2,X3),X4) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_14,plain,
    ( k3_zfmisc_1(X1,X2,X3) = k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

fof(c_0_15,plain,(
    ! [X31,X32,X33] :
      ( ( r2_hidden(k1_mcart_1(X31),X32)
        | ~ r2_hidden(X31,k2_zfmisc_1(X32,X33)) )
      & ( r2_hidden(k2_mcart_1(X31),X33)
        | ~ r2_hidden(X31,k2_zfmisc_1(X32,X33)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t10_mcart_1])])])).

cnf(c_0_16,negated_conjecture,
    ( r2_hidden(esk10_0,k4_zfmisc_1(esk6_0,esk7_0,esk8_0,esk9_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_17,plain,
    ( k4_zfmisc_1(X1,X2,X3,X4) = k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4) ),
    inference(rw,[status(thm)],[c_0_13,c_0_14])).

cnf(c_0_18,plain,
    ( r2_hidden(k1_mcart_1(X1),X2)
    | ~ r2_hidden(X1,k2_zfmisc_1(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_19,negated_conjecture,
    ( r2_hidden(esk10_0,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(esk6_0,esk7_0),esk8_0),esk9_0)) ),
    inference(rw,[status(thm)],[c_0_16,c_0_17])).

fof(c_0_20,plain,(
    ! [X34,X35,X36,X37,X38] :
      ( ( k8_mcart_1(X34,X35,X36,X37,X38) = k1_mcart_1(k1_mcart_1(k1_mcart_1(X38)))
        | ~ m1_subset_1(X38,k4_zfmisc_1(X34,X35,X36,X37))
        | X34 = k1_xboole_0
        | X35 = k1_xboole_0
        | X36 = k1_xboole_0
        | X37 = k1_xboole_0 )
      & ( k9_mcart_1(X34,X35,X36,X37,X38) = k2_mcart_1(k1_mcart_1(k1_mcart_1(X38)))
        | ~ m1_subset_1(X38,k4_zfmisc_1(X34,X35,X36,X37))
        | X34 = k1_xboole_0
        | X35 = k1_xboole_0
        | X36 = k1_xboole_0
        | X37 = k1_xboole_0 )
      & ( k10_mcart_1(X34,X35,X36,X37,X38) = k2_mcart_1(k1_mcart_1(X38))
        | ~ m1_subset_1(X38,k4_zfmisc_1(X34,X35,X36,X37))
        | X34 = k1_xboole_0
        | X35 = k1_xboole_0
        | X36 = k1_xboole_0
        | X37 = k1_xboole_0 )
      & ( k11_mcart_1(X34,X35,X36,X37,X38) = k2_mcart_1(X38)
        | ~ m1_subset_1(X38,k4_zfmisc_1(X34,X35,X36,X37))
        | X34 = k1_xboole_0
        | X35 = k1_xboole_0
        | X36 = k1_xboole_0
        | X37 = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t61_mcart_1])])])])).

cnf(c_0_21,negated_conjecture,
    ( r2_hidden(k1_mcart_1(esk10_0),k2_zfmisc_1(k2_zfmisc_1(esk6_0,esk7_0),esk8_0)) ),
    inference(spm,[status(thm)],[c_0_18,c_0_19])).

cnf(c_0_22,plain,
    ( k9_mcart_1(X1,X2,X3,X4,X5) = k2_mcart_1(k1_mcart_1(k1_mcart_1(X5)))
    | X1 = k1_xboole_0
    | X2 = k1_xboole_0
    | X3 = k1_xboole_0
    | X4 = k1_xboole_0
    | ~ m1_subset_1(X5,k4_zfmisc_1(X1,X2,X3,X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_23,negated_conjecture,
    ( m1_subset_1(esk10_0,k4_zfmisc_1(esk2_0,esk3_0,esk4_0,esk5_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_24,plain,
    ( k8_mcart_1(X1,X2,X3,X4,X5) = k1_mcart_1(k1_mcart_1(k1_mcart_1(X5)))
    | X1 = k1_xboole_0
    | X2 = k1_xboole_0
    | X3 = k1_xboole_0
    | X4 = k1_xboole_0
    | ~ m1_subset_1(X5,k4_zfmisc_1(X1,X2,X3,X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_25,plain,
    ( r2_hidden(k2_mcart_1(X1),X2)
    | ~ r2_hidden(X1,k2_zfmisc_1(X3,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_26,negated_conjecture,
    ( r2_hidden(k1_mcart_1(k1_mcart_1(esk10_0)),k2_zfmisc_1(esk6_0,esk7_0)) ),
    inference(spm,[status(thm)],[c_0_18,c_0_21])).

cnf(c_0_27,plain,
    ( X4 = k1_xboole_0
    | X3 = k1_xboole_0
    | X2 = k1_xboole_0
    | X1 = k1_xboole_0
    | k9_mcart_1(X1,X2,X3,X4,X5) = k2_mcart_1(k1_mcart_1(k1_mcart_1(X5)))
    | ~ m1_subset_1(X5,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4)) ),
    inference(rw,[status(thm)],[c_0_22,c_0_17])).

cnf(c_0_28,negated_conjecture,
    ( m1_subset_1(esk10_0,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0),esk4_0),esk5_0)) ),
    inference(rw,[status(thm)],[c_0_23,c_0_17])).

cnf(c_0_29,plain,
    ( X4 = k1_xboole_0
    | X3 = k1_xboole_0
    | X2 = k1_xboole_0
    | X1 = k1_xboole_0
    | k8_mcart_1(X1,X2,X3,X4,X5) = k1_mcart_1(k1_mcart_1(k1_mcart_1(X5)))
    | ~ m1_subset_1(X5,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4)) ),
    inference(rw,[status(thm)],[c_0_24,c_0_17])).

cnf(c_0_30,negated_conjecture,
    ( r2_hidden(k2_mcart_1(k1_mcart_1(k1_mcart_1(esk10_0))),esk7_0) ),
    inference(spm,[status(thm)],[c_0_25,c_0_26])).

cnf(c_0_31,negated_conjecture,
    ( k2_mcart_1(k1_mcart_1(k1_mcart_1(esk10_0))) = k9_mcart_1(esk2_0,esk3_0,esk4_0,esk5_0,esk10_0)
    | esk2_0 = k1_xboole_0
    | esk3_0 = k1_xboole_0
    | esk4_0 = k1_xboole_0
    | esk5_0 = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_27,c_0_28])).

cnf(c_0_32,negated_conjecture,
    ( r2_hidden(k1_mcart_1(k1_mcart_1(k1_mcart_1(esk10_0))),esk6_0) ),
    inference(spm,[status(thm)],[c_0_18,c_0_26])).

cnf(c_0_33,negated_conjecture,
    ( k1_mcart_1(k1_mcart_1(k1_mcart_1(esk10_0))) = k8_mcart_1(esk2_0,esk3_0,esk4_0,esk5_0,esk10_0)
    | esk2_0 = k1_xboole_0
    | esk3_0 = k1_xboole_0
    | esk4_0 = k1_xboole_0
    | esk5_0 = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_29,c_0_28])).

cnf(c_0_34,plain,
    ( k10_mcart_1(X1,X2,X3,X4,X5) = k2_mcart_1(k1_mcart_1(X5))
    | X1 = k1_xboole_0
    | X2 = k1_xboole_0
    | X3 = k1_xboole_0
    | X4 = k1_xboole_0
    | ~ m1_subset_1(X5,k4_zfmisc_1(X1,X2,X3,X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

fof(c_0_35,plain,(
    ! [X17,X18] :
      ( ( ~ m1_subset_1(X17,k1_zfmisc_1(X18))
        | r1_tarski(X17,X18) )
      & ( ~ r1_tarski(X17,X18)
        | m1_subset_1(X17,k1_zfmisc_1(X18)) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).

fof(c_0_36,plain,(
    ! [X16] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X16)) ),
    inference(variable_rename,[status(thm)],[t4_subset_1])).

cnf(c_0_37,negated_conjecture,
    ( ~ r2_hidden(k8_mcart_1(esk2_0,esk3_0,esk4_0,esk5_0,esk10_0),esk6_0)
    | ~ r2_hidden(k9_mcart_1(esk2_0,esk3_0,esk4_0,esk5_0,esk10_0),esk7_0)
    | ~ r2_hidden(k10_mcart_1(esk2_0,esk3_0,esk4_0,esk5_0,esk10_0),esk8_0)
    | ~ r2_hidden(k11_mcart_1(esk2_0,esk3_0,esk4_0,esk5_0,esk10_0),esk9_0) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_38,negated_conjecture,
    ( esk5_0 = k1_xboole_0
    | esk4_0 = k1_xboole_0
    | esk3_0 = k1_xboole_0
    | esk2_0 = k1_xboole_0
    | r2_hidden(k9_mcart_1(esk2_0,esk3_0,esk4_0,esk5_0,esk10_0),esk7_0) ),
    inference(spm,[status(thm)],[c_0_30,c_0_31])).

cnf(c_0_39,negated_conjecture,
    ( esk5_0 = k1_xboole_0
    | esk4_0 = k1_xboole_0
    | esk3_0 = k1_xboole_0
    | esk2_0 = k1_xboole_0
    | r2_hidden(k8_mcart_1(esk2_0,esk3_0,esk4_0,esk5_0,esk10_0),esk6_0) ),
    inference(spm,[status(thm)],[c_0_32,c_0_33])).

cnf(c_0_40,plain,
    ( X4 = k1_xboole_0
    | X3 = k1_xboole_0
    | X2 = k1_xboole_0
    | X1 = k1_xboole_0
    | k10_mcart_1(X1,X2,X3,X4,X5) = k2_mcart_1(k1_mcart_1(X5))
    | ~ m1_subset_1(X5,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4)) ),
    inference(rw,[status(thm)],[c_0_34,c_0_17])).

cnf(c_0_41,plain,
    ( k11_mcart_1(X1,X2,X3,X4,X5) = k2_mcart_1(X5)
    | X1 = k1_xboole_0
    | X2 = k1_xboole_0
    | X3 = k1_xboole_0
    | X4 = k1_xboole_0
    | ~ m1_subset_1(X5,k4_zfmisc_1(X1,X2,X3,X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

fof(c_0_42,plain,(
    ! [X22,X23] :
      ( ~ r2_hidden(X22,X23)
      | ~ r1_tarski(X23,X22) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t7_ordinal1])])).

cnf(c_0_43,plain,
    ( r1_tarski(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

cnf(c_0_44,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

fof(c_0_45,plain,(
    ! [X10,X11,X12,X13,X14] :
      ( ( ~ r1_tarski(X10,X11)
        | ~ r2_hidden(X12,X10)
        | r2_hidden(X12,X11) )
      & ( r2_hidden(esk1_2(X13,X14),X13)
        | r1_tarski(X13,X14) )
      & ( ~ r2_hidden(esk1_2(X13,X14),X14)
        | r1_tarski(X13,X14) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).

cnf(c_0_46,negated_conjecture,
    ( esk2_0 = k1_xboole_0
    | esk3_0 = k1_xboole_0
    | esk4_0 = k1_xboole_0
    | esk5_0 = k1_xboole_0
    | ~ r2_hidden(k10_mcart_1(esk2_0,esk3_0,esk4_0,esk5_0,esk10_0),esk8_0)
    | ~ r2_hidden(k11_mcart_1(esk2_0,esk3_0,esk4_0,esk5_0,esk10_0),esk9_0) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_38]),c_0_39])).

cnf(c_0_47,negated_conjecture,
    ( k10_mcart_1(esk2_0,esk3_0,esk4_0,esk5_0,esk10_0) = k2_mcart_1(k1_mcart_1(esk10_0))
    | esk2_0 = k1_xboole_0
    | esk3_0 = k1_xboole_0
    | esk4_0 = k1_xboole_0
    | esk5_0 = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_40,c_0_28])).

cnf(c_0_48,negated_conjecture,
    ( r2_hidden(k2_mcart_1(k1_mcart_1(esk10_0)),esk8_0) ),
    inference(spm,[status(thm)],[c_0_25,c_0_21])).

cnf(c_0_49,plain,
    ( X4 = k1_xboole_0
    | X3 = k1_xboole_0
    | X2 = k1_xboole_0
    | X1 = k1_xboole_0
    | k11_mcart_1(X1,X2,X3,X4,X5) = k2_mcart_1(X5)
    | ~ m1_subset_1(X5,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4)) ),
    inference(rw,[status(thm)],[c_0_41,c_0_17])).

cnf(c_0_50,plain,
    ( ~ r2_hidden(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_42])).

cnf(c_0_51,plain,
    ( r1_tarski(k1_xboole_0,X1) ),
    inference(spm,[status(thm)],[c_0_43,c_0_44])).

cnf(c_0_52,plain,
    ( r2_hidden(X3,X2)
    | ~ r1_tarski(X1,X2)
    | ~ r2_hidden(X3,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_45])).

cnf(c_0_53,negated_conjecture,
    ( r2_hidden(k2_mcart_1(esk10_0),esk9_0) ),
    inference(spm,[status(thm)],[c_0_25,c_0_19])).

cnf(c_0_54,plain,
    ( r2_hidden(esk1_2(X1,X2),X1)
    | r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_45])).

cnf(c_0_55,negated_conjecture,
    ( m1_subset_1(esk8_0,k1_zfmisc_1(esk4_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_56,negated_conjecture,
    ( m1_subset_1(esk9_0,k1_zfmisc_1(esk5_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_57,negated_conjecture,
    ( esk5_0 = k1_xboole_0
    | esk4_0 = k1_xboole_0
    | esk3_0 = k1_xboole_0
    | esk2_0 = k1_xboole_0
    | ~ r2_hidden(k11_mcart_1(esk2_0,esk3_0,esk4_0,esk5_0,esk10_0),esk9_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_46,c_0_47]),c_0_48])])).

cnf(c_0_58,negated_conjecture,
    ( k11_mcart_1(esk2_0,esk3_0,esk4_0,esk5_0,esk10_0) = k2_mcart_1(esk10_0)
    | esk2_0 = k1_xboole_0
    | esk3_0 = k1_xboole_0
    | esk4_0 = k1_xboole_0
    | esk5_0 = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_49,c_0_28])).

cnf(c_0_59,plain,
    ( ~ r2_hidden(X1,k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_50,c_0_51])).

cnf(c_0_60,negated_conjecture,
    ( r2_hidden(k2_mcart_1(esk10_0),X1)
    | ~ r1_tarski(esk9_0,X1) ),
    inference(spm,[status(thm)],[c_0_52,c_0_53])).

cnf(c_0_61,plain,
    ( r2_hidden(esk1_2(X1,X2),X3)
    | r1_tarski(X1,X2)
    | ~ r1_tarski(X1,X3) ),
    inference(spm,[status(thm)],[c_0_52,c_0_54])).

cnf(c_0_62,negated_conjecture,
    ( r1_tarski(esk8_0,esk4_0) ),
    inference(spm,[status(thm)],[c_0_43,c_0_55])).

cnf(c_0_63,negated_conjecture,
    ( r1_tarski(esk9_0,esk5_0) ),
    inference(spm,[status(thm)],[c_0_43,c_0_56])).

cnf(c_0_64,negated_conjecture,
    ( esk2_0 = k1_xboole_0
    | esk3_0 = k1_xboole_0
    | esk4_0 = k1_xboole_0
    | esk5_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57,c_0_58]),c_0_53])])).

cnf(c_0_65,negated_conjecture,
    ( ~ r1_tarski(esk9_0,k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_59,c_0_60])).

cnf(c_0_66,negated_conjecture,
    ( r2_hidden(esk1_2(esk8_0,X1),esk4_0)
    | r1_tarski(esk8_0,X1) ),
    inference(spm,[status(thm)],[c_0_61,c_0_62])).

cnf(c_0_67,negated_conjecture,
    ( esk4_0 = k1_xboole_0
    | esk3_0 = k1_xboole_0
    | esk2_0 = k1_xboole_0 ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_63,c_0_64]),c_0_65])).

cnf(c_0_68,negated_conjecture,
    ( m1_subset_1(esk7_0,k1_zfmisc_1(esk3_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_69,negated_conjecture,
    ( esk2_0 = k1_xboole_0
    | esk3_0 = k1_xboole_0
    | r1_tarski(esk8_0,X1) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_66,c_0_67]),c_0_59])).

cnf(c_0_70,negated_conjecture,
    ( r1_tarski(esk7_0,esk3_0) ),
    inference(spm,[status(thm)],[c_0_43,c_0_68])).

cnf(c_0_71,negated_conjecture,
    ( esk3_0 = k1_xboole_0
    | esk2_0 = k1_xboole_0
    | ~ r2_hidden(X1,esk8_0) ),
    inference(spm,[status(thm)],[c_0_50,c_0_69])).

cnf(c_0_72,negated_conjecture,
    ( r2_hidden(esk1_2(esk7_0,X1),esk3_0)
    | r1_tarski(esk7_0,X1) ),
    inference(spm,[status(thm)],[c_0_61,c_0_70])).

cnf(c_0_73,negated_conjecture,
    ( esk2_0 = k1_xboole_0
    | esk3_0 = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_71,c_0_48])).

cnf(c_0_74,negated_conjecture,
    ( m1_subset_1(esk6_0,k1_zfmisc_1(esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_75,negated_conjecture,
    ( esk2_0 = k1_xboole_0
    | r1_tarski(esk7_0,X1) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_72,c_0_73]),c_0_59])).

cnf(c_0_76,negated_conjecture,
    ( r1_tarski(esk6_0,esk2_0) ),
    inference(spm,[status(thm)],[c_0_43,c_0_74])).

cnf(c_0_77,negated_conjecture,
    ( esk2_0 = k1_xboole_0
    | ~ r2_hidden(X1,esk7_0) ),
    inference(spm,[status(thm)],[c_0_50,c_0_75])).

cnf(c_0_78,negated_conjecture,
    ( r2_hidden(esk1_2(esk6_0,X1),esk2_0)
    | r1_tarski(esk6_0,X1) ),
    inference(spm,[status(thm)],[c_0_61,c_0_76])).

cnf(c_0_79,negated_conjecture,
    ( esk2_0 = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_77,c_0_30])).

cnf(c_0_80,negated_conjecture,
    ( r1_tarski(esk6_0,X1) ),
    inference(sr,[status(thm)],[inference(rw,[status(thm)],[c_0_78,c_0_79]),c_0_59])).

cnf(c_0_81,negated_conjecture,
    ( ~ r2_hidden(X1,esk6_0) ),
    inference(spm,[status(thm)],[c_0_50,c_0_80])).

cnf(c_0_82,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[c_0_32,c_0_81]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.34  % Computer   : n024.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 16:50:36 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  # Version: 2.5pre002
% 0.14/0.35  # No SInE strategy applied
% 0.14/0.35  # Trying AutoSched0 for 299 seconds
% 0.21/0.39  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.21/0.39  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.21/0.39  #
% 0.21/0.39  # Preprocessing time       : 0.028 s
% 0.21/0.39  # Presaturation interreduction done
% 0.21/0.39  
% 0.21/0.39  # Proof found!
% 0.21/0.39  # SZS status Theorem
% 0.21/0.39  # SZS output start CNFRefutation
% 0.21/0.39  fof(t87_mcart_1, conjecture, ![X1, X2, X3, X4, X5]:(m1_subset_1(X5,k1_zfmisc_1(X1))=>![X6]:(m1_subset_1(X6,k1_zfmisc_1(X2))=>![X7]:(m1_subset_1(X7,k1_zfmisc_1(X3))=>![X8]:(m1_subset_1(X8,k1_zfmisc_1(X4))=>![X9]:(m1_subset_1(X9,k4_zfmisc_1(X1,X2,X3,X4))=>(r2_hidden(X9,k4_zfmisc_1(X5,X6,X7,X8))=>(((r2_hidden(k8_mcart_1(X1,X2,X3,X4,X9),X5)&r2_hidden(k9_mcart_1(X1,X2,X3,X4,X9),X6))&r2_hidden(k10_mcart_1(X1,X2,X3,X4,X9),X7))&r2_hidden(k11_mcart_1(X1,X2,X3,X4,X9),X8)))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t87_mcart_1)).
% 0.21/0.39  fof(d4_zfmisc_1, axiom, ![X1, X2, X3, X4]:k4_zfmisc_1(X1,X2,X3,X4)=k2_zfmisc_1(k3_zfmisc_1(X1,X2,X3),X4), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d4_zfmisc_1)).
% 0.21/0.39  fof(d3_zfmisc_1, axiom, ![X1, X2, X3]:k3_zfmisc_1(X1,X2,X3)=k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d3_zfmisc_1)).
% 0.21/0.39  fof(t10_mcart_1, axiom, ![X1, X2, X3]:(r2_hidden(X1,k2_zfmisc_1(X2,X3))=>(r2_hidden(k1_mcart_1(X1),X2)&r2_hidden(k2_mcart_1(X1),X3))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t10_mcart_1)).
% 0.21/0.39  fof(t61_mcart_1, axiom, ![X1, X2, X3, X4]:~(((((X1!=k1_xboole_0&X2!=k1_xboole_0)&X3!=k1_xboole_0)&X4!=k1_xboole_0)&~(![X5]:(m1_subset_1(X5,k4_zfmisc_1(X1,X2,X3,X4))=>(((k8_mcart_1(X1,X2,X3,X4,X5)=k1_mcart_1(k1_mcart_1(k1_mcart_1(X5)))&k9_mcart_1(X1,X2,X3,X4,X5)=k2_mcart_1(k1_mcart_1(k1_mcart_1(X5))))&k10_mcart_1(X1,X2,X3,X4,X5)=k2_mcart_1(k1_mcart_1(X5)))&k11_mcart_1(X1,X2,X3,X4,X5)=k2_mcart_1(X5)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t61_mcart_1)).
% 0.21/0.39  fof(t3_subset, axiom, ![X1, X2]:(m1_subset_1(X1,k1_zfmisc_1(X2))<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_subset)).
% 0.21/0.39  fof(t4_subset_1, axiom, ![X1]:m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t4_subset_1)).
% 0.21/0.39  fof(t7_ordinal1, axiom, ![X1, X2]:~((r2_hidden(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t7_ordinal1)).
% 0.21/0.39  fof(d3_tarski, axiom, ![X1, X2]:(r1_tarski(X1,X2)<=>![X3]:(r2_hidden(X3,X1)=>r2_hidden(X3,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d3_tarski)).
% 0.21/0.39  fof(c_0_9, negated_conjecture, ~(![X1, X2, X3, X4, X5]:(m1_subset_1(X5,k1_zfmisc_1(X1))=>![X6]:(m1_subset_1(X6,k1_zfmisc_1(X2))=>![X7]:(m1_subset_1(X7,k1_zfmisc_1(X3))=>![X8]:(m1_subset_1(X8,k1_zfmisc_1(X4))=>![X9]:(m1_subset_1(X9,k4_zfmisc_1(X1,X2,X3,X4))=>(r2_hidden(X9,k4_zfmisc_1(X5,X6,X7,X8))=>(((r2_hidden(k8_mcart_1(X1,X2,X3,X4,X9),X5)&r2_hidden(k9_mcart_1(X1,X2,X3,X4,X9),X6))&r2_hidden(k10_mcart_1(X1,X2,X3,X4,X9),X7))&r2_hidden(k11_mcart_1(X1,X2,X3,X4,X9),X8))))))))), inference(assume_negation,[status(cth)],[t87_mcart_1])).
% 0.21/0.39  fof(c_0_10, plain, ![X27, X28, X29, X30]:k4_zfmisc_1(X27,X28,X29,X30)=k2_zfmisc_1(k3_zfmisc_1(X27,X28,X29),X30), inference(variable_rename,[status(thm)],[d4_zfmisc_1])).
% 0.21/0.39  fof(c_0_11, plain, ![X24, X25, X26]:k3_zfmisc_1(X24,X25,X26)=k2_zfmisc_1(k2_zfmisc_1(X24,X25),X26), inference(variable_rename,[status(thm)],[d3_zfmisc_1])).
% 0.21/0.39  fof(c_0_12, negated_conjecture, (m1_subset_1(esk6_0,k1_zfmisc_1(esk2_0))&(m1_subset_1(esk7_0,k1_zfmisc_1(esk3_0))&(m1_subset_1(esk8_0,k1_zfmisc_1(esk4_0))&(m1_subset_1(esk9_0,k1_zfmisc_1(esk5_0))&(m1_subset_1(esk10_0,k4_zfmisc_1(esk2_0,esk3_0,esk4_0,esk5_0))&(r2_hidden(esk10_0,k4_zfmisc_1(esk6_0,esk7_0,esk8_0,esk9_0))&(~r2_hidden(k8_mcart_1(esk2_0,esk3_0,esk4_0,esk5_0,esk10_0),esk6_0)|~r2_hidden(k9_mcart_1(esk2_0,esk3_0,esk4_0,esk5_0,esk10_0),esk7_0)|~r2_hidden(k10_mcart_1(esk2_0,esk3_0,esk4_0,esk5_0,esk10_0),esk8_0)|~r2_hidden(k11_mcart_1(esk2_0,esk3_0,esk4_0,esk5_0,esk10_0),esk9_0)))))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_9])])])).
% 0.21/0.39  cnf(c_0_13, plain, (k4_zfmisc_1(X1,X2,X3,X4)=k2_zfmisc_1(k3_zfmisc_1(X1,X2,X3),X4)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.21/0.39  cnf(c_0_14, plain, (k3_zfmisc_1(X1,X2,X3)=k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.21/0.39  fof(c_0_15, plain, ![X31, X32, X33]:((r2_hidden(k1_mcart_1(X31),X32)|~r2_hidden(X31,k2_zfmisc_1(X32,X33)))&(r2_hidden(k2_mcart_1(X31),X33)|~r2_hidden(X31,k2_zfmisc_1(X32,X33)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t10_mcart_1])])])).
% 0.21/0.39  cnf(c_0_16, negated_conjecture, (r2_hidden(esk10_0,k4_zfmisc_1(esk6_0,esk7_0,esk8_0,esk9_0))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.21/0.39  cnf(c_0_17, plain, (k4_zfmisc_1(X1,X2,X3,X4)=k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4)), inference(rw,[status(thm)],[c_0_13, c_0_14])).
% 0.21/0.39  cnf(c_0_18, plain, (r2_hidden(k1_mcart_1(X1),X2)|~r2_hidden(X1,k2_zfmisc_1(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.21/0.39  cnf(c_0_19, negated_conjecture, (r2_hidden(esk10_0,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(esk6_0,esk7_0),esk8_0),esk9_0))), inference(rw,[status(thm)],[c_0_16, c_0_17])).
% 0.21/0.39  fof(c_0_20, plain, ![X34, X35, X36, X37, X38]:((((k8_mcart_1(X34,X35,X36,X37,X38)=k1_mcart_1(k1_mcart_1(k1_mcart_1(X38)))|~m1_subset_1(X38,k4_zfmisc_1(X34,X35,X36,X37))|(X34=k1_xboole_0|X35=k1_xboole_0|X36=k1_xboole_0|X37=k1_xboole_0))&(k9_mcart_1(X34,X35,X36,X37,X38)=k2_mcart_1(k1_mcart_1(k1_mcart_1(X38)))|~m1_subset_1(X38,k4_zfmisc_1(X34,X35,X36,X37))|(X34=k1_xboole_0|X35=k1_xboole_0|X36=k1_xboole_0|X37=k1_xboole_0)))&(k10_mcart_1(X34,X35,X36,X37,X38)=k2_mcart_1(k1_mcart_1(X38))|~m1_subset_1(X38,k4_zfmisc_1(X34,X35,X36,X37))|(X34=k1_xboole_0|X35=k1_xboole_0|X36=k1_xboole_0|X37=k1_xboole_0)))&(k11_mcart_1(X34,X35,X36,X37,X38)=k2_mcart_1(X38)|~m1_subset_1(X38,k4_zfmisc_1(X34,X35,X36,X37))|(X34=k1_xboole_0|X35=k1_xboole_0|X36=k1_xboole_0|X37=k1_xboole_0))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t61_mcart_1])])])])).
% 0.21/0.39  cnf(c_0_21, negated_conjecture, (r2_hidden(k1_mcart_1(esk10_0),k2_zfmisc_1(k2_zfmisc_1(esk6_0,esk7_0),esk8_0))), inference(spm,[status(thm)],[c_0_18, c_0_19])).
% 0.21/0.39  cnf(c_0_22, plain, (k9_mcart_1(X1,X2,X3,X4,X5)=k2_mcart_1(k1_mcart_1(k1_mcart_1(X5)))|X1=k1_xboole_0|X2=k1_xboole_0|X3=k1_xboole_0|X4=k1_xboole_0|~m1_subset_1(X5,k4_zfmisc_1(X1,X2,X3,X4))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.21/0.39  cnf(c_0_23, negated_conjecture, (m1_subset_1(esk10_0,k4_zfmisc_1(esk2_0,esk3_0,esk4_0,esk5_0))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.21/0.39  cnf(c_0_24, plain, (k8_mcart_1(X1,X2,X3,X4,X5)=k1_mcart_1(k1_mcart_1(k1_mcart_1(X5)))|X1=k1_xboole_0|X2=k1_xboole_0|X3=k1_xboole_0|X4=k1_xboole_0|~m1_subset_1(X5,k4_zfmisc_1(X1,X2,X3,X4))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.21/0.39  cnf(c_0_25, plain, (r2_hidden(k2_mcart_1(X1),X2)|~r2_hidden(X1,k2_zfmisc_1(X3,X2))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.21/0.39  cnf(c_0_26, negated_conjecture, (r2_hidden(k1_mcart_1(k1_mcart_1(esk10_0)),k2_zfmisc_1(esk6_0,esk7_0))), inference(spm,[status(thm)],[c_0_18, c_0_21])).
% 0.21/0.39  cnf(c_0_27, plain, (X4=k1_xboole_0|X3=k1_xboole_0|X2=k1_xboole_0|X1=k1_xboole_0|k9_mcart_1(X1,X2,X3,X4,X5)=k2_mcart_1(k1_mcart_1(k1_mcart_1(X5)))|~m1_subset_1(X5,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4))), inference(rw,[status(thm)],[c_0_22, c_0_17])).
% 0.21/0.39  cnf(c_0_28, negated_conjecture, (m1_subset_1(esk10_0,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0),esk4_0),esk5_0))), inference(rw,[status(thm)],[c_0_23, c_0_17])).
% 0.21/0.39  cnf(c_0_29, plain, (X4=k1_xboole_0|X3=k1_xboole_0|X2=k1_xboole_0|X1=k1_xboole_0|k8_mcart_1(X1,X2,X3,X4,X5)=k1_mcart_1(k1_mcart_1(k1_mcart_1(X5)))|~m1_subset_1(X5,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4))), inference(rw,[status(thm)],[c_0_24, c_0_17])).
% 0.21/0.39  cnf(c_0_30, negated_conjecture, (r2_hidden(k2_mcart_1(k1_mcart_1(k1_mcart_1(esk10_0))),esk7_0)), inference(spm,[status(thm)],[c_0_25, c_0_26])).
% 0.21/0.39  cnf(c_0_31, negated_conjecture, (k2_mcart_1(k1_mcart_1(k1_mcart_1(esk10_0)))=k9_mcart_1(esk2_0,esk3_0,esk4_0,esk5_0,esk10_0)|esk2_0=k1_xboole_0|esk3_0=k1_xboole_0|esk4_0=k1_xboole_0|esk5_0=k1_xboole_0), inference(spm,[status(thm)],[c_0_27, c_0_28])).
% 0.21/0.39  cnf(c_0_32, negated_conjecture, (r2_hidden(k1_mcart_1(k1_mcart_1(k1_mcart_1(esk10_0))),esk6_0)), inference(spm,[status(thm)],[c_0_18, c_0_26])).
% 0.21/0.39  cnf(c_0_33, negated_conjecture, (k1_mcart_1(k1_mcart_1(k1_mcart_1(esk10_0)))=k8_mcart_1(esk2_0,esk3_0,esk4_0,esk5_0,esk10_0)|esk2_0=k1_xboole_0|esk3_0=k1_xboole_0|esk4_0=k1_xboole_0|esk5_0=k1_xboole_0), inference(spm,[status(thm)],[c_0_29, c_0_28])).
% 0.21/0.39  cnf(c_0_34, plain, (k10_mcart_1(X1,X2,X3,X4,X5)=k2_mcart_1(k1_mcart_1(X5))|X1=k1_xboole_0|X2=k1_xboole_0|X3=k1_xboole_0|X4=k1_xboole_0|~m1_subset_1(X5,k4_zfmisc_1(X1,X2,X3,X4))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.21/0.39  fof(c_0_35, plain, ![X17, X18]:((~m1_subset_1(X17,k1_zfmisc_1(X18))|r1_tarski(X17,X18))&(~r1_tarski(X17,X18)|m1_subset_1(X17,k1_zfmisc_1(X18)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).
% 0.21/0.39  fof(c_0_36, plain, ![X16]:m1_subset_1(k1_xboole_0,k1_zfmisc_1(X16)), inference(variable_rename,[status(thm)],[t4_subset_1])).
% 0.21/0.39  cnf(c_0_37, negated_conjecture, (~r2_hidden(k8_mcart_1(esk2_0,esk3_0,esk4_0,esk5_0,esk10_0),esk6_0)|~r2_hidden(k9_mcart_1(esk2_0,esk3_0,esk4_0,esk5_0,esk10_0),esk7_0)|~r2_hidden(k10_mcart_1(esk2_0,esk3_0,esk4_0,esk5_0,esk10_0),esk8_0)|~r2_hidden(k11_mcart_1(esk2_0,esk3_0,esk4_0,esk5_0,esk10_0),esk9_0)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.21/0.39  cnf(c_0_38, negated_conjecture, (esk5_0=k1_xboole_0|esk4_0=k1_xboole_0|esk3_0=k1_xboole_0|esk2_0=k1_xboole_0|r2_hidden(k9_mcart_1(esk2_0,esk3_0,esk4_0,esk5_0,esk10_0),esk7_0)), inference(spm,[status(thm)],[c_0_30, c_0_31])).
% 0.21/0.39  cnf(c_0_39, negated_conjecture, (esk5_0=k1_xboole_0|esk4_0=k1_xboole_0|esk3_0=k1_xboole_0|esk2_0=k1_xboole_0|r2_hidden(k8_mcart_1(esk2_0,esk3_0,esk4_0,esk5_0,esk10_0),esk6_0)), inference(spm,[status(thm)],[c_0_32, c_0_33])).
% 0.21/0.39  cnf(c_0_40, plain, (X4=k1_xboole_0|X3=k1_xboole_0|X2=k1_xboole_0|X1=k1_xboole_0|k10_mcart_1(X1,X2,X3,X4,X5)=k2_mcart_1(k1_mcart_1(X5))|~m1_subset_1(X5,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4))), inference(rw,[status(thm)],[c_0_34, c_0_17])).
% 0.21/0.39  cnf(c_0_41, plain, (k11_mcart_1(X1,X2,X3,X4,X5)=k2_mcart_1(X5)|X1=k1_xboole_0|X2=k1_xboole_0|X3=k1_xboole_0|X4=k1_xboole_0|~m1_subset_1(X5,k4_zfmisc_1(X1,X2,X3,X4))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.21/0.39  fof(c_0_42, plain, ![X22, X23]:(~r2_hidden(X22,X23)|~r1_tarski(X23,X22)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t7_ordinal1])])).
% 0.21/0.39  cnf(c_0_43, plain, (r1_tarski(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.21/0.39  cnf(c_0_44, plain, (m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_36])).
% 0.21/0.39  fof(c_0_45, plain, ![X10, X11, X12, X13, X14]:((~r1_tarski(X10,X11)|(~r2_hidden(X12,X10)|r2_hidden(X12,X11)))&((r2_hidden(esk1_2(X13,X14),X13)|r1_tarski(X13,X14))&(~r2_hidden(esk1_2(X13,X14),X14)|r1_tarski(X13,X14)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).
% 0.21/0.39  cnf(c_0_46, negated_conjecture, (esk2_0=k1_xboole_0|esk3_0=k1_xboole_0|esk4_0=k1_xboole_0|esk5_0=k1_xboole_0|~r2_hidden(k10_mcart_1(esk2_0,esk3_0,esk4_0,esk5_0,esk10_0),esk8_0)|~r2_hidden(k11_mcart_1(esk2_0,esk3_0,esk4_0,esk5_0,esk10_0),esk9_0)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_38]), c_0_39])).
% 0.21/0.39  cnf(c_0_47, negated_conjecture, (k10_mcart_1(esk2_0,esk3_0,esk4_0,esk5_0,esk10_0)=k2_mcart_1(k1_mcart_1(esk10_0))|esk2_0=k1_xboole_0|esk3_0=k1_xboole_0|esk4_0=k1_xboole_0|esk5_0=k1_xboole_0), inference(spm,[status(thm)],[c_0_40, c_0_28])).
% 0.21/0.39  cnf(c_0_48, negated_conjecture, (r2_hidden(k2_mcart_1(k1_mcart_1(esk10_0)),esk8_0)), inference(spm,[status(thm)],[c_0_25, c_0_21])).
% 0.21/0.39  cnf(c_0_49, plain, (X4=k1_xboole_0|X3=k1_xboole_0|X2=k1_xboole_0|X1=k1_xboole_0|k11_mcart_1(X1,X2,X3,X4,X5)=k2_mcart_1(X5)|~m1_subset_1(X5,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4))), inference(rw,[status(thm)],[c_0_41, c_0_17])).
% 0.21/0.39  cnf(c_0_50, plain, (~r2_hidden(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_42])).
% 0.21/0.39  cnf(c_0_51, plain, (r1_tarski(k1_xboole_0,X1)), inference(spm,[status(thm)],[c_0_43, c_0_44])).
% 0.21/0.39  cnf(c_0_52, plain, (r2_hidden(X3,X2)|~r1_tarski(X1,X2)|~r2_hidden(X3,X1)), inference(split_conjunct,[status(thm)],[c_0_45])).
% 0.21/0.39  cnf(c_0_53, negated_conjecture, (r2_hidden(k2_mcart_1(esk10_0),esk9_0)), inference(spm,[status(thm)],[c_0_25, c_0_19])).
% 0.21/0.39  cnf(c_0_54, plain, (r2_hidden(esk1_2(X1,X2),X1)|r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_45])).
% 0.21/0.39  cnf(c_0_55, negated_conjecture, (m1_subset_1(esk8_0,k1_zfmisc_1(esk4_0))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.21/0.39  cnf(c_0_56, negated_conjecture, (m1_subset_1(esk9_0,k1_zfmisc_1(esk5_0))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.21/0.39  cnf(c_0_57, negated_conjecture, (esk5_0=k1_xboole_0|esk4_0=k1_xboole_0|esk3_0=k1_xboole_0|esk2_0=k1_xboole_0|~r2_hidden(k11_mcart_1(esk2_0,esk3_0,esk4_0,esk5_0,esk10_0),esk9_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_46, c_0_47]), c_0_48])])).
% 0.21/0.39  cnf(c_0_58, negated_conjecture, (k11_mcart_1(esk2_0,esk3_0,esk4_0,esk5_0,esk10_0)=k2_mcart_1(esk10_0)|esk2_0=k1_xboole_0|esk3_0=k1_xboole_0|esk4_0=k1_xboole_0|esk5_0=k1_xboole_0), inference(spm,[status(thm)],[c_0_49, c_0_28])).
% 0.21/0.39  cnf(c_0_59, plain, (~r2_hidden(X1,k1_xboole_0)), inference(spm,[status(thm)],[c_0_50, c_0_51])).
% 0.21/0.39  cnf(c_0_60, negated_conjecture, (r2_hidden(k2_mcart_1(esk10_0),X1)|~r1_tarski(esk9_0,X1)), inference(spm,[status(thm)],[c_0_52, c_0_53])).
% 0.21/0.39  cnf(c_0_61, plain, (r2_hidden(esk1_2(X1,X2),X3)|r1_tarski(X1,X2)|~r1_tarski(X1,X3)), inference(spm,[status(thm)],[c_0_52, c_0_54])).
% 0.21/0.39  cnf(c_0_62, negated_conjecture, (r1_tarski(esk8_0,esk4_0)), inference(spm,[status(thm)],[c_0_43, c_0_55])).
% 0.21/0.39  cnf(c_0_63, negated_conjecture, (r1_tarski(esk9_0,esk5_0)), inference(spm,[status(thm)],[c_0_43, c_0_56])).
% 0.21/0.39  cnf(c_0_64, negated_conjecture, (esk2_0=k1_xboole_0|esk3_0=k1_xboole_0|esk4_0=k1_xboole_0|esk5_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57, c_0_58]), c_0_53])])).
% 0.21/0.39  cnf(c_0_65, negated_conjecture, (~r1_tarski(esk9_0,k1_xboole_0)), inference(spm,[status(thm)],[c_0_59, c_0_60])).
% 0.21/0.39  cnf(c_0_66, negated_conjecture, (r2_hidden(esk1_2(esk8_0,X1),esk4_0)|r1_tarski(esk8_0,X1)), inference(spm,[status(thm)],[c_0_61, c_0_62])).
% 0.21/0.39  cnf(c_0_67, negated_conjecture, (esk4_0=k1_xboole_0|esk3_0=k1_xboole_0|esk2_0=k1_xboole_0), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_63, c_0_64]), c_0_65])).
% 0.21/0.39  cnf(c_0_68, negated_conjecture, (m1_subset_1(esk7_0,k1_zfmisc_1(esk3_0))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.21/0.39  cnf(c_0_69, negated_conjecture, (esk2_0=k1_xboole_0|esk3_0=k1_xboole_0|r1_tarski(esk8_0,X1)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_66, c_0_67]), c_0_59])).
% 0.21/0.39  cnf(c_0_70, negated_conjecture, (r1_tarski(esk7_0,esk3_0)), inference(spm,[status(thm)],[c_0_43, c_0_68])).
% 0.21/0.39  cnf(c_0_71, negated_conjecture, (esk3_0=k1_xboole_0|esk2_0=k1_xboole_0|~r2_hidden(X1,esk8_0)), inference(spm,[status(thm)],[c_0_50, c_0_69])).
% 0.21/0.39  cnf(c_0_72, negated_conjecture, (r2_hidden(esk1_2(esk7_0,X1),esk3_0)|r1_tarski(esk7_0,X1)), inference(spm,[status(thm)],[c_0_61, c_0_70])).
% 0.21/0.39  cnf(c_0_73, negated_conjecture, (esk2_0=k1_xboole_0|esk3_0=k1_xboole_0), inference(spm,[status(thm)],[c_0_71, c_0_48])).
% 0.21/0.39  cnf(c_0_74, negated_conjecture, (m1_subset_1(esk6_0,k1_zfmisc_1(esk2_0))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.21/0.39  cnf(c_0_75, negated_conjecture, (esk2_0=k1_xboole_0|r1_tarski(esk7_0,X1)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_72, c_0_73]), c_0_59])).
% 0.21/0.39  cnf(c_0_76, negated_conjecture, (r1_tarski(esk6_0,esk2_0)), inference(spm,[status(thm)],[c_0_43, c_0_74])).
% 0.21/0.39  cnf(c_0_77, negated_conjecture, (esk2_0=k1_xboole_0|~r2_hidden(X1,esk7_0)), inference(spm,[status(thm)],[c_0_50, c_0_75])).
% 0.21/0.39  cnf(c_0_78, negated_conjecture, (r2_hidden(esk1_2(esk6_0,X1),esk2_0)|r1_tarski(esk6_0,X1)), inference(spm,[status(thm)],[c_0_61, c_0_76])).
% 0.21/0.39  cnf(c_0_79, negated_conjecture, (esk2_0=k1_xboole_0), inference(spm,[status(thm)],[c_0_77, c_0_30])).
% 0.21/0.39  cnf(c_0_80, negated_conjecture, (r1_tarski(esk6_0,X1)), inference(sr,[status(thm)],[inference(rw,[status(thm)],[c_0_78, c_0_79]), c_0_59])).
% 0.21/0.39  cnf(c_0_81, negated_conjecture, (~r2_hidden(X1,esk6_0)), inference(spm,[status(thm)],[c_0_50, c_0_80])).
% 0.21/0.39  cnf(c_0_82, negated_conjecture, ($false), inference(sr,[status(thm)],[c_0_32, c_0_81]), ['proof']).
% 0.21/0.39  # SZS output end CNFRefutation
% 0.21/0.39  # Proof object total steps             : 83
% 0.21/0.39  # Proof object clause steps            : 64
% 0.21/0.39  # Proof object formula steps           : 19
% 0.21/0.39  # Proof object conjectures             : 46
% 0.21/0.39  # Proof object clause conjectures      : 43
% 0.21/0.39  # Proof object formula conjectures     : 3
% 0.21/0.39  # Proof object initial clauses used    : 20
% 0.21/0.39  # Proof object initial formulas used   : 9
% 0.21/0.39  # Proof object generating inferences   : 35
% 0.21/0.39  # Proof object simplifying inferences  : 18
% 0.21/0.39  # Training examples: 0 positive, 0 negative
% 0.21/0.39  # Parsed axioms                        : 10
% 0.21/0.39  # Removed by relevancy pruning/SinE    : 0
% 0.21/0.39  # Initial clauses                      : 23
% 0.21/0.39  # Removed in clause preprocessing      : 2
% 0.21/0.39  # Initial clauses in saturation        : 21
% 0.21/0.39  # Processed clauses                    : 159
% 0.21/0.39  # ...of these trivial                  : 0
% 0.21/0.39  # ...subsumed                          : 3
% 0.21/0.39  # ...remaining for further processing  : 156
% 0.21/0.39  # Other redundant clauses eliminated   : 0
% 0.21/0.39  # Clauses deleted for lack of memory   : 0
% 0.21/0.39  # Backward-subsumed                    : 15
% 0.21/0.39  # Backward-rewritten                   : 12
% 0.21/0.39  # Generated clauses                    : 282
% 0.21/0.39  # ...of the previous two non-trivial   : 238
% 0.21/0.39  # Contextual simplify-reflections      : 1
% 0.21/0.39  # Paramodulations                      : 281
% 0.21/0.39  # Factorizations                       : 0
% 0.21/0.39  # Equation resolutions                 : 0
% 0.21/0.39  # Propositional unsat checks           : 0
% 0.21/0.39  #    Propositional check models        : 0
% 0.21/0.39  #    Propositional check unsatisfiable : 0
% 0.21/0.39  #    Propositional clauses             : 0
% 0.21/0.39  #    Propositional clauses after purity: 0
% 0.21/0.39  #    Propositional unsat core size     : 0
% 0.21/0.39  #    Propositional preprocessing time  : 0.000
% 0.21/0.39  #    Propositional encoding time       : 0.000
% 0.21/0.39  #    Propositional solver time         : 0.000
% 0.21/0.39  #    Success case prop preproc time    : 0.000
% 0.21/0.39  #    Success case prop encoding time   : 0.000
% 0.21/0.39  #    Success case prop solver time     : 0.000
% 0.21/0.39  # Current number of processed clauses  : 107
% 0.21/0.39  #    Positive orientable unit clauses  : 35
% 0.21/0.39  #    Positive unorientable unit clauses: 0
% 0.21/0.39  #    Negative unit clauses             : 35
% 0.21/0.39  #    Non-unit-clauses                  : 37
% 0.21/0.39  # Current number of unprocessed clauses: 118
% 0.21/0.39  # ...number of literals in the above   : 301
% 0.21/0.39  # Current number of archived formulas  : 0
% 0.21/0.39  # Current number of archived clauses   : 51
% 0.21/0.39  # Clause-clause subsumption calls (NU) : 205
% 0.21/0.39  # Rec. Clause-clause subsumption calls : 94
% 0.21/0.39  # Non-unit clause-clause subsumptions  : 17
% 0.21/0.39  # Unit Clause-clause subsumption calls : 237
% 0.21/0.39  # Rewrite failures with RHS unbound    : 0
% 0.21/0.39  # BW rewrite match attempts            : 46
% 0.21/0.39  # BW rewrite match successes           : 1
% 0.21/0.39  # Condensation attempts                : 0
% 0.21/0.39  # Condensation successes               : 0
% 0.21/0.39  # Termbank termtop insertions          : 5449
% 0.21/0.39  
% 0.21/0.39  # -------------------------------------------------
% 0.21/0.39  # User time                : 0.036 s
% 0.21/0.39  # System time              : 0.006 s
% 0.21/0.39  # Total time               : 0.042 s
% 0.21/0.39  # Maximum resident set size: 1584 pages
%------------------------------------------------------------------------------
