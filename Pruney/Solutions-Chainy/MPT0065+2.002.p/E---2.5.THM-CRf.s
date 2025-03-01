%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n007.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:32:28 EST 2020

% Result     : Theorem 0.20s
% Output     : CNFRefutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   40 (  99 expanded)
%              Number of clauses        :   23 (  42 expanded)
%              Number of leaves         :    8 (  24 expanded)
%              Depth                    :   11
%              Number of atoms          :   75 ( 233 expanded)
%              Number of equality atoms :   18 (  44 expanded)
%              Maximal formula depth    :    7 (   3 average)
%              Maximal clause size      :    7 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t39_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,k4_xboole_0(X2,X1)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t39_xboole_1)).

fof(l32_xboole_1,axiom,(
    ! [X1,X2] :
      ( k4_xboole_0(X1,X2) = k1_xboole_0
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l32_xboole_1)).

fof(t1_boole,axiom,(
    ! [X1] : k2_xboole_0(X1,k1_xboole_0) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t1_boole)).

fof(t10_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( r1_tarski(X1,X2)
     => r1_tarski(X1,k2_xboole_0(X3,X2)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t10_xboole_1)).

fof(d8_xboole_0,axiom,(
    ! [X1,X2] :
      ( r2_xboole_0(X1,X2)
    <=> ( r1_tarski(X1,X2)
        & X1 != X2 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d8_xboole_0)).

fof(t58_xboole_1,conjecture,(
    ! [X1,X2,X3] :
      ( ( r2_xboole_0(X1,X2)
        & r1_tarski(X2,X3) )
     => r2_xboole_0(X1,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t58_xboole_1)).

fof(antisymmetry_r2_xboole_0,axiom,(
    ! [X1,X2] :
      ( r2_xboole_0(X1,X2)
     => ~ r2_xboole_0(X2,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',antisymmetry_r2_xboole_0)).

fof(irreflexivity_r2_xboole_0,axiom,(
    ! [X1,X2] : ~ r2_xboole_0(X1,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',irreflexivity_r2_xboole_0)).

fof(c_0_8,plain,(
    ! [X15,X16] : k2_xboole_0(X15,k4_xboole_0(X16,X15)) = k2_xboole_0(X15,X16) ),
    inference(variable_rename,[status(thm)],[t39_xboole_1])).

fof(c_0_9,plain,(
    ! [X9,X10] :
      ( ( k4_xboole_0(X9,X10) != k1_xboole_0
        | r1_tarski(X9,X10) )
      & ( ~ r1_tarski(X9,X10)
        | k4_xboole_0(X9,X10) = k1_xboole_0 ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l32_xboole_1])])).

fof(c_0_10,plain,(
    ! [X14] : k2_xboole_0(X14,k1_xboole_0) = X14 ),
    inference(variable_rename,[status(thm)],[t1_boole])).

fof(c_0_11,plain,(
    ! [X11,X12,X13] :
      ( ~ r1_tarski(X11,X12)
      | r1_tarski(X11,k2_xboole_0(X13,X12)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t10_xboole_1])])).

cnf(c_0_12,plain,
    ( k2_xboole_0(X1,k4_xboole_0(X2,X1)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_13,plain,
    ( k4_xboole_0(X1,X2) = k1_xboole_0
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_14,plain,
    ( k2_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_15,plain,
    ( r1_tarski(X1,k2_xboole_0(X3,X2))
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_16,plain,
    ( k2_xboole_0(X1,X2) = X1
    | ~ r1_tarski(X2,X1) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_12,c_0_13]),c_0_14])).

fof(c_0_17,plain,(
    ! [X6,X7] :
      ( ( r1_tarski(X6,X7)
        | ~ r2_xboole_0(X6,X7) )
      & ( X6 != X7
        | ~ r2_xboole_0(X6,X7) )
      & ( ~ r1_tarski(X6,X7)
        | X6 = X7
        | r2_xboole_0(X6,X7) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d8_xboole_0])])])).

fof(c_0_18,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( ( r2_xboole_0(X1,X2)
          & r1_tarski(X2,X3) )
       => r2_xboole_0(X1,X3) ) ),
    inference(assume_negation,[status(cth)],[t58_xboole_1])).

cnf(c_0_19,plain,
    ( r1_tarski(X1,X2)
    | ~ r1_tarski(X1,X3)
    | ~ r1_tarski(X3,X2) ),
    inference(spm,[status(thm)],[c_0_15,c_0_16])).

cnf(c_0_20,plain,
    ( r1_tarski(X1,X2)
    | ~ r2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

fof(c_0_21,negated_conjecture,
    ( r2_xboole_0(esk1_0,esk2_0)
    & r1_tarski(esk2_0,esk3_0)
    & ~ r2_xboole_0(esk1_0,esk3_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_18])])])).

cnf(c_0_22,plain,
    ( r1_tarski(X1,X2)
    | ~ r1_tarski(X3,X2)
    | ~ r2_xboole_0(X1,X3) ),
    inference(spm,[status(thm)],[c_0_19,c_0_20])).

cnf(c_0_23,negated_conjecture,
    ( r1_tarski(esk2_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

fof(c_0_24,plain,(
    ! [X4,X5] :
      ( ~ r2_xboole_0(X4,X5)
      | ~ r2_xboole_0(X5,X4) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[antisymmetry_r2_xboole_0])])])).

cnf(c_0_25,negated_conjecture,
    ( r1_tarski(X1,esk3_0)
    | ~ r2_xboole_0(X1,esk2_0) ),
    inference(spm,[status(thm)],[c_0_22,c_0_23])).

cnf(c_0_26,negated_conjecture,
    ( r2_xboole_0(esk1_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_27,plain,
    ( ~ r2_xboole_0(X1,X2)
    | ~ r2_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_28,plain,
    ( X1 = X2
    | r2_xboole_0(X1,X2)
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_29,negated_conjecture,
    ( r1_tarski(esk1_0,esk3_0) ),
    inference(spm,[status(thm)],[c_0_25,c_0_26])).

cnf(c_0_30,negated_conjecture,
    ( ~ r2_xboole_0(esk1_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_31,negated_conjecture,
    ( ~ r2_xboole_0(esk2_0,esk1_0) ),
    inference(spm,[status(thm)],[c_0_27,c_0_26])).

cnf(c_0_32,negated_conjecture,
    ( esk1_0 = esk3_0 ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_28,c_0_29]),c_0_30])).

cnf(c_0_33,negated_conjecture,
    ( esk2_0 = esk3_0
    | r2_xboole_0(esk2_0,esk3_0) ),
    inference(spm,[status(thm)],[c_0_28,c_0_23])).

cnf(c_0_34,negated_conjecture,
    ( ~ r2_xboole_0(esk2_0,esk3_0) ),
    inference(rw,[status(thm)],[c_0_31,c_0_32])).

fof(c_0_35,plain,(
    ! [X8] : ~ r2_xboole_0(X8,X8) ),
    inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[irreflexivity_r2_xboole_0])])).

cnf(c_0_36,negated_conjecture,
    ( r2_xboole_0(esk3_0,esk2_0) ),
    inference(rw,[status(thm)],[c_0_26,c_0_32])).

cnf(c_0_37,negated_conjecture,
    ( esk2_0 = esk3_0 ),
    inference(sr,[status(thm)],[c_0_33,c_0_34])).

cnf(c_0_38,plain,
    ( ~ r2_xboole_0(X1,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

cnf(c_0_39,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(rw,[status(thm)],[c_0_36,c_0_37]),c_0_38]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.34  % Computer   : n007.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 11:27:36 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.20/0.37  # AutoSched0-Mode selected heuristic G_____X1276__C12_02_nc_F1_AE_CS_SP_RG_S04AN
% 0.20/0.37  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.20/0.37  #
% 0.20/0.37  # Preprocessing time       : 0.023 s
% 0.20/0.37  # Presaturation interreduction done
% 0.20/0.37  
% 0.20/0.37  # Proof found!
% 0.20/0.37  # SZS status Theorem
% 0.20/0.37  # SZS output start CNFRefutation
% 0.20/0.37  fof(t39_xboole_1, axiom, ![X1, X2]:k2_xboole_0(X1,k4_xboole_0(X2,X1))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t39_xboole_1)).
% 0.20/0.37  fof(l32_xboole_1, axiom, ![X1, X2]:(k4_xboole_0(X1,X2)=k1_xboole_0<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l32_xboole_1)).
% 0.20/0.37  fof(t1_boole, axiom, ![X1]:k2_xboole_0(X1,k1_xboole_0)=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t1_boole)).
% 0.20/0.37  fof(t10_xboole_1, axiom, ![X1, X2, X3]:(r1_tarski(X1,X2)=>r1_tarski(X1,k2_xboole_0(X3,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t10_xboole_1)).
% 0.20/0.37  fof(d8_xboole_0, axiom, ![X1, X2]:(r2_xboole_0(X1,X2)<=>(r1_tarski(X1,X2)&X1!=X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d8_xboole_0)).
% 0.20/0.37  fof(t58_xboole_1, conjecture, ![X1, X2, X3]:((r2_xboole_0(X1,X2)&r1_tarski(X2,X3))=>r2_xboole_0(X1,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t58_xboole_1)).
% 0.20/0.37  fof(antisymmetry_r2_xboole_0, axiom, ![X1, X2]:(r2_xboole_0(X1,X2)=>~(r2_xboole_0(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', antisymmetry_r2_xboole_0)).
% 0.20/0.37  fof(irreflexivity_r2_xboole_0, axiom, ![X1, X2]:~(r2_xboole_0(X1,X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', irreflexivity_r2_xboole_0)).
% 0.20/0.37  fof(c_0_8, plain, ![X15, X16]:k2_xboole_0(X15,k4_xboole_0(X16,X15))=k2_xboole_0(X15,X16), inference(variable_rename,[status(thm)],[t39_xboole_1])).
% 0.20/0.37  fof(c_0_9, plain, ![X9, X10]:((k4_xboole_0(X9,X10)!=k1_xboole_0|r1_tarski(X9,X10))&(~r1_tarski(X9,X10)|k4_xboole_0(X9,X10)=k1_xboole_0)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l32_xboole_1])])).
% 0.20/0.37  fof(c_0_10, plain, ![X14]:k2_xboole_0(X14,k1_xboole_0)=X14, inference(variable_rename,[status(thm)],[t1_boole])).
% 0.20/0.37  fof(c_0_11, plain, ![X11, X12, X13]:(~r1_tarski(X11,X12)|r1_tarski(X11,k2_xboole_0(X13,X12))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t10_xboole_1])])).
% 0.20/0.37  cnf(c_0_12, plain, (k2_xboole_0(X1,k4_xboole_0(X2,X1))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.20/0.37  cnf(c_0_13, plain, (k4_xboole_0(X1,X2)=k1_xboole_0|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.20/0.37  cnf(c_0_14, plain, (k2_xboole_0(X1,k1_xboole_0)=X1), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.20/0.37  cnf(c_0_15, plain, (r1_tarski(X1,k2_xboole_0(X3,X2))|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.20/0.37  cnf(c_0_16, plain, (k2_xboole_0(X1,X2)=X1|~r1_tarski(X2,X1)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_12, c_0_13]), c_0_14])).
% 0.20/0.37  fof(c_0_17, plain, ![X6, X7]:(((r1_tarski(X6,X7)|~r2_xboole_0(X6,X7))&(X6!=X7|~r2_xboole_0(X6,X7)))&(~r1_tarski(X6,X7)|X6=X7|r2_xboole_0(X6,X7))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d8_xboole_0])])])).
% 0.20/0.37  fof(c_0_18, negated_conjecture, ~(![X1, X2, X3]:((r2_xboole_0(X1,X2)&r1_tarski(X2,X3))=>r2_xboole_0(X1,X3))), inference(assume_negation,[status(cth)],[t58_xboole_1])).
% 0.20/0.37  cnf(c_0_19, plain, (r1_tarski(X1,X2)|~r1_tarski(X1,X3)|~r1_tarski(X3,X2)), inference(spm,[status(thm)],[c_0_15, c_0_16])).
% 0.20/0.37  cnf(c_0_20, plain, (r1_tarski(X1,X2)|~r2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.20/0.37  fof(c_0_21, negated_conjecture, ((r2_xboole_0(esk1_0,esk2_0)&r1_tarski(esk2_0,esk3_0))&~r2_xboole_0(esk1_0,esk3_0)), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_18])])])).
% 0.20/0.37  cnf(c_0_22, plain, (r1_tarski(X1,X2)|~r1_tarski(X3,X2)|~r2_xboole_0(X1,X3)), inference(spm,[status(thm)],[c_0_19, c_0_20])).
% 0.20/0.37  cnf(c_0_23, negated_conjecture, (r1_tarski(esk2_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.20/0.37  fof(c_0_24, plain, ![X4, X5]:(~r2_xboole_0(X4,X5)|~r2_xboole_0(X5,X4)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[antisymmetry_r2_xboole_0])])])).
% 0.20/0.37  cnf(c_0_25, negated_conjecture, (r1_tarski(X1,esk3_0)|~r2_xboole_0(X1,esk2_0)), inference(spm,[status(thm)],[c_0_22, c_0_23])).
% 0.20/0.37  cnf(c_0_26, negated_conjecture, (r2_xboole_0(esk1_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.20/0.37  cnf(c_0_27, plain, (~r2_xboole_0(X1,X2)|~r2_xboole_0(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.20/0.37  cnf(c_0_28, plain, (X1=X2|r2_xboole_0(X1,X2)|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.20/0.37  cnf(c_0_29, negated_conjecture, (r1_tarski(esk1_0,esk3_0)), inference(spm,[status(thm)],[c_0_25, c_0_26])).
% 0.20/0.37  cnf(c_0_30, negated_conjecture, (~r2_xboole_0(esk1_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.20/0.37  cnf(c_0_31, negated_conjecture, (~r2_xboole_0(esk2_0,esk1_0)), inference(spm,[status(thm)],[c_0_27, c_0_26])).
% 0.20/0.37  cnf(c_0_32, negated_conjecture, (esk1_0=esk3_0), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_28, c_0_29]), c_0_30])).
% 0.20/0.37  cnf(c_0_33, negated_conjecture, (esk2_0=esk3_0|r2_xboole_0(esk2_0,esk3_0)), inference(spm,[status(thm)],[c_0_28, c_0_23])).
% 0.20/0.37  cnf(c_0_34, negated_conjecture, (~r2_xboole_0(esk2_0,esk3_0)), inference(rw,[status(thm)],[c_0_31, c_0_32])).
% 0.20/0.37  fof(c_0_35, plain, ![X8]:~r2_xboole_0(X8,X8), inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[irreflexivity_r2_xboole_0])])).
% 0.20/0.37  cnf(c_0_36, negated_conjecture, (r2_xboole_0(esk3_0,esk2_0)), inference(rw,[status(thm)],[c_0_26, c_0_32])).
% 0.20/0.37  cnf(c_0_37, negated_conjecture, (esk2_0=esk3_0), inference(sr,[status(thm)],[c_0_33, c_0_34])).
% 0.20/0.37  cnf(c_0_38, plain, (~r2_xboole_0(X1,X1)), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.20/0.37  cnf(c_0_39, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(rw,[status(thm)],[c_0_36, c_0_37]), c_0_38]), ['proof']).
% 0.20/0.37  # SZS output end CNFRefutation
% 0.20/0.37  # Proof object total steps             : 40
% 0.20/0.37  # Proof object clause steps            : 23
% 0.20/0.37  # Proof object formula steps           : 17
% 0.20/0.37  # Proof object conjectures             : 15
% 0.20/0.37  # Proof object clause conjectures      : 12
% 0.20/0.37  # Proof object formula conjectures     : 3
% 0.20/0.37  # Proof object initial clauses used    : 11
% 0.20/0.37  # Proof object initial formulas used   : 8
% 0.20/0.37  # Proof object generating inferences   : 8
% 0.20/0.37  # Proof object simplifying inferences  : 7
% 0.20/0.37  # Training examples: 0 positive, 0 negative
% 0.20/0.37  # Parsed axioms                        : 8
% 0.20/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.20/0.37  # Initial clauses                      : 13
% 0.20/0.37  # Removed in clause preprocessing      : 0
% 0.20/0.37  # Initial clauses in saturation        : 13
% 0.20/0.37  # Processed clauses                    : 57
% 0.20/0.37  # ...of these trivial                  : 0
% 0.20/0.37  # ...subsumed                          : 7
% 0.20/0.37  # ...remaining for further processing  : 50
% 0.20/0.37  # Other redundant clauses eliminated   : 1
% 0.20/0.37  # Clauses deleted for lack of memory   : 0
% 0.20/0.37  # Backward-subsumed                    : 0
% 0.20/0.37  # Backward-rewritten                   : 13
% 0.20/0.37  # Generated clauses                    : 64
% 0.20/0.37  # ...of the previous two non-trivial   : 65
% 0.20/0.37  # Contextual simplify-reflections      : 0
% 0.20/0.37  # Paramodulations                      : 62
% 0.20/0.37  # Factorizations                       : 0
% 0.20/0.37  # Equation resolutions                 : 1
% 0.20/0.37  # Propositional unsat checks           : 0
% 0.20/0.37  #    Propositional check models        : 0
% 0.20/0.37  #    Propositional check unsatisfiable : 0
% 0.20/0.37  #    Propositional clauses             : 0
% 0.20/0.37  #    Propositional clauses after purity: 0
% 0.20/0.37  #    Propositional unsat core size     : 0
% 0.20/0.37  #    Propositional preprocessing time  : 0.000
% 0.20/0.37  #    Propositional encoding time       : 0.000
% 0.20/0.37  #    Propositional solver time         : 0.000
% 0.20/0.37  #    Success case prop preproc time    : 0.000
% 0.20/0.37  #    Success case prop encoding time   : 0.000
% 0.20/0.37  #    Success case prop solver time     : 0.000
% 0.20/0.37  # Current number of processed clauses  : 23
% 0.20/0.37  #    Positive orientable unit clauses  : 5
% 0.20/0.37  #    Positive unorientable unit clauses: 0
% 0.20/0.37  #    Negative unit clauses             : 1
% 0.20/0.37  #    Non-unit-clauses                  : 17
% 0.20/0.37  # Current number of unprocessed clauses: 33
% 0.20/0.37  # ...number of literals in the above   : 84
% 0.20/0.37  # Current number of archived formulas  : 0
% 0.20/0.37  # Current number of archived clauses   : 26
% 0.20/0.37  # Clause-clause subsumption calls (NU) : 31
% 0.20/0.37  # Rec. Clause-clause subsumption calls : 31
% 0.20/0.37  # Non-unit clause-clause subsumptions  : 4
% 0.20/0.37  # Unit Clause-clause subsumption calls : 4
% 0.20/0.37  # Rewrite failures with RHS unbound    : 0
% 0.20/0.37  # BW rewrite match attempts            : 3
% 0.20/0.37  # BW rewrite match successes           : 3
% 0.20/0.37  # Condensation attempts                : 0
% 0.20/0.37  # Condensation successes               : 0
% 0.20/0.37  # Termbank termtop insertions          : 1215
% 0.20/0.37  
% 0.20/0.37  # -------------------------------------------------
% 0.20/0.37  # User time                : 0.022 s
% 0.20/0.37  # System time              : 0.006 s
% 0.20/0.37  # Total time               : 0.028 s
% 0.20/0.37  # Maximum resident set size: 1568 pages
%------------------------------------------------------------------------------
