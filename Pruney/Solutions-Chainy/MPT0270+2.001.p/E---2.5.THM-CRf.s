%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n016.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:42:36 EST 2020

% Result     : Theorem 0.97s
% Output     : CNFRefutation 0.97s
% Verified   : 
% Statistics : Number of formulae       :   52 ( 268 expanded)
%              Number of clauses        :   35 ( 113 expanded)
%              Number of leaves         :    8 (  75 expanded)
%              Depth                    :   10
%              Number of atoms          :  156 ( 642 expanded)
%              Number of equality atoms :   84 ( 420 expanded)
%              Maximal formula depth    :   22 (   4 average)
%              Maximal clause size      :   28 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t67_zfmisc_1,conjecture,(
    ! [X1,X2] :
      ( k4_xboole_0(k1_tarski(X1),X2) = k1_tarski(X1)
    <=> ~ r2_hidden(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t67_zfmisc_1)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(t100_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_xboole_1)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).

fof(d5_xboole_0,axiom,(
    ! [X1,X2,X3] :
      ( X3 = k4_xboole_0(X1,X2)
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ( r2_hidden(X4,X1)
            & ~ r2_hidden(X4,X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d5_xboole_0)).

fof(d1_enumset1,axiom,(
    ! [X1,X2,X3,X4] :
      ( X4 = k1_enumset1(X1,X2,X3)
    <=> ! [X5] :
          ( r2_hidden(X5,X4)
        <=> ~ ( X5 != X1
              & X5 != X2
              & X5 != X3 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_enumset1)).

fof(commutativity_k3_xboole_0,axiom,(
    ! [X1,X2] : k3_xboole_0(X1,X2) = k3_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).

fof(c_0_8,negated_conjecture,(
    ~ ! [X1,X2] :
        ( k4_xboole_0(k1_tarski(X1),X2) = k1_tarski(X1)
      <=> ~ r2_hidden(X1,X2) ) ),
    inference(assume_negation,[status(cth)],[t67_zfmisc_1])).

fof(c_0_9,negated_conjecture,
    ( ( k4_xboole_0(k1_tarski(esk5_0),esk6_0) != k1_tarski(esk5_0)
      | r2_hidden(esk5_0,esk6_0) )
    & ( k4_xboole_0(k1_tarski(esk5_0),esk6_0) = k1_tarski(esk5_0)
      | ~ r2_hidden(esk5_0,esk6_0) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_8])])])])).

fof(c_0_10,plain,(
    ! [X51] : k2_tarski(X51,X51) = k1_tarski(X51) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_11,plain,(
    ! [X52,X53] : k1_enumset1(X52,X52,X53) = k2_tarski(X52,X53) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_12,plain,(
    ! [X36,X37] : k4_xboole_0(X36,X37) = k5_xboole_0(X36,k3_xboole_0(X36,X37)) ),
    inference(variable_rename,[status(thm)],[t100_xboole_1])).

fof(c_0_13,plain,(
    ! [X54,X55,X56] : k2_enumset1(X54,X54,X55,X56) = k1_enumset1(X54,X55,X56) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_14,plain,(
    ! [X25,X26,X27,X28,X29,X30,X31,X32] :
      ( ( r2_hidden(X28,X25)
        | ~ r2_hidden(X28,X27)
        | X27 != k4_xboole_0(X25,X26) )
      & ( ~ r2_hidden(X28,X26)
        | ~ r2_hidden(X28,X27)
        | X27 != k4_xboole_0(X25,X26) )
      & ( ~ r2_hidden(X29,X25)
        | r2_hidden(X29,X26)
        | r2_hidden(X29,X27)
        | X27 != k4_xboole_0(X25,X26) )
      & ( ~ r2_hidden(esk3_3(X30,X31,X32),X32)
        | ~ r2_hidden(esk3_3(X30,X31,X32),X30)
        | r2_hidden(esk3_3(X30,X31,X32),X31)
        | X32 = k4_xboole_0(X30,X31) )
      & ( r2_hidden(esk3_3(X30,X31,X32),X30)
        | r2_hidden(esk3_3(X30,X31,X32),X32)
        | X32 = k4_xboole_0(X30,X31) )
      & ( ~ r2_hidden(esk3_3(X30,X31,X32),X31)
        | r2_hidden(esk3_3(X30,X31,X32),X32)
        | X32 = k4_xboole_0(X30,X31) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d5_xboole_0])])])])])])])).

