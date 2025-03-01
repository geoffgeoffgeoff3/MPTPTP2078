%------------------------------------------------------------------------------
% File       : E---2.4
% Problem    : zfmisc_1__t86_zfmisc_1.p : TPTP v0.0.0. Released v0.0.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n014.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 300s
% DateTime   : Fri Oct 11 10:42:13 EDT 2019

% Result     : Theorem 9.79s
% Output     : CNFRefutation 9.79s
% Verified   : 
% Statistics : Number of formulae       :   45 ( 164 expanded)
%              Number of clauses        :   32 (  87 expanded)
%              Number of leaves         :    6 (  37 expanded)
%              Depth                    :   12
%              Number of atoms          :  119 ( 603 expanded)
%              Number of equality atoms :   22 ( 108 expanded)
%              Maximal formula depth    :   17 (   4 average)
%              Maximal clause size      :   20 (   2 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(d1_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( X2 = k1_zfmisc_1(X1)
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> r1_tarski(X3,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/zfmisc_1__t86_zfmisc_1.p',d1_zfmisc_1)).

fof(d3_tarski,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
    <=> ! [X3] :
          ( r2_hidden(X3,X1)
         => r2_hidden(X3,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/zfmisc_1__t86_zfmisc_1.p',d3_tarski)).

fof(d3_xboole_0,axiom,(
    ! [X1,X2,X3] :
      ( X3 = k2_xboole_0(X1,X2)
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ( r2_hidden(X4,X1)
            | r2_hidden(X4,X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/zfmisc_1__t86_zfmisc_1.p',d3_xboole_0)).

fof(t86_zfmisc_1,conjecture,(
    ! [X1,X2] : r1_tarski(k2_xboole_0(k1_zfmisc_1(k4_xboole_0(X1,X2)),k1_zfmisc_1(k4_xboole_0(X2,X1))),k1_zfmisc_1(k5_xboole_0(X1,X2))) ),
    file('/export/starexec/sandbox/benchmark/zfmisc_1__t86_zfmisc_1.p',t86_zfmisc_1)).

fof(d6_xboole_0,axiom,(
    ! [X1,X2] : k5_xboole_0(X1,X2) = k2_xboole_0(k4_xboole_0(X1,X2),k4_xboole_0(X2,X1)) ),
    file('/export/starexec/sandbox/benchmark/zfmisc_1__t86_zfmisc_1.p',d6_xboole_0)).

fof(commutativity_k2_xboole_0,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox/benchmark/zfmisc_1__t86_zfmisc_1.p',commutativity_k2_xboole_0)).

fof(c_0_6,plain,(
    ! [X13,X14,X15,X16,X17,X18] :
      ( ( ~ r2_hidden(X15,X14)
        | r1_tarski(X15,X13)
        | X14 != k1_zfmisc_1(X13) )
      & ( ~ r1_tarski(X16,X13)
        | r2_hidden(X16,X14)
        | X14 != k1_zfmisc_1(X13) )
      & ( ~ r2_hidden(esk3_2(X17,X18),X18)
        | ~ r1_tarski(esk3_2(X17,X18),X17)
        | X18 = k1_zfmisc_1(X17) )
      & ( r2_hidden(esk3_2(X17,X18),X18)
        | r1_tarski(esk3_2(X17,X18),X17)
        | X18 = k1_zfmisc_1(X17) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_zfmisc_1])])])])])])).

fof(c_0_7,plain,(
    ! [X20,X21,X22,X23,X24] :
      ( ( ~ r1_tarski(X20,X21)
        | ~ r2_hidden(X22,X20)
        | r2_hidden(X22,X21) )
      & ( r2_hidden(esk4_2(X23,X24),X23)
        | r1_tarski(X23,X24) )
      & ( ~ r2_hidden(esk4_2(X23,X24),X24)
        | r1_tarski(X23,X24) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).

cnf(c_0_8,plain,
    ( r1_tarski(X1,X3)
    | ~ r2_hidden(X1,X2)
    | X2 != k1_zfmisc_1(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_9,plain,
    ( r2_hidden(X1,X3)
    | ~ r1_tarski(X1,X2)
    | X3 != k1_zfmisc_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

fof(c_0_10,plain,(
    ! [X26,X27,X28,X29,X30,X31,X32,X33] :
      ( ( ~ r2_hidden(X29,X28)
        | r2_hidden(X29,X26)
        | r2_hidden(X29,X27)
        | X28 != k2_xboole_0(X26,X27) )
      & ( ~ r2_hidden(X30,X26)
        | r2_hidden(X30,X28)
        | X28 != k2_xboole_0(X26,X27) )
      & ( ~ r2_hidden(X30,X27)
        | r2_hidden(X30,X28)
        | X28 != k2_xboole_0(X26,X27) )
      & ( ~ r2_hidden(esk5_3(X31,X32,X33),X31)
        | ~ r2_hidden(esk5_3(X31,X32,X33),X33)
        | X33 = k2_xboole_0(X31,X32) )
      & ( ~ r2_hidden(esk5_3(X31,X32,X33),X32)
        | ~ r2_hidden(esk5_3(X31,X32,X33),X33)
        | X33 = k2_xboole_0(X31,X32) )
      & ( r2_hidden(esk5_3(X31,X32,X33),X33)
        | r2_hidden(esk5_3(X31,X32,X33),X31)
        | r2_hidden(esk5_3(X31,X32,X33),X32)
        | X33 = k2_xboole_0(X31,X32) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_xboole_0])])])])])])).

cnf(c_0_11,plain,
    ( r2_hidden(X3,X2)
    | ~ r1_tarski(X1,X2)
    | ~ r2_hidden(X3,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_12,plain,
    ( r1_tarski(X1,X2)
    | ~ r2_hidden(X1,k1_zfmisc_1(X2)) ),
    inference(er,[status(thm)],[c_0_8])).

cnf(c_0_13,plain,
    ( r2_hidden(X1,k1_zfmisc_1(X2))
    | ~ r1_tarski(X1,X2) ),
    inference(er,[status(thm)],[c_0_9])).

cnf(c_0_14,plain,
    ( r2_hidden(esk4_2(X1,X2),X1)
    | r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_15,plain,
    ( r1_tarski(X1,X2)
    | ~ r2_hidden(esk4_2(X1,X2),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_16,plain,
    ( r2_hidden(X1,X3)
    | ~ r2_hidden(X1,X2)
    | X3 != k2_xboole_0(X4,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_17,plain,
    ( r2_hidden(X1,X2)
    | ~ r2_hidden(X3,k1_zfmisc_1(X2))
    | ~ r2_hidden(X1,X3) ),
    inference(spm,[status(thm)],[c_0_11,c_0_12])).

cnf(c_0_18,plain,
    ( r2_hidden(esk4_2(X1,X2),X1)
    | r2_hidden(X1,k1_zfmisc_1(X2)) ),
    inference(spm,[status(thm)],[c_0_13,c_0_14])).

fof(c_0_19,negated_conjecture,(
    ~ ! [X1,X2] : r1_tarski(k2_xboole_0(k1_zfmisc_1(k4_xboole_0(X1,X2)),k1_zfmisc_1(k4_xboole_0(X2,X1))),k1_zfmisc_1(k5_xboole_0(X1,X2))) ),
    inference(assume_negation,[status(cth)],[t86_zfmisc_1])).

cnf(c_0_20,plain,
    ( r2_hidden(X1,k1_zfmisc_1(X2))
    | ~ r2_hidden(esk4_2(X1,X2),X2) ),
    inference(spm,[status(thm)],[c_0_13,c_0_15])).

cnf(c_0_21,plain,
    ( r2_hidden(X1,k2_xboole_0(X2,X3))
    | ~ r2_hidden(X1,X3) ),
    inference(er,[status(thm)],[c_0_16])).

cnf(c_0_22,plain,
    ( r2_hidden(k1_zfmisc_1(X1),k1_zfmisc_1(X2))
    | r2_hidden(X3,X1)
    | ~ r2_hidden(X3,esk4_2(k1_zfmisc_1(X1),X2)) ),
    inference(spm,[status(thm)],[c_0_17,c_0_18])).

fof(c_0_23,negated_conjecture,(
    ~ r1_tarski(k2_xboole_0(k1_zfmisc_1(k4_xboole_0(esk1_0,esk2_0)),k1_zfmisc_1(k4_xboole_0(esk2_0,esk1_0))),k1_zfmisc_1(k5_xboole_0(esk1_0,esk2_0))) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_19])])])).

fof(c_0_24,plain,(
    ! [X35,X36] : k5_xboole_0(X35,X36) = k2_xboole_0(k4_xboole_0(X35,X36),k4_xboole_0(X36,X35)) ),
    inference(variable_rename,[status(thm)],[d6_xboole_0])).

cnf(c_0_25,plain,
    ( r2_hidden(X1,k1_zfmisc_1(k2_xboole_0(X2,X3)))
    | ~ r2_hidden(esk4_2(X1,k2_xboole_0(X2,X3)),X3) ),
    inference(spm,[status(thm)],[c_0_20,c_0_21])).

cnf(c_0_26,plain,
    ( r2_hidden(esk4_2(esk4_2(k1_zfmisc_1(X1),X2),X3),X1)
    | r2_hidden(esk4_2(k1_zfmisc_1(X1),X2),k1_zfmisc_1(X3))
    | r2_hidden(k1_zfmisc_1(X1),k1_zfmisc_1(X2)) ),
    inference(spm,[status(thm)],[c_0_22,c_0_18])).

cnf(c_0_27,negated_conjecture,
    ( ~ r1_tarski(k2_xboole_0(k1_zfmisc_1(k4_xboole_0(esk1_0,esk2_0)),k1_zfmisc_1(k4_xboole_0(esk2_0,esk1_0))),k1_zfmisc_1(k5_xboole_0(esk1_0,esk2_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_28,plain,
    ( k5_xboole_0(X1,X2) = k2_xboole_0(k4_xboole_0(X1,X2),k4_xboole_0(X2,X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_29,plain,
    ( r2_hidden(esk4_2(k1_zfmisc_1(X1),X2),k1_zfmisc_1(k2_xboole_0(X3,X1)))
    | r2_hidden(k1_zfmisc_1(X1),k1_zfmisc_1(X2)) ),
    inference(spm,[status(thm)],[c_0_25,c_0_26])).

fof(c_0_30,plain,(
    ! [X9,X10] : k2_xboole_0(X9,X10) = k2_xboole_0(X10,X9) ),
    inference(variable_rename,[status(thm)],[commutativity_k2_xboole_0])).

cnf(c_0_31,plain,
    ( r2_hidden(X1,X3)
    | r2_hidden(X1,X4)
    | ~ r2_hidden(X1,X2)
    | X2 != k2_xboole_0(X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_32,negated_conjecture,
    ( ~ r1_tarski(k2_xboole_0(k1_zfmisc_1(k4_xboole_0(esk1_0,esk2_0)),k1_zfmisc_1(k4_xboole_0(esk2_0,esk1_0))),k1_zfmisc_1(k2_xboole_0(k4_xboole_0(esk1_0,esk2_0),k4_xboole_0(esk2_0,esk1_0)))) ),
    inference(rw,[status(thm)],[c_0_27,c_0_28])).

cnf(c_0_33,plain,
    ( r2_hidden(k1_zfmisc_1(X1),k1_zfmisc_1(k1_zfmisc_1(k2_xboole_0(X2,X1)))) ),
    inference(spm,[status(thm)],[c_0_20,c_0_29])).

cnf(c_0_34,plain,
    ( k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_35,plain,
    ( r2_hidden(X1,X2)
    | r2_hidden(X1,X3)
    | ~ r2_hidden(X1,k2_xboole_0(X3,X2)) ),
    inference(er,[status(thm)],[c_0_31])).

cnf(c_0_36,negated_conjecture,
    ( r2_hidden(esk4_2(k2_xboole_0(k1_zfmisc_1(k4_xboole_0(esk1_0,esk2_0)),k1_zfmisc_1(k4_xboole_0(esk2_0,esk1_0))),k1_zfmisc_1(k2_xboole_0(k4_xboole_0(esk1_0,esk2_0),k4_xboole_0(esk2_0,esk1_0)))),k2_xboole_0(k1_zfmisc_1(k4_xboole_0(esk1_0,esk2_0)),k1_zfmisc_1(k4_xboole_0(esk2_0,esk1_0)))) ),
    inference(spm,[status(thm)],[c_0_32,c_0_14])).

cnf(c_0_37,negated_conjecture,
    ( ~ r2_hidden(esk4_2(k2_xboole_0(k1_zfmisc_1(k4_xboole_0(esk1_0,esk2_0)),k1_zfmisc_1(k4_xboole_0(esk2_0,esk1_0))),k1_zfmisc_1(k2_xboole_0(k4_xboole_0(esk1_0,esk2_0),k4_xboole_0(esk2_0,esk1_0)))),k1_zfmisc_1(k2_xboole_0(k4_xboole_0(esk1_0,esk2_0),k4_xboole_0(esk2_0,esk1_0)))) ),
    inference(spm,[status(thm)],[c_0_32,c_0_15])).

cnf(c_0_38,plain,
    ( r2_hidden(X1,k1_zfmisc_1(k2_xboole_0(X2,X3)))
    | ~ r2_hidden(X1,k1_zfmisc_1(X3)) ),
    inference(spm,[status(thm)],[c_0_17,c_0_33])).

cnf(c_0_39,plain,
    ( r2_hidden(k1_zfmisc_1(X1),k1_zfmisc_1(k1_zfmisc_1(k2_xboole_0(X1,X2)))) ),
    inference(spm,[status(thm)],[c_0_33,c_0_34])).

cnf(c_0_40,negated_conjecture,
    ( r2_hidden(esk4_2(k2_xboole_0(k1_zfmisc_1(k4_xboole_0(esk1_0,esk2_0)),k1_zfmisc_1(k4_xboole_0(esk2_0,esk1_0))),k1_zfmisc_1(k2_xboole_0(k4_xboole_0(esk1_0,esk2_0),k4_xboole_0(esk2_0,esk1_0)))),k1_zfmisc_1(k4_xboole_0(esk2_0,esk1_0)))
    | r2_hidden(esk4_2(k2_xboole_0(k1_zfmisc_1(k4_xboole_0(esk1_0,esk2_0)),k1_zfmisc_1(k4_xboole_0(esk2_0,esk1_0))),k1_zfmisc_1(k2_xboole_0(k4_xboole_0(esk1_0,esk2_0),k4_xboole_0(esk2_0,esk1_0)))),k1_zfmisc_1(k4_xboole_0(esk1_0,esk2_0))) ),
    inference(spm,[status(thm)],[c_0_35,c_0_36])).

cnf(c_0_41,negated_conjecture,
    ( ~ r2_hidden(esk4_2(k2_xboole_0(k1_zfmisc_1(k4_xboole_0(esk1_0,esk2_0)),k1_zfmisc_1(k4_xboole_0(esk2_0,esk1_0))),k1_zfmisc_1(k2_xboole_0(k4_xboole_0(esk1_0,esk2_0),k4_xboole_0(esk2_0,esk1_0)))),k1_zfmisc_1(k4_xboole_0(esk2_0,esk1_0))) ),
    inference(spm,[status(thm)],[c_0_37,c_0_38])).

cnf(c_0_42,plain,
    ( r2_hidden(X1,k1_zfmisc_1(k2_xboole_0(X2,X3)))
    | ~ r2_hidden(X1,k1_zfmisc_1(X2)) ),
    inference(spm,[status(thm)],[c_0_17,c_0_39])).

cnf(c_0_43,negated_conjecture,
    ( r2_hidden(esk4_2(k2_xboole_0(k1_zfmisc_1(k4_xboole_0(esk1_0,esk2_0)),k1_zfmisc_1(k4_xboole_0(esk2_0,esk1_0))),k1_zfmisc_1(k2_xboole_0(k4_xboole_0(esk1_0,esk2_0),k4_xboole_0(esk2_0,esk1_0)))),k1_zfmisc_1(k4_xboole_0(esk1_0,esk2_0))) ),
    inference(sr,[status(thm)],[c_0_40,c_0_41])).

cnf(c_0_44,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_42]),c_0_43])]),
    [proof]).
%------------------------------------------------------------------------------
