%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n008.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:47:10 EST 2020

% Result     : Theorem 8.69s
% Output     : CNFRefutation 8.69s
% Verified   : 
% Statistics : Number of formulae       :   65 ( 339 expanded)
%              Number of clauses        :   42 ( 148 expanded)
%              Number of leaves         :   11 (  93 expanded)
%              Depth                    :   18
%              Number of atoms          :  175 ( 654 expanded)
%              Number of equality atoms :   90 ( 455 expanded)
%              Maximal formula depth    :   22 (   3 average)
%              Maximal clause size      :   28 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t31_zfmisc_1,axiom,(
    ! [X1] : k3_tarski(k1_tarski(X1)) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t31_zfmisc_1)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).

fof(l3_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,k1_tarski(X2))
    <=> ( X1 = k1_xboole_0
        | X1 = k1_tarski(X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l3_zfmisc_1)).

fof(t3_setfam_1,axiom,(
    ! [X1] : r1_tarski(k1_setfam_1(X1),k3_tarski(X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_setfam_1)).

fof(t11_setfam_1,conjecture,(
    ! [X1] : k1_setfam_1(k1_tarski(X1)) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t11_setfam_1)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).

fof(t6_setfam_1,axiom,(
    ! [X1,X2] :
      ( ! [X3] :
          ( r2_hidden(X3,X1)
         => r1_tarski(X2,X3) )
     => ( X1 = k1_xboole_0
        | r1_tarski(X2,k1_setfam_1(X1)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t6_setfam_1)).

fof(d1_enumset1,axiom,(
    ! [X1,X2,X3,X4] :
      ( X4 = k1_enumset1(X1,X2,X3)
    <=> ! [X5] :
          ( r2_hidden(X5,X4)
        <=> ~ ( X5 != X1
              & X5 != X2
              & X5 != X3 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_enumset1)).

fof(d3_tarski,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
    <=> ! [X3] :
          ( r2_hidden(X3,X1)
         => r2_hidden(X3,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_tarski)).

fof(c_0_11,plain,(
    ! [X49] : k3_tarski(k1_tarski(X49)) = X49 ),
    inference(variable_rename,[status(thm)],[t31_zfmisc_1])).

fof(c_0_12,plain,(
    ! [X41] : k2_tarski(X41,X41) = k1_tarski(X41) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_13,plain,(
    ! [X42,X43] : k1_enumset1(X42,X42,X43) = k2_tarski(X42,X43) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_14,plain,(
    ! [X44,X45,X46] : k2_enumset1(X44,X44,X45,X46) = k1_enumset1(X44,X45,X46) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_15,plain,(
    ! [X47,X48] :
      ( ( ~ r1_tarski(X47,k1_tarski(X48))
        | X47 = k1_xboole_0
        | X47 = k1_tarski(X48) )
      & ( X47 != k1_xboole_0
        | r1_tarski(X47,k1_tarski(X48)) )
      & ( X47 != k1_tarski(X48)
        | r1_tarski(X47,k1_tarski(X48)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l3_zfmisc_1])])])).

fof(c_0_16,plain,(
    ! [X52] : r1_tarski(k1_setfam_1(X52),k3_tarski(X52)) ),
    inference(variable_rename,[status(thm)],[t3_setfam_1])).

cnf(c_0_17,plain,
    ( k3_tarski(k1_tarski(X1)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_18,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_19,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_20,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_21,plain,
    ( r1_tarski(X1,k1_tarski(X2))
    | X1 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

fof(c_0_22,negated_conjecture,(
    ~ ! [X1] : k1_setfam_1(k1_tarski(X1)) = X1 ),
    inference(assume_negation,[status(cth)],[t11_setfam_1])).

fof(c_0_23,plain,(
    ! [X21,X22] :
      ( ( r1_tarski(X21,X22)
        | X21 != X22 )
      & ( r1_tarski(X22,X21)
        | X21 != X22 )
      & ( ~ r1_tarski(X21,X22)
        | ~ r1_tarski(X22,X21)
        | X21 = X22 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

cnf(c_0_24,plain,
    ( r1_tarski(k1_setfam_1(X1),k3_tarski(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_25,plain,
    ( k3_tarski(k2_enumset1(X1,X1,X1,X1)) = X1 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_17,c_0_18]),c_0_19]),c_0_20])).

cnf(c_0_26,plain,
    ( r1_tarski(X1,k2_enumset1(X2,X2,X2,X2))
    | X1 != k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_21,c_0_18]),c_0_19]),c_0_20])).

fof(c_0_27,plain,(
    ! [X53,X54] :
      ( ( r2_hidden(esk5_2(X53,X54),X53)
        | X53 = k1_xboole_0
        | r1_tarski(X54,k1_setfam_1(X53)) )
      & ( ~ r1_tarski(X54,esk5_2(X53,X54))
        | X53 = k1_xboole_0
        | r1_tarski(X54,k1_setfam_1(X53)) ) ) ),
    inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t6_setfam_1])])])])).

fof(c_0_28,negated_conjecture,(
    k1_setfam_1(k1_tarski(esk6_0)) != esk6_0 ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_22])])])).