fof(c_0_15,plain,(
    ! [X40,X41,X42,X43,X44,X45,X46,X47,X48,X49] :
      ( ( ~ r2_hidden(X44,X43)
        | X44 = X40
        | X44 = X41
        | X44 = X42
        | X43 != k1_enumset1(X40,X41,X42) )
      & ( X45 != X40
        | r2_hidden(X45,X43)
        | X43 != k1_enumset1(X40,X41,X42) )
      & ( X45 != X41
        | r2_hidden(X45,X43)
        | X43 != k1_enumset1(X40,X41,X42) )
      & ( X45 != X42
        | r2_hidden(X45,X43)
        | X43 != k1_enumset1(X40,X41,X42) )
      & ( esk4_4(X46,X47,X48,X49) != X46
        | ~ r2_hidden(esk4_4(X46,X47,X48,X49),X49)
        | X49 = k1_enumset1(X46,X47,X48) )
      & ( esk4_4(X46,X47,X48,X49) != X47
        | ~ r2_hidden(esk4_4(X46,X47,X48,X49),X49)
        | X49 = k1_enumset1(X46,X47,X48) )
      & ( esk4_4(X46,X47,X48,X49) != X48
        | ~ r2_hidden(esk4_4(X46,X47,X48,X49),X49)
        | X49 = k1_enumset1(X46,X47,X48) )
      & ( r2_hidden(esk4_4(X46,X47,X48,X49),X49)
        | esk4_4(X46,X47,X48,X49) = X46
        | esk4_4(X46,X47,X48,X49) = X47
        | esk4_4(X46,X47,X48,X49) = X48
        | X49 = k1_enumset1(X46,X47,X48) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_enumset1])])])])])])).

cnf(c_0_16,negated_conjecture,
    ( r2_hidden(esk5_0,esk6_0)
    | k4_xboole_0(k1_tarski(esk5_0),esk6_0) != k1_tarski(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_17,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_18,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_19,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_20,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

fof(c_0_21,plain,(
    ! [X8,X9] : k3_xboole_0(X8,X9) = k3_xboole_0(X9,X8) ),
    inference(variable_rename,[status(thm)],[commutativity_k3_xboole_0])).

cnf(c_0_22,plain,
    ( r2_hidden(esk3_3(X1,X2,X3),X1)
    | r2_hidden(esk3_3(X1,X2,X3),X3)
    | X3 = k4_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_23,plain,
    ( X1 = X3
    | X1 = X4
    | X1 = X5
    | ~ r2_hidden(X1,X2)
    | X2 != k1_enumset1(X3,X4,X5) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_24,negated_conjecture,
    ( r2_hidden(esk5_0,esk6_0)
    | k5_xboole_0(k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0),k3_xboole_0(k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0),esk6_0)) != k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_16,c_0_17]),c_0_17]),c_0_18]),c_0_18]),c_0_19]),c_0_20]),c_0_20]),c_0_20])).

cnf(c_0_25,plain,
    ( k3_xboole_0(X1,X2) = k3_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_26,plain,
    ( X3 = k5_xboole_0(X1,k3_xboole_0(X1,X2))
    | r2_hidden(esk3_3(X1,X2,X3),X3)
    | r2_hidden(esk3_3(X1,X2,X3),X1) ),
    inference(rw,[status(thm)],[c_0_22,c_0_19])).

cnf(c_0_27,plain,
    ( ~ r2_hidden(X1,X2)
    | ~ r2_hidden(X1,X3)
    | X3 != k4_xboole_0(X4,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_28,plain,
    ( X1 = X5
    | X1 = X4
    | X1 = X3
    | X2 != k2_enumset1(X3,X3,X4,X5)
    | ~ r2_hidden(X1,X2) ),
    inference(rw,[status(thm)],[c_0_23,c_0_20])).

cnf(c_0_29,negated_conjecture,
    ( r2_hidden(esk5_0,esk6_0)
    | k5_xboole_0(k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0),k3_xboole_0(esk6_0,k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0))) != k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0) ),
    inference(rw,[status(thm)],[c_0_24,c_0_25])).

