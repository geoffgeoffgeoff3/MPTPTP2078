%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n013.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:43:49 EST 2020

% Result     : Theorem 0.14s
% Output     : CNFRefutation 0.14s
% Verified   : 
% Statistics : Number of formulae       :   55 ( 146 expanded)
%              Number of clauses        :   29 (  60 expanded)
%              Number of leaves         :   13 (  44 expanded)
%              Depth                    :   10
%              Number of atoms          :  102 ( 224 expanded)
%              Number of equality atoms :   51 ( 130 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal clause size      :    7 (   2 average)
%              Maximal term depth       :    3 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t128_zfmisc_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(k1_tarski(X3),X4))
    <=> ( X1 = X3
        & r2_hidden(X2,X4) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t128_zfmisc_1)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).

fof(t72_enumset1,axiom,(
    ! [X1,X2,X3,X4] : k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t72_enumset1)).

fof(t73_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5] : k4_enumset1(X1,X1,X2,X3,X4,X5) = k3_enumset1(X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t73_enumset1)).

fof(t74_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5,X6] : k5_enumset1(X1,X1,X2,X3,X4,X5,X6) = k4_enumset1(X1,X2,X3,X4,X5,X6) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t74_enumset1)).

fof(t75_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5,X6,X7] : k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7) = k5_enumset1(X1,X2,X3,X4,X5,X6,X7) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t75_enumset1)).

