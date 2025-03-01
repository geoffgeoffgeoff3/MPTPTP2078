%------------------------------------------------------------------------------
% File       : E---2.4
% Problem    : zfmisc_1__t94_zfmisc_1.p : TPTP v0.0.0. Released v0.0.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n023.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 300s
% DateTime   : Fri Oct 11 10:42:13 EDT 2019

% Result     : Theorem 0.47s
% Output     : CNFRefutation 0.47s
% Verified   : 
% Statistics : Number of formulae       :   22 (  34 expanded)
%              Number of clauses        :   15 (  16 expanded)
%              Number of leaves         :    3 (   8 expanded)
%              Depth                    :    8
%              Number of atoms          :   75 ( 140 expanded)
%              Number of equality atoms :    9 (  16 expanded)
%              Maximal formula depth    :   17 (   5 average)
%              Maximal clause size      :   20 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(d4_tarski,axiom,(
    ! [X1,X2] :
      ( X2 = k3_tarski(X1)
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ? [X4] :
              ( r2_hidden(X3,X4)
              & r2_hidden(X4,X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/zfmisc_1__t94_zfmisc_1.p',d4_tarski)).

fof(t94_zfmisc_1,conjecture,(
    ! [X1,X2] :
      ( ! [X3] :
          ( r2_hidden(X3,X1)
         => r1_tarski(X3,X2) )
     => r1_tarski(k3_tarski(X1),X2) ) ),
    file('/export/starexec/sandbox/benchmark/zfmisc_1__t94_zfmisc_1.p',t94_zfmisc_1)).

fof(d3_tarski,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
    <=> ! [X3] :
          ( r2_hidden(X3,X1)
         => r2_hidden(X3,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/zfmisc_1__t94_zfmisc_1.p',d3_tarski)).

fof(c_0_3,plain,(
    ! [X16,X17,X18,X20,X21,X22,X23,X25] :
      ( ( r2_hidden(X18,esk4_3(X16,X17,X18))
        | ~ r2_hidden(X18,X17)
        | X17 != k3_tarski(X16) )
      & ( r2_hidden(esk4_3(X16,X17,X18),X16)
        | ~ r2_hidden(X18,X17)
        | X17 != k3_tarski(X16) )
      & ( ~ r2_hidden(X20,X21)
        | ~ r2_hidden(X21,X16)
        | r2_hidden(X20,X17)
        | X17 != k3_tarski(X16) )
      & ( ~ r2_hidden(esk5_2(X22,X23),X23)
        | ~ r2_hidden(esk5_2(X22,X23),X25)
        | ~ r2_hidden(X25,X22)
        | X23 = k3_tarski(X22) )
      & ( r2_hidden(esk5_2(X22,X23),esk6_2(X22,X23))
        | r2_hidden(esk5_2(X22,X23),X23)
        | X23 = k3_tarski(X22) )
      & ( r2_hidden(esk6_2(X22,X23),X22)
        | r2_hidden(esk5_2(X22,X23),X23)
        | X23 = k3_tarski(X22) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d4_tarski])])])])])])).

fof(c_0_4,negated_conjecture,(
    ~ ! [X1,X2] :
        ( ! [X3] :
            ( r2_hidden(X3,X1)
           => r1_tarski(X3,X2) )
       => r1_tarski(k3_tarski(X1),X2) ) ),
    inference(assume_negation,[status(cth)],[t94_zfmisc_1])).

cnf(c_0_5,plain,
    ( r2_hidden(esk4_3(X1,X2,X3),X1)
    | ~ r2_hidden(X3,X2)
    | X2 != k3_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_3])).

fof(c_0_6,plain,(
    ! [X10,X11,X12,X13,X14] :
      ( ( ~ r1_tarski(X10,X11)
        | ~ r2_hidden(X12,X10)
        | r2_hidden(X12,X11) )
      & ( r2_hidden(esk3_2(X13,X14),X13)
        | r1_tarski(X13,X14) )
      & ( ~ r2_hidden(esk3_2(X13,X14),X14)
        | r1_tarski(X13,X14) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).

fof(c_0_7,negated_conjecture,(
    ! [X7] :
      ( ( ~ r2_hidden(X7,esk1_0)
        | r1_tarski(X7,esk2_0) )
      & ~ r1_tarski(k3_tarski(esk1_0),esk2_0) ) ),
    inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_4])])])])).

cnf(c_0_8,plain,
    ( r2_hidden(esk4_3(X1,k3_tarski(X1),X2),X1)
    | ~ r2_hidden(X2,k3_tarski(X1)) ),
    inference(er,[status(thm)],[c_0_5])).

cnf(c_0_9,plain,
    ( r2_hidden(esk3_2(X1,X2),X1)
    | r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_10,negated_conjecture,
    ( r1_tarski(X1,esk2_0)
    | ~ r2_hidden(X1,esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_11,plain,
    ( r1_tarski(k3_tarski(X1),X2)
    | r2_hidden(esk4_3(X1,k3_tarski(X1),esk3_2(k3_tarski(X1),X2)),X1) ),
    inference(spm,[status(thm)],[c_0_8,c_0_9])).

cnf(c_0_12,plain,
    ( r2_hidden(X1,esk4_3(X2,X3,X1))
    | ~ r2_hidden(X1,X3)
    | X3 != k3_tarski(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_3])).

cnf(c_0_13,plain,
    ( r2_hidden(X3,X2)
    | ~ r1_tarski(X1,X2)
    | ~ r2_hidden(X3,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_14,negated_conjecture,
    ( r1_tarski(esk4_3(esk1_0,k3_tarski(esk1_0),esk3_2(k3_tarski(esk1_0),X1)),esk2_0)
    | r1_tarski(k3_tarski(esk1_0),X1) ),
    inference(spm,[status(thm)],[c_0_10,c_0_11])).

cnf(c_0_15,plain,
    ( r2_hidden(X1,esk4_3(X2,k3_tarski(X2),X1))
    | ~ r2_hidden(X1,k3_tarski(X2)) ),
    inference(er,[status(thm)],[c_0_12])).

cnf(c_0_16,negated_conjecture,
    ( r1_tarski(k3_tarski(esk1_0),X1)
    | r2_hidden(X2,esk2_0)
    | ~ r2_hidden(X2,esk4_3(esk1_0,k3_tarski(esk1_0),esk3_2(k3_tarski(esk1_0),X1))) ),
    inference(spm,[status(thm)],[c_0_13,c_0_14])).

cnf(c_0_17,plain,
    ( r1_tarski(k3_tarski(X1),X2)
    | r2_hidden(esk3_2(k3_tarski(X1),X2),esk4_3(X1,k3_tarski(X1),esk3_2(k3_tarski(X1),X2))) ),
    inference(spm,[status(thm)],[c_0_15,c_0_9])).

cnf(c_0_18,plain,
    ( r1_tarski(X1,X2)
    | ~ r2_hidden(esk3_2(X1,X2),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_19,negated_conjecture,
    ( r1_tarski(k3_tarski(esk1_0),X1)
    | r2_hidden(esk3_2(k3_tarski(esk1_0),X1),esk2_0) ),
    inference(spm,[status(thm)],[c_0_16,c_0_17])).

cnf(c_0_20,negated_conjecture,
    ( ~ r1_tarski(k3_tarski(esk1_0),esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_21,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_18,c_0_19]),c_0_20]),
    [proof]).
%------------------------------------------------------------------------------