cnf(c_0_30,plain,
    ( X1 = k5_xboole_0(X2,k3_xboole_0(X3,X2))
    | r2_hidden(esk3_3(X2,X3,X1),X2)
    | r2_hidden(esk3_3(X2,X3,X1),X1) ),
    inference(spm,[status(thm)],[c_0_26,c_0_25])).

cnf(c_0_31,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k1_enumset1(X2,X4,X5) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_32,negated_conjecture,
    ( k4_xboole_0(k1_tarski(esk5_0),esk6_0) = k1_tarski(esk5_0)
    | ~ r2_hidden(esk5_0,esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_33,plain,
    ( X3 != k5_xboole_0(X4,k3_xboole_0(X4,X2))
    | ~ r2_hidden(X1,X3)
    | ~ r2_hidden(X1,X2) ),
    inference(rw,[status(thm)],[c_0_27,c_0_19])).

cnf(c_0_34,plain,
    ( r2_hidden(esk3_3(X1,X2,X3),X2)
    | X3 = k4_xboole_0(X1,X2)
    | ~ r2_hidden(esk3_3(X1,X2,X3),X3)
    | ~ r2_hidden(esk3_3(X1,X2,X3),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_35,plain,
    ( X1 = X2
    | X1 = X3
    | X1 = X4
    | ~ r2_hidden(X1,k2_enumset1(X4,X4,X3,X2)) ),
    inference(er,[status(thm)],[c_0_28])).

cnf(c_0_36,negated_conjecture,
    ( r2_hidden(esk3_3(k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0),esk6_0,k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0)),k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0))
    | r2_hidden(esk5_0,esk6_0) ),
    inference(er,[status(thm)],[inference(spm,[status(thm)],[c_0_29,c_0_30])])).

cnf(c_0_37,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k2_enumset1(X2,X2,X4,X5) ),
    inference(rw,[status(thm)],[c_0_31,c_0_20])).

cnf(c_0_38,negated_conjecture,
    ( k5_xboole_0(k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0),k3_xboole_0(k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0),esk6_0)) = k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0)
    | ~ r2_hidden(esk5_0,esk6_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_32,c_0_17]),c_0_17]),c_0_18]),c_0_18]),c_0_19]),c_0_20]),c_0_20]),c_0_20])).

cnf(c_0_39,plain,
    ( ~ r2_hidden(X1,k5_xboole_0(X2,k3_xboole_0(X2,X3)))
    | ~ r2_hidden(X1,X3) ),
    inference(er,[status(thm)],[c_0_33])).

cnf(c_0_40,plain,
    ( X3 = k5_xboole_0(X1,k3_xboole_0(X1,X2))
    | r2_hidden(esk3_3(X1,X2,X3),X2)
    | ~ r2_hidden(esk3_3(X1,X2,X3),X3)
    | ~ r2_hidden(esk3_3(X1,X2,X3),X1) ),
    inference(rw,[status(thm)],[c_0_34,c_0_19])).

cnf(c_0_41,negated_conjecture,
    ( esk3_3(k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0),esk6_0,k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0)) = esk5_0
    | r2_hidden(esk5_0,esk6_0) ),
    inference(spm,[status(thm)],[c_0_35,c_0_36])).

cnf(c_0_42,plain,
    ( r2_hidden(X1,k2_enumset1(X1,X1,X2,X3)) ),
    inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_37])])).