fof(t130_zfmisc_1,conjecture,(
    ! [X1,X2] :
      ( X1 != k1_xboole_0
     => ( k2_zfmisc_1(k1_tarski(X2),X1) != k1_xboole_0
        & k2_zfmisc_1(X1,k1_tarski(X2)) != k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t130_zfmisc_1)).

fof(l13_xboole_0,axiom,(
    ! [X1] :
      ( v1_xboole_0(X1)
     => X1 = k1_xboole_0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l13_xboole_0)).

fof(t129_zfmisc_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,k1_tarski(X4)))
    <=> ( r2_hidden(X1,X3)
        & X2 = X4 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t129_zfmisc_1)).

fof(d1_xboole_0,axiom,(
    ! [X1] :
      ( v1_xboole_0(X1)
    <=> ! [X2] : ~ r2_hidden(X2,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_xboole_0)).

fof(dt_o_0_0_xboole_0,axiom,(
    v1_xboole_0(o_0_0_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_o_0_0_xboole_0)).

fof(c_0_13,plain,(
    ! [X41,X42,X43,X44] :
      ( ( X41 = X43
        | ~ r2_hidden(k4_tarski(X41,X42),k2_zfmisc_1(k1_tarski(X43),X44)) )
      & ( r2_hidden(X42,X44)
        | ~ r2_hidden(k4_tarski(X41,X42),k2_zfmisc_1(k1_tarski(X43),X44)) )
      & ( X41 != X43
        | ~ r2_hidden(X42,X44)
        | r2_hidden(k4_tarski(X41,X42),k2_zfmisc_1(k1_tarski(X43),X44)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t128_zfmisc_1])])])).

fof(c_0_14,plain,(
    ! [X13] : k2_tarski(X13,X13) = k1_tarski(X13) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_15,plain,(
    ! [X14,X15] : k1_enumset1(X14,X14,X15) = k2_tarski(X14,X15) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_16,plain,(
    ! [X16,X17,X18] : k2_enumset1(X16,X16,X17,X18) = k1_enumset1(X16,X17,X18) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_17,plain,(
    ! [X19,X20,X21,X22] : k3_enumset1(X19,X19,X20,X21,X22) = k2_enumset1(X19,X20,X21,X22) ),
    inference(variable_rename,[status(thm)],[t72_enumset1])).

fof(c_0_18,plain,(
    ! [X23,X24,X25,X26,X27] : k4_enumset1(X23,X23,X24,X25,X26,X27) = k3_enumset1(X23,X24,X25,X26,X27) ),
    inference(variable_rename,[status(thm)],[t73_enumset1])).

fof(c_0_19,plain,(
    ! [X28,X29,X30,X31,X32,X33] : k5_enumset1(X28,X28,X29,X30,X31,X32,X33) = k4_enumset1(X28,X29,X30,X31,X32,X33) ),
    inference(variable_rename,[status(thm)],[t74_enumset1])).

fof(c_0_20,plain,(
    ! [X34,X35,X36,X37,X38,X39,X40] : k6_enumset1(X34,X34,X35,X36,X37,X38,X39,X40) = k5_enumset1(X34,X35,X36,X37,X38,X39,X40) ),
    inference(variable_rename,[status(thm)],[t75_enumset1])).

cnf(c_0_21,plain,
    ( r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(k1_tarski(X2),X4))
    | X1 != X2
    | ~ r2_hidden(X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_22,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_23,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_24,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_25,plain,
    ( k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_26,plain,
    ( k4_enumset1(X1,X1,X2,X3,X4,X5) = k3_enumset1(X1,X2,X3,X4,X5) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_27,plain,
    ( k5_enumset1(X1,X1,X2,X3,X4,X5,X6) = k4_enumset1(X1,X2,X3,X4,X5,X6) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_28,plain,
    ( k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7) = k5_enumset1(X1,X2,X3,X4,X5,X6,X7) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

fof(c_0_29,negated_conjecture,(
    ~ ! [X1,X2] :
        ( X1 != k1_xboole_0
       => ( k2_zfmisc_1(k1_tarski(X2),X1) != k1_xboole_0
          & k2_zfmisc_1(X1,k1_tarski(X2)) != k1_xboole_0 ) ) ),
    inference(assume_negation,[status(cth)],[t130_zfmisc_1])).

fof(c_0_30,plain,(
    ! [X12] :
      ( ~ v1_xboole_0(X12)
      | X12 = k1_xboole_0 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l13_xboole_0])])).

fof(c_0_31,plain,(
    ! [X45,X46,X47,X48] :
      ( ( r2_hidden(X45,X47)
        | ~ r2_hidden(k4_tarski(X45,X46),k2_zfmisc_1(X47,k1_tarski(X48))) )
      & ( X46 = X48
        | ~ r2_hidden(k4_tarski(X45,X46),k2_zfmisc_1(X47,k1_tarski(X48))) )
      & ( ~ r2_hidden(X45,X47)
        | X46 != X48
        | r2_hidden(k4_tarski(X45,X46),k2_zfmisc_1(X47,k1_tarski(X48))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t129_zfmisc_1])])])).

fof(c_0_32,plain,(
    ! [X8,X9,X10] :
      ( ( ~ v1_xboole_0(X8)
        | ~ r2_hidden(X9,X8) )
      & ( r2_hidden(esk1_1(X10),X10)
        | v1_xboole_0(X10) ) ) ),
    inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d1_xboole_0])])])])])])).

cnf(c_0_33,plain,
    ( r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X2),X4))
    | X1 != X2
    | ~ r2_hidden(X3,X4) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_21,c_0_22]),c_0_23]),c_0_24]),c_0_25]),c_0_26]),c_0_27]),c_0_28])).

fof(c_0_34,negated_conjecture,
    ( esk2_0 != k1_xboole_0
    & ( k2_zfmisc_1(k1_tarski(esk3_0),esk2_0) = k1_xboole_0
      | k2_zfmisc_1(esk2_0,k1_tarski(esk3_0)) = k1_xboole_0 ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_29])])])).

