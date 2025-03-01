%------------------------------------------------------------------------------
% File       : E---2.4
% Problem    : enumset1__t41_enumset1.p : TPTP v0.0.0. Released v0.0.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n001.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 300s
% DateTime   : Fri Oct 11 10:35:59 EDT 2019

% Result     : Theorem 1.02s
% Output     : CNFRefutation 1.02s
% Verified   : 
% Statistics : Number of formulae       :   31 (  87 expanded)
%              Number of clauses        :   22 (  40 expanded)
%              Number of leaves         :    4 (  21 expanded)
%              Depth                    :   11
%              Number of atoms          :  116 ( 430 expanded)
%              Number of equality atoms :   60 ( 237 expanded)
%              Maximal formula depth    :   17 (   4 average)
%              Maximal clause size      :   20 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t41_enumset1,conjecture,(
    ! [X1,X2] : k2_tarski(X1,X2) = k2_xboole_0(k1_tarski(X1),k1_tarski(X2)) ),
    file('/export/starexec/sandbox/benchmark/enumset1__t41_enumset1.p',t41_enumset1)).

fof(d1_tarski,axiom,(
    ! [X1,X2] :
      ( X2 = k1_tarski(X1)
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> X3 = X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/enumset1__t41_enumset1.p',d1_tarski)).

fof(d3_xboole_0,axiom,(
    ! [X1,X2,X3] :
      ( X3 = k2_xboole_0(X1,X2)
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ( r2_hidden(X4,X1)
            | r2_hidden(X4,X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/enumset1__t41_enumset1.p',d3_xboole_0)).

fof(d2_tarski,axiom,(
    ! [X1,X2,X3] :
      ( X3 = k2_tarski(X1,X2)
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ( X4 = X1
            | X4 = X2 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/enumset1__t41_enumset1.p',d2_tarski)).

fof(c_0_4,negated_conjecture,(
    ~ ! [X1,X2] : k2_tarski(X1,X2) = k2_xboole_0(k1_tarski(X1),k1_tarski(X2)) ),
    inference(assume_negation,[status(cth)],[t41_enumset1])).

fof(c_0_5,plain,(
    ! [X13,X14,X15,X16,X17,X18] :
      ( ( ~ r2_hidden(X15,X14)
        | X15 = X13
        | X14 != k1_tarski(X13) )
      & ( X16 != X13
        | r2_hidden(X16,X14)
        | X14 != k1_tarski(X13) )
      & ( ~ r2_hidden(esk3_2(X17,X18),X18)
        | esk3_2(X17,X18) != X17
        | X18 = k1_tarski(X17) )
      & ( r2_hidden(esk3_2(X17,X18),X18)
        | esk3_2(X17,X18) = X17
        | X18 = k1_tarski(X17) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_tarski])])])])])])).

fof(c_0_6,negated_conjecture,(
    k2_tarski(esk1_0,esk2_0) != k2_xboole_0(k1_tarski(esk1_0),k1_tarski(esk2_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_4])])])).

fof(c_0_7,plain,(
    ! [X29,X30,X31,X32,X33,X34,X35,X36] :
      ( ( ~ r2_hidden(X32,X31)
        | r2_hidden(X32,X29)
        | r2_hidden(X32,X30)
        | X31 != k2_xboole_0(X29,X30) )
      & ( ~ r2_hidden(X33,X29)
        | r2_hidden(X33,X31)
        | X31 != k2_xboole_0(X29,X30) )
      & ( ~ r2_hidden(X33,X30)
        | r2_hidden(X33,X31)
        | X31 != k2_xboole_0(X29,X30) )
      & ( ~ r2_hidden(esk5_3(X34,X35,X36),X34)
        | ~ r2_hidden(esk5_3(X34,X35,X36),X36)
        | X36 = k2_xboole_0(X34,X35) )
      & ( ~ r2_hidden(esk5_3(X34,X35,X36),X35)
        | ~ r2_hidden(esk5_3(X34,X35,X36),X36)
        | X36 = k2_xboole_0(X34,X35) )
      & ( r2_hidden(esk5_3(X34,X35,X36),X36)
        | r2_hidden(esk5_3(X34,X35,X36),X34)
        | r2_hidden(esk5_3(X34,X35,X36),X35)
        | X36 = k2_xboole_0(X34,X35) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_xboole_0])])])])])])).

cnf(c_0_8,plain,
    ( X1 = X3
    | ~ r2_hidden(X1,X2)
    | X2 != k1_tarski(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_9,negated_conjecture,
    ( k2_tarski(esk1_0,esk2_0) != k2_xboole_0(k1_tarski(esk1_0),k1_tarski(esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_10,plain,
    ( r2_hidden(esk5_3(X1,X2,X3),X3)
    | r2_hidden(esk5_3(X1,X2,X3),X1)
    | r2_hidden(esk5_3(X1,X2,X3),X2)
    | X3 = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

fof(c_0_11,plain,(
    ! [X20,X21,X22,X23,X24,X25,X26,X27] :
      ( ( ~ r2_hidden(X23,X22)
        | X23 = X20
        | X23 = X21
        | X22 != k2_tarski(X20,X21) )
      & ( X24 != X20
        | r2_hidden(X24,X22)
        | X22 != k2_tarski(X20,X21) )
      & ( X24 != X21
        | r2_hidden(X24,X22)
        | X22 != k2_tarski(X20,X21) )
      & ( esk4_3(X25,X26,X27) != X25
        | ~ r2_hidden(esk4_3(X25,X26,X27),X27)
        | X27 = k2_tarski(X25,X26) )
      & ( esk4_3(X25,X26,X27) != X26
        | ~ r2_hidden(esk4_3(X25,X26,X27),X27)
        | X27 = k2_tarski(X25,X26) )
      & ( r2_hidden(esk4_3(X25,X26,X27),X27)
        | esk4_3(X25,X26,X27) = X25
        | esk4_3(X25,X26,X27) = X26
        | X27 = k2_tarski(X25,X26) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d2_tarski])])])])])])).

