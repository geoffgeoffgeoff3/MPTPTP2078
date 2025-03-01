%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0318+1.001 : TPTP v7.4.0. Released v7.4.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n031.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 08:39:24 EST 2020

% Result     : Theorem 0.15s
% Output     : CNFRefutation 0.15s
% Verified   : 
% Statistics : Number of formulae       :   23 (  59 expanded)
%              Number of clauses        :   14 (  29 expanded)
%              Number of leaves         :    5 (  20 expanded)
%              Depth                    :    7
%              Number of atoms          :   45 ( 113 expanded)
%              Number of equality atoms :   39 ( 107 expanded)
%              Maximal formula depth    :    7 (   3 average)
%              Maximal clause size      :    7 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t130_zfmisc_1,conjecture,(
    ! [X1,X2] :
      ( X1 != k1_xboole_0
     => ( k2_zfmisc_1(k1_tarski(X2),X1) != k1_xboole_0
        & k2_zfmisc_1(X1,k1_tarski(X2)) != k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t130_zfmisc_1)).

fof(t113_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( k2_zfmisc_1(X1,X2) = k1_xboole_0
    <=> ( X1 = k1_xboole_0
        | X2 = k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t113_zfmisc_1)).

fof(d2_xboole_0,axiom,(
    k1_xboole_0 = o_0_0_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d2_xboole_0)).

fof(fc2_xboole_0,axiom,(
    ! [X1] : ~ v1_xboole_0(k1_tarski(X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc2_xboole_0)).

fof(dt_o_0_0_xboole_0,axiom,(
    v1_xboole_0(o_0_0_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_o_0_0_xboole_0)).

fof(c_0_5,negated_conjecture,(
    ~ ! [X1,X2] :
        ( X1 != k1_xboole_0
       => ( k2_zfmisc_1(k1_tarski(X2),X1) != k1_xboole_0
          & k2_zfmisc_1(X1,k1_tarski(X2)) != k1_xboole_0 ) ) ),
    inference(assume_negation,[status(cth)],[t130_zfmisc_1])).

fof(c_0_6,plain,(
    ! [X4,X5] :
      ( ( k2_zfmisc_1(X4,X5) != k1_xboole_0
        | X4 = k1_xboole_0
        | X5 = k1_xboole_0 )
      & ( X4 != k1_xboole_0
        | k2_zfmisc_1(X4,X5) = k1_xboole_0 )
      & ( X5 != k1_xboole_0
        | k2_zfmisc_1(X4,X5) = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t113_zfmisc_1])])])).

fof(c_0_7,negated_conjecture,
    ( esk1_0 != k1_xboole_0
    & ( k2_zfmisc_1(k1_tarski(esk2_0),esk1_0) = k1_xboole_0
      | k2_zfmisc_1(esk1_0,k1_tarski(esk2_0)) = k1_xboole_0 ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_5])])])).

cnf(c_0_8,plain,
    ( X1 = k1_xboole_0
    | X2 = k1_xboole_0
    | k2_zfmisc_1(X1,X2) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_9,plain,
    ( k1_xboole_0 = o_0_0_xboole_0 ),
    inference(split_conjunct,[status(thm)],[d2_xboole_0])).

cnf(c_0_10,negated_conjecture,
    ( k2_zfmisc_1(k1_tarski(esk2_0),esk1_0) = k1_xboole_0
    | k2_zfmisc_1(esk1_0,k1_tarski(esk2_0)) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_11,negated_conjecture,
    ( esk1_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_12,plain,
    ( k2_zfmisc_1(X1,X2) = k1_xboole_0
    | X1 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_13,plain,
    ( X1 = o_0_0_xboole_0
    | X2 = o_0_0_xboole_0
    | k2_zfmisc_1(X1,X2) != o_0_0_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_8,c_0_9]),c_0_9]),c_0_9])).

cnf(c_0_14,negated_conjecture,
    ( k2_zfmisc_1(k1_tarski(esk2_0),esk1_0) = o_0_0_xboole_0
    | k2_zfmisc_1(esk1_0,k1_tarski(esk2_0)) = o_0_0_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_10,c_0_9]),c_0_9])).

cnf(c_0_15,negated_conjecture,
    ( esk1_0 != o_0_0_xboole_0 ),
    inference(rw,[status(thm)],[c_0_11,c_0_9])).

cnf(c_0_16,plain,
    ( k2_zfmisc_1(X1,X2) = o_0_0_xboole_0
    | X1 != o_0_0_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_12,c_0_9]),c_0_9])).

fof(c_0_17,plain,(
    ! [X3] : ~ v1_xboole_0(k1_tarski(X3)) ),
    inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[fc2_xboole_0])])).

cnf(c_0_18,negated_conjecture,
    ( k2_zfmisc_1(k1_tarski(esk2_0),esk1_0) = o_0_0_xboole_0 ),
    inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_13,c_0_14]),c_0_15]),c_0_16])).

cnf(c_0_19,plain,
    ( ~ v1_xboole_0(k1_tarski(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_20,negated_conjecture,
    ( k1_tarski(esk2_0) = o_0_0_xboole_0 ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_13,c_0_18]),c_0_15])).

cnf(c_0_21,plain,
    ( v1_xboole_0(o_0_0_xboole_0) ),
    inference(split_conjunct,[status(thm)],[dt_o_0_0_xboole_0])).

cnf(c_0_22,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19,c_0_20]),c_0_21])]),
    [proof]).

%------------------------------------------------------------------------------
