%------------------------------------------------------------------------------
% File       : E---2.4
% Problem    : zfmisc_1__t26_zfmisc_1.p : TPTP v0.0.0. Released v0.0.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n012.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 300s
% DateTime   : Fri Oct 11 10:42:04 EDT 2019

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   26 (  43 expanded)
%              Number of clauses        :   17 (  22 expanded)
%              Number of leaves         :    4 (   9 expanded)
%              Depth                    :   10
%              Number of atoms          :   89 ( 162 expanded)
%              Number of equality atoms :   48 (  85 expanded)
%              Maximal formula depth    :   17 (   5 average)
%              Maximal clause size      :   20 (   2 average)
%              Maximal term depth       :    2 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t26_zfmisc_1,conjecture,(
    ! [X1,X2,X3] :
      ( r1_tarski(k2_tarski(X1,X2),k1_tarski(X3))
     => X1 = X3 ) ),
    file('/export/starexec/sandbox2/benchmark/zfmisc_1__t26_zfmisc_1.p',t26_zfmisc_1)).

fof(d3_tarski,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
    <=> ! [X3] :
          ( r2_hidden(X3,X1)
         => r2_hidden(X3,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/zfmisc_1__t26_zfmisc_1.p',d3_tarski)).

fof(d2_tarski,axiom,(
    ! [X1,X2,X3] :
      ( X3 = k2_tarski(X1,X2)
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ( X4 = X1
            | X4 = X2 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/zfmisc_1__t26_zfmisc_1.p',d2_tarski)).

fof(d1_tarski,axiom,(
    ! [X1,X2] :
      ( X2 = k1_tarski(X1)
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> X3 = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/zfmisc_1__t26_zfmisc_1.p',d1_tarski)).

fof(c_0_4,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( r1_tarski(k2_tarski(X1,X2),k1_tarski(X3))
       => X1 = X3 ) ),
    inference(assume_negation,[status(cth)],[t26_zfmisc_1])).

fof(c_0_5,plain,(
    ! [X28,X29,X30,X31,X32] :
      ( ( ~ r1_tarski(X28,X29)
        | ~ r2_hidden(X30,X28)
        | r2_hidden(X30,X29) )
      & ( r2_hidden(esk6_2(X31,X32),X31)
        | r1_tarski(X31,X32) )
      & ( ~ r2_hidden(esk6_2(X31,X32),X32)
        | r1_tarski(X31,X32) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).

fof(c_0_6,negated_conjecture,
    ( r1_tarski(k2_tarski(esk1_0,esk2_0),k1_tarski(esk3_0))
    & esk1_0 != esk3_0 ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_4])])])).

fof(c_0_7,plain,(
    ! [X19,X20,X21,X22,X23,X24,X25,X26] :
      ( ( ~ r2_hidden(X22,X21)
        | X22 = X19
        | X22 = X20
        | X21 != k2_tarski(X19,X20) )
      & ( X23 != X19
        | r2_hidden(X23,X21)
        | X21 != k2_tarski(X19,X20) )
      & ( X23 != X20
        | r2_hidden(X23,X21)
        | X21 != k2_tarski(X19,X20) )
      & ( esk5_3(X24,X25,X26) != X24
        | ~ r2_hidden(esk5_3(X24,X25,X26),X26)
        | X26 = k2_tarski(X24,X25) )
      & ( esk5_3(X24,X25,X26) != X25
        | ~ r2_hidden(esk5_3(X24,X25,X26),X26)
        | X26 = k2_tarski(X24,X25) )
      & ( r2_hidden(esk5_3(X24,X25,X26),X26)
        | esk5_3(X24,X25,X26) = X24
        | esk5_3(X24,X25,X26) = X25
        | X26 = k2_tarski(X24,X25) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d2_tarski])])])])])])).

fof(c_0_8,plain,(
    ! [X12,X13,X14,X15,X16,X17] :
      ( ( ~ r2_hidden(X14,X13)
        | X14 = X12
        | X13 != k1_tarski(X12) )
      & ( X15 != X12
        | r2_hidden(X15,X13)
        | X13 != k1_tarski(X12) )
      & ( ~ r2_hidden(esk4_2(X16,X17),X17)
        | esk4_2(X16,X17) != X16
        | X17 = k1_tarski(X16) )
      & ( r2_hidden(esk4_2(X16,X17),X17)
        | esk4_2(X16,X17) = X16
        | X17 = k1_tarski(X16) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_tarski])])])])])])).

cnf(c_0_9,plain,
    ( r2_hidden(X3,X2)
    | ~ r1_tarski(X1,X2)
    | ~ r2_hidden(X3,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_10,negated_conjecture,
    ( r1_tarski(k2_tarski(esk1_0,esk2_0),k1_tarski(esk3_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_11,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k2_tarski(X4,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_12,plain,
    ( X1 = X3
    | ~ r2_hidden(X1,X2)
    | X2 != k1_tarski(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_13,negated_conjecture,
    ( r2_hidden(X1,k1_tarski(esk3_0))
    | ~ r2_hidden(X1,k2_tarski(esk1_0,esk2_0)) ),
    inference(spm,[status(thm)],[c_0_9,c_0_10])).

cnf(c_0_14,plain,
    ( r2_hidden(X1,X2)
    | X2 != k2_tarski(X3,X1) ),
    inference(er,[status(thm)],[c_0_11])).

cnf(c_0_15,negated_conjecture,
    ( X1 = X2
    | k1_tarski(esk3_0) != k1_tarski(X2)
    | ~ r2_hidden(X1,k2_tarski(esk1_0,esk2_0)) ),
    inference(spm,[status(thm)],[c_0_12,c_0_13])).

cnf(c_0_16,plain,
    ( r2_hidden(X1,k2_tarski(X2,X1)) ),
    inference(er,[status(thm)],[c_0_14])).

cnf(c_0_17,negated_conjecture,
    ( esk2_0 = X1
    | k1_tarski(esk3_0) != k1_tarski(X1) ),
    inference(spm,[status(thm)],[c_0_15,c_0_16])).

cnf(c_0_18,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k2_tarski(X2,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_19,negated_conjecture,
    ( esk2_0 = esk3_0 ),
    inference(er,[status(thm)],[c_0_17])).

cnf(c_0_20,plain,
    ( r2_hidden(X1,X2)
    | X2 != k2_tarski(X1,X3) ),
    inference(er,[status(thm)],[c_0_18])).

cnf(c_0_21,negated_conjecture,
    ( X1 = X2
    | k1_tarski(esk3_0) != k1_tarski(X2)
    | ~ r2_hidden(X1,k2_tarski(esk1_0,esk3_0)) ),
    inference(rw,[status(thm)],[c_0_15,c_0_19])).

cnf(c_0_22,plain,
    ( r2_hidden(X1,k2_tarski(X1,X2)) ),
    inference(er,[status(thm)],[c_0_20])).

cnf(c_0_23,negated_conjecture,
    ( esk1_0 = X1
    | k1_tarski(esk3_0) != k1_tarski(X1) ),
    inference(spm,[status(thm)],[c_0_21,c_0_22])).

cnf(c_0_24,negated_conjecture,
    ( esk1_0 != esk3_0 ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_25,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(er,[status(thm)],[c_0_23]),c_0_24]),
    [proof]).
%------------------------------------------------------------------------------