cnf(c_0_12,plain,
    ( X1 = X2
    | ~ r2_hidden(X1,k1_tarski(X2)) ),
    inference(er,[status(thm)],[c_0_8])).

cnf(c_0_13,negated_conjecture,
    ( r2_hidden(esk5_3(k1_tarski(esk1_0),k1_tarski(esk2_0),k2_tarski(esk1_0,esk2_0)),k2_tarski(esk1_0,esk2_0))
    | r2_hidden(esk5_3(k1_tarski(esk1_0),k1_tarski(esk2_0),k2_tarski(esk1_0,esk2_0)),k1_tarski(esk1_0))
    | r2_hidden(esk5_3(k1_tarski(esk1_0),k1_tarski(esk2_0),k2_tarski(esk1_0,esk2_0)),k1_tarski(esk2_0)) ),
    inference(er,[status(thm)],[inference(spm,[status(thm)],[c_0_9,c_0_10])])).

cnf(c_0_14,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k2_tarski(X4,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_15,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k1_tarski(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_16,plain,
    ( X3 = k2_xboole_0(X1,X2)
    | ~ r2_hidden(esk5_3(X1,X2,X3),X2)
    | ~ r2_hidden(esk5_3(X1,X2,X3),X3) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_17,negated_conjecture,
    ( esk5_3(k1_tarski(esk1_0),k1_tarski(esk2_0),k2_tarski(esk1_0,esk2_0)) = esk2_0
    | r2_hidden(esk5_3(k1_tarski(esk1_0),k1_tarski(esk2_0),k2_tarski(esk1_0,esk2_0)),k2_tarski(esk1_0,esk2_0))
    | r2_hidden(esk5_3(k1_tarski(esk1_0),k1_tarski(esk2_0),k2_tarski(esk1_0,esk2_0)),k1_tarski(esk1_0)) ),
    inference(spm,[status(thm)],[c_0_12,c_0_13])).

cnf(c_0_18,plain,
    ( r2_hidden(X1,k2_tarski(X2,X1)) ),
    inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_14])])).

cnf(c_0_19,plain,
    ( r2_hidden(X1,k1_tarski(X1)) ),
    inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_15])])).

cnf(c_0_20,negated_conjecture,
    ( r2_hidden(esk5_3(k1_tarski(esk1_0),k1_tarski(esk2_0),k2_tarski(esk1_0,esk2_0)),k2_tarski(esk1_0,esk2_0))
    | r2_hidden(esk5_3(k1_tarski(esk1_0),k1_tarski(esk2_0),k2_tarski(esk1_0,esk2_0)),k1_tarski(esk1_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_16,c_0_17]),c_0_18]),c_0_19])]),c_0_9])).

cnf(c_0_21,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k2_tarski(X2,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_22,plain,
    ( X1 = X3
    | X1 = X4
    | ~ r2_hidden(X1,X2)
    | X2 != k2_tarski(X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_23,plain,
    ( X3 = k2_xboole_0(X1,X2)
    | ~ r2_hidden(esk5_3(X1,X2,X3),X1)
    | ~ r2_hidden(esk5_3(X1,X2,X3),X3) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_24,negated_conjecture,
    ( esk5_3(k1_tarski(esk1_0),k1_tarski(esk2_0),k2_tarski(esk1_0,esk2_0)) = esk1_0
    | r2_hidden(esk5_3(k1_tarski(esk1_0),k1_tarski(esk2_0),k2_tarski(esk1_0,esk2_0)),k2_tarski(esk1_0,esk2_0)) ),
    inference(spm,[status(thm)],[c_0_12,c_0_20])).

cnf(c_0_25,plain,
    ( r2_hidden(X1,k2_tarski(X1,X2)) ),
    inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_21])])).

cnf(c_0_26,plain,
    ( X1 = X2
    | X1 = X3
    | ~ r2_hidden(X1,k2_tarski(X3,X2)) ),
    inference(er,[status(thm)],[c_0_22])).

cnf(c_0_27,negated_conjecture,
    ( r2_hidden(esk5_3(k1_tarski(esk1_0),k1_tarski(esk2_0),k2_tarski(esk1_0,esk2_0)),k2_tarski(esk1_0,esk2_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_23,c_0_24]),c_0_25]),c_0_19])]),c_0_9])).

cnf(c_0_28,negated_conjecture,
    ( esk5_3(k1_tarski(esk1_0),k1_tarski(esk2_0),k2_tarski(esk1_0,esk2_0)) = esk2_0
    | esk5_3(k1_tarski(esk1_0),k1_tarski(esk2_0),k2_tarski(esk1_0,esk2_0)) = esk1_0 ),
    inference(spm,[status(thm)],[c_0_26,c_0_27])).

cnf(c_0_29,negated_conjecture,
    ( esk5_3(k1_tarski(esk1_0),k1_tarski(esk2_0),k2_tarski(esk1_0,esk2_0)) = esk1_0 ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_16,c_0_28]),c_0_18]),c_0_19])]),c_0_9])).

cnf(c_0_30,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_23,c_0_29]),c_0_25]),c_0_19])]),c_0_9]),
    [proof]).
%------------------------------------------------------------------------------
