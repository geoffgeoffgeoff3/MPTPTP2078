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
% DateTime   : Thu Dec  3 10:44:11 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   39 (  88 expanded)
%              Number of clauses        :   28 (  41 expanded)
%              Number of leaves         :    5 (  21 expanded)
%              Depth                    :   12
%              Number of atoms          :  103 ( 294 expanded)
%              Number of equality atoms :   29 (  55 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal clause size      :    7 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t138_zfmisc_1,conjecture,(
    ! [X1,X2,X3,X4] :
      ( r1_tarski(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X3,X4))
     => ( k2_zfmisc_1(X1,X2) = k1_xboole_0
        | ( r1_tarski(X1,X3)
          & r1_tarski(X2,X4) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t138_zfmisc_1)).

fof(l54_zfmisc_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,X4))
    <=> ( r2_hidden(X1,X3)
        & r2_hidden(X2,X4) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l54_zfmisc_1)).

fof(d3_tarski,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
    <=> ! [X3] :
          ( r2_hidden(X3,X1)
         => r2_hidden(X3,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_tarski)).

fof(t38_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,k4_xboole_0(X2,X1))
     => X1 = k1_xboole_0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t38_xboole_1)).

fof(t113_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( k2_zfmisc_1(X1,X2) = k1_xboole_0
    <=> ( X1 = k1_xboole_0
        | X2 = k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t113_zfmisc_1)).

fof(c_0_5,negated_conjecture,(
    ~ ! [X1,X2,X3,X4] :
        ( r1_tarski(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X3,X4))
       => ( k2_zfmisc_1(X1,X2) = k1_xboole_0
          | ( r1_tarski(X1,X3)
            & r1_tarski(X2,X4) ) ) ) ),
    inference(assume_negation,[status(cth)],[t138_zfmisc_1])).

fof(c_0_6,plain,(
    ! [X13,X14,X15,X16] :
      ( ( r2_hidden(X13,X15)
        | ~ r2_hidden(k4_tarski(X13,X14),k2_zfmisc_1(X15,X16)) )
      & ( r2_hidden(X14,X16)
        | ~ r2_hidden(k4_tarski(X13,X14),k2_zfmisc_1(X15,X16)) )
      & ( ~ r2_hidden(X13,X15)
        | ~ r2_hidden(X14,X16)
        | r2_hidden(k4_tarski(X13,X14),k2_zfmisc_1(X15,X16)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l54_zfmisc_1])])])).

fof(c_0_7,plain,(
    ! [X5,X6,X7,X8,X9] :
      ( ( ~ r1_tarski(X5,X6)
        | ~ r2_hidden(X7,X5)
        | r2_hidden(X7,X6) )
      & ( r2_hidden(esk1_2(X8,X9),X8)
        | r1_tarski(X8,X9) )
      & ( ~ r2_hidden(esk1_2(X8,X9),X9)
        | r1_tarski(X8,X9) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).

fof(c_0_8,negated_conjecture,
    ( r1_tarski(k2_zfmisc_1(esk2_0,esk3_0),k2_zfmisc_1(esk4_0,esk5_0))
    & k2_zfmisc_1(esk2_0,esk3_0) != k1_xboole_0
    & ( ~ r1_tarski(esk2_0,esk4_0)
      | ~ r1_tarski(esk3_0,esk5_0) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_5])])])).