cnf(c_0_35,plain,
    ( X1 = k1_xboole_0
    | ~ v1_xboole_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_36,plain,
    ( v1_xboole_0(o_0_0_xboole_0) ),
    inference(split_conjunct,[status(thm)],[dt_o_0_0_xboole_0])).

cnf(c_0_37,plain,
    ( r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(X2,k1_tarski(X4)))
    | ~ r2_hidden(X1,X2)
    | X3 != X4 ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

cnf(c_0_38,plain,
    ( ~ v1_xboole_0(X1)
    | ~ r2_hidden(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

cnf(c_0_39,plain,
    ( r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),X3))
    | ~ r2_hidden(X2,X3) ),
    inference(er,[status(thm)],[c_0_33])).

cnf(c_0_40,negated_conjecture,
    ( k2_zfmisc_1(k1_tarski(esk3_0),esk2_0) = k1_xboole_0
    | k2_zfmisc_1(esk2_0,k1_tarski(esk3_0)) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_41,plain,
    ( o_0_0_xboole_0 = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_35,c_0_36])).

cnf(c_0_42,plain,
    ( r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(X2,k6_enumset1(X4,X4,X4,X4,X4,X4,X4,X4)))
    | X3 != X4
    | ~ r2_hidden(X1,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_37,c_0_22]),c_0_23]),c_0_24]),c_0_25]),c_0_26]),c_0_27]),c_0_28])).

cnf(c_0_43,plain,
    ( ~ r2_hidden(X1,X2)
    | ~ v1_xboole_0(k2_zfmisc_1(k6_enumset1(X3,X3,X3,X3,X3,X3,X3,X3),X2)) ),
    inference(spm,[status(thm)],[c_0_38,c_0_39])).

cnf(c_0_44,negated_conjecture,
    ( k2_zfmisc_1(esk2_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0)) = k1_xboole_0
    | k2_zfmisc_1(k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0),esk2_0) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_40,c_0_22]),c_0_22]),c_0_23]),c_0_23]),c_0_24]),c_0_24]),c_0_25]),c_0_25]),c_0_26]),c_0_26]),c_0_27]),c_0_27]),c_0_28]),c_0_28])).

cnf(c_0_45,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(rw,[status(thm)],[c_0_36,c_0_41])).

cnf(c_0_46,plain,
    ( r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X2)))
    | ~ r2_hidden(X1,X3) ),
    inference(er,[status(thm)],[c_0_42])).

cnf(c_0_47,negated_conjecture,
    ( k2_zfmisc_1(esk2_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0)) = k1_xboole_0
    | ~ r2_hidden(X1,esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43,c_0_44]),c_0_45])])).

cnf(c_0_48,plain,
    ( r2_hidden(esk1_1(X1),X1)
    | v1_xboole_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

cnf(c_0_49,plain,
    ( ~ r2_hidden(X1,X2)
    | ~ v1_xboole_0(k2_zfmisc_1(X2,k6_enumset1(X3,X3,X3,X3,X3,X3,X3,X3))) ),
    inference(spm,[status(thm)],[c_0_38,c_0_46])).

cnf(c_0_50,negated_conjecture,
    ( k2_zfmisc_1(esk2_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0)) = k1_xboole_0
    | v1_xboole_0(esk2_0) ),
    inference(spm,[status(thm)],[c_0_47,c_0_48])).

cnf(c_0_51,negated_conjecture,
    ( ~ r2_hidden(X1,esk2_0) ),
    inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49,c_0_50]),c_0_45])]),c_0_38])).

cnf(c_0_52,negated_conjecture,
    ( v1_xboole_0(esk2_0) ),
    inference(spm,[status(thm)],[c_0_51,c_0_48])).

cnf(c_0_53,negated_conjecture,
    ( esk2_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_54,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_35,c_0_52]),c_0_53]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.34  % Computer   : n013.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 14:23:09 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  # Version: 2.5pre002
