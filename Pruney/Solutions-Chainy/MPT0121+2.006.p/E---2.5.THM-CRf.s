%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n005.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:34:58 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   35 (  88 expanded)
%              Number of clauses        :   24 (  40 expanded)
%              Number of leaves         :    5 (  22 expanded)
%              Depth                    :    9
%              Number of atoms          :   57 ( 160 expanded)
%              Number of equality atoms :   19 (  57 expanded)
%              Maximal formula depth    :    9 (   3 average)
%              Maximal clause size      :    4 (   1 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t41_xboole_1,axiom,(
    ! [X1,X2,X3] : k4_xboole_0(k4_xboole_0(X1,X2),X3) = k4_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t41_xboole_1)).

fof(t98_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X2) = k5_xboole_0(X1,k4_xboole_0(X2,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t98_xboole_1)).

fof(t114_xboole_1,conjecture,(
    ! [X1,X2,X3,X4] :
      ( ( r1_xboole_0(X1,X4)
        & r1_xboole_0(X2,X4)
        & r1_xboole_0(X3,X4) )
     => r1_xboole_0(k2_xboole_0(k2_xboole_0(X1,X2),X3),X4) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t114_xboole_1)).

fof(t83_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_xboole_0(X1,X2)
    <=> k4_xboole_0(X1,X2) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t83_xboole_1)).