cnf(c_0_43,negated_conjecture,
    ( k5_xboole_0(k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0),k3_xboole_0(esk6_0,k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0))) = k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0)
    | ~ r2_hidden(esk5_0,esk6_0) ),
    inference(rw,[status(thm)],[c_0_38,c_0_25])).

cnf(c_0_44,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k1_enumset1(X4,X5,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_45,plain,
    ( ~ r2_hidden(X1,k5_xboole_0(X2,k3_xboole_0(X3,X2)))
    | ~ r2_hidden(X1,X3) ),
    inference(spm,[status(thm)],[c_0_39,c_0_25])).

cnf(c_0_46,negated_conjecture,
    ( k5_xboole_0(k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0),k3_xboole_0(esk6_0,k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0))) = k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0) ),
    inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_41]),c_0_25]),c_0_42])]),c_0_43])).

cnf(c_0_47,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k2_enumset1(X4,X4,X5,X2) ),
    inference(rw,[status(thm)],[c_0_44,c_0_20])).

cnf(c_0_48,negated_conjecture,
    ( ~ r2_hidden(X1,k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0))
    | ~ r2_hidden(X1,esk6_0) ),
    inference(spm,[status(thm)],[c_0_45,c_0_46])).

cnf(c_0_49,plain,
    ( r2_hidden(X1,k2_enumset1(X2,X2,X3,X1)) ),
    inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_47])])).

cnf(c_0_50,negated_conjecture,
    ( r2_hidden(esk5_0,esk6_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_29,c_0_46])])).