% 0.14/0.34  # No SInE strategy applied
% 0.14/0.34  # Trying AutoSched0 for 299 seconds
% 0.14/0.37  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.14/0.37  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.14/0.37  #
% 0.14/0.37  # Preprocessing time       : 0.027 s
% 0.14/0.37  # Presaturation interreduction done
% 0.14/0.37  
% 0.14/0.37  # Proof found!
% 0.14/0.37  # SZS status Theorem
% 0.14/0.37  # SZS output start CNFRefutation
% 0.14/0.37  fof(t128_zfmisc_1, axiom, ![X1, X2, X3, X4]:(r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(k1_tarski(X3),X4))<=>(X1=X3&r2_hidden(X2,X4))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t128_zfmisc_1)).
% 0.14/0.37  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t69_enumset1)).
% 0.14/0.37  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t70_enumset1)).
% 0.14/0.37  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t71_enumset1)).
% 0.14/0.37  fof(t72_enumset1, axiom, ![X1, X2, X3, X4]:k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t72_enumset1)).
% 0.14/0.37  fof(t73_enumset1, axiom, ![X1, X2, X3, X4, X5]:k4_enumset1(X1,X1,X2,X3,X4,X5)=k3_enumset1(X1,X2,X3,X4,X5), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t73_enumset1)).
% 0.14/0.37  fof(t74_enumset1, axiom, ![X1, X2, X3, X4, X5, X6]:k5_enumset1(X1,X1,X2,X3,X4,X5,X6)=k4_enumset1(X1,X2,X3,X4,X5,X6), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t74_enumset1)).
% 0.14/0.37  fof(t75_enumset1, axiom, ![X1, X2, X3, X4, X5, X6, X7]:k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7)=k5_enumset1(X1,X2,X3,X4,X5,X6,X7), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t75_enumset1)).
% 0.14/0.37  fof(t130_zfmisc_1, conjecture, ![X1, X2]:(X1!=k1_xboole_0=>(k2_zfmisc_1(k1_tarski(X2),X1)!=k1_xboole_0&k2_zfmisc_1(X1,k1_tarski(X2))!=k1_xboole_0)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t130_zfmisc_1)).
% 0.14/0.37  fof(l13_xboole_0, axiom, ![X1]:(v1_xboole_0(X1)=>X1=k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l13_xboole_0)).
% 0.14/0.37  fof(t129_zfmisc_1, axiom, ![X1, X2, X3, X4]:(r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,k1_tarski(X4)))<=>(r2_hidden(X1,X3)&X2=X4)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t129_zfmisc_1)).
% 0.14/0.37  fof(d1_xboole_0, axiom, ![X1]:(v1_xboole_0(X1)<=>![X2]:~(r2_hidden(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_xboole_0)).
% 0.14/0.37  fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_o_0_0_xboole_0)).
% 0.14/0.37  fof(c_0_13, plain, ![X41, X42, X43, X44]:(((X41=X43|~r2_hidden(k4_tarski(X41,X42),k2_zfmisc_1(k1_tarski(X43),X44)))&(r2_hidden(X42,X44)|~r2_hidden(k4_tarski(X41,X42),k2_zfmisc_1(k1_tarski(X43),X44))))&(X41!=X43|~r2_hidden(X42,X44)|r2_hidden(k4_tarski(X41,X42),k2_zfmisc_1(k1_tarski(X43),X44)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t128_zfmisc_1])])])).
% 0.14/0.37  fof(c_0_14, plain, ![X13]:k2_tarski(X13,X13)=k1_tarski(X13), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.14/0.37  fof(c_0_15, plain, ![X14, X15]:k1_enumset1(X14,X14,X15)=k2_tarski(X14,X15), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.14/0.37  fof(c_0_16, plain, ![X16, X17, X18]:k2_enumset1(X16,X16,X17,X18)=k1_enumset1(X16,X17,X18), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.14/0.37  fof(c_0_17, plain, ![X19, X20, X21, X22]:k3_enumset1(X19,X19,X20,X21,X22)=k2_enumset1(X19,X20,X21,X22), inference(variable_rename,[status(thm)],[t72_enumset1])).
% 0.14/0.37  fof(c_0_18, plain, ![X23, X24, X25, X26, X27]:k4_enumset1(X23,X23,X24,X25,X26,X27)=k3_enumset1(X23,X24,X25,X26,X27), inference(variable_rename,[status(thm)],[t73_enumset1])).
% 0.14/0.37  fof(c_0_19, plain, ![X28, X29, X30, X31, X32, X33]:k5_enumset1(X28,X28,X29,X30,X31,X32,X33)=k4_enumset1(X28,X29,X30,X31,X32,X33), inference(variable_rename,[status(thm)],[t74_enumset1])).
% 0.14/0.37  fof(c_0_20, plain, ![X34, X35, X36, X37, X38, X39, X40]:k6_enumset1(X34,X34,X35,X36,X37,X38,X39,X40)=k5_enumset1(X34,X35,X36,X37,X38,X39,X40), inference(variable_rename,[status(thm)],[t75_enumset1])).
% 0.14/0.37  cnf(c_0_21, plain, (r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(k1_tarski(X2),X4))|X1!=X2|~r2_hidden(X3,X4)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.14/0.37  cnf(c_0_22, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.14/0.37  cnf(c_0_23, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.37  cnf(c_0_24, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.14/0.37  cnf(c_0_25, plain, (k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.14/0.37  cnf(c_0_26, plain, (k4_enumset1(X1,X1,X2,X3,X4,X5)=k3_enumset1(X1,X2,X3,X4,X5)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.14/0.37  cnf(c_0_27, plain, (k5_enumset1(X1,X1,X2,X3,X4,X5,X6)=k4_enumset1(X1,X2,X3,X4,X5,X6)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.14/0.37  cnf(c_0_28, plain, (k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7)=k5_enumset1(X1,X2,X3,X4,X5,X6,X7)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.14/0.37  fof(c_0_29, negated_conjecture, ~(![X1, X2]:(X1!=k1_xboole_0=>(k2_zfmisc_1(k1_tarski(X2),X1)!=k1_xboole_0&k2_zfmisc_1(X1,k1_tarski(X2))!=k1_xboole_0))), inference(assume_negation,[status(cth)],[t130_zfmisc_1])).
% 0.14/0.37  fof(c_0_30, plain, ![X12]:(~v1_xboole_0(X12)|X12=k1_xboole_0), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l13_xboole_0])])).
% 0.14/0.37  fof(c_0_31, plain, ![X45, X46, X47, X48]:(((r2_hidden(X45,X47)|~r2_hidden(k4_tarski(X45,X46),k2_zfmisc_1(X47,k1_tarski(X48))))&(X46=X48|~r2_hidden(k4_tarski(X45,X46),k2_zfmisc_1(X47,k1_tarski(X48)))))&(~r2_hidden(X45,X47)|X46!=X48|r2_hidden(k4_tarski(X45,X46),k2_zfmisc_1(X47,k1_tarski(X48))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t129_zfmisc_1])])])).
% 0.14/0.37  fof(c_0_32, plain, ![X8, X9, X10]:((~v1_xboole_0(X8)|~r2_hidden(X9,X8))&(r2_hidden(esk1_1(X10),X10)|v1_xboole_0(X10))), inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d1_xboole_0])])])])])])).
% 0.14/0.37  cnf(c_0_33, plain, (r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X2),X4))|X1!=X2|~r2_hidden(X3,X4)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_21, c_0_22]), c_0_23]), c_0_24]), c_0_25]), c_0_26]), c_0_27]), c_0_28])).
% 0.14/0.37  fof(c_0_34, negated_conjecture, (esk2_0!=k1_xboole_0&(k2_zfmisc_1(k1_tarski(esk3_0),esk2_0)=k1_xboole_0|k2_zfmisc_1(esk2_0,k1_tarski(esk3_0))=k1_xboole_0)), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_29])])])).
% 0.14/0.37  cnf(c_0_35, plain, (X1=k1_xboole_0|~v1_xboole_0(X1)), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.14/0.37  cnf(c_0_36, plain, (v1_xboole_0(o_0_0_xboole_0)), inference(split_conjunct,[status(thm)],[dt_o_0_0_xboole_0])).
% 0.14/0.37  cnf(c_0_37, plain, (r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(X2,k1_tarski(X4)))|~r2_hidden(X1,X2)|X3!=X4), inference(split_conjunct,[status(thm)],[c_0_31])).
% 0.14/0.37  cnf(c_0_38, plain, (~v1_xboole_0(X1)|~r2_hidden(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.14/0.37  cnf(c_0_39, plain, (r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),X3))|~r2_hidden(X2,X3)), inference(er,[status(thm)],[c_0_33])).
% 0.14/0.37  cnf(c_0_40, negated_conjecture, (k2_zfmisc_1(k1_tarski(esk3_0),esk2_0)=k1_xboole_0|k2_zfmisc_1(esk2_0,k1_tarski(esk3_0))=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.14/0.37  cnf(c_0_41, plain, (o_0_0_xboole_0=k1_xboole_0), inference(spm,[status(thm)],[c_0_35, c_0_36])).
% 0.14/0.37  cnf(c_0_42, plain, (r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(X2,k6_enumset1(X4,X4,X4,X4,X4,X4,X4,X4)))|X3!=X4|~r2_hidden(X1,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_37, c_0_22]), c_0_23]), c_0_24]), c_0_25]), c_0_26]), c_0_27]), c_0_28])).
% 0.14/0.37  cnf(c_0_43, plain, (~r2_hidden(X1,X2)|~v1_xboole_0(k2_zfmisc_1(k6_enumset1(X3,X3,X3,X3,X3,X3,X3,X3),X2))), inference(spm,[status(thm)],[c_0_38, c_0_39])).
% 0.14/0.37  cnf(c_0_44, negated_conjecture, (k2_zfmisc_1(esk2_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0))=k1_xboole_0|k2_zfmisc_1(k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0),esk2_0)=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_40, c_0_22]), c_0_22]), c_0_23]), c_0_23]), c_0_24]), c_0_24]), c_0_25]), c_0_25]), c_0_26]), c_0_26]), c_0_27]), c_0_27]), c_0_28]), c_0_28])).
% 0.14/0.37  cnf(c_0_45, plain, (v1_xboole_0(k1_xboole_0)), inference(rw,[status(thm)],[c_0_36, c_0_41])).
% 0.14/0.37  cnf(c_0_46, plain, (r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X2)))|~r2_hidden(X1,X3)), inference(er,[status(thm)],[c_0_42])).
% 0.14/0.37  cnf(c_0_47, negated_conjecture, (k2_zfmisc_1(esk2_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0))=k1_xboole_0|~r2_hidden(X1,esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43, c_0_44]), c_0_45])])).
% 0.14/0.37  cnf(c_0_48, plain, (r2_hidden(esk1_1(X1),X1)|v1_xboole_0(X1)), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.14/0.37  cnf(c_0_49, plain, (~r2_hidden(X1,X2)|~v1_xboole_0(k2_zfmisc_1(X2,k6_enumset1(X3,X3,X3,X3,X3,X3,X3,X3)))), inference(spm,[status(thm)],[c_0_38, c_0_46])).
% 0.14/0.37  cnf(c_0_50, negated_conjecture, (k2_zfmisc_1(esk2_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0))=k1_xboole_0|v1_xboole_0(esk2_0)), inference(spm,[status(thm)],[c_0_47, c_0_48])).
% 0.14/0.37  cnf(c_0_51, negated_conjecture, (~r2_hidden(X1,esk2_0)), inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49, c_0_50]), c_0_45])]), c_0_38])).
% 0.14/0.37  cnf(c_0_52, negated_conjecture, (v1_xboole_0(esk2_0)), inference(spm,[status(thm)],[c_0_51, c_0_48])).
% 0.14/0.37  cnf(c_0_53, negated_conjecture, (esk2_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.14/0.37  cnf(c_0_54, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_35, c_0_52]), c_0_53]), ['proof']).
% 0.14/0.37  # SZS output end CNFRefutation
% 0.14/0.37  # Proof object total steps             : 55
% 0.14/0.37  # Proof object clause steps            : 29
% 0.14/0.37  # Proof object formula steps           : 26
% 0.14/0.37  # Proof object conjectures             : 11
% 0.14/0.37  # Proof object clause conjectures      : 8
% 0.14/0.37  # Proof object formula conjectures     : 3
% 0.14/0.37  # Proof object initial clauses used    : 15
% 0.14/0.37  # Proof object initial formulas used   : 13
% 0.14/0.37  # Proof object generating inferences   : 8
% 0.14/0.37  # Proof object simplifying inferences  : 37
% 0.14/0.37  # Training examples: 0 positive, 0 negative
% 0.14/0.37  # Parsed axioms                        : 13
% 0.14/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.14/0.37  # Initial clauses                      : 19
% 0.14/0.37  # Removed in clause preprocessing      : 7
% 0.14/0.37  # Initial clauses in saturation        : 12
% 0.14/0.37  # Processed clauses                    : 36
% 0.14/0.37  # ...of these trivial                  : 0
% 0.14/0.37  # ...subsumed                          : 0
% 0.14/0.37  # ...remaining for further processing  : 36
% 0.14/0.37  # Other redundant clauses eliminated   : 2
% 0.14/0.37  # Clauses deleted for lack of memory   : 0
% 0.14/0.37  # Backward-subsumed                    : 0
% 0.14/0.37  # Backward-rewritten                   : 2
% 0.14/0.37  # Generated clauses                    : 23
% 0.14/0.37  # ...of the previous two non-trivial   : 20
% 0.14/0.37  # Contextual simplify-reflections      : 1
% 0.14/0.37  # Paramodulations                      : 21
% 0.14/0.37  # Factorizations                       : 0
% 0.14/0.37  # Equation resolutions                 : 2
% 0.14/0.37  # Propositional unsat checks           : 0
% 0.14/0.37  #    Propositional check models        : 0
% 0.14/0.37  #    Propositional check unsatisfiable : 0
% 0.14/0.37  #    Propositional clauses             : 0
% 0.14/0.37  #    Propositional clauses after purity: 0
% 0.14/0.37  #    Propositional unsat core size     : 0
% 0.14/0.37  #    Propositional preprocessing time  : 0.000
% 0.14/0.37  #    Propositional encoding time       : 0.000
% 0.14/0.37  #    Propositional solver time         : 0.000
% 0.14/0.37  #    Success case prop preproc time    : 0.000
% 0.14/0.37  #    Success case prop encoding time   : 0.000
% 0.14/0.37  #    Success case prop solver time     : 0.000
% 0.14/0.37  # Current number of processed clauses  : 20
% 0.14/0.37  #    Positive orientable unit clauses  : 3
% 0.14/0.37  #    Positive unorientable unit clauses: 0
% 0.14/0.37  #    Negative unit clauses             : 2
% 0.14/0.37  #    Non-unit-clauses                  : 15
% 0.14/0.37  # Current number of unprocessed clauses: 8
% 0.14/0.37  # ...number of literals in the above   : 20
% 0.14/0.37  # Current number of archived formulas  : 0
% 0.14/0.37  # Current number of archived clauses   : 21
% 0.14/0.37  # Clause-clause subsumption calls (NU) : 36
% 0.14/0.37  # Rec. Clause-clause subsumption calls : 36
% 0.14/0.37  # Non-unit clause-clause subsumptions  : 1
% 0.14/0.37  # Unit Clause-clause subsumption calls : 12
% 0.14/0.37  # Rewrite failures with RHS unbound    : 0
% 0.14/0.37  # BW rewrite match attempts            : 2
% 0.14/0.37  # BW rewrite match successes           : 2
% 0.14/0.37  # Condensation attempts                : 0
% 0.14/0.37  # Condensation successes               : 0
% 0.14/0.37  # Termbank termtop insertions          : 1451
% 0.14/0.37  
% 0.14/0.37  # -------------------------------------------------
% 0.14/0.37  # User time                : 0.030 s
% 0.14/0.37  # System time              : 0.002 s
% 0.14/0.37  # Total time               : 0.032 s
% 0.14/0.37  # Maximum resident set size: 1580 pages
%------------------------------------------------------------------------------