cnf(c_0_29,plain,
    ( X1 = X2
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_30,plain,
    ( r1_tarski(k1_setfam_1(k2_enumset1(X1,X1,X1,X1)),X1) ),
    inference(spm,[status(thm)],[c_0_24,c_0_25])).

cnf(c_0_31,plain,
    ( r1_tarski(k1_xboole_0,k2_enumset1(X1,X1,X1,X1)) ),
    inference(er,[status(thm)],[c_0_26])).

cnf(c_0_32,plain,
    ( r2_hidden(esk5_2(X1,X2),X1)
    | X1 = k1_xboole_0
    | r1_tarski(X2,k1_setfam_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_33,negated_conjecture,
    ( k1_setfam_1(k1_tarski(esk6_0)) != esk6_0 ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_34,plain,
    ( k1_setfam_1(k2_enumset1(X1,X1,X1,X1)) = X1
    | ~ r1_tarski(X1,k1_setfam_1(k2_enumset1(X1,X1,X1,X1))) ),
    inference(spm,[status(thm)],[c_0_29,c_0_30])).

cnf(c_0_35,plain,
    ( r2_hidden(esk5_2(X1,X2),X1)
    | r1_tarski(X1,k2_enumset1(X3,X3,X3,X3))
    | r1_tarski(X2,k1_setfam_1(X1)) ),
    inference(spm,[status(thm)],[c_0_31,c_0_32])).

cnf(c_0_36,plain,
    ( X1 = k1_xboole_0
    | X1 = k1_tarski(X2)
    | ~ r1_tarski(X1,k1_tarski(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_37,negated_conjecture,
    ( k1_setfam_1(k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0)) != esk6_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_33,c_0_18]),c_0_19]),c_0_20])).

cnf(c_0_38,plain,
    ( k1_setfam_1(k2_enumset1(X1,X1,X1,X1)) = X1
    | r2_hidden(esk5_2(k2_enumset1(X1,X1,X1,X1),X1),k2_enumset1(X1,X1,X1,X1))
    | r1_tarski(k2_enumset1(X1,X1,X1,X1),k2_enumset1(X2,X2,X2,X2)) ),
    inference(spm,[status(thm)],[c_0_34,c_0_35])).

fof(c_0_39,plain,(
    ! [X23,X24,X25,X26,X27,X28,X29,X30,X31,X32] :
      ( ( ~ r2_hidden(X27,X26)
        | X27 = X23
        | X27 = X24
        | X27 = X25
        | X26 != k1_enumset1(X23,X24,X25) )
      & ( X28 != X23
        | r2_hidden(X28,X26)
        | X26 != k1_enumset1(X23,X24,X25) )
      & ( X28 != X24
        | r2_hidden(X28,X26)
        | X26 != k1_enumset1(X23,X24,X25) )
      & ( X28 != X25
        | r2_hidden(X28,X26)
        | X26 != k1_enumset1(X23,X24,X25) )
      & ( esk3_4(X29,X30,X31,X32) != X29
        | ~ r2_hidden(esk3_4(X29,X30,X31,X32),X32)
        | X32 = k1_enumset1(X29,X30,X31) )
      & ( esk3_4(X29,X30,X31,X32) != X30
        | ~ r2_hidden(esk3_4(X29,X30,X31,X32),X32)
        | X32 = k1_enumset1(X29,X30,X31) )
      & ( esk3_4(X29,X30,X31,X32) != X31
        | ~ r2_hidden(esk3_4(X29,X30,X31,X32),X32)
        | X32 = k1_enumset1(X29,X30,X31) )
      & ( r2_hidden(esk3_4(X29,X30,X31,X32),X32)
        | esk3_4(X29,X30,X31,X32) = X29
        | esk3_4(X29,X30,X31,X32) = X30
        | esk3_4(X29,X30,X31,X32) = X31
        | X32 = k1_enumset1(X29,X30,X31) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_enumset1])])])])])])).

