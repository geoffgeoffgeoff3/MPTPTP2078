%------------------------------------------------------------------------------
% File       : E---2.4
% Problem    : zfmisc_1__t6_zfmisc_1.p : TPTP v0.0.0. Released v0.0.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n027.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 300s
% DateTime   : Fri Oct 11 10:42:11 EDT 2019

% Result     : Theorem 0.12s
% Output     : CNFRefutation 0.12s
% Verified   : 
% Statistics : Number of formulae       :   28 (  35 expanded)
%              Number of clauses        :   16 (  17 expanded)
%              Number of leaves         :    6 (   9 expanded)
%              Depth                    :    7
%              Number of atoms          :   64 (  87 expanded)
%              Number of equality atoms :   35 (  48 expanded)
%              Maximal formula depth    :   13 (   3 average)
%              Maximal clause size      :   12 (   2 average)
%              Maximal term depth       :    2 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t6_zfmisc_1,conjecture,(
    ! [X1,X2] :
      ( r1_tarski(k1_tarski(X1),k1_tarski(X2))
     => X1 = X2 ) ),
    file('/export/starexec/sandbox2/benchmark/zfmisc_1__t6_zfmisc_1.p',t6_zfmisc_1)).

fof(d1_tarski,axiom,(
    ! [X1,X2] :
      ( X2 = k1_tarski(X1)
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> X3 = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/zfmisc_1__t6_zfmisc_1.p',d1_tarski)).

fof(l3_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,k1_tarski(X2))
    <=> ( X1 = k1_xboole_0
        | X1 = k1_tarski(X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/zfmisc_1__t6_zfmisc_1.p',l3_zfmisc_1)).

fof(t6_boole,axiom,(
    ! [X1] :
      ( v1_xboole_0(X1)
     => X1 = k1_xboole_0 ) ),
    file('/export/starexec/sandbox2/benchmark/zfmisc_1__t6_zfmisc_1.p',t6_boole)).

fof(dt_o_0_0_xboole_0,axiom,(
    v1_xboole_0(o_0_0_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/zfmisc_1__t6_zfmisc_1.p',dt_o_0_0_xboole_0)).

fof(fc2_xboole_0,axiom,(
    ! [X1] : ~ v1_xboole_0(k1_tarski(X1)) ),
    file('/export/starexec/sandbox2/benchmark/zfmisc_1__t6_zfmisc_1.p',fc2_xboole_0)).

fof(c_0_6,negated_conjecture,(
    ~ ! [X1,X2] :
        ( r1_tarski(k1_tarski(X1),k1_tarski(X2))
       => X1 = X2 ) ),
    inference(assume_negation,[status(cth)],[t6_zfmisc_1])).

fof(c_0_7,plain,(
    ! [X8,X9,X10,X11,X12,X13] :
      ( ( ~ r2_hidden(X10,X9)
        | X10 = X8
        | X9 != k1_tarski(X8) )
      & ( X11 != X8
        | r2_hidden(X11,X9)
        | X9 != k1_tarski(X8) )
      & ( ~ r2_hidden(esk3_2(X12,X13),X13)
        | esk3_2(X12,X13) != X12
        | X13 = k1_tarski(X12) )
      & ( r2_hidden(esk3_2(X12,X13),X13)
        | esk3_2(X12,X13) = X12
        | X13 = k1_tarski(X12) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_tarski])])])])])])).

fof(c_0_8,plain,(
    ! [X15,X16] :
      ( ( ~ r1_tarski(X15,k1_tarski(X16))
        | X15 = k1_xboole_0
        | X15 = k1_tarski(X16) )
      & ( X15 != k1_xboole_0
        | r1_tarski(X15,k1_tarski(X16)) )
      & ( X15 != k1_tarski(X16)
        | r1_tarski(X15,k1_tarski(X16)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l3_zfmisc_1])])])).

fof(c_0_9,negated_conjecture,
    ( r1_tarski(k1_tarski(esk1_0),k1_tarski(esk2_0))
    & esk1_0 != esk2_0 ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_6])])])).

cnf(c_0_10,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k1_tarski(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_11,plain,
    ( X1 = k1_xboole_0
    | X1 = k1_tarski(X2)
    | ~ r1_tarski(X1,k1_tarski(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_12,negated_conjecture,
    ( r1_tarski(k1_tarski(esk1_0),k1_tarski(esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

fof(c_0_13,plain,(
    ! [X17] :
      ( ~ v1_xboole_0(X17)
      | X17 = k1_xboole_0 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t6_boole])])).

cnf(c_0_14,plain,
    ( X1 = X3
    | ~ r2_hidden(X1,X2)
    | X2 != k1_tarski(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_15,plain,
    ( r2_hidden(X1,k1_tarski(X1)) ),
    inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_10])])).

cnf(c_0_16,negated_conjecture,
    ( k1_tarski(esk2_0) = k1_tarski(esk1_0)
    | k1_tarski(esk1_0) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_11,c_0_12])).

cnf(c_0_17,plain,
    ( X1 = k1_xboole_0
    | ~ v1_xboole_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_18,plain,
    ( v1_xboole_0(o_0_0_xboole_0) ),
    inference(split_conjunct,[status(thm)],[dt_o_0_0_xboole_0])).

fof(c_0_19,plain,(
    ! [X22] : ~ v1_xboole_0(k1_tarski(X22)) ),
    inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[fc2_xboole_0])])).

cnf(c_0_20,plain,
    ( X1 = X2
    | ~ r2_hidden(X1,k1_tarski(X2)) ),
    inference(er,[status(thm)],[c_0_14])).

cnf(c_0_21,negated_conjecture,
    ( k1_tarski(esk1_0) = k1_xboole_0
    | r2_hidden(esk2_0,k1_tarski(esk1_0)) ),
    inference(spm,[status(thm)],[c_0_15,c_0_16])).

cnf(c_0_22,negated_conjecture,
    ( esk1_0 != esk2_0 ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_23,plain,
    ( o_0_0_xboole_0 = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_17,c_0_18])).

cnf(c_0_24,plain,
    ( ~ v1_xboole_0(k1_tarski(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_25,negated_conjecture,
    ( k1_tarski(esk1_0) = k1_xboole_0 ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_20,c_0_21]),c_0_22])).

cnf(c_0_26,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(rw,[status(thm)],[c_0_18,c_0_23])).

cnf(c_0_27,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24,c_0_25]),c_0_26])]),
    [proof]).
%------------------------------------------------------------------------------