cnf(c_0_51,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48,c_0_49]),c_0_50])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.34  % Computer   : n016.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 09:43:34 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.35  # Version: 2.5pre002
% 0.14/0.35  # No SInE strategy applied
% 0.14/0.35  # Trying AutoSched0 for 299 seconds
% 0.97/1.13  # AutoSched0-Mode selected heuristic h208_C18_F1_SE_CS_SP_PS_S002A
% 0.97/1.13  # and selection function SelectNegativeLiterals.
% 0.97/1.13  #
% 0.97/1.13  # Preprocessing time       : 0.029 s
% 0.97/1.13  # Presaturation interreduction done
% 0.97/1.13  
% 0.97/1.13  # Proof found!
% 0.97/1.13  # SZS status Theorem
% 0.97/1.13  # SZS output start CNFRefutation
% 0.97/1.13  fof(t67_zfmisc_1, conjecture, ![X1, X2]:(k4_xboole_0(k1_tarski(X1),X2)=k1_tarski(X1)<=>~(r2_hidden(X1,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t67_zfmisc_1)).
% 0.97/1.13  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t69_enumset1)).
% 0.97/1.13  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t70_enumset1)).
% 0.97/1.13  fof(t100_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t100_xboole_1)).
% 0.97/1.13  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t71_enumset1)).
% 0.97/1.13  fof(d5_xboole_0, axiom, ![X1, X2, X3]:(X3=k4_xboole_0(X1,X2)<=>![X4]:(r2_hidden(X4,X3)<=>(r2_hidden(X4,X1)&~(r2_hidden(X4,X2))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d5_xboole_0)).
% 0.97/1.13  fof(d1_enumset1, axiom, ![X1, X2, X3, X4]:(X4=k1_enumset1(X1,X2,X3)<=>![X5]:(r2_hidden(X5,X4)<=>~(((X5!=X1&X5!=X2)&X5!=X3)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_enumset1)).
% 0.97/1.13  fof(commutativity_k3_xboole_0, axiom, ![X1, X2]:k3_xboole_0(X1,X2)=k3_xboole_0(X2,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', commutativity_k3_xboole_0)).
% 0.97/1.13  fof(c_0_8, negated_conjecture, ~(![X1, X2]:(k4_xboole_0(k1_tarski(X1),X2)=k1_tarski(X1)<=>~(r2_hidden(X1,X2)))), inference(assume_negation,[status(cth)],[t67_zfmisc_1])).
% 0.97/1.13  fof(c_0_9, negated_conjecture, ((k4_xboole_0(k1_tarski(esk5_0),esk6_0)!=k1_tarski(esk5_0)|r2_hidden(esk5_0,esk6_0))&(k4_xboole_0(k1_tarski(esk5_0),esk6_0)=k1_tarski(esk5_0)|~r2_hidden(esk5_0,esk6_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_8])])])])).
% 0.97/1.13  fof(c_0_10, plain, ![X51]:k2_tarski(X51,X51)=k1_tarski(X51), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.97/1.13  fof(c_0_11, plain, ![X52, X53]:k1_enumset1(X52,X52,X53)=k2_tarski(X52,X53), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.97/1.13  fof(c_0_12, plain, ![X36, X37]:k4_xboole_0(X36,X37)=k5_xboole_0(X36,k3_xboole_0(X36,X37)), inference(variable_rename,[status(thm)],[t100_xboole_1])).
% 0.97/1.13  fof(c_0_13, plain, ![X54, X55, X56]:k2_enumset1(X54,X54,X55,X56)=k1_enumset1(X54,X55,X56), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.97/1.13  fof(c_0_14, plain, ![X25, X26, X27, X28, X29, X30, X31, X32]:((((r2_hidden(X28,X25)|~r2_hidden(X28,X27)|X27!=k4_xboole_0(X25,X26))&(~r2_hidden(X28,X26)|~r2_hidden(X28,X27)|X27!=k4_xboole_0(X25,X26)))&(~r2_hidden(X29,X25)|r2_hidden(X29,X26)|r2_hidden(X29,X27)|X27!=k4_xboole_0(X25,X26)))&((~r2_hidden(esk3_3(X30,X31,X32),X32)|(~r2_hidden(esk3_3(X30,X31,X32),X30)|r2_hidden(esk3_3(X30,X31,X32),X31))|X32=k4_xboole_0(X30,X31))&((r2_hidden(esk3_3(X30,X31,X32),X30)|r2_hidden(esk3_3(X30,X31,X32),X32)|X32=k4_xboole_0(X30,X31))&(~r2_hidden(esk3_3(X30,X31,X32),X31)|r2_hidden(esk3_3(X30,X31,X32),X32)|X32=k4_xboole_0(X30,X31))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d5_xboole_0])])])])])])])).
% 0.97/1.13  fof(c_0_15, plain, ![X40, X41, X42, X43, X44, X45, X46, X47, X48, X49]:(((~r2_hidden(X44,X43)|(X44=X40|X44=X41|X44=X42)|X43!=k1_enumset1(X40,X41,X42))&(((X45!=X40|r2_hidden(X45,X43)|X43!=k1_enumset1(X40,X41,X42))&(X45!=X41|r2_hidden(X45,X43)|X43!=k1_enumset1(X40,X41,X42)))&(X45!=X42|r2_hidden(X45,X43)|X43!=k1_enumset1(X40,X41,X42))))&((((esk4_4(X46,X47,X48,X49)!=X46|~r2_hidden(esk4_4(X46,X47,X48,X49),X49)|X49=k1_enumset1(X46,X47,X48))&(esk4_4(X46,X47,X48,X49)!=X47|~r2_hidden(esk4_4(X46,X47,X48,X49),X49)|X49=k1_enumset1(X46,X47,X48)))&(esk4_4(X46,X47,X48,X49)!=X48|~r2_hidden(esk4_4(X46,X47,X48,X49),X49)|X49=k1_enumset1(X46,X47,X48)))&(r2_hidden(esk4_4(X46,X47,X48,X49),X49)|(esk4_4(X46,X47,X48,X49)=X46|esk4_4(X46,X47,X48,X49)=X47|esk4_4(X46,X47,X48,X49)=X48)|X49=k1_enumset1(X46,X47,X48)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_enumset1])])])])])])).
% 0.97/1.13  cnf(c_0_16, negated_conjecture, (r2_hidden(esk5_0,esk6_0)|k4_xboole_0(k1_tarski(esk5_0),esk6_0)!=k1_tarski(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.97/1.13  cnf(c_0_17, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.97/1.13  cnf(c_0_18, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.97/1.13  cnf(c_0_19, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.97/1.13  cnf(c_0_20, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.97/1.13  fof(c_0_21, plain, ![X8, X9]:k3_xboole_0(X8,X9)=k3_xboole_0(X9,X8), inference(variable_rename,[status(thm)],[commutativity_k3_xboole_0])).
% 0.97/1.13  cnf(c_0_22, plain, (r2_hidden(esk3_3(X1,X2,X3),X1)|r2_hidden(esk3_3(X1,X2,X3),X3)|X3=k4_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.97/1.13  cnf(c_0_23, plain, (X1=X3|X1=X4|X1=X5|~r2_hidden(X1,X2)|X2!=k1_enumset1(X3,X4,X5)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.97/1.13  cnf(c_0_24, negated_conjecture, (r2_hidden(esk5_0,esk6_0)|k5_xboole_0(k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0),k3_xboole_0(k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0),esk6_0))!=k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_16, c_0_17]), c_0_17]), c_0_18]), c_0_18]), c_0_19]), c_0_20]), c_0_20]), c_0_20])).
% 0.97/1.13  cnf(c_0_25, plain, (k3_xboole_0(X1,X2)=k3_xboole_0(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.97/1.13  cnf(c_0_26, plain, (X3=k5_xboole_0(X1,k3_xboole_0(X1,X2))|r2_hidden(esk3_3(X1,X2,X3),X3)|r2_hidden(esk3_3(X1,X2,X3),X1)), inference(rw,[status(thm)],[c_0_22, c_0_19])).
% 0.97/1.13  cnf(c_0_27, plain, (~r2_hidden(X1,X2)|~r2_hidden(X1,X3)|X3!=k4_xboole_0(X4,X2)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.97/1.13  cnf(c_0_28, plain, (X1=X5|X1=X4|X1=X3|X2!=k2_enumset1(X3,X3,X4,X5)|~r2_hidden(X1,X2)), inference(rw,[status(thm)],[c_0_23, c_0_20])).
% 0.97/1.13  cnf(c_0_29, negated_conjecture, (r2_hidden(esk5_0,esk6_0)|k5_xboole_0(k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0),k3_xboole_0(esk6_0,k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0)))!=k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0)), inference(rw,[status(thm)],[c_0_24, c_0_25])).
% 0.97/1.13  cnf(c_0_30, plain, (X1=k5_xboole_0(X2,k3_xboole_0(X3,X2))|r2_hidden(esk3_3(X2,X3,X1),X2)|r2_hidden(esk3_3(X2,X3,X1),X1)), inference(spm,[status(thm)],[c_0_26, c_0_25])).
% 0.97/1.13  cnf(c_0_31, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k1_enumset1(X2,X4,X5)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.97/1.13  cnf(c_0_32, negated_conjecture, (k4_xboole_0(k1_tarski(esk5_0),esk6_0)=k1_tarski(esk5_0)|~r2_hidden(esk5_0,esk6_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.97/1.13  cnf(c_0_33, plain, (X3!=k5_xboole_0(X4,k3_xboole_0(X4,X2))|~r2_hidden(X1,X3)|~r2_hidden(X1,X2)), inference(rw,[status(thm)],[c_0_27, c_0_19])).
% 0.97/1.13  cnf(c_0_34, plain, (r2_hidden(esk3_3(X1,X2,X3),X2)|X3=k4_xboole_0(X1,X2)|~r2_hidden(esk3_3(X1,X2,X3),X3)|~r2_hidden(esk3_3(X1,X2,X3),X1)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.97/1.13  cnf(c_0_35, plain, (X1=X2|X1=X3|X1=X4|~r2_hidden(X1,k2_enumset1(X4,X4,X3,X2))), inference(er,[status(thm)],[c_0_28])).
% 0.97/1.13  cnf(c_0_36, negated_conjecture, (r2_hidden(esk3_3(k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0),esk6_0,k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0)),k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0))|r2_hidden(esk5_0,esk6_0)), inference(er,[status(thm)],[inference(spm,[status(thm)],[c_0_29, c_0_30])])).
% 0.97/1.13  cnf(c_0_37, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k2_enumset1(X2,X2,X4,X5)), inference(rw,[status(thm)],[c_0_31, c_0_20])).
% 0.97/1.13  cnf(c_0_38, negated_conjecture, (k5_xboole_0(k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0),k3_xboole_0(k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0),esk6_0))=k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0)|~r2_hidden(esk5_0,esk6_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_32, c_0_17]), c_0_17]), c_0_18]), c_0_18]), c_0_19]), c_0_20]), c_0_20]), c_0_20])).
% 0.97/1.13  cnf(c_0_39, plain, (~r2_hidden(X1,k5_xboole_0(X2,k3_xboole_0(X2,X3)))|~r2_hidden(X1,X3)), inference(er,[status(thm)],[c_0_33])).
% 0.97/1.13  cnf(c_0_40, plain, (X3=k5_xboole_0(X1,k3_xboole_0(X1,X2))|r2_hidden(esk3_3(X1,X2,X3),X2)|~r2_hidden(esk3_3(X1,X2,X3),X3)|~r2_hidden(esk3_3(X1,X2,X3),X1)), inference(rw,[status(thm)],[c_0_34, c_0_19])).
% 0.97/1.13  cnf(c_0_41, negated_conjecture, (esk3_3(k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0),esk6_0,k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0))=esk5_0|r2_hidden(esk5_0,esk6_0)), inference(spm,[status(thm)],[c_0_35, c_0_36])).
% 0.97/1.13  cnf(c_0_42, plain, (r2_hidden(X1,k2_enumset1(X1,X1,X2,X3))), inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_37])])).
% 0.97/1.13  cnf(c_0_43, negated_conjecture, (k5_xboole_0(k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0),k3_xboole_0(esk6_0,k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0)))=k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0)|~r2_hidden(esk5_0,esk6_0)), inference(rw,[status(thm)],[c_0_38, c_0_25])).
% 0.97/1.13  cnf(c_0_44, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k1_enumset1(X4,X5,X2)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.97/1.13  cnf(c_0_45, plain, (~r2_hidden(X1,k5_xboole_0(X2,k3_xboole_0(X3,X2)))|~r2_hidden(X1,X3)), inference(spm,[status(thm)],[c_0_39, c_0_25])).
% 0.97/1.13  cnf(c_0_46, negated_conjecture, (k5_xboole_0(k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0),k3_xboole_0(esk6_0,k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0)))=k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0)), inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_41]), c_0_25]), c_0_42])]), c_0_43])).
% 0.97/1.13  cnf(c_0_47, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k2_enumset1(X4,X4,X5,X2)), inference(rw,[status(thm)],[c_0_44, c_0_20])).
% 0.97/1.13  cnf(c_0_48, negated_conjecture, (~r2_hidden(X1,k2_enumset1(esk5_0,esk5_0,esk5_0,esk5_0))|~r2_hidden(X1,esk6_0)), inference(spm,[status(thm)],[c_0_45, c_0_46])).
% 0.97/1.13  cnf(c_0_49, plain, (r2_hidden(X1,k2_enumset1(X2,X2,X3,X1))), inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_47])])).
% 0.97/1.13  cnf(c_0_50, negated_conjecture, (r2_hidden(esk5_0,esk6_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_29, c_0_46])])).
% 0.97/1.13  cnf(c_0_51, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48, c_0_49]), c_0_50])]), ['proof']).
% 0.97/1.13  # SZS output end CNFRefutation
% 0.97/1.13  # Proof object total steps             : 52
% 0.97/1.13  # Proof object clause steps            : 35
% 0.97/1.13  # Proof object formula steps           : 17
% 0.97/1.13  # Proof object conjectures             : 15
% 0.97/1.13  # Proof object clause conjectures      : 12
% 0.97/1.13  # Proof object formula conjectures     : 3
% 0.97/1.13  # Proof object initial clauses used    : 13
% 0.97/1.13  # Proof object initial formulas used   : 8
% 0.97/1.13  # Proof object generating inferences   : 7
% 0.97/1.13  # Proof object simplifying inferences  : 39
% 0.97/1.13  # Training examples: 0 positive, 0 negative
% 0.97/1.13  # Parsed axioms                        : 14
% 0.97/1.13  # Removed by relevancy pruning/SinE    : 0
% 0.97/1.13  # Initial clauses                      : 37
% 0.97/1.13  # Removed in clause preprocessing      : 4
% 0.97/1.13  # Initial clauses in saturation        : 33
% 0.97/1.13  # Processed clauses                    : 1478
% 0.97/1.13  # ...of these trivial                  : 18
% 0.97/1.13  # ...subsumed                          : 927
% 0.97/1.13  # ...remaining for further processing  : 533
% 0.97/1.13  # Other redundant clauses eliminated   : 1200
% 0.97/1.13  # Clauses deleted for lack of memory   : 0
% 0.97/1.13  # Backward-subsumed                    : 22
% 0.97/1.13  # Backward-rewritten                   : 126
% 0.97/1.13  # Generated clauses                    : 48357
% 0.97/1.13  # ...of the previous two non-trivial   : 46584
% 0.97/1.13  # Contextual simplify-reflections      : 11
% 0.97/1.13  # Paramodulations                      : 47133
% 0.97/1.13  # Factorizations                       : 27
% 0.97/1.13  # Equation resolutions                 : 1200
% 0.97/1.13  # Propositional unsat checks           : 0
% 0.97/1.13  #    Propositional check models        : 0
% 0.97/1.13  #    Propositional check unsatisfiable : 0
% 0.97/1.13  #    Propositional clauses             : 0
% 0.97/1.13  #    Propositional clauses after purity: 0
% 0.97/1.13  #    Propositional unsat core size     : 0
% 0.97/1.13  #    Propositional preprocessing time  : 0.000
% 0.97/1.13  #    Propositional encoding time       : 0.000
% 0.97/1.13  #    Propositional solver time         : 0.000
% 0.97/1.13  #    Success case prop preproc time    : 0.000
% 0.97/1.13  #    Success case prop encoding time   : 0.000
% 0.97/1.13  #    Success case prop solver time     : 0.000
% 0.97/1.13  # Current number of processed clauses  : 341
% 0.97/1.13  #    Positive orientable unit clauses  : 19
% 0.97/1.13  #    Positive unorientable unit clauses: 1
% 0.97/1.13  #    Negative unit clauses             : 0
% 0.97/1.13  #    Non-unit-clauses                  : 321
% 0.97/1.13  # Current number of unprocessed clauses: 44796
% 0.97/1.13  # ...number of literals in the above   : 240823
% 0.97/1.13  # Current number of archived formulas  : 0
% 0.97/1.13  # Current number of archived clauses   : 184
% 0.97/1.13  # Clause-clause subsumption calls (NU) : 52903
% 0.97/1.13  # Rec. Clause-clause subsumption calls : 33925
% 0.97/1.13  # Non-unit clause-clause subsumptions  : 960
% 0.97/1.13  # Unit Clause-clause subsumption calls : 199
% 0.97/1.13  # Rewrite failures with RHS unbound    : 0
% 0.97/1.13  # BW rewrite match attempts            : 50
% 0.97/1.13  # BW rewrite match successes           : 6
% 0.97/1.13  # Condensation attempts                : 0
% 0.97/1.13  # Condensation successes               : 0
% 0.97/1.13  # Termbank termtop insertions          : 1813492
% 0.97/1.14  
% 0.97/1.14  # -------------------------------------------------
% 0.97/1.14  # User time                : 0.754 s
% 0.97/1.14  # System time              : 0.038 s
% 0.97/1.14  # Total time               : 0.792 s
% 0.97/1.14  # Maximum resident set size: 1580 pages
%------------------------------------------------------------------------------