cnf(c_0_40,plain,
    ( X1 = k1_xboole_0
    | X1 = k2_enumset1(X2,X2,X2,X2)
    | ~ r1_tarski(X1,k2_enumset1(X2,X2,X2,X2)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_36,c_0_18]),c_0_18]),c_0_19]),c_0_19]),c_0_20]),c_0_20])).

cnf(c_0_41,negated_conjecture,
    ( r2_hidden(esk5_2(k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0),esk6_0),k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0))
    | r1_tarski(k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0),k2_enumset1(X1,X1,X1,X1)) ),
    inference(spm,[status(thm)],[c_0_37,c_0_38])).

cnf(c_0_42,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k1_enumset1(X2,X4,X5) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_43,negated_conjecture,
    ( k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0) = k2_enumset1(X1,X1,X1,X1)
    | k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0) = k1_xboole_0
    | r2_hidden(esk5_2(k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0),esk6_0),k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0)) ),
    inference(spm,[status(thm)],[c_0_40,c_0_41])).

cnf(c_0_44,plain,
    ( X1 = X3
    | X1 = X4
    | X1 = X5
    | ~ r2_hidden(X1,X2)
    | X2 != k1_enumset1(X3,X4,X5) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_45,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k2_enumset1(X2,X2,X4,X5) ),
    inference(rw,[status(thm)],[c_0_42,c_0_20])).

cnf(c_0_46,negated_conjecture,
    ( k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0) = k1_xboole_0
    | esk6_0 = X1
    | r2_hidden(esk5_2(k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0),esk6_0),k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0)) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25,c_0_43]),c_0_25])).

cnf(c_0_47,plain,
    ( X1 = X5
    | X1 = X4
    | X1 = X3
    | X2 != k2_enumset1(X3,X3,X4,X5)
    | ~ r2_hidden(X1,X2) ),
    inference(rw,[status(thm)],[c_0_44,c_0_20])).

cnf(c_0_48,plain,
    ( r2_hidden(X1,k2_enumset1(X1,X1,X2,X3)) ),
    inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_45])])).

cnf(c_0_49,negated_conjecture,
    ( k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0) = k1_xboole_0
    | r2_hidden(esk5_2(k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0),esk6_0),k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0)) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_46]),c_0_46])).

cnf(c_0_50,plain,
    ( X1 = X2
    | X1 = X3
    | X1 = X4
    | ~ r2_hidden(X1,k2_enumset1(X4,X4,X3,X2)) ),
    inference(er,[status(thm)],[c_0_47])).

cnf(c_0_51,negated_conjecture,
    ( r2_hidden(esk5_2(k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0),esk6_0),k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0))
    | r2_hidden(esk6_0,k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_48,c_0_49])).

cnf(c_0_52,plain,
    ( r1_tarski(X1,X2)
    | X2 != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_53,plain,
    ( X2 = k1_xboole_0
    | r1_tarski(X1,k1_setfam_1(X2))
    | ~ r1_tarski(X1,esk5_2(X2,X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_54,negated_conjecture,
    ( esk5_2(k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0),esk6_0) = esk6_0
    | r2_hidden(esk6_0,k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_50,c_0_51])).

cnf(c_0_55,plain,
    ( r1_tarski(X1,X1) ),
    inference(er,[status(thm)],[c_0_52])).

fof(c_0_56,plain,(
    ! [X6,X7,X8,X9,X10] :
      ( ( ~ r1_tarski(X6,X7)
        | ~ r2_hidden(X8,X6)
        | r2_hidden(X8,X7) )
      & ( r2_hidden(esk1_2(X9,X10),X9)
        | r1_tarski(X9,X10) )
      & ( ~ r2_hidden(esk1_2(X9,X10),X10)
        | r1_tarski(X9,X10) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).

cnf(c_0_57,negated_conjecture,
    ( k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0) = k1_xboole_0
    | r2_hidden(esk6_0,k1_xboole_0)
    | r1_tarski(esk6_0,k1_setfam_1(k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53,c_0_54]),c_0_55])])).

cnf(c_0_58,plain,
    ( r2_hidden(X3,X2)
    | ~ r1_tarski(X1,X2)
    | ~ r2_hidden(X3,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_56])).

cnf(c_0_59,negated_conjecture,
    ( r2_hidden(esk6_0,k1_xboole_0)
    | r1_tarski(esk6_0,k1_setfam_1(k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0))) ),
    inference(spm,[status(thm)],[c_0_48,c_0_57])).

cnf(c_0_60,plain,
    ( r2_hidden(X1,k2_enumset1(X2,X2,X2,X2))
    | ~ r2_hidden(X1,k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_58,c_0_31])).

cnf(c_0_61,negated_conjecture,
    ( r2_hidden(esk6_0,k1_xboole_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_34,c_0_59]),c_0_37])).

