%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0871+1.001 : TPTP v7.4.0. Released v7.4.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n031.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 08:40:19 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   13 (  19 expanded)
%              Number of clauses        :    6 (   8 expanded)
%              Number of leaves         :    3 (   5 expanded)
%              Depth                    :    5
%              Number of atoms          :   13 (  19 expanded)
%              Number of equality atoms :   12 (  18 expanded)
%              Maximal formula depth    :    6 (   3 average)
%              Maximal clause size      :    1 (   1 average)
%              Maximal term depth       :    4 (   3 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t31_mcart_1,conjecture,(
    ! [X1,X2,X3,X4] : k4_mcart_1(X1,X2,X3,X4) = k4_tarski(k4_tarski(k4_tarski(X1,X2),X3),X4) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t31_mcart_1)).

fof(d3_mcart_1,axiom,(
    ! [X1,X2,X3] : k3_mcart_1(X1,X2,X3) = k4_tarski(k4_tarski(X1,X2),X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_mcart_1)).

fof(d4_mcart_1,axiom,(
    ! [X1,X2,X3,X4] : k4_mcart_1(X1,X2,X3,X4) = k4_tarski(k3_mcart_1(X1,X2,X3),X4) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d4_mcart_1)).

fof(c_0_3,negated_conjecture,(
    ~ ! [X1,X2,X3,X4] : k4_mcart_1(X1,X2,X3,X4) = k4_tarski(k4_tarski(k4_tarski(X1,X2),X3),X4) ),
    inference(assume_negation,[status(cth)],[t31_mcart_1])).

fof(c_0_4,negated_conjecture,(
    k4_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0) != k4_tarski(k4_tarski(k4_tarski(esk1_0,esk2_0),esk3_0),esk4_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_3])])])).

fof(c_0_5,plain,(
    ! [X5,X6,X7] : k3_mcart_1(X5,X6,X7) = k4_tarski(k4_tarski(X5,X6),X7) ),
    inference(variable_rename,[status(thm)],[d3_mcart_1])).

fof(c_0_6,plain,(
    ! [X8,X9,X10,X11] : k4_mcart_1(X8,X9,X10,X11) = k4_tarski(k3_mcart_1(X8,X9,X10),X11) ),
    inference(variable_rename,[status(thm)],[d4_mcart_1])).

cnf(c_0_7,negated_conjecture,
    ( k4_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0) != k4_tarski(k4_tarski(k4_tarski(esk1_0,esk2_0),esk3_0),esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_4])).

cnf(c_0_8,plain,
    ( k3_mcart_1(X1,X2,X3) = k4_tarski(k4_tarski(X1,X2),X3) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_9,plain,
    ( k4_mcart_1(X1,X2,X3,X4) = k4_tarski(k3_mcart_1(X1,X2,X3),X4) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_10,negated_conjecture,
    ( k3_mcart_1(k4_tarski(esk1_0,esk2_0),esk3_0,esk4_0) != k4_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0) ),
    inference(rw,[status(thm)],[c_0_7,c_0_8])).

cnf(c_0_11,plain,
    ( k3_mcart_1(k4_tarski(X1,X2),X3,X4) = k4_mcart_1(X1,X2,X3,X4) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_8,c_0_8]),c_0_9])).

cnf(c_0_12,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_10,c_0_11])]),
    [proof]).

%------------------------------------------------------------------------------