cnf(c_0_9,plain,
    ( r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(X2,X4))
    | ~ r2_hidden(X1,X2)
    | ~ r2_hidden(X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_10,plain,
    ( r2_hidden(esk1_2(X1,X2),X1)
    | r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_11,plain,
    ( r2_hidden(X3,X2)
    | ~ r1_tarski(X1,X2)
    | ~ r2_hidden(X3,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_12,negated_conjecture,
    ( r1_tarski(k2_zfmisc_1(esk2_0,esk3_0),k2_zfmisc_1(esk4_0,esk5_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_13,plain,
    ( r2_hidden(k4_tarski(X1,esk1_2(X2,X3)),k2_zfmisc_1(X4,X2))
    | r1_tarski(X2,X3)
    | ~ r2_hidden(X1,X4) ),
    inference(spm,[status(thm)],[c_0_9,c_0_10])).

cnf(c_0_14,negated_conjecture,
    ( r2_hidden(X1,k2_zfmisc_1(esk4_0,esk5_0))
    | ~ r2_hidden(X1,k2_zfmisc_1(esk2_0,esk3_0)) ),
    inference(spm,[status(thm)],[c_0_11,c_0_12])).

cnf(c_0_15,plain,
    ( r2_hidden(k4_tarski(esk1_2(X1,X2),esk1_2(X3,X4)),k2_zfmisc_1(X1,X3))
    | r1_tarski(X1,X2)
    | r1_tarski(X3,X4) ),
    inference(spm,[status(thm)],[c_0_13,c_0_10])).

cnf(c_0_16,plain,
    ( r2_hidden(X1,X2)
    | ~ r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(X2,X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_17,negated_conjecture,
    ( r2_hidden(k4_tarski(esk1_2(esk2_0,X1),esk1_2(esk3_0,X2)),k2_zfmisc_1(esk4_0,esk5_0))
    | r1_tarski(esk3_0,X2)
    | r1_tarski(esk2_0,X1) ),
    inference(spm,[status(thm)],[c_0_14,c_0_15])).

fof(c_0_18,plain,(
    ! [X11,X12] :
      ( ~ r1_tarski(X11,k4_xboole_0(X12,X11))
      | X11 = k1_xboole_0 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t38_xboole_1])])).

cnf(c_0_19,plain,
    ( r1_tarski(X1,X2)
    | ~ r2_hidden(esk1_2(X1,X2),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_20,negated_conjecture,
    ( r2_hidden(esk1_2(esk2_0,X1),esk4_0)
    | r1_tarski(esk2_0,X1)
    | r1_tarski(esk3_0,X2) ),
    inference(spm,[status(thm)],[c_0_16,c_0_17])).

cnf(c_0_21,plain,
    ( r2_hidden(X1,X2)
    | ~ r2_hidden(k4_tarski(X3,X1),k2_zfmisc_1(X4,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_22,plain,
    ( X1 = k1_xboole_0
    | ~ r1_tarski(X1,k4_xboole_0(X2,X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_23,negated_conjecture,
    ( r1_tarski(esk2_0,esk4_0)
    | r1_tarski(esk3_0,X1) ),
    inference(spm,[status(thm)],[c_0_19,c_0_20])).

cnf(c_0_24,negated_conjecture,
    ( r2_hidden(esk1_2(esk3_0,X1),esk5_0)
    | r1_tarski(esk2_0,X2)
    | r1_tarski(esk3_0,X1) ),
    inference(spm,[status(thm)],[c_0_21,c_0_17])).

cnf(c_0_25,negated_conjecture,
    ( ~ r1_tarski(esk2_0,esk4_0)
    | ~ r1_tarski(esk3_0,esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_26,negated_conjecture,
    ( esk3_0 = k1_xboole_0
    | r1_tarski(esk2_0,esk4_0) ),
    inference(spm,[status(thm)],[c_0_22,c_0_23])).

cnf(c_0_27,negated_conjecture,
    ( r1_tarski(esk3_0,esk5_0)
    | r1_tarski(esk2_0,X1) ),
    inference(spm,[status(thm)],[c_0_19,c_0_24])).

fof(c_0_28,plain,(
    ! [X17,X18] :
      ( ( k2_zfmisc_1(X17,X18) != k1_xboole_0
        | X17 = k1_xboole_0
        | X18 = k1_xboole_0 )
      & ( X17 != k1_xboole_0
        | k2_zfmisc_1(X17,X18) = k1_xboole_0 )
      & ( X18 != k1_xboole_0
        | k2_zfmisc_1(X17,X18) = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t113_zfmisc_1])])])).

cnf(c_0_29,negated_conjecture,
    ( esk3_0 = k1_xboole_0
    | ~ r1_tarski(esk3_0,esk5_0) ),
    inference(spm,[status(thm)],[c_0_25,c_0_26])).

cnf(c_0_30,negated_conjecture,
    ( esk2_0 = k1_xboole_0
    | r1_tarski(esk3_0,esk5_0) ),
    inference(spm,[status(thm)],[c_0_22,c_0_27])).

cnf(c_0_31,plain,
    ( k2_zfmisc_1(X1,X2) = k1_xboole_0
    | X1 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_32,negated_conjecture,
    ( k2_zfmisc_1(esk2_0,esk3_0) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_33,negated_conjecture,
    ( esk2_0 = k1_xboole_0
    | esk3_0 = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_29,c_0_30])).

cnf(c_0_34,plain,
    ( k2_zfmisc_1(k1_xboole_0,X1) = k1_xboole_0 ),
    inference(er,[status(thm)],[c_0_31])).

cnf(c_0_35,plain,
    ( k2_zfmisc_1(X2,X1) = k1_xboole_0
    | X1 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_36,negated_conjecture,
    ( esk3_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32,c_0_33]),c_0_34])])).

cnf(c_0_37,plain,
    ( k2_zfmisc_1(X1,k1_xboole_0) = k1_xboole_0 ),
    inference(er,[status(thm)],[c_0_35])).

cnf(c_0_38,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_32,c_0_36]),c_0_37])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n016.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 18:27:49 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.13/0.37  # AutoSched0-Mode selected heuristic G_E___008_C45_F1_PI_S5PRR_SE_Q4_CS_SP_S4S
% 0.13/0.37  # and selection function SelectNewComplexAHPNS.
% 0.13/0.37  #
% 0.13/0.37  # Preprocessing time       : 0.027 s
% 0.13/0.37  
% 0.13/0.37  # Proof found!
% 0.13/0.37  # SZS status Theorem
% 0.13/0.37  # SZS output start CNFRefutation
% 0.13/0.37  fof(t138_zfmisc_1, conjecture, ![X1, X2, X3, X4]:(r1_tarski(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X3,X4))=>(k2_zfmisc_1(X1,X2)=k1_xboole_0|(r1_tarski(X1,X3)&r1_tarski(X2,X4)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t138_zfmisc_1)).
% 0.13/0.37  fof(l54_zfmisc_1, axiom, ![X1, X2, X3, X4]:(r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,X4))<=>(r2_hidden(X1,X3)&r2_hidden(X2,X4))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l54_zfmisc_1)).
% 0.13/0.37  fof(d3_tarski, axiom, ![X1, X2]:(r1_tarski(X1,X2)<=>![X3]:(r2_hidden(X3,X1)=>r2_hidden(X3,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d3_tarski)).
% 0.13/0.37  fof(t38_xboole_1, axiom, ![X1, X2]:(r1_tarski(X1,k4_xboole_0(X2,X1))=>X1=k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t38_xboole_1)).
% 0.13/0.37  fof(t113_zfmisc_1, axiom, ![X1, X2]:(k2_zfmisc_1(X1,X2)=k1_xboole_0<=>(X1=k1_xboole_0|X2=k1_xboole_0)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t113_zfmisc_1)).
% 0.13/0.37  fof(c_0_5, negated_conjecture, ~(![X1, X2, X3, X4]:(r1_tarski(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X3,X4))=>(k2_zfmisc_1(X1,X2)=k1_xboole_0|(r1_tarski(X1,X3)&r1_tarski(X2,X4))))), inference(assume_negation,[status(cth)],[t138_zfmisc_1])).
% 0.13/0.37  fof(c_0_6, plain, ![X13, X14, X15, X16]:(((r2_hidden(X13,X15)|~r2_hidden(k4_tarski(X13,X14),k2_zfmisc_1(X15,X16)))&(r2_hidden(X14,X16)|~r2_hidden(k4_tarski(X13,X14),k2_zfmisc_1(X15,X16))))&(~r2_hidden(X13,X15)|~r2_hidden(X14,X16)|r2_hidden(k4_tarski(X13,X14),k2_zfmisc_1(X15,X16)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l54_zfmisc_1])])])).
% 0.13/0.37  fof(c_0_7, plain, ![X5, X6, X7, X8, X9]:((~r1_tarski(X5,X6)|(~r2_hidden(X7,X5)|r2_hidden(X7,X6)))&((r2_hidden(esk1_2(X8,X9),X8)|r1_tarski(X8,X9))&(~r2_hidden(esk1_2(X8,X9),X9)|r1_tarski(X8,X9)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).
% 0.13/0.37  fof(c_0_8, negated_conjecture, (r1_tarski(k2_zfmisc_1(esk2_0,esk3_0),k2_zfmisc_1(esk4_0,esk5_0))&(k2_zfmisc_1(esk2_0,esk3_0)!=k1_xboole_0&(~r1_tarski(esk2_0,esk4_0)|~r1_tarski(esk3_0,esk5_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_5])])])).
% 0.13/0.37  cnf(c_0_9, plain, (r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(X2,X4))|~r2_hidden(X1,X2)|~r2_hidden(X3,X4)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.13/0.37  cnf(c_0_10, plain, (r2_hidden(esk1_2(X1,X2),X1)|r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.13/0.37  cnf(c_0_11, plain, (r2_hidden(X3,X2)|~r1_tarski(X1,X2)|~r2_hidden(X3,X1)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.13/0.37  cnf(c_0_12, negated_conjecture, (r1_tarski(k2_zfmisc_1(esk2_0,esk3_0),k2_zfmisc_1(esk4_0,esk5_0))), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.13/0.37  cnf(c_0_13, plain, (r2_hidden(k4_tarski(X1,esk1_2(X2,X3)),k2_zfmisc_1(X4,X2))|r1_tarski(X2,X3)|~r2_hidden(X1,X4)), inference(spm,[status(thm)],[c_0_9, c_0_10])).
% 0.13/0.37  cnf(c_0_14, negated_conjecture, (r2_hidden(X1,k2_zfmisc_1(esk4_0,esk5_0))|~r2_hidden(X1,k2_zfmisc_1(esk2_0,esk3_0))), inference(spm,[status(thm)],[c_0_11, c_0_12])).
% 0.13/0.37  cnf(c_0_15, plain, (r2_hidden(k4_tarski(esk1_2(X1,X2),esk1_2(X3,X4)),k2_zfmisc_1(X1,X3))|r1_tarski(X1,X2)|r1_tarski(X3,X4)), inference(spm,[status(thm)],[c_0_13, c_0_10])).
% 0.13/0.37  cnf(c_0_16, plain, (r2_hidden(X1,X2)|~r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(X2,X4))), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.13/0.37  cnf(c_0_17, negated_conjecture, (r2_hidden(k4_tarski(esk1_2(esk2_0,X1),esk1_2(esk3_0,X2)),k2_zfmisc_1(esk4_0,esk5_0))|r1_tarski(esk3_0,X2)|r1_tarski(esk2_0,X1)), inference(spm,[status(thm)],[c_0_14, c_0_15])).
% 0.13/0.37  fof(c_0_18, plain, ![X11, X12]:(~r1_tarski(X11,k4_xboole_0(X12,X11))|X11=k1_xboole_0), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t38_xboole_1])])).
% 0.13/0.37  cnf(c_0_19, plain, (r1_tarski(X1,X2)|~r2_hidden(esk1_2(X1,X2),X2)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.13/0.37  cnf(c_0_20, negated_conjecture, (r2_hidden(esk1_2(esk2_0,X1),esk4_0)|r1_tarski(esk2_0,X1)|r1_tarski(esk3_0,X2)), inference(spm,[status(thm)],[c_0_16, c_0_17])).
% 0.13/0.37  cnf(c_0_21, plain, (r2_hidden(X1,X2)|~r2_hidden(k4_tarski(X3,X1),k2_zfmisc_1(X4,X2))), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.13/0.37  cnf(c_0_22, plain, (X1=k1_xboole_0|~r1_tarski(X1,k4_xboole_0(X2,X1))), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.13/0.37  cnf(c_0_23, negated_conjecture, (r1_tarski(esk2_0,esk4_0)|r1_tarski(esk3_0,X1)), inference(spm,[status(thm)],[c_0_19, c_0_20])).
% 0.13/0.37  cnf(c_0_24, negated_conjecture, (r2_hidden(esk1_2(esk3_0,X1),esk5_0)|r1_tarski(esk2_0,X2)|r1_tarski(esk3_0,X1)), inference(spm,[status(thm)],[c_0_21, c_0_17])).
% 0.13/0.37  cnf(c_0_25, negated_conjecture, (~r1_tarski(esk2_0,esk4_0)|~r1_tarski(esk3_0,esk5_0)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.13/0.37  cnf(c_0_26, negated_conjecture, (esk3_0=k1_xboole_0|r1_tarski(esk2_0,esk4_0)), inference(spm,[status(thm)],[c_0_22, c_0_23])).
% 0.13/0.37  cnf(c_0_27, negated_conjecture, (r1_tarski(esk3_0,esk5_0)|r1_tarski(esk2_0,X1)), inference(spm,[status(thm)],[c_0_19, c_0_24])).
% 0.13/0.37  fof(c_0_28, plain, ![X17, X18]:((k2_zfmisc_1(X17,X18)!=k1_xboole_0|(X17=k1_xboole_0|X18=k1_xboole_0))&((X17!=k1_xboole_0|k2_zfmisc_1(X17,X18)=k1_xboole_0)&(X18!=k1_xboole_0|k2_zfmisc_1(X17,X18)=k1_xboole_0))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t113_zfmisc_1])])])).
% 0.13/0.37  cnf(c_0_29, negated_conjecture, (esk3_0=k1_xboole_0|~r1_tarski(esk3_0,esk5_0)), inference(spm,[status(thm)],[c_0_25, c_0_26])).
% 0.13/0.37  cnf(c_0_30, negated_conjecture, (esk2_0=k1_xboole_0|r1_tarski(esk3_0,esk5_0)), inference(spm,[status(thm)],[c_0_22, c_0_27])).
% 0.13/0.37  cnf(c_0_31, plain, (k2_zfmisc_1(X1,X2)=k1_xboole_0|X1!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.13/0.37  cnf(c_0_32, negated_conjecture, (k2_zfmisc_1(esk2_0,esk3_0)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.13/0.37  cnf(c_0_33, negated_conjecture, (esk2_0=k1_xboole_0|esk3_0=k1_xboole_0), inference(spm,[status(thm)],[c_0_29, c_0_30])).
% 0.13/0.37  cnf(c_0_34, plain, (k2_zfmisc_1(k1_xboole_0,X1)=k1_xboole_0), inference(er,[status(thm)],[c_0_31])).
% 0.13/0.37  cnf(c_0_35, plain, (k2_zfmisc_1(X2,X1)=k1_xboole_0|X1!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.13/0.37  cnf(c_0_36, negated_conjecture, (esk3_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32, c_0_33]), c_0_34])])).
% 0.13/0.37  cnf(c_0_37, plain, (k2_zfmisc_1(X1,k1_xboole_0)=k1_xboole_0), inference(er,[status(thm)],[c_0_35])).
% 0.13/0.37  cnf(c_0_38, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_32, c_0_36]), c_0_37])]), ['proof']).
% 0.13/0.37  # SZS output end CNFRefutation
% 0.13/0.37  # Proof object total steps             : 39
% 0.13/0.37  # Proof object clause steps            : 28
% 0.13/0.37  # Proof object formula steps           : 11
% 0.13/0.37  # Proof object conjectures             : 18
% 0.13/0.37  # Proof object clause conjectures      : 15
% 0.13/0.37  # Proof object formula conjectures     : 3
% 0.13/0.37  # Proof object initial clauses used    : 12
% 0.13/0.37  # Proof object initial formulas used   : 5
% 0.13/0.37  # Proof object generating inferences   : 13
% 0.13/0.37  # Proof object simplifying inferences  : 7
% 0.13/0.37  # Training examples: 0 positive, 0 negative
% 0.13/0.37  # Parsed axioms                        : 5
% 0.13/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.37  # Initial clauses                      : 13
% 0.13/0.37  # Removed in clause preprocessing      : 0
% 0.13/0.37  # Initial clauses in saturation        : 13
% 0.13/0.37  # Processed clauses                    : 57
% 0.13/0.37  # ...of these trivial                  : 0
% 0.13/0.37  # ...subsumed                          : 7
% 0.13/0.37  # ...remaining for further processing  : 50
% 0.13/0.37  # Other redundant clauses eliminated   : 2
% 0.13/0.37  # Clauses deleted for lack of memory   : 0
% 0.13/0.37  # Backward-subsumed                    : 5
% 0.13/0.37  # Backward-rewritten                   : 25
% 0.13/0.37  # Generated clauses                    : 131
% 0.13/0.37  # ...of the previous two non-trivial   : 116
% 0.13/0.37  # Contextual simplify-reflections      : 0
% 0.13/0.37  # Paramodulations                      : 129
% 0.13/0.37  # Factorizations                       : 0
% 0.13/0.37  # Equation resolutions                 : 2
% 0.13/0.37  # Propositional unsat checks           : 0
% 0.13/0.37  #    Propositional check models        : 0
% 0.13/0.37  #    Propositional check unsatisfiable : 0
% 0.13/0.37  #    Propositional clauses             : 0
% 0.13/0.37  #    Propositional clauses after purity: 0
% 0.13/0.37  #    Propositional unsat core size     : 0
% 0.13/0.37  #    Propositional preprocessing time  : 0.000
% 0.13/0.37  #    Propositional encoding time       : 0.000
% 0.13/0.37  #    Propositional solver time         : 0.000
% 0.13/0.37  #    Success case prop preproc time    : 0.000
% 0.13/0.37  #    Success case prop encoding time   : 0.000
% 0.13/0.37  #    Success case prop solver time     : 0.000
% 0.13/0.37  # Current number of processed clauses  : 18
% 0.13/0.37  #    Positive orientable unit clauses  : 5
% 0.13/0.37  #    Positive unorientable unit clauses: 0
% 0.13/0.37  #    Negative unit clauses             : 0
% 0.13/0.37  #    Non-unit-clauses                  : 13
% 0.13/0.37  # Current number of unprocessed clauses: 63
% 0.13/0.37  # ...number of literals in the above   : 251
% 0.13/0.37  # Current number of archived formulas  : 0
% 0.13/0.37  # Current number of archived clauses   : 30
% 0.13/0.37  # Clause-clause subsumption calls (NU) : 258
% 0.13/0.37  # Rec. Clause-clause subsumption calls : 129
% 0.13/0.37  # Non-unit clause-clause subsumptions  : 11
% 0.13/0.37  # Unit Clause-clause subsumption calls : 3
% 0.13/0.37  # Rewrite failures with RHS unbound    : 0
% 0.13/0.37  # BW rewrite match attempts            : 8
% 0.13/0.37  # BW rewrite match successes           : 2
% 0.13/0.37  # Condensation attempts                : 0
% 0.13/0.37  # Condensation successes               : 0
% 0.13/0.37  # Termbank termtop insertions          : 3521
% 0.13/0.37  
% 0.13/0.37  # -------------------------------------------------
% 0.13/0.37  # User time                : 0.032 s
% 0.13/0.37  # System time              : 0.002 s
% 0.13/0.37  # Total time               : 0.035 s
% 0.13/0.37  # Maximum resident set size: 1564 pages
%------------------------------------------------------------------------------