fof(symmetry_r1_xboole_0,axiom,(
    ! [X1,X2] :
      ( r1_xboole_0(X1,X2)
     => r1_xboole_0(X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',symmetry_r1_xboole_0)).

fof(c_0_5,plain,(
    ! [X7,X8,X9] : k4_xboole_0(k4_xboole_0(X7,X8),X9) = k4_xboole_0(X7,k2_xboole_0(X8,X9)) ),
    inference(variable_rename,[status(thm)],[t41_xboole_1])).

fof(c_0_6,plain,(
    ! [X12,X13] : k2_xboole_0(X12,X13) = k5_xboole_0(X12,k4_xboole_0(X13,X12)) ),
    inference(variable_rename,[status(thm)],[t98_xboole_1])).

fof(c_0_7,negated_conjecture,(
    ~ ! [X1,X2,X3,X4] :
        ( ( r1_xboole_0(X1,X4)
          & r1_xboole_0(X2,X4)
          & r1_xboole_0(X3,X4) )
       => r1_xboole_0(k2_xboole_0(k2_xboole_0(X1,X2),X3),X4) ) ),
    inference(assume_negation,[status(cth)],[t114_xboole_1])).

fof(c_0_8,plain,(
    ! [X10,X11] :
      ( ( ~ r1_xboole_0(X10,X11)
        | k4_xboole_0(X10,X11) = X10 )
      & ( k4_xboole_0(X10,X11) != X10
        | r1_xboole_0(X10,X11) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t83_xboole_1])])).

cnf(c_0_9,plain,
    ( k4_xboole_0(k4_xboole_0(X1,X2),X3) = k4_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_10,plain,
    ( k2_xboole_0(X1,X2) = k5_xboole_0(X1,k4_xboole_0(X2,X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

fof(c_0_11,plain,(
    ! [X5,X6] :
      ( ~ r1_xboole_0(X5,X6)
      | r1_xboole_0(X6,X5) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[symmetry_r1_xboole_0])])).

fof(c_0_12,negated_conjecture,
    ( r1_xboole_0(esk1_0,esk4_0)
    & r1_xboole_0(esk2_0,esk4_0)
    & r1_xboole_0(esk3_0,esk4_0)
    & ~ r1_xboole_0(k2_xboole_0(k2_xboole_0(esk1_0,esk2_0),esk3_0),esk4_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_7])])])).

cnf(c_0_13,plain,
    ( r1_xboole_0(X1,X2)
    | k4_xboole_0(X1,X2) != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_14,plain,
    ( k4_xboole_0(k4_xboole_0(X1,X2),X3) = k4_xboole_0(X1,k5_xboole_0(X2,k4_xboole_0(X3,X2))) ),
    inference(rw,[status(thm)],[c_0_9,c_0_10])).

cnf(c_0_15,plain,
    ( r1_xboole_0(X2,X1)
    | ~ r1_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_16,negated_conjecture,
    ( r1_xboole_0(esk1_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_17,plain,
    ( r1_xboole_0(X1,k5_xboole_0(X2,k4_xboole_0(X3,X2)))
    | k4_xboole_0(k4_xboole_0(X1,X2),X3) != X1 ),
    inference(spm,[status(thm)],[c_0_13,c_0_14])).

cnf(c_0_18,plain,
    ( k4_xboole_0(X1,X2) = X1
    | ~ r1_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_19,negated_conjecture,
    ( r1_xboole_0(esk4_0,esk1_0) ),
    inference(spm,[status(thm)],[c_0_15,c_0_16])).

cnf(c_0_20,negated_conjecture,
    ( r1_xboole_0(esk2_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_21,plain,
    ( r1_xboole_0(X1,k5_xboole_0(k5_xboole_0(X2,k4_xboole_0(X3,X2)),k4_xboole_0(k4_xboole_0(X4,X2),X3)))
    | k4_xboole_0(k4_xboole_0(k4_xboole_0(X1,X2),X3),X4) != X1 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_17,c_0_14]),c_0_14])).

cnf(c_0_22,negated_conjecture,
    ( k4_xboole_0(esk4_0,esk1_0) = esk4_0 ),
    inference(spm,[status(thm)],[c_0_18,c_0_19])).

cnf(c_0_23,negated_conjecture,
    ( r1_xboole_0(esk4_0,esk2_0) ),
    inference(spm,[status(thm)],[c_0_15,c_0_20])).

cnf(c_0_24,negated_conjecture,
    ( r1_xboole_0(esk3_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_25,negated_conjecture,
    ( r1_xboole_0(esk4_0,k5_xboole_0(k5_xboole_0(esk1_0,k4_xboole_0(X1,esk1_0)),k4_xboole_0(k4_xboole_0(X2,esk1_0),X1)))
    | k4_xboole_0(k4_xboole_0(esk4_0,X1),X2) != esk4_0 ),
    inference(spm,[status(thm)],[c_0_21,c_0_22])).

cnf(c_0_26,negated_conjecture,
    ( k4_xboole_0(esk4_0,esk2_0) = esk4_0 ),
    inference(spm,[status(thm)],[c_0_18,c_0_23])).

cnf(c_0_27,negated_conjecture,
    ( r1_xboole_0(esk4_0,esk3_0) ),
    inference(spm,[status(thm)],[c_0_15,c_0_24])).

cnf(c_0_28,negated_conjecture,
    ( ~ r1_xboole_0(k2_xboole_0(k2_xboole_0(esk1_0,esk2_0),esk3_0),esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_29,negated_conjecture,
    ( r1_xboole_0(esk4_0,k5_xboole_0(k5_xboole_0(esk1_0,k4_xboole_0(esk2_0,esk1_0)),k4_xboole_0(k4_xboole_0(X1,esk1_0),esk2_0)))
    | k4_xboole_0(esk4_0,X1) != esk4_0 ),
    inference(spm,[status(thm)],[c_0_25,c_0_26])).

cnf(c_0_30,negated_conjecture,
    ( k4_xboole_0(esk4_0,esk3_0) = esk4_0 ),
    inference(spm,[status(thm)],[c_0_18,c_0_27])).

cnf(c_0_31,negated_conjecture,
    ( ~ r1_xboole_0(k5_xboole_0(k5_xboole_0(esk1_0,k4_xboole_0(esk2_0,esk1_0)),k4_xboole_0(esk3_0,k5_xboole_0(esk1_0,k4_xboole_0(esk2_0,esk1_0)))),esk4_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_28,c_0_10]),c_0_10])).

cnf(c_0_32,negated_conjecture,
    ( r1_xboole_0(esk4_0,k5_xboole_0(k5_xboole_0(esk1_0,k4_xboole_0(esk2_0,esk1_0)),k4_xboole_0(k4_xboole_0(esk3_0,esk1_0),esk2_0))) ),
    inference(spm,[status(thm)],[c_0_29,c_0_30])).

cnf(c_0_33,negated_conjecture,
    ( ~ r1_xboole_0(k5_xboole_0(k5_xboole_0(esk1_0,k4_xboole_0(esk2_0,esk1_0)),k4_xboole_0(k4_xboole_0(esk3_0,esk1_0),esk2_0)),esk4_0) ),
    inference(rw,[status(thm)],[c_0_31,c_0_14])).

cnf(c_0_34,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_15,c_0_32]),c_0_33]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.33  % Computer   : n005.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 12:03:47 EST 2020
% 0.19/0.34  % CPUTime    : 
% 0.19/0.34  # Version: 2.5pre002
% 0.19/0.34  # No SInE strategy applied
% 0.19/0.34  # Trying AutoSched0 for 299 seconds
% 0.19/0.48  # AutoSched0-Mode selected heuristic G_E___207_C18_F1_AE_CS_SP_PI_PS_S0i
% 0.19/0.48  # and selection function SelectDiffNegLit.
% 0.19/0.48  #
% 0.19/0.48  # Preprocessing time       : 0.026 s
% 0.19/0.48  # Presaturation interreduction done
% 0.19/0.48  
% 0.19/0.48  # Proof found!
% 0.19/0.48  # SZS status Theorem
% 0.19/0.48  # SZS output start CNFRefutation
% 0.19/0.48  fof(t41_xboole_1, axiom, ![X1, X2, X3]:k4_xboole_0(k4_xboole_0(X1,X2),X3)=k4_xboole_0(X1,k2_xboole_0(X2,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t41_xboole_1)).
% 0.19/0.48  fof(t98_xboole_1, axiom, ![X1, X2]:k2_xboole_0(X1,X2)=k5_xboole_0(X1,k4_xboole_0(X2,X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t98_xboole_1)).
% 0.19/0.48  fof(t114_xboole_1, conjecture, ![X1, X2, X3, X4]:(((r1_xboole_0(X1,X4)&r1_xboole_0(X2,X4))&r1_xboole_0(X3,X4))=>r1_xboole_0(k2_xboole_0(k2_xboole_0(X1,X2),X3),X4)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t114_xboole_1)).
% 0.19/0.48  fof(t83_xboole_1, axiom, ![X1, X2]:(r1_xboole_0(X1,X2)<=>k4_xboole_0(X1,X2)=X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t83_xboole_1)).
% 0.19/0.48  fof(symmetry_r1_xboole_0, axiom, ![X1, X2]:(r1_xboole_0(X1,X2)=>r1_xboole_0(X2,X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', symmetry_r1_xboole_0)).
% 0.19/0.48  fof(c_0_5, plain, ![X7, X8, X9]:k4_xboole_0(k4_xboole_0(X7,X8),X9)=k4_xboole_0(X7,k2_xboole_0(X8,X9)), inference(variable_rename,[status(thm)],[t41_xboole_1])).
% 0.19/0.48  fof(c_0_6, plain, ![X12, X13]:k2_xboole_0(X12,X13)=k5_xboole_0(X12,k4_xboole_0(X13,X12)), inference(variable_rename,[status(thm)],[t98_xboole_1])).
% 0.19/0.48  fof(c_0_7, negated_conjecture, ~(![X1, X2, X3, X4]:(((r1_xboole_0(X1,X4)&r1_xboole_0(X2,X4))&r1_xboole_0(X3,X4))=>r1_xboole_0(k2_xboole_0(k2_xboole_0(X1,X2),X3),X4))), inference(assume_negation,[status(cth)],[t114_xboole_1])).
% 0.19/0.48  fof(c_0_8, plain, ![X10, X11]:((~r1_xboole_0(X10,X11)|k4_xboole_0(X10,X11)=X10)&(k4_xboole_0(X10,X11)!=X10|r1_xboole_0(X10,X11))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t83_xboole_1])])).
% 0.19/0.48  cnf(c_0_9, plain, (k4_xboole_0(k4_xboole_0(X1,X2),X3)=k4_xboole_0(X1,k2_xboole_0(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_5])).
% 0.19/0.48  cnf(c_0_10, plain, (k2_xboole_0(X1,X2)=k5_xboole_0(X1,k4_xboole_0(X2,X1))), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.19/0.48  fof(c_0_11, plain, ![X5, X6]:(~r1_xboole_0(X5,X6)|r1_xboole_0(X6,X5)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[symmetry_r1_xboole_0])])).
% 0.19/0.48  fof(c_0_12, negated_conjecture, (((r1_xboole_0(esk1_0,esk4_0)&r1_xboole_0(esk2_0,esk4_0))&r1_xboole_0(esk3_0,esk4_0))&~r1_xboole_0(k2_xboole_0(k2_xboole_0(esk1_0,esk2_0),esk3_0),esk4_0)), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_7])])])).
% 0.19/0.48  cnf(c_0_13, plain, (r1_xboole_0(X1,X2)|k4_xboole_0(X1,X2)!=X1), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.19/0.48  cnf(c_0_14, plain, (k4_xboole_0(k4_xboole_0(X1,X2),X3)=k4_xboole_0(X1,k5_xboole_0(X2,k4_xboole_0(X3,X2)))), inference(rw,[status(thm)],[c_0_9, c_0_10])).
% 0.19/0.48  cnf(c_0_15, plain, (r1_xboole_0(X2,X1)|~r1_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.19/0.48  cnf(c_0_16, negated_conjecture, (r1_xboole_0(esk1_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.19/0.48  cnf(c_0_17, plain, (r1_xboole_0(X1,k5_xboole_0(X2,k4_xboole_0(X3,X2)))|k4_xboole_0(k4_xboole_0(X1,X2),X3)!=X1), inference(spm,[status(thm)],[c_0_13, c_0_14])).
% 0.19/0.48  cnf(c_0_18, plain, (k4_xboole_0(X1,X2)=X1|~r1_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.19/0.48  cnf(c_0_19, negated_conjecture, (r1_xboole_0(esk4_0,esk1_0)), inference(spm,[status(thm)],[c_0_15, c_0_16])).
% 0.19/0.48  cnf(c_0_20, negated_conjecture, (r1_xboole_0(esk2_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.19/0.48  cnf(c_0_21, plain, (r1_xboole_0(X1,k5_xboole_0(k5_xboole_0(X2,k4_xboole_0(X3,X2)),k4_xboole_0(k4_xboole_0(X4,X2),X3)))|k4_xboole_0(k4_xboole_0(k4_xboole_0(X1,X2),X3),X4)!=X1), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_17, c_0_14]), c_0_14])).
% 0.19/0.48  cnf(c_0_22, negated_conjecture, (k4_xboole_0(esk4_0,esk1_0)=esk4_0), inference(spm,[status(thm)],[c_0_18, c_0_19])).
% 0.19/0.48  cnf(c_0_23, negated_conjecture, (r1_xboole_0(esk4_0,esk2_0)), inference(spm,[status(thm)],[c_0_15, c_0_20])).
% 0.19/0.48  cnf(c_0_24, negated_conjecture, (r1_xboole_0(esk3_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.19/0.48  cnf(c_0_25, negated_conjecture, (r1_xboole_0(esk4_0,k5_xboole_0(k5_xboole_0(esk1_0,k4_xboole_0(X1,esk1_0)),k4_xboole_0(k4_xboole_0(X2,esk1_0),X1)))|k4_xboole_0(k4_xboole_0(esk4_0,X1),X2)!=esk4_0), inference(spm,[status(thm)],[c_0_21, c_0_22])).
% 0.19/0.48  cnf(c_0_26, negated_conjecture, (k4_xboole_0(esk4_0,esk2_0)=esk4_0), inference(spm,[status(thm)],[c_0_18, c_0_23])).
% 0.19/0.48  cnf(c_0_27, negated_conjecture, (r1_xboole_0(esk4_0,esk3_0)), inference(spm,[status(thm)],[c_0_15, c_0_24])).
% 0.19/0.48  cnf(c_0_28, negated_conjecture, (~r1_xboole_0(k2_xboole_0(k2_xboole_0(esk1_0,esk2_0),esk3_0),esk4_0)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.19/0.48  cnf(c_0_29, negated_conjecture, (r1_xboole_0(esk4_0,k5_xboole_0(k5_xboole_0(esk1_0,k4_xboole_0(esk2_0,esk1_0)),k4_xboole_0(k4_xboole_0(X1,esk1_0),esk2_0)))|k4_xboole_0(esk4_0,X1)!=esk4_0), inference(spm,[status(thm)],[c_0_25, c_0_26])).
% 0.19/0.48  cnf(c_0_30, negated_conjecture, (k4_xboole_0(esk4_0,esk3_0)=esk4_0), inference(spm,[status(thm)],[c_0_18, c_0_27])).
% 0.19/0.48  cnf(c_0_31, negated_conjecture, (~r1_xboole_0(k5_xboole_0(k5_xboole_0(esk1_0,k4_xboole_0(esk2_0,esk1_0)),k4_xboole_0(esk3_0,k5_xboole_0(esk1_0,k4_xboole_0(esk2_0,esk1_0)))),esk4_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_28, c_0_10]), c_0_10])).
% 0.19/0.48  cnf(c_0_32, negated_conjecture, (r1_xboole_0(esk4_0,k5_xboole_0(k5_xboole_0(esk1_0,k4_xboole_0(esk2_0,esk1_0)),k4_xboole_0(k4_xboole_0(esk3_0,esk1_0),esk2_0)))), inference(spm,[status(thm)],[c_0_29, c_0_30])).
% 0.19/0.48  cnf(c_0_33, negated_conjecture, (~r1_xboole_0(k5_xboole_0(k5_xboole_0(esk1_0,k4_xboole_0(esk2_0,esk1_0)),k4_xboole_0(k4_xboole_0(esk3_0,esk1_0),esk2_0)),esk4_0)), inference(rw,[status(thm)],[c_0_31, c_0_14])).
% 0.19/0.48  cnf(c_0_34, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_15, c_0_32]), c_0_33]), ['proof']).
% 0.19/0.48  # SZS output end CNFRefutation
% 0.19/0.48  # Proof object total steps             : 35
% 0.19/0.48  # Proof object clause steps            : 24
% 0.19/0.48  # Proof object formula steps           : 11
% 0.19/0.48  # Proof object conjectures             : 19
% 0.19/0.48  # Proof object clause conjectures      : 16
% 0.19/0.48  # Proof object formula conjectures     : 3
% 0.19/0.48  # Proof object initial clauses used    : 9
% 0.19/0.48  # Proof object initial formulas used   : 5
% 0.19/0.48  # Proof object generating inferences   : 12
% 0.19/0.48  # Proof object simplifying inferences  : 6
% 0.19/0.48  # Training examples: 0 positive, 0 negative
% 0.19/0.48  # Parsed axioms                        : 5
% 0.19/0.48  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.48  # Initial clauses                      : 9
% 0.19/0.48  # Removed in clause preprocessing      : 1
% 0.19/0.48  # Initial clauses in saturation        : 8
% 0.19/0.48  # Processed clauses                    : 586
% 0.19/0.48  # ...of these trivial                  : 10
% 0.19/0.48  # ...subsumed                          : 49
% 0.19/0.48  # ...remaining for further processing  : 527
% 0.19/0.48  # Other redundant clauses eliminated   : 0
% 0.19/0.48  # Clauses deleted for lack of memory   : 0
% 0.19/0.48  # Backward-subsumed                    : 0
% 0.19/0.48  # Backward-rewritten                   : 1
% 0.19/0.48  # Generated clauses                    : 6709
% 0.19/0.48  # ...of the previous two non-trivial   : 6561
% 0.19/0.48  # Contextual simplify-reflections      : 0
% 0.19/0.48  # Paramodulations                      : 6709
% 0.19/0.48  # Factorizations                       : 0
% 0.19/0.48  # Equation resolutions                 : 0
% 0.19/0.48  # Propositional unsat checks           : 0
% 0.19/0.48  #    Propositional check models        : 0
% 0.19/0.48  #    Propositional check unsatisfiable : 0
% 0.19/0.48  #    Propositional clauses             : 0
% 0.19/0.48  #    Propositional clauses after purity: 0
% 0.19/0.48  #    Propositional unsat core size     : 0
% 0.19/0.48  #    Propositional preprocessing time  : 0.000
% 0.19/0.48  #    Propositional encoding time       : 0.000
% 0.19/0.48  #    Propositional solver time         : 0.000
% 0.19/0.48  #    Success case prop preproc time    : 0.000
% 0.19/0.48  #    Success case prop encoding time   : 0.000
% 0.19/0.48  #    Success case prop solver time     : 0.000
% 0.19/0.48  # Current number of processed clauses  : 518
% 0.19/0.48  #    Positive orientable unit clauses  : 174
% 0.19/0.48  #    Positive unorientable unit clauses: 0
% 0.19/0.48  #    Negative unit clauses             : 1
% 0.19/0.48  #    Non-unit-clauses                  : 343
% 0.19/0.48  # Current number of unprocessed clauses: 5991
% 0.19/0.48  # ...number of literals in the above   : 9811
% 0.19/0.48  # Current number of archived formulas  : 0
% 0.19/0.48  # Current number of archived clauses   : 10
% 0.19/0.48  # Clause-clause subsumption calls (NU) : 3400
% 0.19/0.48  # Rec. Clause-clause subsumption calls : 3400
% 0.19/0.48  # Non-unit clause-clause subsumptions  : 49
% 0.19/0.48  # Unit Clause-clause subsumption calls : 188
% 0.19/0.48  # Rewrite failures with RHS unbound    : 0
% 0.19/0.48  # BW rewrite match attempts            : 2453
% 0.19/0.48  # BW rewrite match successes           : 1
% 0.19/0.48  # Condensation attempts                : 0
% 0.19/0.48  # Condensation successes               : 0
% 0.19/0.48  # Termbank termtop insertions          : 237640
% 0.19/0.48  
% 0.19/0.48  # -------------------------------------------------
% 0.19/0.48  # User time                : 0.133 s
% 0.19/0.48  # System time              : 0.013 s
% 0.19/0.48  # Total time               : 0.146 s
% 0.19/0.48  # Maximum resident set size: 1568 pages
%------------------------------------------------------------------------------
