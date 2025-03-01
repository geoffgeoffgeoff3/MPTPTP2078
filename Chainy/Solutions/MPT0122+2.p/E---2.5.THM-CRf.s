%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0122+2 : TPTP v7.4.0. Released v7.4.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n006.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Wed Dec 16 12:07:37 EST 2020

% Result     : Theorem 0.12s
% Output     : CNFRefutation 0.12s
% Verified   : 
% Statistics : Number of formulae       :   12 (  14 expanded)
%              Number of clauses        :    6 (   7 expanded)
%              Number of leaves         :    3 (   4 expanded)
%              Depth                    :    5
%              Number of atoms          :   12 (  14 expanded)
%              Number of equality atoms :    2 (   4 expanded)
%              Maximal formula depth    :    4 (   2 average)
%              Maximal clause size      :    1 (   1 average)
%              Maximal term depth       :    1 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t115_xboole_1,conjecture,(
    ! [X1] : ~ r2_xboole_0(X1,k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t115_xboole_1)).

fof(t62_xboole_1,axiom,(
    ! [X1] : ~ r2_xboole_0(X1,k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t62_xboole_1)).

fof(d2_xboole_0,axiom,(
    k1_xboole_0 = o_0_0_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/Axioms/MPT001+2.ax',d2_xboole_0)).

fof(c_0_3,negated_conjecture,(
    ~ ! [X1] : ~ r2_xboole_0(X1,k1_xboole_0) ),
    inference(assume_negation,[status(cth)],[t115_xboole_1])).

fof(c_0_4,negated_conjecture,(
    r2_xboole_0(esk14_0,k1_xboole_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_3])])])])).

fof(c_0_5,plain,(
    ! [X317] : ~ r2_xboole_0(X317,k1_xboole_0) ),
    inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[t62_xboole_1])])).

cnf(c_0_6,negated_conjecture,
    ( r2_xboole_0(esk14_0,k1_xboole_0) ),
    inference(split_conjunct,[status(thm)],[c_0_4])).

cnf(c_0_7,plain,
    ( k1_xboole_0 = o_0_0_xboole_0 ),
    inference(split_conjunct,[status(thm)],[d2_xboole_0])).

cnf(c_0_8,plain,
    ( ~ r2_xboole_0(X1,k1_xboole_0) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_9,negated_conjecture,
    ( r2_xboole_0(esk14_0,o_0_0_xboole_0) ),
    inference(rw,[status(thm)],[c_0_6,c_0_7])).

cnf(c_0_10,plain,
    ( ~ r2_xboole_0(X1,o_0_0_xboole_0) ),
    inference(rw,[status(thm)],[c_0_8,c_0_7])).

cnf(c_0_11,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[c_0_9,c_0_10]),
    [proof]).
%------------------------------------------------------------------------------