cnf(c_0_62,negated_conjecture,
    ( r2_hidden(esk6_0,k2_enumset1(X1,X1,X1,X1)) ),
    inference(spm,[status(thm)],[c_0_60,c_0_61])).

cnf(c_0_63,negated_conjecture,
    ( esk6_0 = X1 ),
    inference(spm,[status(thm)],[c_0_50,c_0_62])).

cnf(c_0_64,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_37,c_0_63])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.33  % Computer   : n008.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 14:17:15 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 8.69/8.85  # AutoSched0-Mode selected heuristic h208_C18_F1_SE_CS_SP_PS_S002A
% 8.69/8.85  # and selection function SelectNegativeLiterals.
% 8.69/8.85  #
% 8.69/8.85  # Preprocessing time       : 0.029 s
% 8.69/8.85  # Presaturation interreduction done
% 8.69/8.85  
% 8.69/8.85  # Proof found!
% 8.69/8.85  # SZS status Theorem
% 8.69/8.85  # SZS output start CNFRefutation
% 8.69/8.85  fof(t31_zfmisc_1, axiom, ![X1]:k3_tarski(k1_tarski(X1))=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t31_zfmisc_1)).
% 8.69/8.85  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t69_enumset1)).
% 8.69/8.85  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t70_enumset1)).
% 8.69/8.85  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t71_enumset1)).
% 8.69/8.85  fof(l3_zfmisc_1, axiom, ![X1, X2]:(r1_tarski(X1,k1_tarski(X2))<=>(X1=k1_xboole_0|X1=k1_tarski(X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l3_zfmisc_1)).
% 8.69/8.85  fof(t3_setfam_1, axiom, ![X1]:r1_tarski(k1_setfam_1(X1),k3_tarski(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_setfam_1)).
% 8.69/8.85  fof(t11_setfam_1, conjecture, ![X1]:k1_setfam_1(k1_tarski(X1))=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t11_setfam_1)).
% 8.69/8.85  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d10_xboole_0)).
% 8.69/8.85  fof(t6_setfam_1, axiom, ![X1, X2]:(![X3]:(r2_hidden(X3,X1)=>r1_tarski(X2,X3))=>(X1=k1_xboole_0|r1_tarski(X2,k1_setfam_1(X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t6_setfam_1)).
% 8.69/8.85  fof(d1_enumset1, axiom, ![X1, X2, X3, X4]:(X4=k1_enumset1(X1,X2,X3)<=>![X5]:(r2_hidden(X5,X4)<=>~(((X5!=X1&X5!=X2)&X5!=X3)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_enumset1)).
% 8.69/8.85  fof(d3_tarski, axiom, ![X1, X2]:(r1_tarski(X1,X2)<=>![X3]:(r2_hidden(X3,X1)=>r2_hidden(X3,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d3_tarski)).
% 8.69/8.85  fof(c_0_11, plain, ![X49]:k3_tarski(k1_tarski(X49))=X49, inference(variable_rename,[status(thm)],[t31_zfmisc_1])).
% 8.69/8.85  fof(c_0_12, plain, ![X41]:k2_tarski(X41,X41)=k1_tarski(X41), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 8.69/8.85  fof(c_0_13, plain, ![X42, X43]:k1_enumset1(X42,X42,X43)=k2_tarski(X42,X43), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 8.69/8.85  fof(c_0_14, plain, ![X44, X45, X46]:k2_enumset1(X44,X44,X45,X46)=k1_enumset1(X44,X45,X46), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 8.69/8.85  fof(c_0_15, plain, ![X47, X48]:((~r1_tarski(X47,k1_tarski(X48))|(X47=k1_xboole_0|X47=k1_tarski(X48)))&((X47!=k1_xboole_0|r1_tarski(X47,k1_tarski(X48)))&(X47!=k1_tarski(X48)|r1_tarski(X47,k1_tarski(X48))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l3_zfmisc_1])])])).
% 8.69/8.85  fof(c_0_16, plain, ![X52]:r1_tarski(k1_setfam_1(X52),k3_tarski(X52)), inference(variable_rename,[status(thm)],[t3_setfam_1])).
% 8.69/8.85  cnf(c_0_17, plain, (k3_tarski(k1_tarski(X1))=X1), inference(split_conjunct,[status(thm)],[c_0_11])).
% 8.69/8.85  cnf(c_0_18, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 8.69/8.85  cnf(c_0_19, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 8.69/8.85  cnf(c_0_20, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 8.69/8.85  cnf(c_0_21, plain, (r1_tarski(X1,k1_tarski(X2))|X1!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_15])).
% 8.69/8.85  fof(c_0_22, negated_conjecture, ~(![X1]:k1_setfam_1(k1_tarski(X1))=X1), inference(assume_negation,[status(cth)],[t11_setfam_1])).
% 8.69/8.85  fof(c_0_23, plain, ![X21, X22]:(((r1_tarski(X21,X22)|X21!=X22)&(r1_tarski(X22,X21)|X21!=X22))&(~r1_tarski(X21,X22)|~r1_tarski(X22,X21)|X21=X22)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 8.69/8.85  cnf(c_0_24, plain, (r1_tarski(k1_setfam_1(X1),k3_tarski(X1))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 8.69/8.85  cnf(c_0_25, plain, (k3_tarski(k2_enumset1(X1,X1,X1,X1))=X1), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_17, c_0_18]), c_0_19]), c_0_20])).
% 8.69/8.85  cnf(c_0_26, plain, (r1_tarski(X1,k2_enumset1(X2,X2,X2,X2))|X1!=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_21, c_0_18]), c_0_19]), c_0_20])).
% 8.69/8.85  fof(c_0_27, plain, ![X53, X54]:((r2_hidden(esk5_2(X53,X54),X53)|(X53=k1_xboole_0|r1_tarski(X54,k1_setfam_1(X53))))&(~r1_tarski(X54,esk5_2(X53,X54))|(X53=k1_xboole_0|r1_tarski(X54,k1_setfam_1(X53))))), inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t6_setfam_1])])])])).
% 8.69/8.85  fof(c_0_28, negated_conjecture, k1_setfam_1(k1_tarski(esk6_0))!=esk6_0, inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_22])])])).
% 8.69/8.85  cnf(c_0_29, plain, (X1=X2|~r1_tarski(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 8.69/8.85  cnf(c_0_30, plain, (r1_tarski(k1_setfam_1(k2_enumset1(X1,X1,X1,X1)),X1)), inference(spm,[status(thm)],[c_0_24, c_0_25])).
% 8.69/8.85  cnf(c_0_31, plain, (r1_tarski(k1_xboole_0,k2_enumset1(X1,X1,X1,X1))), inference(er,[status(thm)],[c_0_26])).
% 8.69/8.85  cnf(c_0_32, plain, (r2_hidden(esk5_2(X1,X2),X1)|X1=k1_xboole_0|r1_tarski(X2,k1_setfam_1(X1))), inference(split_conjunct,[status(thm)],[c_0_27])).
% 8.69/8.85  cnf(c_0_33, negated_conjecture, (k1_setfam_1(k1_tarski(esk6_0))!=esk6_0), inference(split_conjunct,[status(thm)],[c_0_28])).
% 8.69/8.85  cnf(c_0_34, plain, (k1_setfam_1(k2_enumset1(X1,X1,X1,X1))=X1|~r1_tarski(X1,k1_setfam_1(k2_enumset1(X1,X1,X1,X1)))), inference(spm,[status(thm)],[c_0_29, c_0_30])).
% 8.69/8.85  cnf(c_0_35, plain, (r2_hidden(esk5_2(X1,X2),X1)|r1_tarski(X1,k2_enumset1(X3,X3,X3,X3))|r1_tarski(X2,k1_setfam_1(X1))), inference(spm,[status(thm)],[c_0_31, c_0_32])).
% 8.69/8.85  cnf(c_0_36, plain, (X1=k1_xboole_0|X1=k1_tarski(X2)|~r1_tarski(X1,k1_tarski(X2))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 8.69/8.85  cnf(c_0_37, negated_conjecture, (k1_setfam_1(k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0))!=esk6_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_33, c_0_18]), c_0_19]), c_0_20])).
% 8.69/8.85  cnf(c_0_38, plain, (k1_setfam_1(k2_enumset1(X1,X1,X1,X1))=X1|r2_hidden(esk5_2(k2_enumset1(X1,X1,X1,X1),X1),k2_enumset1(X1,X1,X1,X1))|r1_tarski(k2_enumset1(X1,X1,X1,X1),k2_enumset1(X2,X2,X2,X2))), inference(spm,[status(thm)],[c_0_34, c_0_35])).
% 8.69/8.85  fof(c_0_39, plain, ![X23, X24, X25, X26, X27, X28, X29, X30, X31, X32]:(((~r2_hidden(X27,X26)|(X27=X23|X27=X24|X27=X25)|X26!=k1_enumset1(X23,X24,X25))&(((X28!=X23|r2_hidden(X28,X26)|X26!=k1_enumset1(X23,X24,X25))&(X28!=X24|r2_hidden(X28,X26)|X26!=k1_enumset1(X23,X24,X25)))&(X28!=X25|r2_hidden(X28,X26)|X26!=k1_enumset1(X23,X24,X25))))&((((esk3_4(X29,X30,X31,X32)!=X29|~r2_hidden(esk3_4(X29,X30,X31,X32),X32)|X32=k1_enumset1(X29,X30,X31))&(esk3_4(X29,X30,X31,X32)!=X30|~r2_hidden(esk3_4(X29,X30,X31,X32),X32)|X32=k1_enumset1(X29,X30,X31)))&(esk3_4(X29,X30,X31,X32)!=X31|~r2_hidden(esk3_4(X29,X30,X31,X32),X32)|X32=k1_enumset1(X29,X30,X31)))&(r2_hidden(esk3_4(X29,X30,X31,X32),X32)|(esk3_4(X29,X30,X31,X32)=X29|esk3_4(X29,X30,X31,X32)=X30|esk3_4(X29,X30,X31,X32)=X31)|X32=k1_enumset1(X29,X30,X31)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_enumset1])])])])])])).
% 8.69/8.85  cnf(c_0_40, plain, (X1=k1_xboole_0|X1=k2_enumset1(X2,X2,X2,X2)|~r1_tarski(X1,k2_enumset1(X2,X2,X2,X2))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_36, c_0_18]), c_0_18]), c_0_19]), c_0_19]), c_0_20]), c_0_20])).
% 8.69/8.85  cnf(c_0_41, negated_conjecture, (r2_hidden(esk5_2(k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0),esk6_0),k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0))|r1_tarski(k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0),k2_enumset1(X1,X1,X1,X1))), inference(spm,[status(thm)],[c_0_37, c_0_38])).
% 8.69/8.85  cnf(c_0_42, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k1_enumset1(X2,X4,X5)), inference(split_conjunct,[status(thm)],[c_0_39])).
% 8.69/8.85  cnf(c_0_43, negated_conjecture, (k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0)=k2_enumset1(X1,X1,X1,X1)|k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0)=k1_xboole_0|r2_hidden(esk5_2(k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0),esk6_0),k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0))), inference(spm,[status(thm)],[c_0_40, c_0_41])).
% 8.69/8.85  cnf(c_0_44, plain, (X1=X3|X1=X4|X1=X5|~r2_hidden(X1,X2)|X2!=k1_enumset1(X3,X4,X5)), inference(split_conjunct,[status(thm)],[c_0_39])).
% 8.69/8.85  cnf(c_0_45, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k2_enumset1(X2,X2,X4,X5)), inference(rw,[status(thm)],[c_0_42, c_0_20])).
% 8.69/8.85  cnf(c_0_46, negated_conjecture, (k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0)=k1_xboole_0|esk6_0=X1|r2_hidden(esk5_2(k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0),esk6_0),k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25, c_0_43]), c_0_25])).
% 8.69/8.85  cnf(c_0_47, plain, (X1=X5|X1=X4|X1=X3|X2!=k2_enumset1(X3,X3,X4,X5)|~r2_hidden(X1,X2)), inference(rw,[status(thm)],[c_0_44, c_0_20])).
% 8.69/8.85  cnf(c_0_48, plain, (r2_hidden(X1,k2_enumset1(X1,X1,X2,X3))), inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_45])])).
% 8.69/8.85  cnf(c_0_49, negated_conjecture, (k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0)=k1_xboole_0|r2_hidden(esk5_2(k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0),esk6_0),k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0))), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_46]), c_0_46])).
% 8.69/8.85  cnf(c_0_50, plain, (X1=X2|X1=X3|X1=X4|~r2_hidden(X1,k2_enumset1(X4,X4,X3,X2))), inference(er,[status(thm)],[c_0_47])).
% 8.69/8.85  cnf(c_0_51, negated_conjecture, (r2_hidden(esk5_2(k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0),esk6_0),k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0))|r2_hidden(esk6_0,k1_xboole_0)), inference(spm,[status(thm)],[c_0_48, c_0_49])).
% 8.69/8.85  cnf(c_0_52, plain, (r1_tarski(X1,X2)|X2!=X1), inference(split_conjunct,[status(thm)],[c_0_23])).
% 8.69/8.85  cnf(c_0_53, plain, (X2=k1_xboole_0|r1_tarski(X1,k1_setfam_1(X2))|~r1_tarski(X1,esk5_2(X2,X1))), inference(split_conjunct,[status(thm)],[c_0_27])).
% 8.69/8.85  cnf(c_0_54, negated_conjecture, (esk5_2(k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0),esk6_0)=esk6_0|r2_hidden(esk6_0,k1_xboole_0)), inference(spm,[status(thm)],[c_0_50, c_0_51])).
% 8.69/8.85  cnf(c_0_55, plain, (r1_tarski(X1,X1)), inference(er,[status(thm)],[c_0_52])).
% 8.69/8.85  fof(c_0_56, plain, ![X6, X7, X8, X9, X10]:((~r1_tarski(X6,X7)|(~r2_hidden(X8,X6)|r2_hidden(X8,X7)))&((r2_hidden(esk1_2(X9,X10),X9)|r1_tarski(X9,X10))&(~r2_hidden(esk1_2(X9,X10),X10)|r1_tarski(X9,X10)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).
% 8.69/8.85  cnf(c_0_57, negated_conjecture, (k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0)=k1_xboole_0|r2_hidden(esk6_0,k1_xboole_0)|r1_tarski(esk6_0,k1_setfam_1(k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53, c_0_54]), c_0_55])])).
% 8.69/8.85  cnf(c_0_58, plain, (r2_hidden(X3,X2)|~r1_tarski(X1,X2)|~r2_hidden(X3,X1)), inference(split_conjunct,[status(thm)],[c_0_56])).
% 8.69/8.85  cnf(c_0_59, negated_conjecture, (r2_hidden(esk6_0,k1_xboole_0)|r1_tarski(esk6_0,k1_setfam_1(k2_enumset1(esk6_0,esk6_0,esk6_0,esk6_0)))), inference(spm,[status(thm)],[c_0_48, c_0_57])).
% 8.69/8.85  cnf(c_0_60, plain, (r2_hidden(X1,k2_enumset1(X2,X2,X2,X2))|~r2_hidden(X1,k1_xboole_0)), inference(spm,[status(thm)],[c_0_58, c_0_31])).
% 8.69/8.85  cnf(c_0_61, negated_conjecture, (r2_hidden(esk6_0,k1_xboole_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_34, c_0_59]), c_0_37])).
% 8.69/8.85  cnf(c_0_62, negated_conjecture, (r2_hidden(esk6_0,k2_enumset1(X1,X1,X1,X1))), inference(spm,[status(thm)],[c_0_60, c_0_61])).
% 8.69/8.85  cnf(c_0_63, negated_conjecture, (esk6_0=X1), inference(spm,[status(thm)],[c_0_50, c_0_62])).
% 8.69/8.85  cnf(c_0_64, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_37, c_0_63])]), ['proof']).
% 8.69/8.85  # SZS output end CNFRefutation
% 8.69/8.85  # Proof object total steps             : 65
% 8.69/8.85  # Proof object clause steps            : 42
% 8.69/8.85  # Proof object formula steps           : 23
% 8.69/8.85  # Proof object conjectures             : 17
% 8.69/8.85  # Proof object clause conjectures      : 14
% 8.69/8.85  # Proof object formula conjectures     : 3
% 8.69/8.85  # Proof object initial clauses used    : 15
% 8.69/8.85  # Proof object initial formulas used   : 11
% 8.69/8.85  # Proof object generating inferences   : 16
% 8.69/8.85  # Proof object simplifying inferences  : 29
% 8.69/8.85  # Training examples: 0 positive, 0 negative
% 8.69/8.85  # Parsed axioms                        : 14
% 8.69/8.85  # Removed by relevancy pruning/SinE    : 0
% 8.69/8.85  # Initial clauses                      : 37
% 8.69/8.85  # Removed in clause preprocessing      : 3
% 8.69/8.85  # Initial clauses in saturation        : 34
% 8.69/8.85  # Processed clauses                    : 7930
% 8.69/8.85  # ...of these trivial                  : 32
% 8.69/8.85  # ...subsumed                          : 5271
% 8.69/8.85  # ...remaining for further processing  : 2627
% 8.69/8.85  # Other redundant clauses eliminated   : 17565
% 8.69/8.85  # Clauses deleted for lack of memory   : 0
% 8.69/8.85  # Backward-subsumed                    : 144
% 8.69/8.85  # Backward-rewritten                   : 2434
% 8.69/8.85  # Generated clauses                    : 1035468
% 8.69/8.85  # ...of the previous two non-trivial   : 971820
% 8.69/8.85  # Contextual simplify-reflections      : 48
% 8.69/8.85  # Paramodulations                      : 1017491
% 8.69/8.85  # Factorizations                       : 415
% 8.69/8.85  # Equation resolutions                 : 17566
% 8.69/8.85  # Propositional unsat checks           : 0
% 8.69/8.85  #    Propositional check models        : 0
% 8.69/8.85  #    Propositional check unsatisfiable : 0
% 8.69/8.85  #    Propositional clauses             : 0
% 8.69/8.85  #    Propositional clauses after purity: 0
% 8.69/8.85  #    Propositional unsat core size     : 0
% 8.69/8.85  #    Propositional preprocessing time  : 0.000
% 8.69/8.85  #    Propositional encoding time       : 0.000
% 8.69/8.85  #    Propositional solver time         : 0.000
% 8.69/8.85  #    Success case prop preproc time    : 0.000
% 8.69/8.85  #    Success case prop encoding time   : 0.000
% 8.69/8.85  #    Success case prop solver time     : 0.000
% 8.69/8.85  # Current number of processed clauses  : 5
% 8.69/8.85  #    Positive orientable unit clauses  : 2
% 8.69/8.85  #    Positive unorientable unit clauses: 1
% 8.69/8.85  #    Negative unit clauses             : 0
% 8.69/8.85  #    Non-unit-clauses                  : 2
% 8.69/8.85  # Current number of unprocessed clauses: 962724
% 8.69/8.85  # ...number of literals in the above   : 5844914
% 8.69/8.85  # Current number of archived formulas  : 0
% 8.69/8.85  # Current number of archived clauses   : 2612
% 8.69/8.85  # Clause-clause subsumption calls (NU) : 915585
% 8.69/8.85  # Rec. Clause-clause subsumption calls : 122635
% 8.69/8.85  # Non-unit clause-clause subsumptions  : 5442
% 8.69/8.85  # Unit Clause-clause subsumption calls : 5808
% 8.69/8.85  # Rewrite failures with RHS unbound    : 3
% 8.69/8.85  # BW rewrite match attempts            : 1318
% 8.69/8.85  # BW rewrite match successes           : 1068
% 8.69/8.85  # Condensation attempts                : 0
% 8.69/8.85  # Condensation successes               : 0
% 8.69/8.85  # Termbank termtop insertions          : 26633189
% 8.69/8.90  
% 8.69/8.90  # -------------------------------------------------
% 8.69/8.90  # User time                : 8.162 s
% 8.69/8.90  # System time              : 0.397 s
% 8.69/8.90  # Total time               : 8.559 s
% 8.69/8.90  # Maximum resident set size: 1580 pages
%------------------------------------------------------------------------------
