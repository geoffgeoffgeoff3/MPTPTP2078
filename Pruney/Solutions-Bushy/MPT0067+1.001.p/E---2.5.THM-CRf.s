%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0067+1.001 : TPTP v7.4.0. Released v7.4.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n026.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 08:38:58 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   16 (  25 expanded)
%              Number of clauses        :    9 (  10 expanded)
%              Number of leaves         :    3 (   6 expanded)
%              Depth                    :    6
%              Number of atoms          :   33 (  56 expanded)
%              Number of equality atoms :    6 (   9 expanded)
%              Maximal formula depth    :    7 (   3 average)
%              Maximal clause size      :    7 (   1 average)
%              Maximal term depth       :    1 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t60_xboole_1,conjecture,(
    ! [X1,X2] :
      ~ ( r1_tarski(X1,X2)
        & r2_xboole_0(X2,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t60_xboole_1)).

fof(antisymmetry_r2_xboole_0,axiom,(
    ! [X1,X2] :
      ( r2_xboole_0(X1,X2)
     => ~ r2_xboole_0(X2,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',antisymmetry_r2_xboole_0)).

fof(d8_xboole_0,axiom,(
    ! [X1,X2] :
      ( r2_xboole_0(X1,X2)
    <=> ( r1_tarski(X1,X2)
        & X1 != X2 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d8_xboole_0)).

fof(c_0_3,negated_conjecture,(
    ~ ! [X1,X2] :
        ~ ( r1_tarski(X1,X2)
          & r2_xboole_0(X2,X1) ) ),
    inference(assume_negation,[status(cth)],[t60_xboole_1])).

fof(c_0_4,plain,(
    ! [X3,X4] :
      ( ~ r2_xboole_0(X3,X4)
      | ~ r2_xboole_0(X4,X3) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[antisymmetry_r2_xboole_0])])])).

fof(c_0_5,negated_conjecture,
    ( r1_tarski(esk1_0,esk2_0)
    & r2_xboole_0(esk2_0,esk1_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_3])])])).

fof(c_0_6,plain,(
    ! [X5,X6] :
      ( ( r1_tarski(X5,X6)
        | ~ r2_xboole_0(X5,X6) )
      & ( X5 != X6
        | ~ r2_xboole_0(X5,X6) )
      & ( ~ r1_tarski(X5,X6)
        | X5 = X6
        | r2_xboole_0(X5,X6) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d8_xboole_0])])])).

cnf(c_0_7,plain,
    ( ~ r2_xboole_0(X1,X2)
    | ~ r2_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_4])).

cnf(c_0_8,negated_conjecture,
    ( r2_xboole_0(esk2_0,esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_9,plain,
    ( X1 = X2
    | r2_xboole_0(X1,X2)
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_10,negated_conjecture,
    ( r1_tarski(esk1_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_11,negated_conjecture,
    ( ~ r2_xboole_0(esk1_0,esk2_0) ),
    inference(spm,[status(thm)],[c_0_7,c_0_8])).

cnf(c_0_12,plain,
    ( X1 != X2
    | ~ r2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_13,negated_conjecture,
    ( esk2_0 = esk1_0 ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_9,c_0_10]),c_0_11])).

cnf(c_0_14,plain,
    ( ~ r2_xboole_0(X1,X1) ),
    inference(er,[status(thm)],[c_0_12])).

cnf(c_0_15,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(rw,[status(thm)],[c_0_8,c_0_13]),c_0_14]),
    [proof]).

%------------------------------------------------------------------------------
