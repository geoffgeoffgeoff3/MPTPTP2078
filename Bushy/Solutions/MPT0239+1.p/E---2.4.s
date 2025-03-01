%------------------------------------------------------------------------------
% File       : E---2.4
% Problem    : zfmisc_1__t34_zfmisc_1.p : TPTP v0.0.0. Released v0.0.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n009.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 300s
% DateTime   : Fri Oct 11 10:42:05 EDT 2019

% Result     : Theorem 0.14s
% Output     : CNFRefutation 0.14s
% Verified   : 
% Statistics : Number of formulae       :   23 ( 108 expanded)
%              Number of clauses        :   16 (  48 expanded)
%              Number of leaves         :    3 (  26 expanded)
%              Depth                    :    8
%              Number of atoms          :   69 ( 432 expanded)
%              Number of equality atoms :   31 ( 210 expanded)
%              Maximal formula depth    :   13 (   4 average)
%              Maximal clause size      :   12 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t34_zfmisc_1,conjecture,(
    ! [X1,X2,X3,X4] :
      ( r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(k1_tarski(X3),k1_tarski(X4)))
    <=> ( X1 = X3
        & X2 = X4 ) ) ),
    file('/export/starexec/sandbox2/benchmark/zfmisc_1__t34_zfmisc_1.p',t34_zfmisc_1)).

fof(d1_tarski,axiom,(
    ! [X1,X2] :
      ( X2 = k1_tarski(X1)
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> X3 = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/zfmisc_1__t34_zfmisc_1.p',d1_tarski)).

fof(l54_zfmisc_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,X4))
    <=> ( r2_hidden(X1,X3)
        & r2_hidden(X2,X4) ) ) ),
    file('/export/starexec/sandbox2/benchmark/zfmisc_1__t34_zfmisc_1.p',l54_zfmisc_1)).

fof(c_0_3,negated_conjecture,(
    ~ ! [X1,X2,X3,X4] :
        ( r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(k1_tarski(X3),k1_tarski(X4)))
      <=> ( X1 = X3
          & X2 = X4 ) ) ),
    inference(assume_negation,[status(cth)],[t34_zfmisc_1])).

fof(c_0_4,plain,(
    ! [X11,X12,X13,X14,X15,X16] :
      ( ( ~ r2_hidden(X13,X12)
        | X13 = X11
        | X12 != k1_tarski(X11) )
      & ( X14 != X11
        | r2_hidden(X14,X12)
        | X12 != k1_tarski(X11) )
      & ( ~ r2_hidden(esk5_2(X15,X16),X16)
        | esk5_2(X15,X16) != X15
        | X16 = k1_tarski(X15) )
      & ( r2_hidden(esk5_2(X15,X16),X16)
        | esk5_2(X15,X16) = X15
        | X16 = k1_tarski(X15) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_tarski])])])])])])).

fof(c_0_5,plain,(
    ! [X18,X19,X20,X21] :
      ( ( r2_hidden(X18,X20)
        | ~ r2_hidden(k4_tarski(X18,X19),k2_zfmisc_1(X20,X21)) )
      & ( r2_hidden(X19,X21)
        | ~ r2_hidden(k4_tarski(X18,X19),k2_zfmisc_1(X20,X21)) )
      & ( ~ r2_hidden(X18,X20)
        | ~ r2_hidden(X19,X21)
        | r2_hidden(k4_tarski(X18,X19),k2_zfmisc_1(X20,X21)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l54_zfmisc_1])])])).

fof(c_0_6,negated_conjecture,
    ( ( ~ r2_hidden(k4_tarski(esk1_0,esk2_0),k2_zfmisc_1(k1_tarski(esk3_0),k1_tarski(esk4_0)))
      | esk1_0 != esk3_0
      | esk2_0 != esk4_0 )
    & ( esk1_0 = esk3_0
      | r2_hidden(k4_tarski(esk1_0,esk2_0),k2_zfmisc_1(k1_tarski(esk3_0),k1_tarski(esk4_0))) )
    & ( esk2_0 = esk4_0
      | r2_hidden(k4_tarski(esk1_0,esk2_0),k2_zfmisc_1(k1_tarski(esk3_0),k1_tarski(esk4_0))) ) ),
    inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_3])])])])).

cnf(c_0_7,plain,
    ( X1 = X3
    | ~ r2_hidden(X1,X2)
    | X2 != k1_tarski(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_4])).

cnf(c_0_8,plain,
    ( r2_hidden(X1,X2)
    | ~ r2_hidden(k4_tarski(X3,X1),k2_zfmisc_1(X4,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_9,negated_conjecture,
    ( esk2_0 = esk4_0
    | r2_hidden(k4_tarski(esk1_0,esk2_0),k2_zfmisc_1(k1_tarski(esk3_0),k1_tarski(esk4_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_10,plain,
    ( X1 = X2
    | ~ r2_hidden(X1,k1_tarski(X2)) ),
    inference(er,[status(thm)],[c_0_7])).

cnf(c_0_11,negated_conjecture,
    ( ~ r2_hidden(k4_tarski(esk1_0,esk2_0),k2_zfmisc_1(k1_tarski(esk3_0),k1_tarski(esk4_0)))
    | esk1_0 != esk3_0
    | esk2_0 != esk4_0 ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_12,negated_conjecture,
    ( esk4_0 = esk2_0 ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_8,c_0_9]),c_0_10])).

cnf(c_0_13,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k1_tarski(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_4])).

cnf(c_0_14,negated_conjecture,
    ( esk1_0 = esk3_0
    | r2_hidden(k4_tarski(esk1_0,esk2_0),k2_zfmisc_1(k1_tarski(esk3_0),k1_tarski(esk4_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_15,negated_conjecture,
    ( esk1_0 != esk3_0
    | ~ r2_hidden(k4_tarski(esk1_0,esk2_0),k2_zfmisc_1(k1_tarski(esk3_0),k1_tarski(esk2_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_11,c_0_12]),c_0_12])])).

cnf(c_0_16,plain,
    ( r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(X2,X4))
    | ~ r2_hidden(X1,X2)
    | ~ r2_hidden(X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_17,plain,
    ( r2_hidden(X1,k1_tarski(X1)) ),
    inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_13])])).

cnf(c_0_18,plain,
    ( r2_hidden(X1,X2)
    | ~ r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(X2,X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_19,negated_conjecture,
    ( esk1_0 = esk3_0
    | r2_hidden(k4_tarski(esk1_0,esk2_0),k2_zfmisc_1(k1_tarski(esk3_0),k1_tarski(esk2_0))) ),
    inference(rw,[status(thm)],[c_0_14,c_0_12])).

cnf(c_0_20,negated_conjecture,
    ( ~ r2_hidden(esk1_0,k1_tarski(esk3_0)) ),
    inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_15,c_0_16]),c_0_17])]),c_0_10])).

cnf(c_0_21,negated_conjecture,
    ( esk1_0 = esk3_0 ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_18,c_0_19]),c_0_20])).

cnf(c_0_22,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_20,c_0_21]),c_0_17])]),
    [proof]).
%------------------------------------------------------------------------------
